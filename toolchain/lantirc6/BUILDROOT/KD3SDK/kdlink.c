/* kdlink.c — KD3 overlay linker
 * Concatenates base segment + overlay blob into byte-exact EXE.
 * GPLv3 — the crew 4free
 *
 * Usage: kdlink base.bin overlay.bin output.exe
 *
 * Build (Linux):  gcc -o kdlink kdlink.c
 * Build (DOS):    cl /W0 kdlink.c
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int copy_file(FILE *out, const char *path, long *written)
{
    FILE *in;
    unsigned char buf[4096];
    size_t n;

    in = fopen(path, "rb");
    if (!in) {
        fprintf(stderr, "Error: cannot open %s\n", path);
        return 1;
    }
    *written = 0;
    while ((n = fread(buf, 1, sizeof(buf), in)) > 0) {
        if (fwrite(buf, 1, n, out) != n) {
            fclose(in);
            return 1;
        }
        *written += (long)n;
    }
    fclose(in);
    return 0;
}

int main(int argc, char *argv[])
{
    FILE *out;
    long base_size, ovl_size;

    printf("kdlink — KD3 overlay linker\n");
    printf("the crew 4free — GPLv3\n\n");

    if (argc < 4) {
        printf("Usage: %s <base.bin> <overlay.bin> <output.exe>\n", argv[0]);
        return 1;
    }

    out = fopen(argv[3], "wb");
    if (!out) {
        fprintf(stderr, "Error: cannot create %s\n", argv[3]);
        return 1;
    }

    if (copy_file(out, argv[1], &base_size)) {
        fclose(out);
        return 1;
    }
    printf("  Base:    %s (%ld bytes)\n", argv[1], base_size);

    if (copy_file(out, argv[2], &ovl_size)) {
        fclose(out);
        return 1;
    }
    printf("  Overlay: %s (%ld bytes)\n", argv[2], ovl_size);

    fclose(out);
    printf("  Output:  %s (%ld bytes)\n", argv[3], base_size + ovl_size);

    return 0;
}
