	page	,132
	title	stdalloc - OS/2 routine to get memory for argv and envp
;***
;stdalloc.asm - OS/2 routine to get memory for argv and envp
;
;	Copyright (c) 1986-1990, Microsoft Corporation.  All rights reserved.
;
;Purpose:
;	This routine returns memory from the heap.
;
;*******************************************************************************


include	version.inc
.xlist
include	cmacros.inc
include	msdos.inc
include heap.inc
.list


sBegin	data
	assumes	ds,data

	externW 	_amblksiz	; heap seg growth increment

sEnd	data

externP 	malloc		; get heap memory

sBegin	code
	assumes ds,data
	assumes cs,code

page
;***
;_stdalloc - OS/2 routine to get memory for argv and envp
;
;Purpose:
;	Call malloc() to try and get memory off the heap.
;	Used to allocate memory for the argv and envp arrays
;	and strings at startup time.
;
;	If carry is clear on return, then the allocation was
;	successful and DX:AX points to the allocated memory.
;	Carry set on return indicates allocation failure.
;
;	This is always a near routine since it is only called by the C run-time
;
;Entry:
;	AX	= number of bytes requested
;
;Exit:
;	Carry Clear (no error):
;	    DX:AX   = address of allocated memory
;	Carry Set:
;	    Error - unable to allocate
;
;Uses:
;	BX, CX are destroyed
;Preserves:
;	ES, SI, DI
;Exceptions:
;
;*******************************************************************************

cProc	_stdalloc,<PUBLIC,NEAR>,<es>

cBegin

;
; First, try to get memory from the heap.
; Set the grow increment to a small value so that we don't eat up
; too much memory at runtime.
; ax = size of request
;
	mov	cx,_HEAP_GROWSTART ; startup grow increment
	xchg	cx,[_amblksiz]	; set temp grow increment and save original

	push	cx		; save original grow increment
	push	ax		; save size
	call	malloc		; heap request
				; return value = <ax> or <dx:ax>
	pop	bx		; bx = size of request	(clean off stack)
	pop	[_amblksiz]	; restore original grow increment

if sizeD
	mov	cx,dx		; preserve dx
	or	cx,ax		; malloc return NULL ??
else
	mov	dx,ds		; dx:ax = pointer
	or	ax,ax		; malloc return NULL ??
endif

	jnz	return		; success, carry is clear
	stc			; error, set carry

return:

cEnd	<nolocals>

sEnd	code

	end
