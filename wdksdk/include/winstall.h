/* winstall.h — wINSTALL SDK public header
 * Knowledge Dynamics wINSTALL V3.22 compatible
 * GPLv3 — the crew 4free
 *
 * Clean-room reimplementation of the KD wINSTALL framework.
 * Reads NOS/RR archives, decompresses LZH data.
 */

#ifndef WINSTALL_H
#define WINSTALL_H

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WI_VERSION_MAJOR  1
#define WI_VERSION_MINOR  0
#define WI_VERSION_STRING "wINSTALL SDK 1.0 (GPLv3 — the crew 4free)"

/* I/O callbacks */
typedef size_t (*WI_READ_FN)(void *buf, size_t size, void *user_data);
typedef size_t (*WI_WRITE_FN)(const void *buf, size_t size, void *user_data);

/* Archive handle */
typedef struct {
    FILE *fp;
    int   file_count;
    char  path[260];
} WI_ARCHIVE;

/* File entry from archive */
typedef struct {
    char          filename[13];
    unsigned long comp_size;
    unsigned long orig_size;
    int           compressed;   /* 1=LZH, 0=raw */
    long          data_offset;
} WI_FILE_ENTRY;

/* LZH decompression */
int wi_lzh_decompress(const unsigned char *src, unsigned int src_len,
                       unsigned char *dst, unsigned int dst_len);

/* NOS/RR archive */
int  wi_nos_open(WI_ARCHIVE *arc, const char *path);
void wi_nos_close(WI_ARCHIVE *arc);
int  wi_nos_read_entry(WI_ARCHIVE *arc, WI_FILE_ENTRY *entry);
int  wi_nos_extract(WI_ARCHIVE *arc, WI_FILE_ENTRY *entry, const char *outpath);

#ifdef __cplusplus
}
#endif

#endif /* WINSTALL_H */
