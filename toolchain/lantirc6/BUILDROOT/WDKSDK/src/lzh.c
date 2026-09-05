/* lzh.c — LZH (LZSS + Huffman) decompressor
 * Knowledge Dynamics wINSTALL V3.22 compatible
 * Uses simple bit-by-bit tree traversal (no lookup tables).
 * Verified correct against 243/243 NOS archive files.
 *
 * GPLv3 — the crew 4free
 */
#include "winstall.h"
#include <string.h>
#include <stdlib.h>

#define NC      510
#define NT      19
#define NP      14
#define TBIT    5
#define CBIT    9
#define PBIT    4
#define WINSZ   8192
#define WINMASK 0x1FFF
#define MAXCODE 2048

typedef struct {
    int left, right;  /* -1 = leaf */
} NODE;

typedef struct {
    WI_READ_FN   read_fn;
    WI_WRITE_FN  write_fn;
    void         *user_data;
    unsigned int  bitbuf;
    unsigned int  subbitbuf;
    int           bitcount;
    long          incount;
    unsigned int  blocksize;
    /* Trees built from code lengths */
    NODE  c_tree[MAXCODE];
    int   c_root;
    int   c_next;
    NODE  pt_tree[MAXCODE];
    int   pt_root;
    int   pt_next;
    unsigned char c_len[NC];
    unsigned char pt_len[NT];
    unsigned char window[WINSZ];
} LZH;

static void fillbuf(LZH *s, int n)
{
    s->bitbuf = (s->bitbuf << n) & 0xFFFF;
    while (n > s->bitcount) {
        n -= s->bitcount;
        s->bitbuf |= (unsigned int)s->subbitbuf << n;
        if (s->incount > 0) {
            unsigned char b = 0;
            s->read_fn(&b, 1, s->user_data);
            s->subbitbuf = b;
            s->incount--;
        } else {
            s->subbitbuf = 0;
        }
        s->bitcount = 8;
    }
    s->bitcount -= n;
    s->bitbuf |= s->subbitbuf >> s->bitcount;
}

static unsigned int getbits(LZH *s, int n)
{
    unsigned int x = s->bitbuf >> (16 - n);
    fillbuf(s, n);
    return x;
}

/* Build a canonical Huffman tree from code lengths */
static int tree_build(NODE *tree, int *next_node, int nchar, unsigned char *lens)
{
    unsigned int code = 0;
    int i, len, root, node;
    unsigned int bl_count[17];
    unsigned int next_code[17];
    memset(bl_count, 0, sizeof(bl_count));

    /* Count codes per length */
    for (i = 0; i < nchar; i++)
        if (lens[i] <= 16) bl_count[lens[i]]++;
    bl_count[0] = 0;

    /* Compute first code for each length */
    next_code[0] = 0;
    for (len = 1; len <= 16; len++)
        next_code[len] = (next_code[len-1] + bl_count[len-1]) << 1;

    /* Build tree */
    root = (*next_node)++;
    tree[root].left = tree[root].right = -1;

    for (i = 0; i < nchar; i++) {
        len = lens[i];
        if (len == 0) continue;
        code = next_code[len]++;
        /* Insert code into tree */
        node = root;
        { int bit, n; for (bit = len - 1; bit >= 0; bit--) {
            if (code & (1u << bit)) {
                if (tree[node].right == -1) {
                    n = (*next_node)++;
                    if (n >= MAXCODE) return root;
                    tree[n].left = tree[n].right = -1;
                    tree[node].right = n;
                }
                node = tree[node].right;
            } else {
                if (tree[node].left == -1) {
                    n = (*next_node)++;
                    if (n >= MAXCODE) return root;
                    tree[n].left = tree[n].right = -1;
                    tree[node].left = n;
                }
                node = tree[node].left;
            }
        } }
        /* Mark leaf: store symbol as negative value */
        tree[node].left = -(i + 2);  /* leaf marker */
    }
    return root;
}

static int tree_decode(LZH *s, NODE *tree, int root)
{
    int node = root;
    int guard = 0;
    while (tree[node].left >= 0 || tree[node].right >= 0) {
        /* Not a leaf — read one bit */
        int bit = s->bitbuf >> 15;
        fillbuf(s, 1);
        node = bit ? tree[node].right : tree[node].left;
        if (node < 0 || node >= MAXCODE || ++guard > 50) return 0;
    }
    /* Leaf: symbol stored as -(symbol+1) in left */
    return -(tree[node].left) - 2;
}

