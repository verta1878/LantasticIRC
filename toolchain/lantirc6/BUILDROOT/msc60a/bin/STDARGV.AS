	page	,132
	title	stdargv.asm - OS/2 standard & wildcard _setargv routine
;***
;stdargv.asm - OS/2 standard & wildcard _setargv routine
;
;	Copyright (c) 1985-1990, Microsoft Corporation.  All rights reserved.
;
;Purpose:
;	processes program command line, with or without wildcard expansion
;
;*******************************************************************************

; _SSNEDS flag set means SS not necessarily equal to DS; this requires
; special processing to preserve the value of DS in places
ifdef FARSTACK
	_SSNEDS equ 1
else
	_SSNEDS equ 0
endif

ifdef	WILDCARD
	name	_setargv	; wildcard _setargv routine
else
	name	stdargv 	; standard _setargv routine
endif

	.xlist
include version.inc
include cmacros.inc
include msdos.inc
include rterr.inc
	.list

ifdef FARSTACK
ife sizeD
    error <You cannot have a far stack in Small or Medium memory models.>
endif
endif

sBegin	data
assumes ds,data

C_BLANK equ	' '		; ASCII space character
C_TAB	equ	09h		; ASCII horizontal tab character

C_QUOTE equ	'"'		; ASCII (double) Quote Charater
C_BACKSLASH equ '\'             ; ASCII backward slash character

externDP __argv 		; argument string array address
externW __argc			; count of argument strings
externW _aenvseg		; environment segment
externW _acmdln 		; offset of command line in env. seg.
externD _pgmptr 		; far pointer to program name

staticW cmdstart,0		; start of command line string

ife   _SSNEDS
staticCP retadr,0		; return address
endif

ifdef	WILDCARD

staticW findhandle,1		; handle used for wildcard matching

FileFindBuf struc
create_date dw	?		;* date of file creation
create_time dw	?		;* time of file creation
access_date dw	?		;* date of last access
access_time dw	?		;* time of last access
write_date dw	?		;* date of last write
write_time dw	?		;* time of last write
file_size dd	?		;* file size (end of data)
falloc_size dd	?		;* file allocated size
attributes dw	?		;* attributes of the file
string_len db	?		;* returned length of ascii name str.
file_name db	257 dup (?)	;* name string
FileFindBuf ends

findbuf FileFindBuf <>		;* struct FileFindBuf findbuf;

endif				;	WILDCARD

sEnd	data

;=========================================

ifdef	WILDCARD
	extrn	DOSFINDFIRST:far
	extrn	DOSFINDNEXT:far
	externP _cwild		; Wildcard Expander
endif

;=========================================

jmps	MACRO	target
	jmp	short target
	ENDM

lje	MACRO	target
	LOCAL	temp
	jne	temp
	jmp	target
temp:
	ENDM

DELIM	MACRO
	or	al,al		;; Test for end-of-line character (null)
	ENDM

;=========================================


sBegin	code

externNP _stdalloc		; routine to allocate heap memory
externNP _amsg_exit		; error handler (unable to allocate)

assumes ds,data
if    _SSNEDS
assumes ss,nothing
else
assumes ss,data
endif ;_SSNEDS
assumes cs,code

page
;***
;_setargv, __setargv - set up "argc" and "argv" for C programs
;
;Purpose:
;	Read the command line and create the argv array for C
;	programs.
;
;Entry:
;	Arguments are retrieved from the program command line.
;
;Exit:
;	"argv" points to a null-terminated list of pointers to ASCIZ
;	strings, each of which is an argument from the command line.
;	"argc" is the number of arguments.  The strings are copied from
;	the environment segment into space allocated on the heap/stack.
;	The list of pointers is also located on the heap or stack.
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************


ifdef	WILDCARD		; **********************************************

labelP	<PUBLIC,__setargv>

else				; **********************************************

labelP	<PUBLIC,_setargv>

endif				; WILDCARD	; **********************************************

ife _SSNEDS
	pop	word ptr [retadr] ; get return address (offset)

if	sizeC
	pop	word ptr [retadr+2] ; get return address (segment)
endif
endif ;_SSNEDS

	mov	ax,_acmdln
if   _SSNEDS
	push	ds
	pop	es
	assumes es,data
endif ;_SSNEDS
	mov	ds,_aenvseg
	assumes ds,nothing

	mov	si,ax
;
;	If there is no argument string, use the
;	program name for the command line string.
;	Scan back for the null before "PgmPtr"
;
find_argv0:
	dec	si
	jz	found_argv0
	cmp	byte ptr ds:[si-1],0
	jne	find_argv0
