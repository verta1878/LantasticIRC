	page	,132
	title	crt0dat - OS/2 C run-time initialization/termination
;***
;crt0dat.asm - OS/2 C run-time initialization/termination routines
;
;	Copyright (c) 1986-1990, Microsoft Corporation, All Rights Reserved
;
;Purpose:
;	This module contains the routines _cinit, exit, and _exit
;	for C run-time startup and termination.  _cinit and exit
;	are called from the _astart code in crt0.asm.
;
;	[NOTE: Lock segment definitions are at end of module.]
;
;*******************************************************************************

_NFILE_ =	20

?DF	=	1		; tell cmacros.inc we want to define our own segments

.xlist
include version.inc
include cmacros.inc
include msdos.inc
.list


ifdef FARSTACK
ife sizeD
    error <You cannot have a far stack in Small or Medium memory models.>
endif
endif

createSeg _TEXT, code,	word,	public, CODE,	<>
createSeg CDATA, cdata, word,	common, DATA,	DGROUP
createSeg _DATA, data,	word,	public, DATA,	DGROUP

createSeg XIFB, xifbseg, word,	public, DATA,	DGROUP
createSeg XIF,	xifseg, word,	public, DATA,	DGROUP ; far init's
createSeg XIFE, xifeseg, word,	public, DATA,	DGROUP

createSeg XIB,	xibseg, word,	public, DATA,	DGROUP
createSeg XI,	xiseg,	word,	public, DATA,	DGROUP ; init's
createSeg XIE,	xieseg, word,	public, DATA,	DGROUP

createSeg XOB,	xobseg, word,	public, BSS,	DGROUP
createSeg XO,	xoseg,	word,	public, BSS,	DGROUP ; onexit table
createSeg XOE,	xoeseg, word,	public, BSS,	DGROUP

createSeg XPB,	xpbseg, word,	public, DATA,	DGROUP
createSeg XP,	xpseg,	word,	public, DATA,	DGROUP ; preterm's
createSeg XPE,	xpeseg, word,	public, DATA,	DGROUP

createSeg XCB,	xcbseg, word,	public, DATA,	DGROUP
createSeg XC,	xcseg,	word,	public, DATA,	DGROUP ; term's
createSeg XCE,	xceseg, word,	public, DATA,	DGROUP

createSeg XCFB, xcfbseg, word,	public, DATA,	DGROUP
createSeg XCF,	xcfseg, word,	public, DATA,	DGROUP ; far term's
createSeg XCFE, xcfeseg, word,	public, DATA,	DGROUP

defGrp	DGROUP			;; define DGROUP

codeOFFSET equ	offset _TEXT:
dataOFFSET equ	offset DGROUP:

page
sBegin	xifbseg
xifbegin label	byte
sEnd	xifbseg

sBegin	xifeseg
xifend	label	byte
sEnd	xifeseg

sBegin	xibseg
xibegin label	byte
sEnd	xibseg

sBegin	xieseg
xiend	label	byte
sEnd	xieseg

sBegin	xobseg
xontab	label	byte		; start of onexit table
sEnd	xobseg

sBegin	xoeseg
xonend	label	byte
sEnd	xoeseg

sBegin	xpbseg
xpbegin label	byte		; end of onexit table
sEnd	xpbseg

sBegin	xpeseg
xpend	label	byte
sEnd	xpeseg

sBegin	xcbseg
xcbegin label	byte
sEnd	xcbseg

sBegin	xceseg
xcend	label	byte
sEnd	xceseg

sBegin	xcfbseg
xcfbegin label	byte
sEnd	xifbseg

sBegin	xcfeseg
xcfend	label	byte
sEnd	xcfeseg


sBegin	cdata			; floating point setup segment
assumes ds,data

	dw	0		; force segment to be at least 0's
labelD	<PUBLIC,_fpinit>	; public for signal
fpmath	dd	1 dup (?)	; linking trick for fp
fpdata	dd	1 dup (?)
fpsignal dd	1 dup (?)	; fp signal message

externW _aenvseg		; Selector of Environment segment
sEnd

sBegin	data
assumes ds,data


globalT _fac,0			; floating accumulator
globalW errno,0 		; initial error code

globalW _umaskval,0		; initial umask value

;================= following must be in this order

labelW	<PUBLIC,_osversion>
labelB	<PUBLIC,_dosvermajor>
globalB _osmajor,0
labelB	<PUBLIC,_dosverminor>
globalB _osminor,0

;================= above must be in this order

labelB	<PUBLIC,_dosmode>
globalB _osmode,0		; Dual-Mode execution
labelW	<PUBLIC,_oserr>
globalW _doserrno,0		; initial DOS error code


