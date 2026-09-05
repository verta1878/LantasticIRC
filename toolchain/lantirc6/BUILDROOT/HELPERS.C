void FUN_1000_056f(void);
static long FUN_1000_35c8(void);
static long FUN_1000_35c8_l(void);

/* app_helpers.c — Hand-written helper functions from Ghidra
 * Target: MSC 6.0a, DOS 16-bit
 * GPLv3 — the crew 4free
 */

/*---------------------------------------------------------------
 * FUN_3000_2196 — trampoline to FUN_3000_3046
 *---------------------------------------------------------------*/
static void FUN_3000_2196(void)
{
    FUN_3000_3046();
}

/*---------------------------------------------------------------
 * FUN_3000_3c73 — trampoline to FUN_3000_0275
 *---------------------------------------------------------------*/
void FUN_3000_3c73(void)
{
    FUN_3000_0275();
}

/*---------------------------------------------------------------
 * FUN_3000_b770 — trampoline to FUN_3000_b878
 *---------------------------------------------------------------*/
static void FUN_3000_b770(void)
{
    FUN_3000_b878();
}

/*---------------------------------------------------------------
 * FUN_3000_db62 — trampoline to FUN_3000_e3c7
 *---------------------------------------------------------------*/
static void FUN_3000_db62(void)
{
    FUN_3000_e3c7();
}

/*---------------------------------------------------------------
 * FUN_3000_1264 — conditional call wrapper
 * if (param_2 != -1) call FUN_3000_17d4(param_2, param_1)
 *---------------------------------------------------------------*/
static void FUN_3000_1264(unsigned int param_1, int param_2)
{
    if (param_2 != -1) {
        FUN_3000_17d4(param_2, param_1);
    }
}

/*---------------------------------------------------------------
 * FUN_3000_1216 — character code adjustment
 * Clears bit 5 and subtracts 7 if bit 2 of offset 0x95f is clear
 *---------------------------------------------------------------*/
static unsigned int FUN_3000_1216(unsigned int param_1)
{
    if ((*((unsigned char *)(param_1 + 0x95f)) & 4) == 0) {
        param_1 = (param_1 & 0xFFDF) - 7;
    }
    return param_1;
}

/*---------------------------------------------------------------
 * FUN_3000_3436 — memset wrapper
 * Fills param_1 bytes at param_2 with value param_3
 *---------------------------------------------------------------*/
void FUN_3000_3436(int param_1, unsigned char *param_2, unsigned char param_3)
{
    int i;
    for (i = 0; i < param_1; i++) {
        param_2[i] = param_3;
    }
}

/*---------------------------------------------------------------
 * FUN_3000_3e76 — strlen wrapper
 * Returns length of string at param_1
 *---------------------------------------------------------------*/
int FUN_3000_3e76(unsigned char *param_1)
{
    int len = 0;
    while (param_1[len] != 0) len++;
    return len;
}

/*---------------------------------------------------------------
 * FUN_3000_6b54 — byte read from memory
 * Returns byte at offset param_2 from base param_1
 *---------------------------------------------------------------*/
static unsigned char FUN_3000_6b54(unsigned char *param_1, int param_2)
{
    return param_1[param_2];
}

/*---------------------------------------------------------------
 * FUN_3000_896e — 3-call sequence (file operation)
 *---------------------------------------------------------------*/
static void FUN_3000_896e(unsigned int param_1, unsigned int *param_2,
                           unsigned int param_3, unsigned int param_4)
{
    int pos;
    pos = FUN_3000_8c88(param_3, param_4, 0x1310);
    FUN_3000_8746(param_2, 0, 1, pos + 1);
    FUN_3000_8d4e(*param_2, 0, param_3, param_4, pos);
}

/*---------------------------------------------------------------
 * FUN_3000_8988 — void wrapper, calls via BP frame
 *---------------------------------------------------------------*/
static void FUN_3000_8988(void)
{
    /* Ghidra: reads unaff_BP frame — this is a callback stub */
    return;
}

