	page	,132
	title	crt0 - OS/2 C start up routine
;***
;crt0.asm - OS/2 C start up routine
;
;	Copyright (c) 1986-1990, Microsoft Corporation, All Rights Reserved
;
;Purpose:
;	How startup works in a few words -
;
;	The startup and termination is performed by a few modules
;
;		crt0.asm	OS/2 specific init/term
;		crt0msg.asm	OS/2 error messages
;		crt0dat.asm	remainder of shared OS/2 init/term
;
;	*************  IMPORTANT  *****************************************
;
;	The "DOSSEG" directive in this module must not be removed or else
;	the user will have to link with the "/DOSSEG" linker switch in
;	order to get proper segment ordering.
;
;	See the C documentation for more information about the /DOSSEG switch.
;
;	All assembler modules must be assembled with the /Mx switch, i.e.
;
;		masm -Mx crt0,;
;
;*******************************************************************************

;*******************************;*
	DOSSEG			;* specifies DOS SEGment ordering *
;*******************************;*

;*******************************;*
	INCLUDELIB OS2		;* Library Search Record for "OS2.LIB"
;*******************************;*

?DF=	1			; this is special for c startup

.xlist
include version.inc
include cmacros.inc
include msdos.inc
include heap.inc
include rterr.inc
.list

ifdef FARSTACK
ife sizeD
    error <You cannot have a far stack in Small or Medium memory models.>
endif
endif

	page
;===========================================================================
;
;	Segment definitions
;
;	The segment order is essentially the same as in XENIX.
;	This module is edited after assembly to contain a dosseg comment
;	record for the linker.
;
;===========================================================================

createSeg _TEXT, code,	word,	public, CODE,	<>
createSeg C_ETEXT,etext, word,	public, ENDCODE,<>
createSeg _DATA, data,	word,	public, DATA,	DGROUP
ifdef FARSTACK
; This segment has STACK class so it is at the end of DGROUP; it is the first
; entry in the near heap.
createSeg NEARHEAP, stubheap, para, <>, STACK, DGROUP
; Here is the real stack, not in DGROUP
createSeg STACK, stack, para,	stack,	STACK, <>
else ; not FARSTACK
createSeg STACK, stack, para,	stack,	STACK,	DGROUP
endif ;FARSTACK

defGrp	DGROUP			; define DGROUP

codeOFFSET equ	offset _TEXT:
dataOFFSET equ	offset DGROUP:

page

public	__aDBused		; debug value used by QC
	__aDBused = 0d6d6h

public	__aDBdoswp
	__aDBdoswp = 0d6d6h

public	__acrtused		; trick to force in startup
	__acrtused = 9876h	; funny value not easily matched in SYMDEB

extrn	__acrtmsg:abs		; trick to pull in startup messages


sBegin	stack
assumes ds,data
	db	2560 dup (?)	; default stack size (2.5 KB)
sEnd

ifdef FARSTACK
; Set up the first entry in the near heap
sBegin stubheap
      stubheap_size	dw	1		; 0-length free entry
      stubheap_next	dw	_HEAP_END	; mark end of heap
sEnd
endif ;FARSTACK


page

sBegin	data

extrn	_edata:byte		; end of data (start of bss)
extrn	_end:byte		; end of bss (start of stack)

externW __argc
externDP __argv
externDP environ
externB _osfile
externB _osmajor		; Major and Minor versions of OS/2
externB _osmode 		; real/protected mode flag


;	these are used by DOS C memory management (not used in Windows)

;*
;*	The following (_acmdln and _aenvseg) must be in this order!
;*
globalW _acmdln,0		; Offset of command line string in env
globalW _aenvseg,0		; Selector of Environment segment

globalW _atopsp,0		; top of stack (heap bottom)
globalW _aexit_rtn,<codeoffset __exit> ; NEAR pointer


;*
;*	The following (_asizds and _nheap_desc) must be in this order!
;*

globalW _asizds,0		; DGROUP size - 1 (in bytes)

labelW	<PUBLIC,_nheap_desc>	; near heap descriptor
_heap_seg_desc <0,_HEAP_NEAR OR _HEAP_MODIFY, 0,0,0,0,0,0>
.ERRE	flags	eq	2	; flags better be second word

.ERRE	_asizds+2	EQ	_nheap_desc	; make sure!


;	special C environment string

labelB	<PUBLIC,_acfinfo>
cfile	db	'_C_FILE_INFO='
cfilex	db	0
cfileln =	cfilex-cfile


;	Heap segment limits for compiler range checking