found_argv0:
	mov	word ptr [_pgmptr],si
	mov	word ptr [_pgmptr+2],ds
	xchg	ax,si		; restore SI to [_acmdln]
	test	byte ptr ds:[si],-1
	jnz	store_cmdstart
	xchg	ax,si		; use PgmPtr instead of ArgPtr
store_cmdstart:
	mov	[cmdstart],si

	xor	dx,dx		; Start with zero bytes
	mov	di,1		; Start with one arguments
count_argv0:
	lodsb
	inc	dx		; count each byte in argv[0]
	or	al,al		; including the terminator
	jnz	count_argv0
;*
;*	Count the command line arguments
;*
;*		... previous environment strings ...
;*		null byte	(end of last environment string)
;*		null byte	(end of environment)
;*		program name string
;*		null byte
;*    DS:SI ==> raw command line string
;*		null byte
;*		null byte
;*
;*	DI	will count the number of arguments
;*
;*	DX	will count the number of bytes needed to
;*		store the arguments themselves, incl. final nulls
;*
;*
;*	Count the command tail arguments
;*
;
;	DI will count the number of arguments
;	DX will count the number of bytes needed for the arguments
;		(not including the null terminators)
;
arg100:
arg110:
	lodsb
	cmp	al,C_BLANK
	je	arg110
	cmp	al,C_TAB
	je	arg110

	DELIM
	je	arg400

	inc	di		; Another argument
;
; Parse an argument
;
arg200:
	dec	si		; back up to reload character
arg210:
	lodsb

	cmp	al,C_BLANK
	je	arg100
	cmp	al,C_TAB
	je	arg100		; white space terminates argument

	DELIM
	je	arg400

	cmp	al,C_QUOTE
	je	arg310

	cmp	al,C_BACKSLASH
	je	arg220

	inc	dx
	jmps	arg210
;
; Count backslashes
;
arg220:
	xor	cx,cx
arg221:
	inc	cx		; CX counts the backslashes
	lodsb
	cmp	al,C_BACKSLASH
	je	arg221
;
	cmp	al,C_QUOTE
	je	arg230

	add	dx,cx		; not followed by `"' -- treat `\'s normally
	jmp	arg200
;
arg230:
	mov	ax,cx
	shr	cx,1
	adc	dx,cx		; add 1 for every pair of backslashes
	test	al,1		; plus 1 for the " if odd number of \
	jnz	arg210		; " was escaped with a \
	jmps	arg310		; " opens a quoted substring
;
; Enter a quoted string
;
arg300:
	dec	si		; back up to reload character
arg310:
	lodsb

	DELIM
	je	arg400

	cmp	al,C_QUOTE
	je	arg210		; end of quoted portion of string

	cmp	al,C_BACKSLASH
	je	arg320

	inc	dx
	jmp	arg310
;
; Count backslashes
;
arg320:
	xor	cx,cx
arg321:
	inc	cx		; CX counts the backslashes
	lodsb
	cmp	al,C_BACKSLASH
	je	arg321
;
	cmp	al,C_QUOTE
	je	arg330

	add	dx,cx		; not followed by `"' -- treat `\'s normally
	jmp	arg300
;
arg330:
	mov	ax,cx
	shr	cx,1
	adc	dx,cx		; add 1 for every pair of backslashes
	test	al,1		; plus 1 for the " if odd number of \
	jnz	arg310		; " was escaped with a \
	jmps	arg210		; " closes a quoted substring
;
; Command line is fully parsed - compute number of bytes needed
;
arg400:
;
;	Number of bytes needed =
;		Number of bytes used to make strings +
;		Number of bytes used to terminate strings +
;		sizeof(DATAPTR) * ( number of arguments + 1 )
;
if  _SSNEDS
	push	es
else
	push	ss
endif ;_SSNEDS
	pop	ds		; Restore DS = DGROUP
	assumes ds,data

	mov	__argc,di	; Store number of arguments

	add	dx,di		; add in terminator bytes
ifdef	WILDCARD
	add	dx,di		; add in Wildcard flag bytes
endif
	inc	di		; add one for NULL pointer
	shl	di,1
if	sizeD
	shl	di,1
endif
	mov	ax,di
	add	ax,dx		; add space for pointers to space for chars

	inc	ax
	and	al,not 1	; Round up to an even number of bytes
;
;	Allocate space on the heap (or the stack in non-DLL)
;
;	AX is the total number of bytes needed for strings and pointers
;	DI is the number of bytes needed for the pointers
;
	call	_stdalloc	; dx:ax = allocated memory
	jnc	args_ok
