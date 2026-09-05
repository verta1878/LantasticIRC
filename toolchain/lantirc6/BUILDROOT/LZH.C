/* lzh.c — LZH decompressor for Knowledge Dynamics wINSTALL
 * Reverse-engineered from INST6.EXE via Ghidra
 * Target: MSC 6.0a, DOS 16-bit
 * GPLv3 — the crew 4free
 */

/* Constants from Ghidra analysis */
#define NC      510     /* 0x1FE: char/length codes */
#define NT      19      /* 0x13:  pre-tree codes */
#define NP      14      /* 0x0E:  distance codes */
#define TBIT    5       /* bits for pre-tree count */
#define CBIT    9       /* bits for char tree count */
#define PBIT    4       /* bits for distance count */
#define WINSZ   8192    /* 0x2000: sliding window */
#define WINMASK 0x1FFF  /* window mask */

/* Globals (mapped from Ghidra memory addresses) */
/*  0x7ef4 */ static unsigned int  g_bitbuf;      /* bit buffer (16-bit) */
/*  0x8aba */ static unsigned int  g_subbitbuf;    /* sub-byte buffer */
/*  0x84f0 */ static int           g_bitcount;     /* bits remaining in subbitbuf */
/*  0x8240 */ static long          g_incount;      /* input bytes remaining */
/*  0x0020 */ static unsigned int  c_table[4096];  /* char decode table */
/*  0x0028 */ static unsigned char c_len[NC];      /* char code lengths */
/*  0x0030 */ static unsigned int  left[2*NC];     /* left tree pointers */
/*  0x0034 */ static unsigned int  right[2*NC];    /* right tree pointers */
/*  0x0020 */ static unsigned int  pt_table[256];  /* position decode table */
/*        */ static unsigned char pt_len[NT];      /* position code lengths */

/* Forward declarations */
unsigned int read_byte(void);
static void fillbuf(int n);
static unsigned int getbits(int n);
static void make_table(unsigned int nchar, unsigned char *bitlen,
                        unsigned int tablebits, unsigned int *table);

/*---------------------------------------------------------------
 * fillbuf — fill bit buffer with n bits from input
 * Ghidra: FUN_3000_787e
 *---------------------------------------------------------------*/
static void fillbuf(int n)
{
    if (n == 16) {
        g_bitbuf = 0;
    } else {
        g_bitbuf <<= n;
        g_bitbuf &= 0xFFFF;
    }

    while (g_bitcount < n) {
        if (n - g_bitcount < 16) {
            n = n - g_bitcount;
            g_bitbuf |= (g_subbitbuf << n) & 0xFFFF;
        }
        if (g_incount <= 0) {
            g_subbitbuf = 0;
        } else {
            g_incount--;
            g_subbitbuf = read_byte() & 0xFF;
        }
        g_bitcount = 8;
    }

    g_bitcount -= n;
    g_bitbuf |= g_subbitbuf >> g_bitcount;
}

/*---------------------------------------------------------------
 * getbits — extract n bits from bit buffer
 * Ghidra: FUN_3000_7900
 *---------------------------------------------------------------*/
static unsigned int getbits(int n)
{
    unsigned int val;

    if (n < 1)
        return 0;

    val = g_bitbuf >> (16 - n);
    fillbuf(n);
    return val;
}

/*---------------------------------------------------------------
 * init_bitstream — reset bit reader state
 * Ghidra: FUN_3000_7928
 *---------------------------------------------------------------*/
static void init_bitstream(void)
{
    g_bitbuf = 0;
    g_subbitbuf = 0;
    g_bitcount = 0;
    fillbuf(16);
}

/*---------------------------------------------------------------
 * make_table — build decode table from bit lengths
 * Ghidra: FUN_3000_793c
 *---------------------------------------------------------------*/
static void make_table(unsigned int nchar, unsigned char *bitlen,
                        unsigned int tablebits, unsigned int *table)
{
    unsigned int count[17];
    unsigned int weight[17];
    unsigned int start[18];
    unsigned int i, k, len, ch, avail;
    unsigned int jutbits, mask, tblsize;

    for (i = 1; i <= 16; i++)
        count[i] = 0;

    for (i = 0; i < nchar; i++)
        count[bitlen[i]]++;

    start[1] = 0;
    for (i = 1; i <= 16; i++) {
        start[i + 1] = start[i] + (count[i] << (16 - i));
        weight[i] = 1 << (16 - i);
    }

    tblsize = 1U << tablebits;
    jutbits = 16 - tablebits;
    avail = nchar;

    for (ch = 0; ch < nchar; ch++) {
        len = bitlen[ch];
        if (len == 0)
            continue;

        if (len <= tablebits) {
            k = start[len] >> jutbits;
            for (i = k; i < k + (weight[len] >> jutbits) && i < tblsize; i++)
                table[i] = ch;
        } else {
            /* Longer codes — build tree */
            unsigned int p;
            p = start[len] >> jutbits;
            if (p < tblsize) {
                unsigned int bits_left = len - tablebits;
                unsigned int code = start[len];
                unsigned int tmask = 1U << (15 - tablebits);
                unsigned int node;

                while (bits_left > 0) {
                    if (table[p] == 0) {
                        left[avail] = 0;
                        right[avail] = 0;
                        table[p] = avail++;
                    }
                    node = table[p];
                    if (code & tmask)
                        p = right[node] ? right[node] : (right[node] = avail, avail);
                    else
                        p = left[node] ? left[node] : (left[node] = avail, avail);
                    tmask >>= 1;
                    bits_left--;
                }
                table[p] = ch;
            }
        }
        start[len] += weight[len];
    }
}

