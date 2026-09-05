	page	,132
	title	nmsghdr - OS/2 near message handler and finder
;***
;nmsghdr.asm - OS/2 near message handler and finder
;
;	Copyright (c) 1986-1990, Microsoft Corporation.  All rights reserved.
;
;Purpose:
;	Near message handler and finder.
;
;*******************************************************************************


?DF=	1			; this is special for c startup
include version.inc
?PLM=	1			; pascal calling conventions
.xlist
include cmacros.inc
include msdos.inc
.list

createSeg _TEXT, code,	word,	public, CODE,	<>

createSeg _DATA, data,	word,	public, DATA,	DGROUP

createSeg HDR,	nhdr,	byte,	public, MSG,	DGROUP
createSeg MSG,	nmsg,	byte,	public, MSG,	DGROUP
createSeg PAD,	npad,	byte,	common, MSG,	DGROUP
createSeg EPAD, nepad,	byte,	common, MSG,	DGROUP

defGrp	DGROUP			; define DGROUP

codeOFFSET equ	offset _TEXT:
dataOFFSET equ	offset DGROUP:

extrn	DOSWRITE:far

sBegin	nhdr
assumes ds,data

nmsgst	db	'<<NMSG>>'
;ljk	dw	dataOFFSET nmsgst
;ljk	dw	dataOFFSET stpad
;ljk	dw	dataOFFSET endpad

stnmsg	label	byte

sEnd

SBegin	npad
assumes ds,data

stpad	dw	-1		; message padding marker

sEnd

sBegin	nepad
assumes ds,data

	db	-1
;ljk	endpad	label	byte

sEnd


sBegin	code
assumes cs,code
assumes ds,data

page
;***
;__NMSG_TEXT(messagenumber) - finds message for given messagenumber
;
;Purpose:
;	This routine returns a near pointer to the message associated with
;	messagenumber.	If the message does not exist, then a 0 is returned.
;
;	This routine reestablishes DS = ES = DGROUP
;
;Entry:
;	==PASCAL CALLING CONVENTIONS==
;	messagenumber	= WORD number of desired error message
;
;Exit:
;	AX = number of message or 0.
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

cProc	__NMSG_TEXT,<PUBLIC>,<si,di>  ; pascal calling

parmW	msgt

cBegin
	mov	ax,DGROUP
	mov	ds,ax		; ds = DGROUP (force it always)
	mov	es,ax		; es = ds
	mov	dx,msgt 	; dx = message number
	mov	si,dataOFFSET stnmsg ; start of near messages

tloop:
	lodsw			; ax = current message number
	cmp	ax,dx
	je	found		;   found it - return address
	inc	ax
	xchg	ax,si
	jz	found		;   at end and not found - return 0
	xchg	di,ax
	xor	ax,ax
	mov	cx,-1
	repne	scasb		; skip until 00
	mov	si,di
	jmp	tloop		; try next entry

found:
	xchg	ax,si
cEnd

page
;***
;__NMSGWRITE(messagenumber) - write a given message to stderr
;
;Purpose:
;	This routine writes the message associated with messagenumber
;	to stderr.
;
;Entry:
;	==PASCAL CALLING CONVENTIONS==
;	messagenumber	= number of desired message to print.
;
;Exit:
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

cProc	__NMSG_WRITE,<PUBLIC>,<di>  ; pascal calling

parmW	msgw

cBegin
	push	msgw
	callcrt __NMSG_TEXT	; find near text pointer
	or	ax,ax
	jz	nowrite 	; don't write anything if not there

	xchg	dx,ax		; ds:dx = string address
	mov	di,dx
	xor	ax,ax
	mov	cx,-1
	repne	scasb		; es = ds from __NMSG_TEXT
	not	cx
	dec	cx		; cx = string length

	push	ax		;** vvv
	mov	ax,sp		; allocate space for return count

	mov	bx,2
	push	bx		; file handle (standard error)
	push	ds
	push	dx		; address of buffer
	push	cx		; number of bytes to write
	push	ss
	push	ax		; address for return count
	call	DOSWRITE
	pop	bx		;** ^^^ 	; clean-up stack

nowrite:
cEnd

sEnd

	end