arg_error:
	mov	ax,_RT_SPACEARG ; Out of heap space
	jmp	_amsg_exit

args_ok:
	mov	word ptr (__argv),ax	; offset
if	sizeD
	mov	word ptr (__argv+2),dx	; segment
endif
;
;	Copy argument strings and addresses onto heap/stack
;		Address table is on the top, strings below that
;
if  _SSNEDS
	push	ds		; save two copies of DGROUP for later
	push	ds
endif ;_SSNEDS

	mov	bx,ax
	add	di,ax

	mov	es,dx		; ES:DI is where the string copies will go
	assumes es,data
;
;	DS:SI	points to the argv[0]
;
;	ES:BX	points to where argv[0],argv[1],argv[2],... go
;	ES:DI	points to where *argv[0],*argv[1],*argv[2],... go
; For wildcard version only (DX initialized below):
;	ES:DX	points to the wildcard flag character (prepended to argument)
;		during the creation of each argument
;

	mov	es:[bx],di	; argv[i] - offset part
if	sizeD
	mov	es:[bx+2],es	; argv[i] - segment part
	add	bx,4
else
	inc	bx
	inc	bx
endif

	mov	si,cmdstart	; Get pointer to argv[0]
	mov	ds,_aenvseg
	assumes ds,nothing

ifdef	WILDCARD
	movsb
	dec	si		; copy first character as quote flag
endif

copy_argv0:
	lodsb
	stosb
	or	al,al
	jnz	copy_argv0
;
;	DS:SI	points to the raw command tail string
;

	jmps	arg510
;
;	Skip blanks
;
arg500:
	xor	ax,ax
	stosb
arg510:
	lodsb
	cmp	al,C_BLANK
	je	arg510
	cmp	al,C_TAB
	je	arg510

	DELIM
ifdef	WILDCARD
if	sizeD
	lje	arg810
else
	je	arg810
endif
else
	je	arg810
endif

	mov	es:[bx],di
if	sizeD
	mov	es:[bx+2],es
	add	bx,4
else
	inc	bx
	inc	bx
endif

ifdef	WILDCARD
	mov	dx,di
	stosb			; initialize wildcard flag
endif
;
;
; Parse an argument
;
arg600:
	dec	si		; back up to reload character
arg610:
	lodsb

	cmp	al,C_BLANK
	je	arg500
	cmp	al,C_TAB
	je	arg500		; white space terminates argument

	DELIM
	je	arg800

	cmp	al,C_QUOTE
	je	arg710x

	cmp	al,C_BACKSLASH
	je	arg620

	stosb
	jmps	arg610
;
; Count backslashes
;
arg620:
	xor	cx,cx
arg621:
	inc	cx		; CX counts the backslashes
	lodsb
	cmp	al,C_BACKSLASH
	je	arg621
;
	cmp	al,C_QUOTE
	je	arg630

	mov	al,C_BACKSLASH
	rep	stosb		; not followed by `"' -- treat `\'s normally
	jmp	arg600
;
arg630:
	mov	al,C_BACKSLASH
	shr	cx,1
	rep	stosb
	jnc	arg710x 	; " opens a quoted substring
	mov	al,C_QUOTE
	stosb
	jmp	arg610		; " was escaped with a \
;
; Enter a quoted string
;
ifdef	WILDCARD
arg710x:
	inc	si		; undoes the "DEC SI" between arg700 and arg710
endif

arg700x:

ifdef	WILDCARD
	xchg	dx,di		; set the wildcard flag character to `"'
	mov	al,C_QUOTE
	stosb
	dec	di
	xchg	dx,di
endif

arg700:
	dec	si		; back up to reload character

ifndef	WILDCARD
arg710x:
endif

arg710:
	lodsb

	DELIM
	je	arg800

	cmp	al,C_QUOTE
	je	arg610		; end of quoted portion of string

	cmp	al,C_BACKSLASH
	je	arg720

	stosb
	jmp	arg710
;
; Count backslashes
;
arg720:
	xor	cx,cx
arg721:
	inc	cx		; CX counts the backslashes
	lodsb
	cmp	al,C_BACKSLASH
	je	arg721
;
	cmp	al,C_QUOTE
	je	arg730

	mov	al,C_BACKSLASH
	rep	stosb		; not followed by `"' -- treat `\'s normally
	jmp	arg700x
;
arg730:
	mov	al,C_BACKSLASH
	shr	cx,1
	rep	stosb		; store 1 for every pair of backslashes
	jnc	arg610		; " closes a quoted substring
	mov	al,C_QUOTE	; " was escaped with a \
	stosb
	jmps	arg710x
