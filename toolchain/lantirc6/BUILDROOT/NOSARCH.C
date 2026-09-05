/* nos_archive.c — NOS archive (RR format) parser
 * Reverse-engineered from INST6.EXE via Ghidra
 * Target: MSC 6.0a, DOS 16-bit
 * GPLv3 — the crew 4free
 */

#include <string.h>

/* RR archive header structure
 * Derived from FUN_3000_e352 and binary analysis
 */
#define RR_MAGIC_0    'R'
#define RR_MAGIC_1    'R'
#define RR_VERSION    0x01
#define RR_HDRSIZE    0x29   /* 41 bytes */
#define RR_FNAME_OFS  0x1A   /* filename offset in header */
#define RR_FNAME_LEN  13     /* 8.3 + null */

/* Record types (from FUN_3000_d7a4) */
#define RR_TYPE_END   0x01
#define RR_TYPE_FILE  0x09
#define RR_TYPE_FILE2 0x0B

/* Compression flags (from FUN_3000_cba0) */
#define RR_COMP_NONE  0x30   /* uncompressed */
#define RR_COMP_LZH   0x20   /* LZH compressed */

typedef struct {
    char     magic[2];       /* 'RR' */
    char     version;        /* 0x01 */
    char     hdr_size;       /* 0x29 = 41 */
    unsigned int  comp_size;      /* compressed size (bytes 4-5) */
    unsigned int  uncomp_size;    /* uncompressed size (bytes 6-7) */
    unsigned int  field_8;        /* bytes 8-9 */
    unsigned int  field_a;        /* bytes 10-11 */
    unsigned int  field_c;        /* bytes 12-13 */
    unsigned int  field_e;        /* bytes 14-15 */
    unsigned int  field_10;       /* bytes 16-17 */
    unsigned int  rec_type;       /* bytes 18-19: record type */
    unsigned int  comp_flag;      /* bytes 20-21: compression flag */
    unsigned int  field_16;       /* bytes 22-23 */
    unsigned int  field_18;       /* bytes 24-25 */
    char     filename[RR_FNAME_LEN]; /* bytes 26-38: 8.3 filename */
} RR_HEADER;

/*---------------------------------------------------------------
 * rr_read_header — parse RR archive record header
 * Ghidra: FUN_3000_e352
 *
 * Reads 4 bytes from archive, validates magic and version,
 * reads remaining header fields, copies filename.
 *
 * Returns: 0 = success, -1 = error/EOF
 *---------------------------------------------------------------*/
int rr_read_header(int fhandle, RR_HEADER *hdr)
{
    char buf[4];
    int bytes_read;

    /* Read magic + version + hdr_size */
    bytes_read = dos_read(fhandle, buf, 4);
    if (bytes_read != 4)
        return -1;

    /* Validate magic */
    if (buf[0] != RR_MAGIC_0 || buf[1] != RR_MAGIC_1)
        return -1;

    /* Validate version */
    if (buf[2] != RR_VERSION)
        return -1;  /* "Unknown compression technique" */

    hdr->magic[0] = buf[0];
    hdr->magic[1] = buf[1];
    hdr->version = buf[2];
    hdr->hdr_size = buf[3];

    /* Read remaining header (hdr_size - 4 bytes) */
    bytes_read = dos_read(fhandle, ((char *)hdr) + 4, (int)hdr->hdr_size - 4);
    if (bytes_read != (int)hdr->hdr_size - 4)
        return -1;

    return 0;
}

/*---------------------------------------------------------------
 * rr_find_file — search archive for a named file
 * Ghidra: FUN_3000_d7a4
 *
 * Enumerates records in NOS archive, comparing filenames.
 * On match, calls extraction function.
 *
 * Returns: 0 = found, -1 = not found
 *---------------------------------------------------------------*/
int rr_find_file(int fhandle, const char *target_name,
                         RR_HEADER *hdr)
{
    while (rr_read_header(fhandle, hdr) == 0) {
        if (hdr->rec_type == RR_TYPE_END)
            return -1;

        if (hdr->rec_type == RR_TYPE_FILE ||
            hdr->rec_type == RR_TYPE_FILE2) {
            if (stricmp(hdr->filename, target_name) == 0)
                return 0;  /* found */
        }

        /* Skip compressed data to next record */
        dos_lseek(fhandle, (long)hdr->comp_size, 1);
    }

    return -1;
}

/*---------------------------------------------------------------
 * rr_extract_file — extract one file from archive
 * Ghidra: FUN_3000_cba0 + FUN_3000_d36a
 *
 * Opens output file, reads compressed data, decompresses
 * (LZH or uncompressed), writes output.
 *
 * Returns: 0 = success, -1 = error
 *---------------------------------------------------------------*/
static int rr_extract_file(int archive_handle, RR_HEADER *hdr,
                            const char *out_path)
{
    int out_handle;
    int result;

    out_handle = dos_create(out_path);
    if (out_handle < 0)
        return -1;

    if (hdr->comp_flag == RR_COMP_NONE) {
        /* Uncompressed — direct copy */
        result = raw_copy(archive_handle, out_handle,
                          (long)hdr->uncomp_size);
    } else {
        /* LZH compressed */
        result = lzh_extract(archive_handle, out_handle,
                             (long)hdr->comp_size,
                             (long)hdr->uncomp_size);
    }

    dos_close(out_handle);
    return result;
}
