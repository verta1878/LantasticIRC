;	Static Name Aliases
;
	TITLE   TIDIV.C
	NAME    TIDIV

	.8087
TIDIV_TEXT	SEGMENT  WORD PUBLIC 'CODE'
TIDIV_TEXT	ENDS
_DATA	SEGMENT  WORD PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT  WORD PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT  WORD PUBLIC 'BSS'
_BSS	ENDS
DGROUP	GROUP	CONST, _BSS, _DATA
	ASSUME  CS: TIDIV_TEXT, DS: DGROUP, SS: DGROUP
EXTRN	__acrtused:ABS
TIDIV_TEXT      SEGMENT
	ASSUME	CS: TIDIV_TEXT
; Line 4
	PUBLIC	_f1
_f1	PROC FAR
	push	bp
	mov	bp,sp
;	a = 6
;	b = 8
	mov	ax,WORD PTR [bp+6]	;a
	cwd	
	mov	cx,WORD PTR [bp+8]	;b
	idiv	cx
	pop	bp
	ret	

_f1	ENDP
; Line 7
	PUBLIC	_f2
_f2	PROC FAR
	push	bp
	mov	bp,sp
	push	si
	mov	si,WORD PTR [bp+6]	;a
;	register si = a
;	b = 8
	mov	ax,si
	cwd	
	mov	cx,WORD PTR [bp+8]	;b
	idiv	cx
	pop	si
	pop	bp
	ret	

_f2	ENDP
; Line 10
	PUBLIC	_f3
_f3	PROC FAR
	push	bp
	mov	bp,sp
;	a = 6
;	b = 8
	mov	ax,WORD PTR [bp+6]	;a
	cwd	
	mov	cx,WORD PTR [bp+8]	;b
	idiv	cx
	pop	bp
	ret	

_f3	ENDP
; Line 13
	PUBLIC	_f4
_f4	PROC FAR
	push	bp
	mov	bp,sp
;	a = 6
;	b = 8
	mov	ax,WORD PTR [bp+6]	;a
	cwd	
	mov	cx,WORD PTR [bp+8]	;b
	idiv	cx
	pop	bp
	ret	

_f4	ENDP
; Line 16
	PUBLIC	_f5
_f5	PROC FAR
	push	bp
	mov	bp,sp
;	a = 6
;	pb = 8
	mov	ax,WORD PTR [bp+6]	;a
	cwd	
	les	bx,DWORD PTR [bp+8]	;pb
	mov	cx,WORD PTR es:[bx]
	idiv	cx
	pop	bp
	ret	
	nop	

_f5	ENDP
TIDIV_TEXT	ENDS
END