globalW _aseglo,1		; lowest segment
globalW _aseghi,0FFFFh		; highest segment

globalW __aDBswpflg,0		; QC smart debugger screen swap
globalW __aDBrterr,0

sEnd

	page


externP _cinit			; run-time initializers

externP _NMSG_WRITE		; pascal - write error message to stdout
externP _FF_MSGBANNER		; pascal - C/FORTRAN error message banner

externP _setargv		; process command line arguments
externP _setenvp		; process environment

externP main			; C main program
externP exit			; exit ( code )

if	sizeC
extrn	__exit:far		; _exit ( code) (cmacros name conflict)
else
extrn	__exit:near
endif

	extrn	DOSGETVERSION:far
	extrn	DOSGETMACHINEMODE:far

sBegin	code
assumes cs,code

page
;***
;_astart - start of all C programs
;
;Purpose:
;	Startup routine to initialize C run-time environment.
;
;Entry:
;	OS/2 Start-Up Conditions:
;
;	DS	= Automatic Data Segment
;	SS:SP	= Stack Segment and Initial Stack Pointer
;	ES	= 0000
;	AX	= Selector of Environment Segment
;	BX	= Offset of Command Line in Environment Segment
;	CX	= Size of Automatic Data Segment (CX=0 means 65536 bytes)
;	BP	= 0000
;
;Exit:
;	Exits to OS/2 via exit().
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

labelNP <PUBLIC,_astart>	; start address of all "C" programs
;
;

	cld			; set direction flag (up)

;
; Save initial values
;

	mov	[_aenvseg],ax	; Handle of Environment Segment
	mov	[_acmdln],bx	; Offset of Command Line String


;
; Init size of dgroup
;

	dec	cx		; cx = size DGROUP - 1
	mov	[_asizds],cx	; Size of Global Data Segment

;
; Carve an initial near heap out of the bottom of the stack.
;

	mov	bx,dataoffset _nheap_desc ; ds:bx = near heap descriptor
	mov	[bx].checksum,ds; save DS in heap descriptor

ifdef FARSTACK
	; initialize the near heap with a small entry in the stubheap segment
	mov	[bx].segsize, dataOFFSET(stubheap_next) + 2
	mov	[bx].last, dataOFFSET(stubheap_next)
	mov	[bx].start, dataOFFSET(stubheap_size)
	mov	[bx].rover, dataOFFSET(stubheap_size)
else ;not FARSTACK
	and	sp,not 1	; make even (if not)
	mov	[bx].segsize,sp ; save as segment size

	.ERRE	_HEAP_END -2	; make sure they're equal
	mov	ax,_HEAP_END	; get end-of-heap flag
	push	ax		; into place
	mov	[bx].last,sp	; pointer to end-of-heap
	not	ax		; ax = 1 (0-length free entry)
	push	ax		; first heap entry
	mov	[bx].start,sp	; init start/rover
	mov	[bx].rover,sp
endif ;FARSTACK

;
; Now initialize the top of stack location
;

	mov	[_atopsp],sp	; Top of Stack Region

;
;	get OS/2 version
;
	push	ax
	mov	ax,sp

	push	ss
	push	ax		; address for version
	call	DOSGETVERSION
	pop	ax
	xchg	ah,al		; swap bytes
	mov	word ptr [_osmajor],ax
;
; Get real/protected mode flag
;
	mov	ax,dataOFFSET _osmode
	push	ds
	push	ax
	call	DOSGETMACHINEMODE

;****
;*	C_FILE_INFO must be processed before _cinit() is called
;*	because _cinit() checks handles 0-2 for device/pipe.
;****

;	fix up files inherited from child using _C_FILE_INFO

	call	inherit

;	process command line and environment

	call	_setargv	; crack command line
	call	_setenvp	; crack environment