globalW _nfile,_NFILE_		; maximum number of file handle

labelB	<PUBLIC,_osfile>
	db	3 dup (FOPEN+FTEXT) ; stdin, stdout, stderr
	db	_NFILE_-3 dup (0) ; the other 17 handles

labelB	<PUBLIC,_pipech>
	db	_NFILE_ dup (0AH) ; peek-ahead buffers for pipes


globalW __argc,0
globalDP __argv,0
globalDP environ,0		; environment pointer
globalD _pgmptr,0		; far pointer to program name

globalW _child,0		; flag that child program is executing
				; needed by signal code in real mode


sEnd	data

page


extrn	DOSQHANDTYPE:far
extrn	DOSSETVEC:far
extrn	DOSEXIT:far

;	*** Increase File Handle Count ***
;	Enable this extrn reference if you are increasing the file count.
;
;extrn	DOSSETMAXFH:far
;
;	*** End Increase File Handle Count ***

externNP _fptrap
externP _cintDIV
externP _nullcheck

sBegin	code
assumes cs,code

if	sizeC
global	proc	far
endif


page
;***
;_cinit - C initialization
;
;Purpose:
;	This routine performs the shared DOS and Windows initialization.
;	The following order of initialization must be preserved -
;
;	1.	Check for devices for file handles 0 - 2
;	2.	Integer divide interrupt vector setup
;	3.	Floating point initialization
;	4.	General C initializer routines
;
;Entry:
;
;Exit:
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

cProc	_cinit,<PUBLIC>,<>

cBegin	nogen			; no local frame to set up
assumes ds,data
ifndef FARSTACK
assumes ss,data
endif


;	*** Increase File Handle Count ***
;
;	This code is intentially commented out; the user must enable
;	this code to access more than 20 files.
;
;	mov	ax,_NFILE_	; new file handle count
;	push	ax		; onto stack
;	call	DOSSETMAXFH	; set new file handle limit
;	;check for error here, if desired (AX = 0 means no error)
;
;	*** End Increase File Handle Count ***


;	1.	Check for devices for file handles 0 - 2

	mov	bx,2

	push	dx		; space for device driver attribute
	mov	dx,sp
devloop:
	and	_osfile[bx],not (FDEV or FPIPE)
				; Assume this handle is not a device or pipe
	push	ax		; space for isdevice flag
	mov	ax,sp
	push	bx		; handle
	push	ss
	push	ax		; address for isdevice flag
	push	ss
	push	dx		; address for device driver attribute
	call	DOSQHANDTYPE

	or	ax,ax		; test for error
	pop	ax		; get isdevice flag
	jnz	notdevpipe

	; Note that we only test bottom 8 bits of device flag, high
	; byte has network info we're not interested in.
	mov	cl,FDEV 	; assume device
	cmp	al,IS_DEV	; is the handle a device ?
	je	devpipe 	; yes - set FDEV bit
	cmp	al,IS_PIPE	; is the handle a pipe ?
	jne	notdevpipe	; no - it is a file
	mov	cl,FPIPE	; PIPE instead of DEVICE
devpipe:
	or	_osfile[bx],cl	; set FDEV or FPIPE bit as appropriate
notdevpipe:
	dec	bx
	jns	devloop

	pop	dx		; clean up stack

;	2.	Integer divide interrupt vector setup

	xor	ax,ax

	push	ax
	push	ax		; space for previous handler (returned)
	mov	bx,sp

	push	ax		; zero means divide by 0 exception

	mov	dx,offset _TEXT:__cintDIV
	push	cs
	push	dx		; address of divide exception handler

	push	ss
	push	bx		; address of address for prev. handler

	call	DOSSETVEC
	pop	ax		; clean-up stack
	pop	ax		; (ignore return value)

;	3.	Floating point initialization


if  memS
	cmp	word ptr [fpmath], 0	    ; Note: make sure offset __fpmath != 0
	je	nofloat_i

	mov	word ptr [fpmath+2], cs     ; fix up these far addresses
	mov	word ptr [fpsignal+2], cs   ; in the small model math libs

else	;not memS
	mov	cx,word ptr [fpmath+2]
	jcxz	nofloat_i
endif	;not memS

ifdef	FARSTACK
	push	ds
	pop	es
	assumes es,data 	; es = DGROUP
endif
	mov	si,[_aenvseg]	; environment segment
	lds	ax,[fpdata]	; get task data area
	assumes ds,nothing
	mov	dx,ds		;   into dx:ax
	xor	bx,bx		; (si) = environment segment
	call	[fpmath]	; fpmath(0) - init
	jnc	fpok