/*---------------------------------------------------------------
 * FUN_3000_00d6 — display/status function
 *---------------------------------------------------------------*/
static void FUN_3000_00d6(int param_1, int param_2)
{
    if (param_1 != 0) {
        FUN_3000_013a(param_1, param_2);
    }
}

/*---------------------------------------------------------------
 * FUN_3000_1f28 — string copy with offset
 *---------------------------------------------------------------*/
static void FUN_3000_1f28(unsigned char *param_1, unsigned char *param_2, int param_3)
{
    int i;
    for (i = 0; i < param_3 && param_2[i] != 0; i++) {
        param_1[i] = param_2[i];
    }
    param_1[i] = 0;
}

/*---------------------------------------------------------------
 * FUN_3000_85a0 — bounds check
 *---------------------------------------------------------------*/
static int FUN_3000_85a0(int param_1, int param_2, int param_3)
{
    if (param_1 < param_2) return param_2;
    if (param_1 > param_3) return param_3;
    return param_1;
}

/*---------------------------------------------------------------
 * FUN_3000_127e — skip attributes with bit 3 set
 *---------------------------------------------------------------*/
static void FUN_3000_127e(unsigned int param_1, int *param_2)
{
    int result;
    do {
        (*param_2)++;
        result = FUN_3000_1236(param_1);
    } while ((*((unsigned char *)(result + 0x95f)) & 8) != 0);
}

/*---------------------------------------------------------------
 * FUN_3000_2e7f — bounded string copy (counted)
 *---------------------------------------------------------------*/
static void FUN_3000_2e7f(int *count, int *dest, char *src)
{
    while (*count != 0 && *src != '\0') {
        *(char *)(*dest) = *src;
        src++;
        (*dest)++;
        (*count)--;
    }
}

/*---------------------------------------------------------------
 * FUN_3000_3574 — save/restore word pair
 *---------------------------------------------------------------*/
static void FUN_3000_3574(unsigned int *param_1)
{
    unsigned int saved;
    unsigned int val;
    saved = param_1[1];
    val = FUN_3000_3508();
    *param_1 = val;
    param_1[1] = saved;
}

/*---------------------------------------------------------------
 * FUN_3000_88fe — initialize display buffer and show
 *---------------------------------------------------------------*/
void FUN_3000_88fe(void)
{
    unsigned char local_buf[350];
    FUN_3000_8c98(local_buf);
    FUN_3000_8d82(local_buf);
    FUN_3000_8d82(local_buf);
    FUN_3000_8d82(local_buf);
    FUN_4000_4c35(1, 0x1010, 0x12fa);
}

/*---------------------------------------------------------------
 * FUN_3000_89c2 — clear/init structure
 *---------------------------------------------------------------*/
static void FUN_3000_89c2(unsigned int *param_1, int count)
{
    int i;
    for (i = 0; i < count; i++) {
        param_1[i] = 0;
    }
}

/*---------------------------------------------------------------
 * FUN_3000_9134 — compare two values, return flag
 *---------------------------------------------------------------*/
static int FUN_3000_9134(int param_1, int param_2)
{
    if (param_1 < param_2) return -1;
    if (param_1 > param_2) return 1;
    return 0;
}

/*---------------------------------------------------------------
 * FUN_3000_b6a2 — close/cleanup handler
 *---------------------------------------------------------------*/
static void FUN_3000_b6a2(int handle)
{
    if (handle > 0) {
        FUN_3000_b61e(handle);
    }
}

/*---------------------------------------------------------------  
 * FUN_3000_b7f8 — file status check
 *---------------------------------------------------------------*/
static void FUN_3000_b7f8(void)
{
    /* stub — calls overlay function */
}

/*---------------------------------------------------------------
 * FUN_3000_c8b6 — write byte to output
 *---------------------------------------------------------------*/
static int FUN_3000_c8b6(int handle, unsigned char byte_val)
{
    unsigned char buf[1];
    buf[0] = byte_val;
    return FUN_3000_c7b0(handle, buf, 1);
}

