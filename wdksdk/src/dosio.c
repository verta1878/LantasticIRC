/* dosio.c — DOS INT 21h I/O wrappers
 * Compatible with both MSC 6.0a and Borland C 3.1
 * GPLv3 — the crew 4free
 */
#include <dos.h>

int dos_read(int handle, void far *buf, unsigned int count)
{
    union REGS inr, outr;
    struct SREGS sr;
    inr.h.ah = 0x3F;
    inr.x.bx = handle;
    inr.x.cx = count;
    inr.x.dx = FP_OFF(buf);
    sr.ds = FP_SEG(buf);
    intdosx(&inr, &outr, &sr);
    if (outr.x.cflag) return -1;
    return outr.x.ax;
}

int dos_write(int handle, void far *buf, unsigned int count)
{
    union REGS inr, outr;
    struct SREGS sr;
    inr.h.ah = 0x40;
    inr.x.bx = handle;
    inr.x.cx = count;
    inr.x.dx = FP_OFF(buf);
    sr.ds = FP_SEG(buf);
    intdosx(&inr, &outr, &sr);
    if (outr.x.cflag) return -1;
    return outr.x.ax;
}

int dos_open(const char far *path, int mode)
{
    union REGS inr, outr;
    struct SREGS sr;
    inr.h.ah = 0x3D;
    inr.h.al = (unsigned char)mode;
    inr.x.dx = FP_OFF(path);
    sr.ds = FP_SEG(path);
    intdosx(&inr, &outr, &sr);
    if (outr.x.cflag) return -1;
    return outr.x.ax;
}

int dos_create(const char far *path)
{
    union REGS inr, outr;
    struct SREGS sr;
    inr.h.ah = 0x3C;
    inr.x.cx = 0;
    inr.x.dx = FP_OFF(path);
    sr.ds = FP_SEG(path);
    intdosx(&inr, &outr, &sr);
    if (outr.x.cflag) return -1;
    return outr.x.ax;
}

void dos_close(int handle)
{
    union REGS inr, outr;
    inr.h.ah = 0x3E;
    inr.x.bx = handle;
    intdos(&inr, &outr);
}

long dos_lseek(int handle, long offset, int whence)
{
    union REGS inr, outr;
    inr.h.ah = 0x42;
    inr.h.al = (unsigned char)whence;
    inr.x.bx = handle;
    inr.x.cx = (unsigned int)(offset >> 16);
    inr.x.dx = (unsigned int)(offset & 0xFFFF);
    intdos(&inr, &outr);
    if (outr.x.cflag) return -1L;
    return ((long)outr.x.dx << 16) | (long)outr.x.ax;
}