ifdef FARSTACK
	mov	ax, DGROUP
	mov	ds, ax		; restore ds
	assumes ds,data
	assumes es,nothing
else
	push	ss		; restore ds from ss
	pop	ds
endif
	jmp	_fptrap 	; issue "Floating point not loaded"
				; error and abort

fpok:
ifdef FARSTACK
	assumes ds,nothing
	mov	ax,DGROUP
	mov	es,ax
	assumes es,data
endif
	lds	ax,[fpsignal]	; get signal address
	assumes ds,nothing
	mov	dx,ds
	mov	bx,3
	call	[fpmath]	; fpmath(3) - set signal address
ifdef FARSTACK
	mov	ax, DGROUP
	mov	ds, ax		; restore ds
	assumes ds,data
	assumes es,nothing
else
	push	ss
	pop	ds
	assumes ds,data
endif

nofloat_i:


;	4.	General C initializer routines

	mov	si,dataOFFSET xifbegin
	mov	di,dataOFFSET xifend
if	sizeC
	call	initterm	; call the far initializers
else
	call	farinitterm	; call the far initializers
endif

	mov	si,dataOFFSET xibegin
	mov	di,dataOFFSET xiend
	call	initterm	; call the initializers

	ret
cEnd	nogen



page
;***
;exit(status), _exit(status), _cexit(void), _c_exit(void) - C termination
;
;Purpose:
;
;	Entry points:
;
;		exit(code):  Performs all the C termination functions
;			and terminates the process with the return code
;			supplied by the user.
;
;		_exit(code):  Performs a quick exit routine that does not
;			do certain 'high-level' exit processing.  The _exit
;			routine terminates the process with the return code
;			supplied by the user.
;
;		_cexit():  Performs the same C lib termination processing
;			as exit(code) but returns control to the caller
;			when done (i.e., does NOT terminate the process).
;
;		_c_exit():  Performs the same C lib termination processing
;			as _exit(code) but returns control to the caller
;			when done (i.e., does NOT terminate the process).
;
;	Termination actions:
;
;		exit(), _cexit():
;
;		1.	call user's terminator routines
;		2.	call C runtime preterminators
;
;		_exit(), _c_exit():
;
;		3.	call C runtime terminators
;		4.	perform _nullcheck() for null pointer assignment
;		5.	terminate floating point
;		6.	return to DOS or caller
;
;	Notes:
;
;	The termination sequence is complicated due to the multiple entry
;	points sharing the common code body while having different entry/exit
;	sequences.
;
;Entry:
;	exit(), _exit()
;		int status - exit status (0-255)
;
;	_cexit(), _c_exit()
;		<no input>
;
;Exit:
;	exit(), _exit()
;		<EXIT to DOS>
;
;	_cexit(), _c_exit()
;		Return to caller
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

;
;--- exit(): Full exit and term process ---
;

public	_exit
_exit:
cProc	dummy1,<>,<>

	parmw	status		; termination code

cBegin

	xor	cx,cx		; exit(): cl = 0, ch = 0
	jmp	short common1	; join common code

cEnd	<nogen>

;
;--- _exit(): Quickie exit and term process ---
;

public	__exit
__exit:
cProc	dummy2,<>,<>

	parmw	status		; termination code

cBegin

	mov	cx,1		; _exit(): cl = 1, ch = 0
	jmp	short common1	; join common code

cEnd	<nogen>

if	sizeC
global	endp
endif

;
;--- _cexit(): Full exit and return to caller ---
;

cProc	_cexit,<PUBLIC>,<SI,DI>

cBegin

	mov	cx,(1 SHL 8)	; _cexit(): ch = 1, cl = 0
	jmp	short common1	; join common code

cEnd	<nogen>

;
;--- _c_exit(): Quickie exit and return to caller ---
;

cProc	_c_exit,<PUBLIC>,<SI,DI>

cBegin

	mov	cx,(1 SHL 8)+1	; _c_exit(): ch = 1, cl = 1
	;fall through

;
;--- Common entry point ---
; cx = entry value:
;	cl = full vs quick exit path
;	     0 = exit() code
;	     1 = _exit() code
;	ch = term process vs return to caller
;	     0 = term process
;	     1 = return to caller
;

common1:			; all code paths join here

assumes ds,data





;
; If _exit()/_c_exit(), jump over the initial termination processing
; cx = entry code
;

	push	cx		; save entry code on top of stack
	or	cl,cl		; cl != 0 means _exit()/_c_exit()
	jnz	short common2	; if _exit()/_c_exit(), jump down
	;fall thru		; continue (exit, _cexit)