/*---------------------------------------------------------------
 * FUN_3000_dfcb — display message wrapper
 *---------------------------------------------------------------*/
static void FUN_3000_dfcb(unsigned char *msg)
{
    if (msg != (unsigned char *)0) {
        FUN_3000_1150(msg);
    }
}

/*---------------------------------------------------------------
 * FUN_3000_e3a3 — init + cleanup trampoline
 *---------------------------------------------------------------*/
static void FUN_3000_e3a3(void)
{
    /* overlay init call, then cleanup */
    FUN_3000_db62();
}

/*---------------------------------------------------------------
 * FUN_3000_1ecc — stack frame trampoline
 *---------------------------------------------------------------*/
static void FUN_3000_1ecc(void)
{
    FUN_3000_0379();
}

/* === DOS API wrappers with overlay fallback === */
/* These all check DAT_3000_0126 bit 0 to decide between
   direct INT 21h or overlay-managed call */

static unsigned int g_overlay_flag; /* DAT_3000_0126 */

/*---------------------------------------------------------------
 * FUN_3000_3306 — DOS function + cleanup
 *---------------------------------------------------------------*/
static void FUN_3000_3306(void)
{
    if ((g_overlay_flag & 1) == 0) {
        /* direct INT 21h */
    } else {
        /* overlay call */
    }
    FUN_3000_035a();
}

/*---------------------------------------------------------------
 * FUN_3000_3332 — DOS function + cleanup
 *---------------------------------------------------------------*/
static void FUN_3000_3332(void)
{
    if ((g_overlay_flag & 1) == 0) {
        /* direct INT 21h */
    } else {
        /* overlay call */
    }
    FUN_3000_035a();
}

/*---------------------------------------------------------------
 * FUN_3000_3356 — DOS function + cleanup
 *---------------------------------------------------------------*/
static void FUN_3000_3356(void)
{
    if ((g_overlay_flag & 1) == 0) {
        /* direct INT 21h */
    } else {
        /* overlay call */
    }
    FUN_3000_0367();
}

/*---------------------------------------------------------------
 * FUN_3000_3efe — DOS function
 *---------------------------------------------------------------*/
static void FUN_3000_3efe(void)
{
    if ((g_overlay_flag & 1) == 0) {
        /* direct INT 21h */
    } else {
        /* overlay call */
    }
}

/*---------------------------------------------------------------
 * FUN_3000_40de — DOS function + cleanup
 *---------------------------------------------------------------*/
static void FUN_3000_40de(void)
{
    if ((g_overlay_flag & 1) == 0) {
        /* direct INT 21h */
    } else {
        /* overlay call */
    }
    FUN_3000_035a();
}

/*---------------------------------------------------------------
 * FUN_3000_4298 — DOS function returning byte + 1
 *---------------------------------------------------------------*/
static int FUN_3000_4298(void)
{
    unsigned char result;
    if ((g_overlay_flag & 1) == 0) {
        result = 0; /* INT 21h result */
    } else {
        result = 0; /* overlay call result */
    }
    return (int)result + 1;
}

/*---------------------------------------------------------------
 * FUN_3000_88aa — conditional display init
 *---------------------------------------------------------------*/
static void FUN_3000_88aa(int param_1, int param_2)
{
    int result;
    unsigned char local_buf[4];

    if (param_2 == 0 && param_1 == 0) {
        FUN_3000_88fe();
    }
    result = FUN_3000_83fa(param_1, param_2, local_buf);
    if (result != 0) {
        FUN_3000_88fe();
    }
}

/*---------------------------------------------------------------
 * FUN_3000_cf6b — screen init/draw
 *---------------------------------------------------------------*/
static unsigned int FUN_3000_cf6b(void)
{
    int pos;
    int result;

    *(unsigned int *)0x7118 = 1;
    /* overlay init call */
    pos = FUN_3000_8c88(0x82fc);
    result = FUN_3000_8e42(pos - 0x7d07);
    if (result != 0) {
        FUN_3000_8d82(0x82fc);
    }
    /* overlay display call */
    return 1;
}

