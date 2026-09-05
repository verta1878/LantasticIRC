_TEXT SEGMENT WORD PUBLIC 'CODE'
ASSUME CS:_TEXT
PUBLIC _test_func
_test_func PROC FAR
    push    bp
    mov     bp,sp
    mov     dx,si
    push    ds
    lds     si,[bp+0Ah]
    les     bx,[bp+06h]
    mov     al,0FFh
lp_top:
    or      al,al
    jz      done
    lodsb
    mov     ah,es:[bx]
    inc     bx
    cmp     ah,al
    jz      lp_top
    sub     al,41h
    cmp     al,1Ah
    sbb     cl,cl
    and     cl,20h
    add     al,cl
    add     al,41h
    xchg    ah,al
    sub     al,41h
    cmp     al,1Ah
    sbb     cl,cl
    and     cl,20h
    add     al,cl
    add     al,41h
    cmp     al,ah
    jz      lp_top
    sbb     al,al
    sbb     al,0FFh
done:
    cbw
    pop     ds
    mov     si,dx
    pop     bp
    retf
_test_func ENDP
_TEXT ENDS
END
