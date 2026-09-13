/* nosarch.c — NOS/RR archive reader
 * Knowledge Dynamics wINSTALL V3.22 compatible
 * Reads Artisoft NOS6.001-004 archive files
 *
 * GPLv3 — the crew 4free
 */

#include "winstall.h"
#include <string.h>

#define RR_HDR_SIZE  41

int wi_nos_open(WI_ARCHIVE *arc, const char *path)
{
    memset(arc, 0, sizeof(*arc));
    arc->fp = fopen(path, "rb");
    if (!arc->fp) return -1;
    strncpy(arc->path, path, 259);
    return 0;
}

void wi_nos_close(WI_ARCHIVE *arc)
{
    if (arc->fp) {
        fclose(arc->fp);
        arc->fp = NULL;
    }
}

int wi_nos_read_entry(WI_ARCHIVE *arc, WI_FILE_ENTRY *entry)
{
    unsigned char hdr[RR_HDR_SIZE];
    size_t n;

    memset(entry, 0, sizeof(*entry));

    n = fread(hdr, 1, RR_HDR_SIZE, arc->fp);
    if (n < RR_HDR_SIZE) return -1;

    if (hdr[0] != 'R' || hdr[1] != 'R') return -1;
    if (hdr[3] == 0x01) return 0;  /* end marker — hdr_size field = 01 */

    entry->comp_size = (unsigned long)hdr[8]
                     | ((unsigned long)hdr[9] << 8)
                     | ((unsigned long)hdr[10] << 16)
                     | ((unsigned long)hdr[11] << 24);

    entry->orig_size = (unsigned long)hdr[12]
                     | ((unsigned long)hdr[13] << 8)
                     | ((unsigned long)hdr[14] << 16)
                     | ((unsigned long)hdr[15] << 24);

    /* All NOS data is LZH compressed when comp_size < orig_size.
     * The flag byte at offset 5 (0x30) does NOT indicate raw storage. */
    entry->compressed = (entry->comp_size < entry->orig_size) ? 1 : 0;
    memcpy(entry->filename, &hdr[26], 12);
    entry->filename[12] = '\0';
    entry->data_offset = ftell(arc->fp);

    /* Skip past file data to position for next header */
    fseek(arc->fp, (long)entry->comp_size, SEEK_CUR);

    arc->file_count++;
    return 1;
}

/* I/O helpers for LZH */
typedef struct {
    FILE *in;
    FILE *out;
} EXTRACT_CTX;

static size_t extract_read(void *buf, size_t size, void *user)
{
    EXTRACT_CTX *ctx = (EXTRACT_CTX *)user;
    return fread(buf, 1, size, ctx->in);
}

static size_t extract_write(const void *buf, size_t size, void *user)
{
    EXTRACT_CTX *ctx = (EXTRACT_CTX *)user;
    return fwrite(buf, 1, size, ctx->out);
}

int wi_nos_extract(WI_ARCHIVE *arc, WI_FILE_ENTRY *entry, const char *outpath)
{
    FILE *out;
    long saved_pos;

    out = fopen(outpath, "wb");
    if (!out) return -1;

    saved_pos = ftell(arc->fp);
    fseek(arc->fp, entry->data_offset, SEEK_SET);

    if (entry->compressed) {
        EXTRACT_CTX ctx;
        ctx.in = arc->fp;
        ctx.out = out;
        wi_lzh_decompress(extract_read, extract_write,
                           entry->comp_size, entry->orig_size, &ctx);
    } else {
        unsigned char buf[4096];
        long remain = (long)entry->comp_size;
        while (remain > 0) {
            size_t chunk = (remain > 4096) ? 4096 : (size_t)remain;
            size_t got = fread(buf, 1, chunk, arc->fp);
            if (got == 0) break;
            fwrite(buf, 1, got, out);
            remain -= (long)got;
        }
    }

    fclose(out);
    fseek(arc->fp, saved_pos, SEEK_SET);
    return 0;
}