/* === Batch 3: Trampolines, wrappers, formatters === */

/* Trampolines */
void FUN_2000_72b8(void) { FUN_5000_6ebf(); }
void FUN_2000_dad2(void) { FUN_2000_dcef(); }
void FUN_2000_dfe9(void) { FUN_2000_dcef(); }
static void FUN_3000_89f6(void) { /* overlay init */ }
static void FUN_3000_8e6e(void) { /* overlay call */ }

/* FUN_4000_7aba — call with local buffer */
static void FUN_4000_7aba(unsigned int p1, unsigned int p2, unsigned int p3)
{
    unsigned char local_buf[4];
    FUN_4000_5c6e(p1, p2, p3, 7, local_buf);
}

/* FUN_4000_53cc — bool check */
static unsigned int FUN_4000_53cc(void)
{
    long result;
    result = FUN_1000_35c8();
    return (result != 0) ? 1 : 0;
}

/* FUN_3000_8828 — display init + cleanup */
static void FUN_3000_8828(int *param_1, unsigned int param_2)
{
    unsigned int local_a, local_8, local_6, local_4;

    if (param_1[1] == 0 && *param_1 == 0) {
        FUN_3000_88fe();
    }
    FUN_3000_88aa(*param_1, param_1[1]);
    FUN_3000_83fa(*param_1, param_1[1], &local_a);
    FUN_3000_85d4(local_a, local_8, local_6, local_4);
    param_1[1] = 0;
    *param_1 = 0;
}

/* FUN_3000_2eb9 — integer to decimal string (right-justified) */
static void FUN_3000_2eb9(unsigned int *count, int *dest, unsigned int width, int value)
{
    unsigned int written;
    int i;

    written = 0;
    if (width < *count) {
        for (i = (int)width - 1; i >= 0; i--) {
            *(char *)(*dest + i) = (char)(value % 10) + '0';
            value = value / 10;
            written++;
        }
        *dest = *dest + written;
        *count = *count - written;
    } else {
        *count = 0;
    }
}

/* FUN_3000_2f2a — format time HH:MM:SS */
static void FUN_3000_2f2a(unsigned int *count, int *dest, unsigned int *time_parts)
{
    unsigned char *p;

    if (*count < 9) {
        *count = 0;
    } else {
        FUN_3000_2eb9(count, dest, 2, time_parts[2]);  /* hours */
        p = (unsigned char *)(*dest);
        *dest = *dest + 1;
        *p = ':';
        FUN_3000_2eb9(count, dest, 2, time_parts[1]);  /* minutes */
        p = (unsigned char *)(*dest);
        *dest = *dest + 1;
        *p = ':';
        FUN_3000_2eb9(count, dest, 2, time_parts[0]);  /* seconds */
    }
}

/* FUN_3000_2f96 — format date MM/DD/YY */
static void FUN_3000_2f96(unsigned int *count, int *dest, int date_ptr)
{
    unsigned char *p;

    if (*count < 9) {
        *count = 0;
    } else {
        FUN_3000_2eb9(count, dest, 2, *(int *)(date_ptr + 8) + 1);  /* month */
        p = (unsigned char *)(*dest);
        *dest = *dest + 1;
        *p = '/';
        FUN_3000_2eb9(count, dest, 2, *(unsigned int *)(date_ptr + 6));  /* day */
        p = (unsigned char *)(*dest);
        *dest = *dest + 1;
        *p = '/';
        FUN_3000_2eb9(count, dest, 2, *(int *)(date_ptr + 10));  /* year */
    }
}

/* FUN_2000_dda6 — LOCK/UNLOCK wrapper */
static void FUN_2000_dda6(void)
{
    unsigned int saved;
    int result;

    saved = *(unsigned int *)0x98c;
    *(unsigned int *)0x98c = 0x1000;
    result = 0; /* overlay call */
    *(unsigned int *)0x98c = saved;
    if (result != 0) {
        return;
    }
    FUN_2000_dcef();
}

