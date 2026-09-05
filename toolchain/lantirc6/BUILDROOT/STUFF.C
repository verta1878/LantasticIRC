/* Stuff keyboard buffer and run INST6.EXE */
#include <dos.h>
#include <process.h>
#include <stdlib.h>
#include <string.h>

void stuff_key(unsigned char scancode, unsigned char ascii)
{
    union REGS r;
    r.h.ah = 0x05;
    r.h.ch = scancode;
    r.h.cl = ascii;
    int86(0x16, &r, &r);
}

int main()
{
    int i;
    /* Stuff 20 Enter keys (scancode 0x1C, ascii 0x0D) */
    for (i = 0; i < 15; i++)
        stuff_key(0x1C, 0x0D);
    
    /* Now exec INST6.EXE */
    return spawnl(P_WAIT, "INST6.EXE", "INST6.EXE", NULL);
}