;
; Terminate last argument string, terminate list of argument pointers
;
arg800:
	xor	ax,ax
	stosb			; null-terminate final argument
arg810:
	mov	word ptr es:[bx],0 ; add null pointer to __argv[]
if	sizeD
	mov	word ptr es:[bx+2],0
endif

if  _SSNEDS
	pop	es		; ES = DS = DGROUP
	pop	ds
else
	push	ss
	pop	ds		; restore ds
endif ;_SSNEDS


	assumes ds,data

ifndef	WILDCARD

  if  _SSNEDS
    if sizeC
	retf			; THE END
    else
	retn			; THE END
    endif
  else	;_SSNEDS
	jmp	[retadr]	; THE END
  endif ;_SSNEDS

else  ; WILDCARD

	call	_cwild
	test	ax,ax
	jnz	to_arg_error
  if  _SSNEDS
    if sizeC
	retf			; THE END
    else
	retn			; THE END
    endif
  else ; _SSNEDS
	jmp	[retadr]	; THE END
  endif ;_SSNEDS

to_arg_error:
	jmp	arg_error

page
;***
;_find(pattern) - find matching filename
;
;Purpose:
;	if argument is non-null, do a DosFindFirst on that pattern
;	otherwise do a DosFindNext call.  Return matching filename
;	or NULL if no more matches.
;
;	char *_find(pattern)
;	       char *pattern;
;	{
;	static struct  FileFindBuf     findbuf;
;	static unsigned findhandle=1;
;		       unsigned findcount=1;
;		       int rc;
;
;	       if(pattern)
;		       rc = DOSFINDFIRST((char far *) pattern,
;			       (unsigned far *) &findhandle, A_D,
;			       (struct FileFindBuf far *) &findbuf, sizeof(findbuf),
;			       (unsigned far *) &findcount, 0L);
;	       else
;		       rc = DOSFINDNEXT(findhandle,
;			       (struct FileFindBuf far *) &findbuf, sizeof(findbuf),
;			       (unsigned far *) &findcount);
;
;	       return(rc ? NULL : findbuf.file_name);
;	}
;
;Entry:
;	pattern = pointer to pattern or NULL
;		  (NULL means find next matching filename)
;
;Exit:
;	AX (or DX:AX) = pointer to matching file name
;			or NULL if no more matches.
;
;Uses:
;
;Exceptions:
;
;*******************************************************************************

cProc	_find,<PUBLIC>,<>
	parmDP	pattern
;	localW	findcount
findcount equ	(word ptr [bp-2])
cBegin
	mov	ax,1
	push	ax		; mov	[findcount],1
	mov	bx,dataOFFSET findbuf
	mov	dx,size findbuf
	lea	ax,findcount
;
;	DS:BX = &findbuf
;	DX = sizeof(findbuf)
;	SS:AX = &findcount
;	CX = FP_OFF(pattern)
;
if	sizeD
	les	cx,pattern
	cmp	word ptr [pattern+2],0
	jz	find_next
else
	mov	cx,pattern
	jcxz	find_next
endif
;
;	Make first call to DOSFINDFIRST
;
if	sizeD
	push	es
else
	push	ds
endif
	push	cx		; (char far *) pattern
	mov	cx,dataOFFSET findhandle
	mov	[findhandle],1	; always use handle 1
	push	ds
	push	cx		; (unsigned far *) & findhandle
	mov	cx,A_D
	push	cx		; match attribute: normal files + directories
	push	ds
	push	bx		; (struct FileFindBuf far *) &findbuf
	push	dx		; sizeof(findbuf)
	push	ss
	push	ax		; (unsigned far *) &findcount
	xor	ax,ax
	push	ax
	push	ax		; 0L (reserved)
	call	DOSFINDFIRST
	jmp	short	check_rc
;
;	get next match
;
find_next:
	push	[findhandle]	; findhandle
	push	ds
	push	bx		; (struct FileFindBuf far *) &findbuf
	push	dx		; sizeof(findbuf)
	push	ss
	push	ax
	call	DOSFINDNEXT
;
check_rc:
	add	bx,dataOFFSET file_name ; BX = findbuf.file_name
if	sizeD
	mov	dx,ds
endif
	test	ax,ax		; check for error in system call
	xchg	ax,bx		; return findbuf.file_name if successful
	jz	rc_zero
;
	xor	ax,ax		; return NULL for error
if	sizeD
	cwd
endif
rc_zero:

cEnd

endif				;	WILDCARD

sEnd	code

	end
