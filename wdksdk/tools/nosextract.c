/* nosextract.c — Extract files from NOS/RR archives
 * Usage: nosextract <archive.NOS> [output_dir]
 *
 * GPLv3 — the crew 4free
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include "winstall.h"

static void usage(const char *prog)
{
    printf("%s\n\n", WI_VERSION_STRING);
    printf("Usage: %s [options] <archive.NOS> [output_dir]\n\n", prog);
    printf("Options:\n");
    printf("  -l         List files only (don't extract)\n");
    printf("  -v         Verbose output\n");
    printf("  -h         Show this help\n\n");
    printf("Supports NOS/RR archives from Artisoft LANtastic v6\n");
    printf("and other Knowledge Dynamics wINSTALL packages.\n");
}

int main(int argc, char *argv[])
{
    WI_ARCHIVE arc;
    WI_FILE_ENTRY entry;
    const char *inpath = NULL;
    const char *outdir = ".";
    int list_only = 0;
    int verbose = 0;
    int count = 0;
    unsigned long total_comp = 0, total_orig = 0;
    int i;

    for (i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            if (strcmp(argv[i], "-l") == 0) list_only = 1;
            else if (strcmp(argv[i], "-v") == 0) verbose = 1;
            else if (strcmp(argv[i], "-h") == 0) { usage(argv[0]); return 0; }
            else { printf("Unknown option: %s\n", argv[i]); return 1; }
        } else if (!inpath) {
            inpath = argv[i];
        } else {
            outdir = argv[i];
        }
    }

    if (!inpath) { usage(argv[0]); return 1; }

    if (wi_nos_open(&arc, inpath) != 0) {
        printf("Error: cannot open %s\n", inpath);
        return 1;
    }

    printf("%s\nArchive: %s\n\n", WI_VERSION_STRING, inpath);

    if (!list_only) {
#ifdef _WIN32
        mkdir(outdir);
#else
        mkdir(outdir, 0755);
#endif
    }

    printf("  %-13s %10s %10s  %s\n", "Filename", "Packed", "Original", "Method");
    printf("  %-13s %10s %10s  %s\n", "--------", "------", "--------", "------");

    while (wi_nos_read_entry(&arc, &entry) > 0) {
        printf("  %-13s %10lu %10lu  %s",
               entry.filename,
               entry.comp_size,
               entry.orig_size,
               entry.compressed ? "LZH" : "raw");

        if (!list_only) {
            char outpath[512];
            snprintf(outpath, sizeof(outpath), "%s/%s", outdir, entry.filename);
            if (wi_nos_extract(&arc, &entry, outpath) == 0) {
                printf("  [OK]");
            } else {
                printf("  [FAIL]");
            }
        }
        printf("\n");

        total_comp += entry.comp_size;
        total_orig += entry.orig_size;
        count++;
    }

    printf("  %-13s %10s %10s\n", "--------", "------", "--------");
    printf("  %-13s %10lu %10lu  ratio: %.0f%%\n",
           "", total_comp, total_orig,
           total_orig ? (double)total_comp * 100.0 / total_orig : 0);

    wi_nos_close(&arc);
    printf("\n%d files %s.\n", count, list_only ? "listed" : "extracted");
    return 0;
}