/*---------------------------------------------------------------
 * read_pt_len — read pre-tree/position code lengths
 * Ghidra: FUN_3000_7474
 *---------------------------------------------------------------*/
static void read_pt_len(int nn, int nbit, int i_special)
{
    int i, c, n;

    n = (int)getbits(nbit);
    if (n == 0) {
        c = (int)getbits(nbit);
        for (i = 0; i < nn; i++)
            pt_len[i] = 0;
        for (i = 0; i < 256; i++)
            pt_table[i] = (unsigned int)c;
        return;
    }

    i = 0;
    while (i < n && i < nn) {
        c = (int)(g_bitbuf >> 13);
        if (c == 7) {
            unsigned int mask = 0x1000;
            while (g_bitbuf & mask) {
                mask >>= 1;
                c++;
            }
        }
        fillbuf((c < 7) ? 3 : c - 3);
        pt_len[i] = (unsigned char)c;
        i++;
        if (i == i_special) {
            c = (int)getbits(2);
            while (c > 0 && i < nn) {
                pt_len[i] = 0;
                i++;
                c--;
            }
        }
    }
    while (i < nn)
        pt_len[i++] = 0;

    make_table((unsigned int)nn, pt_len, 8, pt_table);
}

/*---------------------------------------------------------------
 * read_c_len — read char/length code lengths
 * Ghidra: FUN_3000_7580
 *---------------------------------------------------------------*/
static void read_c_len(void)
{
    int i, c, n;

    n = (int)getbits(CBIT);
    if (n == 0) {
        c = (int)getbits(CBIT);
        for (i = 0; i < NC; i++)
            c_len[i] = 0;
        for (i = 0; i < 4096; i++)
            c_table[i] = (unsigned int)c;
        return;
    }

    i = 0;
    while (i < n && i < NC) {
        c = (int)pt_table[g_bitbuf >> 8];
        if ((unsigned int)c >= NT) {
            unsigned int mask = 0x80;
            do {
                if (g_bitbuf & mask)
                    c = (int)right[c];
                else
                    c = (int)left[c];
                mask >>= 1;
            } while ((unsigned int)c >= NT);
        }
        fillbuf((int)pt_len[c]);

        if (c <= 2) {
            if (c == 0)
                c = 1;
            else if (c == 1)
                c = (int)getbits(4) + 3;
            else
                c = (int)getbits(CBIT) + 20;
            while (c > 0 && i < NC) {
                c_len[i] = 0;
                i++;
                c--;
            }
        } else {
            c_len[i] = (unsigned char)(c - 2);
            i++;
        }
    }
    while (i < NC)
        c_len[i++] = 0;

    make_table(NC, c_len, 12, c_table);
}

/*---------------------------------------------------------------
 * decode_c — decode one char/length code
 * Ghidra: FUN_3000_7b98 (approximate)
 *---------------------------------------------------------------*/
static unsigned int decode_c(void)
{
    unsigned int c;

    c = c_table[g_bitbuf >> 4];
    if (c >= NC - 2) {
        unsigned int mask = 8;
        do {
            if (g_bitbuf & mask)
                c = right[c];
            else
                c = left[c];
            mask >>= 1;
        } while (c >= NC - 2);
    }
    fillbuf((int)c_len[c]);
    return c;
}

/*---------------------------------------------------------------
 * decode_p — decode distance/position code
 * Ghidra: FUN_3000_7302
 *---------------------------------------------------------------*/
static unsigned int decode_p(void)
{
    unsigned int c, p;

    c = pt_table[g_bitbuf >> 8];
    if (c >= NP) {
        unsigned int mask = 0x80;
        do {
            if (g_bitbuf & mask)
                c = right[c];
            else
                c = left[c];
            mask >>= 1;
        } while (c >= NP);
    }
    fillbuf((int)pt_len[c]);

    if (c != 0) {
        p = getbits(c - 1) + (1U << (c - 1));
    } else {
        p = 0;
    }
    return p;
}

/*---------------------------------------------------------------
 * lzh_decode — main decompression loop
 * Ghidra: FUN_3000_76cc
 *---------------------------------------------------------------*/
int lzh_decode(unsigned char *outbuf, long outsize)
{
    long outpos = 0;
    int blocksize = 0;
    unsigned int c;
    unsigned int dist;
    int match_len;
    long match_pos;

    init_bitstream();

    while (outpos < outsize) {
        if (--blocksize < 0) {
            blocksize = (int)getbits(16) - 1;
            read_pt_len(NT, TBIT, 3);
            read_c_len();
            read_pt_len(NP, PBIT, -1);
        }

        c = decode_c();

        if (c < 256) {
            outbuf[outpos++] = (unsigned char)c;
        } else {
            match_len = (int)(c - 253);   /* c - 0xFD */
            dist = decode_p();
            match_pos = outpos - (long)dist - 1;
            while (match_len > 0 && outpos < outsize) {
                if (match_pos >= 0)
                    outbuf[outpos] = outbuf[match_pos & WINMASK];
                else
                    outbuf[outpos] = 0x20;
                outpos++;
                match_pos++;
                match_len--;
            }
        }
    }

    return 0;
}

/* read_byte — reads one byte from input stream */
unsigned int read_byte(void) { return 0; /* stub */ }