;	1.	call user terminators
;		- onexit processing

	mov	si,dataOFFSET xontab ; beginning of onexit table
	mov	di,dataOFFSET xonend ; end of onexit table
	call	initterm

;	2.	call C runtime preterminators
;		- flushall
;		- rmtmp

	mov	si,dataOFFSET xpbegin ; beginning of pre-terminators
	mov	di,dataOFFSET xpend ; end of pre-terminators
	call	initterm
	;fall thru

;
;--- Common entry point ---
;

common2:			; __exit() enters here


;	3.	perform C terminators

	mov	si,dataOFFSET xcbegin
	mov	di,dataOFFSET xcend
	call	initterm

	mov	si,dataOFFSET xcfbegin
	mov	di,dataOFFSET xcfend
if	sizeC
	call	initterm	; call the far terminators
else
	call	farinitterm	; call the far terminators
endif

;	4.	perform _nullcheck() for null pointer assignment

	call	_nullcheck	; perform null check
				; this must be far call in large code models
				; since user can stub it out
	or	ax,ax		; zero if no null pointer asmt. detected
	jz	short afternullchk

	pop	ax		; get entry code
	or	ah,ah		; ah != 0 means _cexit()/_c_exit()
	push	ax		; put it back for later
	jnz	 short afternullchk ; jump if no status value (_cexit/_c_exit)

	cmp	status,0	; zero if no other error has occurred
	jnz	short afternullchk
	mov	status,255	; nonzero status to indicate an
				; null-pointer-assignment error
afternullchk:

;	5.	terminate floating point

	call	_ctermsub	; fast cleanup

;	6.	return to the DOS or caller

	pop	ax		; get entry code off top of stack
	or	ah,ah		; ah = 0 means term process
	jnz	 returning	; skip down if not term'ing

;	6a.	Return to DOS

exiting:
	mov	ax,1		; terminate all threads of this process
	push	ax
	mov	al,byte ptr [status] ; get return value (low 8 bits)
	push	ax


	call	DOSEXIT 	; exit with return code


	;*** PROCESS IS TERMINATED ***

;	6b.	Return to caller.

returning:



cEnd	<nolocals>




page
;***
;_ctermsub - Terminate Floating Point
;
;Purpose:
;	Terminate Floating Point
;
;Entry:
;
;Exit:
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

labelNP <PUBLIC,_ctermsub>


;	5.	terminate floating point

	mov	cx,word ptr [fpmath+2] ; test for floating point
	jcxz	nofloat_t	;   no

	mov	bx,2		;   yes - cleanup
	call	[fpmath]

nofloat_t:

	ret

page
;***
;initterm - do all the initializers and terminators
;
;Purpose:
;	The initializers and terminators may be written in C
;	so we are assuming C conventions (DS=SS, CLD, SI and DI preserved)
;	We go through them in reverse order for onexit.
;
;Entry:
;	SI	= start of procedure list
;	DI	= end of procedure list
;
;Exit:
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

initterm:
	cmp	si,di		; are we done?
	jae	itdone		;   yes - no more

if	sizeC
	sub	di,4
	mov	ax,[di]
	or	ax,[di+2]
	jz	initterm	; skip null procedures
	call	dword ptr [di]
else
	dec	di
	dec	di
	mov	cx,[di]
	jcxz	initterm	; skip null procedures
	call	cx
endif
	jmp	initterm	; keep looping

itdone:
	ret

page
ife	sizeC			; S/C models only
;***
;farinitterm - do a set of far initializers or terminators
;
;Purpose:
;	The initializors and terminators may be written in C
;	so we are assuming C conventions (DS=SS, CLD, SI and DI preserved)
;	We go through them in reverse order for onexit.
;
;Entry:
;	SI	= start of procedure list
;	DI	= end of procedure list
;
;Exit:
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

farinitterm:
	cmp	si,di		; are we done?
	jae	faritdone	;   yes - no more

	sub	di,4
	mov	ax,[di]
	or	ax,[di+2]
	jz	farinitterm	; skip null procedures
	call	dword ptr [di]
	jmp	farinitterm	; keep looping

faritdone:
	ret
endif	;sizeC

sEnd

    EMULATOR_DATA  segment para public 'FAR_DATA'
    EMULATOR_DATA  ends

    EMULATOR_TEXT  segment para public 'CODE'

    public __EmDataSeg
    __EmDataSeg dw  EMULATOR_DATA

    EMULATOR_TEXT  ends



	end