;
;	[NOTE: bp must be 0 at this point so that debug stack back
;	tracing works (i.e., end of stack is marked).  Since
;	OS/2 inits bp to 0, no extra code to do that is necessary.
;

;	do necessary initialization

	call	_cinit		; shared by OS/2 and Windows

;	call main and exit

if	sizeD
	push	word ptr [environ+2] ; the environment is not always in DS
endif
	push	word ptr [environ]

if	sizeD
	push	word ptr [__argv+2] ; the arguments are not always in DS
endif
	push	word ptr [__argv]

	push	[__argc]	; argument count

	call	main		; main ( argc , argv , envp )

; use whatever is in ax after returning here from the main program

	push	ax
	callcrt exit		; exit (AX)
				;   _exit will call terminators

page
;***
;_amsg_exit, _cintDIV - Fast exit fatal errors
;
;Purpose:
;	Exit the program with error code of 255 and appropriate error
;	message.  cintDIV is used for integer divide by zero, amsg_exit
;	is for other run time errors.
;
;Entry:
;	AX	= error message number (amsg_exit only).
;
;Exit:
;	Calls exit() [cintDIV] or indirect through _aexit_rtn [amsg_exit].
;	For multi-thread: calls _exit() function
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

labelNP <PUBLIC,_cintDIV>

	assumes ds,nothing
ifdef FARSTACK
	mov	ax,DGROUP
	mov	ds,ax
	assumes ds,data
else
	assumes ss,data
endif ;FARSTACK

;	_NMSG_WRITE will reestablish ds = DGROUP

	mov	ax,_RT_INTDIV	; Integer divide by zero interrupt
	mov	[_aexit_rtn],codeoffset _exit ; call high-level exit()
				; to cause file buffer flushing

labelNP <PUBLIC,_amsg_exit>
	push	ax		; message number for _NMSG_WRITE
	callcrt _FF_MSGBANNER	; run-time error message banner
	callcrt _NMSG_WRITE	; write error message to stdout

	assumes ds,data

	mov	ax,255
	push	ax
if sizeC
	push	cs
endif
	call	word ptr [_aexit_rtn] ; _exit(255) ordinarily
				; (or exit(255) for div by 0)
				; NEAR routine pointer

page
;***
;inherit - process C_FILE_INFO variable from the environment
;
;Purpose:
;	locates and interprets the "C_FILE_INFO" environment variable.
;	The value of this variable is written into the "_osfile" array.
;
;	DOS and OS/2:	"_C_FILE_INFO=<AA><BB><CC><DD>" + "\0"
;
;		In this case the variable is a null-terminated string
;		(a well-formed environment variable) where each pair
;		of successive letters form one byte in _osfile.
;		The letters are in the range "A" through "P", representing
;		0 through 15.  The first letter of each pair is the more
;		significant 4 bits of the result.
;
;Entry:
;
;Exit:
;
;Uses:
;	AX, BX, CX, DX, SI, DI, ES
;
;Exceptions:
;
;*******************************************************************************


inherit proc	near
	mov	bx,cfileln
	xor	di,di
	mov	es,[_aenvseg]	; ES:DI points to environment strings
	mov	cx,07FFFh	; environment max = 32K
	cmp	byte ptr es:[di],0
	jne	cfilp
	inc	di		; first environment string is null
cfilp:
	cmp	byte ptr es:[di],0 ; check for end of environment
	je	nocfi		;   yes - not found
	mov	si,dataOFFSET cfile
	mov	dx,cx		; DX has count of bytes left in environment
	mov	cx,bx		; BX=cfileln
	repe	cmpsb		; compare for '_C_FILE_INFO='
	mov	cx,dx		; environment max = 32K
	je	gotcfi		;   yes - now do something with it
	xor	ax,ax
	repne	scasb		; search for end of current string
	je	cfilp		; keep searching
;
	jmp	short nocfi	;   no 00 !!! - assume end of env.
;
;	found _C_FILE_INFO, so transfer handle info into _osfile
;
gotcfi:
	push	es
	push	ds

	pop	es		; es = DGROUP
	mov	si,di		; si = startup of _osfile info
	pop	ds		; ds = env. segment
	assumes es,data
	assumes ds,nothing

	mov	di,dataOFFSET _osfile ; di = _osfile block

; _C_FILE_INFO:
;	Read in pairs of characters, expected to be ['A'..'P'].
;	Each pair represents one byte in the _osfile array.
;	A null is the normal terminator for the string.
;
	mov	cl,4
CL_FOUR equ	cl	; normal can't

osfile_lp:
	lodsb			; get next byte (more significant 4 bits)
	sub	al,'A'
	jb	nocfi		; string should terminate with a null
	shl	al,CL_FOUR
	xchg	dx,ax		; save in DL

	lodsb			; get next byte (less significant 4 bits)
	sub	al,'A'
	jb	nocfi
	or	al,dl		; this assumes that AL is in range
	stosb
	jmp	short osfile_lp

nocfi:
ifdef FARSTACK
	mov	ax,DGROUP
	mov	ds,ax		; ds = dgroup
else
	push	ss
	pop	ds		; ds = DGROUP
endif
	assumes ds,data

	ret
inherit endp


; Location that holds DGROUP segment (necessary for .COM file support)

globalW _dataseg,DGROUP

sEnd

START_ADDR	equ <end _astart>

	START_ADDR