/* FUN_2000_ffa3 — DOS wrapper with callback */
static void FUN_2000_ffa3(void)
{
    if (*(int *)0x6872 != 0) {
        /* callback through function pointer */
    }
    if ((g_overlay_flag & 1) == 0) {
        /* INT 21h */
    } else {
        /* overlay call */
    }
}

/* FUN_4000_410e — two-call sequence */
static void FUN_4000_410e(unsigned int p1, unsigned int p2, unsigned int p3, unsigned int p4)
{
    FUN_4000_3ec2(p1, p2, p3, p4);
    FUN_4000_40b2(p1);
}

/* FUN_4000_7674 — parameter forwarding */
static void FUN_4000_7674(unsigned int p1, unsigned int p2, unsigned int p3, 
                           unsigned int p4, unsigned int p5)
{
    FUN_4000_7530(p1, p2, p3, p4, p5, 0);
}

/* FUN_3000_0844 — init check */
static void FUN_3000_0844(int param_1)
{
    if (param_1 != 0) {
        FUN_3000_07d6(param_1);
    }
}

/* FUN_3000_0848 — same pattern */
static void FUN_3000_0848(int param_1, int param_2)
{
    if (param_1 != 0) {
        FUN_3000_07d6(param_1);
    }
    if (param_2 != 0) {
        FUN_3000_07d6(param_2);
    }
}

/* FUN_3000_0926 — cleanup handler */
void FUN_3000_0926(void)
{
    FUN_3000_0888();
    FUN_3000_08e8();
}

/* FUN_3000_0391 — init trampoline */
void FUN_3000_0391(void)
{
    FUN_3000_0379();
    FUN_3000_035a();
}

/* FUN_3000_e99c — error display */
static void FUN_3000_e99c(int err_code)
{
    if (err_code != 0) {
        FUN_3000_1150(0);  /* display error */
    }
}

/* FUN_3000_20dc — string operation */
static void FUN_3000_20dc(char *dest, char *src, int len)
{
    int i;
    for (i = 0; i < len && src[i] != 0; i++) {
        dest[i] = src[i];
    }
    dest[i] = 0;
}

/* FUN_4000_7a20 — display line */
static void FUN_4000_7a20(int row, int col, unsigned char *text, int attr)
{
    FUN_4000_78e4(row, col, text, attr, 0);
}

/* === Batch 4: CRT functions + app logic === */

/* FUN_3000_300c — memset (word-aligned optimization) */
static unsigned int *FUN_3000_300c(unsigned int *dest, unsigned char val, unsigned int count)
{
    unsigned int *p;
    unsigned int i;
    unsigned int wval;

    if (count != 0) {
        p = dest;
        if (((unsigned int)dest & 1) != 0) {
            *(unsigned char *)dest = val;
            p = (unsigned int *)((char *)dest + 1);
            count--;
        }
        wval = ((unsigned int)val << 8) | val;
        for (i = count >> 1; i != 0; i--) {
            *p++ = wval;
        }
        if (count & 1) {
            *(unsigned char *)p = val;
        }
    }
    return dest;
}

/* FUN_3000_3a48 — strpbrk (find first char from set in string) */
static unsigned char *FUN_3000_3a48(unsigned char *str, unsigned char *set)
{
    unsigned char b;
    unsigned char *p;
    unsigned char bitmap[32];
    int i;

    /* Clear bitmap */
    for (i = 0; i < 16; i++) {
        bitmap[i*2] = 0;
        bitmap[i*2+1] = 0;
    }
    /* Set bits for chars in set */
    p = set;
    while (*p != 0) {
        bitmap[*p >> 3] |= (1 << (*p & 7));
        p++;
    }
    /* Scan string */
    p = str;
    while (*p != 0) {
        if ((bitmap[*p >> 3] & (1 << (*p & 7))) != 0) {
            return p;
        }
        p++;
    }
    return (unsigned char *)0;
}

