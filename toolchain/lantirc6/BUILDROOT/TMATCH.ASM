;	Static Name Aliases
;
	TITLE   TMATCH
;	NAME    TMATCH.C

	.287
TMATCH_TEXT	SEGMENT  BYTE PUBLIC 'CODE'
TMATCH_TEXT	ENDS
_DATA	SEGMENT  WORD PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT  WORD PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT  WORD PUBLIC 'BSS'
_BSS	ENDS
DGROUP	GROUP	CONST,	_BSS,	_DATA
	ASSUME  CS: TMATCH_TEXT, DS: DGROUP, SS: DGROUP, ES: DGROUP
TMATCH_TEXT      SEGMENT
; Line 2
	PUBLIC	_f_06D7F
_f_06D7F	PROC FAR
	push	bp
	mov	bp,sp
	sub	sp,4
; Line 3
;	s = 6
;	p = -2
; Line 5
	mov	ax,[bp+6]	;s
	mov	[bp-2],ax	;p
; Line 6
	jmp	SHORT $L20000
$WC11:
; Line 7
	cmp	BYTE PTR [bp-4],97
	jl	$I13
	cmp	BYTE PTR [bp-4],122
	jg	$I13
; Line 8
	mov	bx,[bp-2]	;p
	sub	BYTE PTR [bx],32
; Line 9
$I13:
	inc	WORD PTR [bp-2]	;p
; Line 10
$L20000:
	mov	bx,[bp-2]	;p
	mov	al,[bx]
	mov	[bp-4],al
	or	al,al
	jne	$WC11
; Line 11
	mov	ax,[bp+6]	;s
	mov	sp,bp
	pop	bp
	ret	

_f_06D7F	ENDP
TMATCH_TEXT	ENDS
END
