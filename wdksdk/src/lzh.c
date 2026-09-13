/* lzh.c — LZH decompressor (LZSS+Huffman)
 * Ported from verified Python implementation
 * GPLv3 — the crew 4free
 */
#include <string.h>
#include "winstall.h"

#define NC    510
#define NT    19
#define NP    14
#define WINSZ 8192
#define WMASK 0x1FFF

typedef struct {
    const unsigned char *data;
    int pos;
    int len;
    unsigned long bitbuf;
    int bits;
} BitReader;

static void br_init(BitReader *br, const unsigned char *data, int len) {
    br->data = data; br->pos = 0; br->len = len;
    br->bitbuf = 0; br->bits = 0;
}

static void br_fill(BitReader *br, int n) {
    while (br->bits < n) {
        unsigned char b = (br->pos < br->len) ? br->data[br->pos] : 0;
        br->pos++;
        br->bitbuf = (br->bitbuf << 8) | b;
        br->bits += 8;
    }
}

static unsigned int br_getbits(BitReader *br, int n) {
    unsigned int val;
    br_fill(br, n);
    br->bits -= n;
    val = (unsigned int)(br->bitbuf >> br->bits) & ((1u << n) - 1);
    return val;
}

/* Huffman table: (code, nbits) -> symbol */
#define MAX_TAB 4096
typedef struct { unsigned short code; unsigned char nbits; unsigned short sym; } TabEntry;

typedef struct {
    TabEntry entries[MAX_TAB];
    int count;
    int default_sym; /* -1 if using table, >= 0 if single symbol */
} HuffTab;

static void tab_init(HuffTab *t) { t->count = 0; t->default_sym = -1; }

static void tab_build(HuffTab *t, int nchar, const unsigned char *lens) {
    int bl[17] = {0}, nxt[17] = {0};
    int i, all_zero = 1;
    t->count = 0; t->default_sym = -1;
    
    for (i = 0; i < nchar; i++)
        if (lens[i] > 0 && lens[i] <= 16) { bl[lens[i]]++; all_zero = 0; }
    
    if (all_zero) { t->default_sym = 0; return; }
    
    for (i = 1; i <= 16; i++) nxt[i] = (nxt[i-1] + bl[i-1]) << 1;
    for (i = 0; i < nchar; i++) {
        int l = lens[i];
        if (l > 0 && l <= 16 && t->count < MAX_TAB) {
            t->entries[t->count].code = (unsigned short)nxt[l];
            t->entries[t->count].nbits = (unsigned char)l;
            t->entries[t->count].sym = (unsigned short)i;
            t->count++;
            nxt[l]++;
        }
    }
}

static void tab_set_default(HuffTab *t, int sym) {
    t->count = 0; t->default_sym = sym;
}

static int tab_decode(HuffTab *t, BitReader *br) {
    unsigned int code; int nb, i;
    if (t->default_sym >= 0) return t->default_sym;
    code = 0;
    for (nb = 1; nb <= 16; nb++) {
        code = (code << 1) | br_getbits(br, 1);
        for (i = 0; i < t->count; i++) {
            if (t->entries[i].nbits == nb && t->entries[i].code == code)
                return t->entries[i].sym;
        }
    }
    return 0;
}

static void read_pt(BitReader *br, HuffTab *tab, int nn, int nbit, int i_special) {
    unsigned char lens[NT];
    int n, i, c;
    memset(lens, 0, sizeof(lens));
    
    n = (int)br_getbits(br, nbit);
    if (n == 0) {
        c = (int)br_getbits(br, nbit);
        tab_set_default(tab, c);
        return;
    }
    i = 0;
    while (i < n && i < nn) {
        c = (int)br_getbits(br, 3);
        if (c == 7) { while (br_getbits(br, 1) == 1) c++; }
        lens[i++] = (unsigned char)c;
        if (i == i_special) {
            int skip = (int)br_getbits(br, 2);
            while (skip-- > 0 && i < nn) lens[i++] = 0;
        }
    }
    tab_build(tab, nn, lens);
}

static void read_clen(BitReader *br, HuffTab *ctab, HuffTab *pt_tab) {
    unsigned char lens[NC];
    int n, i, c;
    memset(lens, 0, sizeof(lens));
    
    n = (int)br_getbits(br, 9);
    if (n == 0) {
        c = (int)br_getbits(br, 9);
        tab_set_default(ctab, c);
        return;
    }
    i = 0;
    while (i < n && i < NC) {
        c = tab_decode(pt_tab, br);
        if (c <= 2) {
            int cnt;
            if (c == 0) cnt = 1;
            else if (c == 1) cnt = (int)br_getbits(br, 4) + 3;
            else cnt = (int)br_getbits(br, 9) + 20;
            while (cnt-- > 0 && i < NC) lens[i++] = 0;
        } else {
            lens[i++] = (unsigned char)(c - 2);
        }
    }
    tab_build(ctab, NC, lens);
}

int wi_lzh_decompress(const unsigned char *src, unsigned int src_len,
                       unsigned char *dst, unsigned int dst_len)
{
    BitReader br;
    HuffTab c_tab, pt_tab, p_tab;
    unsigned char window[WINSZ];
    unsigned int wpos = 0, out = 0;
    int blocksize = 0;
    
    br_init(&br, src, (int)src_len);
    memset(window, 0, WINSZ);
    
    while (out < dst_len) {
        if (blocksize == 0) {
            blocksize = (int)br_getbits(&br, 16);
            if (blocksize == 0) break;
            read_pt(&br, &pt_tab, NT, 5, 3);
            read_clen(&br, &c_tab, &pt_tab);
            read_pt(&br, &p_tab, NP, 4, -1);
        }
        blocksize--;
        {
            int c = tab_decode(&c_tab, &br);
            if (c < 256) {
                dst[out++] = (unsigned char)c;
                window[wpos] = (unsigned char)c;
                wpos = (wpos + 1) & WMASK;
            } else {
                int length = c - 256 + 3;
                int p = tab_decode(&p_tab, &br);
                unsigned int dist, mpos;
                int j;
                if (p > 1) dist = (1u << (p - 1)) | br_getbits(&br, p - 1);
                else if (p == 1) dist = 1;
                else dist = 0;
                mpos = (wpos - dist - 1) & WMASK;
                for (j = 0; j < length && out < dst_len; j++) {
                    unsigned char b = window[mpos];
                    dst[out++] = b;
                    window[wpos] = b;
                    wpos = (wpos + 1) & WMASK;
                    mpos = (mpos + 1) & WMASK;
                }
            }
        }
    }
    return (int)out;
}