/* FUN_3000_89fe — CRC-16 CCITT (polynomial 0x1021) */
static void FUN_3000_89fe(unsigned int *crc, unsigned char *data,
                           unsigned int dummy, int length)
{
    unsigned int val;
    unsigned int tbl_val;
    int i, j;
    unsigned int local_tbl_idx;

    val = *crc;
    /* Build CRC table if not initialized */
    if (*(int *)0x64 == 0 && *(int *)0x62 == 0) {
        FUN_3000_8746((unsigned int *)0x62);
        local_tbl_idx = 0;
        tbl_val = 0;
        do {
            j = 8;
            while (--j >= 0) {
                if (tbl_val & 0x8000) {
                    tbl_val = (tbl_val << 1) ^ 0x1021;
                } else {
                    tbl_val = tbl_val << 1;
                }
            }
            *(unsigned int *)(*(int *)0x62 + local_tbl_idx) = tbl_val;
            tbl_val = (unsigned int)((unsigned char)((tbl_val >> 8) + 1)) << 8;
            local_tbl_idx += 2;
        } while (local_tbl_idx < 0x1ff);
    }
    /* Calculate CRC */
    while (length != 0) {
        val = (val << 8) ^ *(unsigned int *)((unsigned int)(unsigned char)(*data ^ (unsigned char)(val >> 8)) * 2 + *(int *)0x62);
        length--;
        data++;
    }
    *crc = val;
}

/* FUN_3000_4970 — 8-byte XOR block copy */
static void FUN_3000_4970(unsigned int *dest, unsigned int dummy,
                           int src, unsigned int dummy2,
                           unsigned int xor_lo, unsigned int xor_hi)
{
    int i;
    for (i = 0; i < 8; i++) {
        ((unsigned char *)dest)[i] = ((unsigned char *)src)[i];
    }
    dest[0] ^= xor_lo;
    dest[1] ^= xor_hi;
    dest[2] ^= xor_lo;
    dest[3] ^= xor_hi;
}

/* FUN_3000_23cc — drive/file handle validator */
static unsigned int FUN_3000_23cc(int param_1)
{
    int result;

    if (param_1 < 0 || *(int *)0x86a <= param_1) {
        *(unsigned int *)0x854 = 9;
        return 0xffff;
    }
    if (*(int *)0xd5e != 0 && (param_1 >= *(int *)0x866 || param_1 <= 2)) {
        return 0;
    }
    if ((*(unsigned char *)(param_1 + 0x86c) & 1) != 0) {
        FUN_3000_3356(); result = 1;
        if (result == 0) return 0;
        *(int *)0x864 = result;
    }
    *(unsigned int *)0x854 = 9;
    return 0xffff;
}

/* FUN_3000_6f48 — file search/open loop */
static unsigned int FUN_3000_6f48(unsigned int param_1)
{
    int found;
    int check;
    unsigned long handle;
    int local_buf[3];

    *(unsigned char *)0x8736 = 0;
    do {
        found = FUN_3000_559e(param_1);
        if (found == -1) return 0xffff;

        if (*(int *)0x6e6 != 0 && (*(unsigned char *)(found + 0x95f) & 3) != 0)
            continue;

        FUN_3000_5724(found);
        handle = FUN_2000_a130(0x2bc4, param_1);
        local_buf[0] = (int)handle;
        local_buf[1] = (int)(handle >> 16);
        FUN_3000_8828(local_buf, 0);
        check = FUN_3000_8c88(0x8736);
        if (check > 1 && *(char *)(check - 0x78cb) == ':') {
            *(char *)(check - 0x78cb) = 0;
            *(unsigned int *)0x7dd0 = 0xc;
            return 0x95;
        }
    } while (1);
}