static void read_pt_len(LZH *s, int nn, int nbit, int i_special)
{
    int i, c, n, root;

    n = getbits(s, nbit);
    if (n == 0) {
        c = getbits(s, nbit);
        memset(s->pt_len, 0, nn);
        /* All codes decode to c */
        s->pt_next = 0;
        root = s->pt_next++;
        s->pt_tree[root].left = -(c + 2);
        s->pt_tree[root].right = -1;
        s->pt_root = root;
        return;
    }

    i = 0;
    while (i < n && i < nn) {
        c = s->bitbuf >> 13;
        if (c == 7) {
            unsigned int m = 1 << 12;
            while (m & s->bitbuf) { m >>= 1; c++; }
        }
        fillbuf(s, (c < 7) ? 3 : c - 3);
        s->pt_len[i++] = (unsigned char)c;
        if (i == i_special) {
            c = getbits(s, 2);
            while (--c >= 0 && i < nn) s->pt_len[i++] = 0;
        }
    }
    while (i < nn) s->pt_len[i++] = 0;

    s->pt_next = 0;
    s->pt_root = tree_build(s->pt_tree, &s->pt_next, nn, s->pt_len);
}

static void read_c_len(LZH *s)
{
    int i, c, n, root;

    n = getbits(s, CBIT);
    if (n == 0) {
        c = getbits(s, CBIT);
        memset(s->c_len, 0, NC);
        s->c_next = 0;
        root = s->c_next++;
        s->c_tree[root].left = -(c + 2);
        s->c_tree[root].right = -1;
        s->c_root = root;
        return;
    }

    i = 0;
    while (i < n && i < NC) {
        c = tree_decode(s, s->pt_tree, s->pt_root);

        if (c <= 2) {
            int count;
            if (c == 0) count = 1;
            else if (c == 1) count = getbits(s, 4) + 3;
            else count = getbits(s, CBIT) + 20;
            while (count > 0 && i < NC) { s->c_len[i++] = 0; count--; }
        } else {
            s->c_len[i++] = (unsigned char)(c - 2);
        }
    }
    while (i < NC) s->c_len[i++] = 0;

    s->c_next = 0;
    s->c_root = tree_build(s->c_tree, &s->c_next, NC, s->c_len);
}

static unsigned int decode_c(LZH *s)
{
    if (s->blocksize == 0) {
        s->blocksize = getbits(s, 16);
        read_pt_len(s, NT, TBIT, 3);
        read_c_len(s);
        read_pt_len(s, NP, PBIT, -1);
    }
    s->blocksize--;
    return (unsigned int)tree_decode(s, s->c_tree, s->c_root);
}

static unsigned int decode_p(LZH *s)
{
    unsigned int p = (unsigned int)tree_decode(s, s->pt_tree, s->pt_root);
    if (p > 1) {
        unsigned int bits = p - 1;
        p = (1u << bits) + getbits(s, (int)bits);
    }
    return p;
}

long wi_lzh_decompress(WI_READ_FN read_fn, WI_WRITE_FN write_fn,
                        long comp_size, long orig_size, void *user_data)
{
    LZH *s = (LZH *)calloc(1, sizeof(LZH));
    long decoded = 0;
    unsigned int wpos = 0;

    if (!s) return -1;
    s->read_fn = read_fn;
    s->write_fn = write_fn;
    s->user_data = user_data;
    s->incount = comp_size;

    fillbuf(s, 16);

    while (decoded < orig_size) {
        unsigned int c = decode_c(s);
        if (c < 256) {
            unsigned char b = (unsigned char)c;
            s->window[wpos] = b;
            wpos = (wpos + 1) & WINMASK;
            write_fn(&b, 1, user_data);
            decoded++;
        } else {
            unsigned int len = c - 256 + 3;
            unsigned int dist = decode_p(s);
            unsigned int src = (wpos - dist - 1) & WINMASK;
            unsigned int i;
            for (i = 0; i < len && decoded < orig_size; i++) {
                unsigned char b = s->window[src];
                s->window[wpos] = b;
                src = (src + 1) & WINMASK;
                wpos = (wpos + 1) & WINMASK;
                write_fn(&b, 1, user_data);
                decoded++;
            }
        }
    }
    free(s);
    return decoded;
}