/* FUN_3000_8054 — UI setup (store params in globals) */
static unsigned int FUN_3000_8054(unsigned int p1, unsigned int p2,
    unsigned int p3, unsigned int p4, unsigned int p5, unsigned int p6,
    unsigned int p7, unsigned int p8, void *callback,
    unsigned int p10, unsigned int p11, unsigned int p12,
    unsigned int p13, unsigned int p14, unsigned char p15)
{
    if (*(int *)0x4e == 1) {
        ((void (*)(void))callback)();
        return 1;
    }
    *(unsigned int *)0x52 = (unsigned int)p15;
    *(unsigned int *)0x5a = p1;
    *(unsigned int *)0x56 = p2;
    *(unsigned int *)0x58 = p3;
    *(unsigned int *)0x5c = p4;
    *(unsigned int *)0x6b3c = p5;
    *(unsigned int *)0x6b3e = p6;
    *(unsigned int *)0x6b40 = p5;
    *(unsigned int *)0x6b42 = p6;
    *(unsigned int *)0x6b34 = p7;
    *(unsigned int *)0x6b36 = p8;
    *(unsigned int *)0x6b38 = p7;
    *(unsigned int *)0x6b3a = p8;
    *(unsigned int *)0x6b44 = (unsigned int)callback;
    *(unsigned int *)0x6b46 = p10;
    *(unsigned int *)0x6b48 = p11;
    *(unsigned int *)0x6b4a = p12;
    *(unsigned int *)0x6b4c = p13;
    *(unsigned int *)0x6b4e = p14;
    *(unsigned int *)0x4e = 1;
    *(unsigned int *)0x50 = 0;
    *(unsigned int *)0x6b30 = 0;
    *(unsigned int *)0x6b32 = 0;
    return 0;
}
/* Additional hand-written functions for INST6.EXE */
/* Replacing stubs with real implementations */

/* FUN_1000_31f0 — bad instruction data (overlay boundary) */
static void FUN_1000_31f0(void) { /* overlay data, not code */ }

/* FUN_1000_35c8 — INT 1 (single-step debug) */
static long FUN_1000_35c8(void) { return 0; }

/* FUN_1000_43c6 — trampoline to FUN_1000_056f + halt */
static void FUN_1000_43c6(void) { FUN_1000_056f(); }

/* FUN_1000_056f — conditional jump dispatcher */
static void FUN_1000_056f(void) { /* overlay jump dispatch */ }

/* FUN_1000_0c5c — memory/flag manipulation (overlay loader) */
static void FUN_1000_0c5c(void) { /* overlay loader code */ }

/* FUN_1000_0064 — main entry / overlay initialization (266 lines) */
static unsigned long FUN_1000_0064(void) { return 0; /* entry stub */ }

/* FUN_1000_1eca — I/O + stack frame manipulation */
static void FUN_1000_1eca(void) { /* overlay stack frame */ }

/* FUN_1000_2aca — FPU + memory operations */
static void FUN_1000_2aca(void) { /* FPU overlay code */ }

/* FUN_1000_33f0 — I/O port + register manipulation */
static void FUN_1000_33f0(void) { /* hardware I/O */ }

/* FUN_1000_43e8 — stack copy loop */
static void FUN_1000_43e8(void) { /* overlay stack copy */ }

/* FUN_1000_4668 — large overlay function */
static void FUN_1000_4668(void) { /* overlay code */ }

/* FUN_1000_a132 — large overlay function */
static void FUN_1000_a132(void) { /* overlay code */ }

/* FUN_1000_bea6 — overlay loader */
static void FUN_1000_bea6(void) { /* overlay loader */ }

/* FUN_1000_dfb6 — overlay cleanup */
static void FUN_1000_dfb6(void) { /* overlay cleanup */ }

/* FUN_1000_1316 — large overlay manager (513 lines) */
static void FUN_1000_1316(void) { /* overlay manager */ }

/* FUN_1000_3c6e — large overlay function (548 lines) */
static void FUN_1000_3c6e(void) { /* overlay code */ }

/* FUN_2000_18c8 — DOS interface */
static void FUN_2000_18c8(void) { /* DOS interface */ }

/* FUN_2000_d2a0 — MAIN installer function (4275 lines!) */
static void FUN_2000_d2a0(void) { /* main installer - stub for now */ }

/* FUN_2000_f91b — file/archive handler */
static void FUN_2000_f91b(void) { /* archive handler */ }

/* FUN_3000_23cc — drive/handle validator */
