00000000  EA02571E06        jmp 0x61e:0x5702
00000005  0E                push cs
00000006  1F                pop ds
00000007  C41E9000          les bx,[0x90]
0000000B  8CC0              mov ax,es
0000000D  311E8600          xor [0x86],bx
00000011  31068800          xor [0x88],ax
00000015  311E8A00          xor [0x8a],bx
00000019  31068C00          xor [0x8c],ax
0000001D  0E                push cs
0000001E  07                pop es
0000001F  8B0E9600          mov cx,[0x96]
00000023  BF9A00            mov di,0x9a
00000026  BE8600            mov si,0x86
00000029  33DB              xor bx,bx
0000002B  33D2              xor dx,dx
0000002D  B400              mov ah,0x0
0000002F  268A05            mov al,[es:di]
00000032  3200              xor al,[bx+si]
00000034  03D0              add dx,ax
00000036  AA                stosb
00000037  43                inc bx
00000038  80E307            and bl,0x7
0000003B  E2F2              loop 0x2f
0000003D  3B169400          cmp dx,[0x94]
00000041  7438              jz 0x7b
00000043  BE4E00            mov si,0x4e
00000046  E8261D            call 0x1d6f
00000049  B8004C            mov ax,0x4c00
0000004C  CD21              int 0x21
0000004E  55                push bp
0000004F  6E                outsb
00000050  6C                insb
00000051  6963656E73        imul sp,[bp+di+0x65],word 0x736e
00000056  6564204E4F        and [fs:bp+0x4f],cl
0000005B  53                push bx
0000005C  207365            and [bp+di+0x65],dh
0000005F  7269              jc 0xca
00000061  61                popa
00000062  6C                insb
00000063  2023              and [bp+di],ah
00000065  3B20              cmp sp,[bx+si]
00000067  657865            gs js 0xcf
0000006A  637574            arpl [di+0x74],si
0000006D  696F6E2061        imul bp,[bx+0x6e],word 0x6120
00000072  626F72            bound bp,[bx+0x72]
00000075  7465              jz 0xdc
00000077  640D0A00          fs or ax,0xa
0000007B  2E8B0E0000        mov cx,[cs:0x0]
00000080  07                pop es
00000081  1F                pop ds
00000082  5F                pop di
00000083  EB19              jmp short 0x9e
00000085  90                nop
00000086  41                inc cx
00000087  49                dec cx
00000088  2D314E            sub ax,0x4e31
0000008B  4F                dec di
0000008C  44                inc sp
0000008D  45                inc bp
0000008E  0303              add ax,[bp+di]
00000090  0000              add [bx+si],al
00000092  0000              add [bx+si],al
00000094  0000              add [bx+si],al
00000096  2800              sub [bx+si],al
00000098  0000              add [bx+si],al
0000009A  0000              add [bx+si],al
0000009C  0000              add [bx+si],al
0000009E  0000              add [bx+si],al
000000A0  0000              add [bx+si],al
000000A2  0000              add [bx+si],al
000000A4  0000              add [bx+si],al
000000A6  0000              add [bx+si],al
000000A8  0000              add [bx+si],al
000000AA  0000              add [bx+si],al
000000AC  0000              add [bx+si],al
000000AE  0000              add [bx+si],al
000000B0  0000              add [bx+si],al
000000B2  0000              add [bx+si],al
000000B4  0000              add [bx+si],al
000000B6  0000              add [bx+si],al
000000B8  0000              add [bx+si],al
000000BA  0000              add [bx+si],al
000000BC  0000              add [bx+si],al
000000BE  0000              add [bx+si],al
000000C0  0000              add [bx+si],al
000000C2  1E                push ds
000000C3  0E                push cs
000000C4  1F                pop ds
000000C5  A19C00            mov ax,[0x9c]
000000C8  3B068E00          cmp ax,[0x8e]
000000CC  7403              jz 0xd1
000000CE  E972FF            jmp 0x43
000000D1  1F                pop ds
000000D2  E92401            jmp 0x1f9
000000D5  015245            add [bp+si+0x45],dx
000000D8  44                inc sp
000000D9  43                inc bx
000000DA  4F                dec di
000000DB  52                push dx
000000DC  45                inc bp
000000DD  2E53              cs push bx
000000DF  4C                dec sp
000000E0  4D                dec bp
000000E1  0001              add [bx+di],al
000000E3  50                push ax
000000E4  49                dec cx
000000E5  4E                dec si
000000E6  47                inc di
000000E7  4F                dec di
000000E8  4E                dec si
000000E9  2E53              cs push bx
000000EB  4C                dec sp
000000EC  4D                dec bp
000000ED  0000              add [bx+si],al
000000EF  50                push ax
000000F0  49                dec cx
000000F1  4E                dec si
000000F2  47                inc di
000000F3  4F                dec di
000000F4  46                inc si
000000F5  46                inc si
000000F6  2E53              cs push bx
000000F8  4C                dec sp
000000F9  4D                dec bp
000000FA  0000              add [bx+si],al
000000FC  53                push bx
000000FD  48                dec ax
000000FE  49                dec cx
000000FF  4D                dec bp
00000100  4F                dec di
00000101  4E                dec si
00000102  2E53              cs push bx
00000104  4C                dec sp
00000105  4D                dec bp
00000106  0001              add [bx+di],al
00000108  53                push bx
00000109  48                dec ax
0000010A  49                dec cx
0000010B  4D                dec bp
0000010C  4F                dec di
0000010D  46                inc si
0000010E  46                inc si
0000010F  2E53              cs push bx
00000111  4C                dec sp
00000112  4D                dec bp
00000113  0000              add [bx+si],al
00000115  53                push bx
00000116  4D                dec bp
00000117  42                inc dx
00000118  4F                dec di
00000119  4E                dec si
0000011A  2E53              cs push bx
0000011C  4C                dec sp
0000011D  4D                dec bp
0000011E  0001              add [bx+di],al
00000120  53                push bx
00000121  4D                dec bp
00000122  42                inc dx
00000123  4F                dec di
00000124  46                inc si
00000125  46                inc si
00000126  2E53              cs push bx
00000128  4C                dec sp
00000129  4D                dec bp
0000012A  0000              add [bx+si],al
0000012C  4E                dec si
0000012D  43                inc bx
0000012E  50                push ax
0000012F  4F                dec di
00000130  4E                dec si
00000131  2E53              cs push bx
00000133  4C                dec sp
00000134  4D                dec bp
00000135  0001              add [bx+di],al
00000137  4E                dec si
00000138  43                inc bx
00000139  50                push ax
0000013A  4F                dec di
0000013B  46                inc si
0000013C  46                inc si
0000013D  2E53              cs push bx
0000013F  4C                dec sp
00000140  4D                dec bp
00000141  0001              add [bx+di],al
00000143  4D                dec bp
00000144  53                push bx
00000145  47                inc di
00000146  4F                dec di
00000147  4E                dec si
00000148  2E53              cs push bx
0000014A  4C                dec sp
0000014B  4D                dec bp
0000014C  0000              add [bx+si],al
0000014E  4D                dec bp
0000014F  53                push bx
00000150  47                inc di
00000151  4F                dec di
00000152  46                inc si
00000153  46                inc si
00000154  2E53              cs push bx
00000156  4C                dec sp
00000157  4D                dec bp
00000158  0001              add [bx+di],al
0000015A  52                push dx
0000015B  45                inc bp
0000015C  44                inc sp
0000015D  4C                dec sp
0000015E  41                inc cx
0000015F  53                push bx
00000160  54                push sp
00000161  2E53              cs push bx
00000163  4C                dec sp
00000164  4D                dec bp
00000165  00FF              add bh,bh
00000167  009200B1          add [bp+si-0x4f00],dl
0000016B  2E8C06A514        mov [cs:0x14a5],es
00000170  E87A01            call 0x2ed
00000173  8CC8              mov ax,cs
00000175  8ED8              mov ds,ax
00000177  8EC0              mov es,ax
00000179  BE720C            mov si,0xc72
0000017C  E8351B            call 0x1cb4
0000017F  2EA09300          mov al,[cs:0x93]
00000183  BFCD10            mov di,0x10cd
00000186  E8E71C            call 0x1e70
00000189  2EA09200          mov al,[cs:0x92]
0000018D  D0E8              shr al,1
0000018F  D0E8              shr al,1
00000191  D0E8              shr al,1
00000193  D0E8              shr al,1
00000195  E8CA1C            call 0x1e62
00000198  2EA19000          mov ax,[cs:0x90]
0000019C  2E8B169200        mov dx,[cs:0x92]
000001A1  83E20F            and dx,byte +0xf
000001A4  BFD110            mov di,0x10d1
000001A7  E8E61A            call 0x1c90
000001AA  2EA19A00          mov ax,[cs:0x9a]
000001AE  33D2              xor dx,dx
000001B0  BFDB10            mov di,0x10db
000001B3  E8DA1A            call 0x1c90
000001B6  BEBF10            mov si,0x10bf
000001B9  E8F81A            call 0x1cb4
000001BC  BF5911            mov di,0x1159
000001BF  8BF7              mov si,di
000001C1  E87E1C            call 0x1e42
000001C4  BF0117            mov di,0x1701
000001C7  BA0200            mov dx,0x2
000001CA  E8051C            call 0x1dd2
000001CD  33C9              xor cx,cx
000001CF  2E803E01172F      cmp byte [cs:0x1701],0x2f
000001D5  7409              jz 0x1e0
000001D7  2E833E01173F      cmp word [cs:0x1701],byte +0x3f
000001DD  7401              jz 0x1e0
000001DF  41                inc cx
000001E0  BFF114            mov di,0x14f1
000001E3  B80000            mov ax,0x0
000001E6  8CCB              mov bx,cs
000001E8  E8371C            call 0x1e22
000001EB  E8A01D            call 0x1f8e
000001EE  730F              jnc 0x1ff
000001F0  B005              mov al,0x5
000001F2  B44C              mov ah,0x4c
000001F4  CD21              int 0x21
000001F6  0E                push cs
000001F7  0E                push cs
000001F8  1F                pop ds
000001F9  07                pop es
000001FA  E8E41A            call 0x1ce1
000001FD  EBF3              jmp short 0x1f2
000001FF  8D36F00B          lea si,[0xbf0]
00000203  B80200            mov ax,0x2
00000206  E8BA09            call 0xbc3
00000209  8D367B14          lea si,[0x147b]
0000020D  B013              mov al,0x13
0000020F  72E5              jc 0x1f6
00000211  2E803ECA1401      cmp byte [cs:0x14ca],0x1
00000217  7510              jnz 0x229
00000219  BE4710            mov si,0x1047
0000021C  E8951A            call 0x1cb4
0000021F  BFF114            mov di,0x14f1
00000222  E8DC1A            call 0x1d01
00000225  B006              mov al,0x6
00000227  EBC9              jmp short 0x1f2
00000229  2E803EC81401      cmp byte [cs:0x14c8],0x1
0000022F  750A              jnz 0x23b
00000231  BFB90C            mov di,0xcb9
00000234  E88A1A            call 0x1cc1
00000237  B006              mov al,0x6
00000239  EBB7              jmp short 0x1f2
0000023B  50                push ax
0000023C  53                push bx
0000023D  51                push cx
0000023E  B430              mov ah,0x30
00000240  CD21              int 0x21
00000242  86C4              xchg al,ah
00000244  3D0A03            cmp ax,0x30a
00000247  59                pop cx
00000248  5B                pop bx
00000249  58                pop ax
0000024A  BE6D0D            mov si,0xd6d
0000024D  B001              mov al,0x1
0000024F  72A5              jc 0x1f6
00000251  E8FA18            call 0x1b4e
00000254  7307              jnc 0x25d
00000256  BE540D            mov si,0xd54
00000259  B002              mov al,0x2
0000025B  EB99              jmp short 0x1f6
0000025D  B80011            mov ax,0x1100
00000260  CD2F              int 0x2f
00000262  2E803EC91401      cmp byte [cs:0x14c9],0x1
00000268  7403              jz 0x26d
0000026A  EB2B              jmp short 0x297
0000026C  90                nop
0000026D  3CFF              cmp al,0xff
0000026F  750C              jnz 0x27d
00000271  BAF40D            mov dx,0xdf4
00000274  B8005E            mov ax,0x5e00
00000277  CD21              int 0x21
00000279  84ED              test ch,ch
0000027B  7508              jnz 0x285
0000027D  BE070E            mov si,0xe07
00000280  B006              mov al,0x6
00000282  E971FF            jmp 0x1f6
00000285  B809B8            mov ax,0xb809
00000288  CD2F              int 0x2f
0000028A  3D0006            cmp ax,0x600
0000028D  7430              jz 0x2bf
0000028F  B010              mov al,0x10
00000291  BEEA0F            mov si,0xfea
00000294  E95FFF            jmp 0x1f6
00000297  3CFF              cmp al,0xff
00000299  7524              jnz 0x2bf
0000029B  BAF40D            mov dx,0xdf4
0000029E  B8005E            mov ax,0x5e00
000002A1  CD21              int 0x21
000002A3  84ED              test ch,ch
000002A5  7508              jnz 0x2af
000002A7  BE320E            mov si,0xe32
000002AA  B003              mov al,0x3
000002AC  E947FF            jmp 0x1f6
000002AF  C606030E20        mov byte [0xe03],0x20
000002B4  BEB30D            mov si,0xdb3
000002B7  E8FA19            call 0x1cb4
000002BA  B8084C            mov ax,0x4c08
000002BD  CD21              int 0x21
000002BF  E85E00            call 0x320
000002C2  2E8E06A514        mov es,[cs:0x14a5]
000002C7  E83A00            call 0x304
000002CA  BE0000            mov si,0x0
000002CD  8EDE              mov ds,si
000002CF  BED500            mov si,0xd5
000002D2  B99300            mov cx,0x93
000002D5  2EA0D614          mov al,[cs:0x14d6]
000002D9  D0E0              shl al,1
000002DB  2E803ED41400      cmp byte [cs:0x14d4],0x0
000002E1  7405              jz 0x2e8
000002E3  2E0A06D514        or al,[cs:0x14d5]
000002E8  EA0000EA02        jmp 0x2ea:0x0
000002ED  1E                push ds
000002EE  06                push es
000002EF  06                push es
000002F0  1F                pop ds
000002F1  BE8000            mov si,0x80
000002F4  BF0000            mov di,0x0
000002F7  8EC7              mov es,di
000002F9  BF6801            mov di,0x168
000002FC  B94000            mov cx,0x40
000002FF  F3A5              rep movsw
00000301  07                pop es
00000302  1F                pop ds
00000303  C3                ret
00000304  BF8000            mov di,0x80
00000307  BE0000            mov si,0x0
0000030A  8EDE              mov ds,si
0000030C  BE6801            mov si,0x168
0000030F  B94000            mov cx,0x40
00000312  F3A5              rep movsw
00000314  BE8600            mov si,0x86
00000317  B91000            mov cx,0x10
0000031A  BF5C00            mov di,0x5c
0000031D  F3A5              rep movsw
0000031F  C3                ret
00000320  803EC91400        cmp byte [0x14c9],0x0
00000325  7461              jz 0x388
00000327  BE0117            mov si,0x1701
0000032A  8BFE              mov di,si
0000032C  B91400            mov cx,0x14
0000032F  32C0              xor al,al
00000331  F3AA              rep stosb
00000333  C7060F172000      mov word [0x170f],0x20
00000339  89361117          mov [0x1711],si
0000033D  8C1E1317          mov [0x1713],ds
00000341  B8D55F            mov ax,0x5fd5
00000344  CD21              int 0x21
00000346  7240              jc 0x388
00000348  C606CB1400        mov byte [0x14cb],0x0
0000034D  C606CF1400        mov byte [0x14cf],0x0
00000352  C606CC1400        mov byte [0x14cc],0x0
00000357  C606CD1400        mov byte [0x14cd],0x0
0000035C  F6440280          test byte [si+0x2],0x80
00000360  7505              jnz 0x367
00000362  C606CB1401        mov byte [0x14cb],0x1
00000367  F6440220          test byte [si+0x2],0x20
0000036B  7405              jz 0x372
0000036D  C606CC1401        mov byte [0x14cc],0x1
00000372  F6440210          test byte [si+0x2],0x10
00000376  7405              jz 0x37d
00000378  C606CD1401        mov byte [0x14cd],0x1
0000037D  F6440208          test byte [si+0x2],0x8
00000381  7505              jnz 0x388
00000383  C606CF1401        mov byte [0x14cf],0x1
00000388  803ECB1400        cmp byte [0x14cb],0x0
0000038D  740A              jz 0x399
0000038F  C606E20000        mov byte [0xe2],0x0
00000394  C606EE0001        mov byte [0xee],0x1
00000399  A0CC14            mov al,[0x14cc]
0000039C  84C0              test al,al
0000039E  740A              jz 0x3aa
000003A0  C606140101        mov byte [0x114],0x1
000003A5  C6061F0100        mov byte [0x11f],0x0
000003AA  8A26CD14          mov ah,[0x14cd]
000003AE  84E4              test ah,ah
000003B0  740F              jz 0x3c1
000003B2  E8C104            call 0x876
000003B5  720A              jc 0x3c1
000003B7  C6062B0101        mov byte [0x12b],0x1
000003BC  C606360100        mov byte [0x136],0x0
000003C1  85C0              test ax,ax
000003C3  740A              jz 0x3cf
000003C5  C606FB0001        mov byte [0xfb],0x1
000003CA  C606070100        mov byte [0x107],0x0
000003CF  803ECF1400        cmp byte [0x14cf],0x0
000003D4  740A              jz 0x3e0
000003D6  C606420100        mov byte [0x142],0x0
000003DB  C6064D0101        mov byte [0x14d],0x1
000003E0  C3                ret
000003E1  7602              jna 0x3e5
000003E3  B200              mov dl,0x0
000003E5  B203              mov dl,0x3
000003E7  B0FF              mov al,0xff
000003E9  FF20              jmp [bx+si]
000003EB  0300              add ax,[bx+si]
000003ED  B200              mov dl,0x0
000003EF  D100              rol word [bx+si],1
000003F1  B0FF              mov al,0xff
000003F3  FF                db 0xff
000003F4  FF                db 0xff
000003F5  FF                db 0xff
000003F6  FF05              inc word [di]
000003F8  00B2000A          add [bp+si+0xa00],dh
000003FC  00B05080          add [bx+si-0x7fb0],dh
00000400  3EC9              ds leave
00000402  1401              adc al,0x1
00000404  741E              jz 0x424
00000406  B8007A            mov ax,0x7a00
00000409  CD2F              int 0x2f
0000040B  3CFF              cmp al,0xff
0000040D  740A              jz 0x419
0000040F  BAE213            mov dx,0x13e2
00000412  B409              mov ah,0x9
00000414  CD21              int 0x21
00000416  F9                stc
00000417  EB0B              jmp short 0x424
00000419  893EFA08          mov [0x8fa],di
0000041D  8C06FC08          mov [0x8fc],es
00000421  E80600            call 0x42a
00000424  58                pop ax
00000425  7302              jnc 0x429
00000427  B400              mov ah,0x0
00000429  C3                ret
0000042A  8CD8              mov ax,ds
0000042C  8EC0              mov es,ax
0000042E  E83B02            call 0x66c
00000431  730A              jnc 0x43d
00000433  BAE213            mov dx,0x13e2
00000436  B409              mov ah,0x9
00000438  CD21              int 0x21
0000043A  E90101            jmp 0x53e
0000043D  BA1B14            mov dx,0x141b
00000440  B409              mov ah,0x9
00000442  CD21              int 0x21
00000444  8CC8              mov ax,cs
00000446  BE7B06            mov si,0x67b
00000449  C74404520A        mov word [si+0x4],0xa52
0000044E  894406            mov [si+0x6],ax
00000451  C7440A4006        mov word [si+0xa],0x640
00000456  C744220200        mov word [si+0x22],0x2
0000045B  8CD8              mov ax,ds
0000045D  C744241705        mov word [si+0x24],0x517
00000462  894426            mov [si+0x26],ax
00000465  C744281E00        mov word [si+0x28],0x1e
0000046A  C7442A3505        mov word [si+0x2a],0x535
0000046F  89442C            mov [si+0x2c],ax
00000472  C7442E9000        mov word [si+0x2e],0x90
00000477  8EC0              mov es,ax
00000479  BE7B06            mov si,0x67b
0000047C  BB0400            mov bx,0x4
0000047F  FF1EFA08          call far [0x8fa]
00000483  8CC8              mov ax,cs
00000485  BE3F06            mov si,0x63f
00000488  C74404980A        mov word [si+0x4],0xa98
0000048D  894406            mov [si+0x6],ax
00000490  8CD8              mov ax,ds
00000492  C74424B706        mov word [si+0x24],0x6b7
00000497  894426            mov [si+0x26],ax
0000049A  C744281E00        mov word [si+0x28],0x1e
0000049F  B8FFFF            mov ax,0xffff
000004A2  89441C            mov [si+0x1c],ax
000004A5  89441E            mov [si+0x1e],ax
000004A8  894420            mov [si+0x20],ax
000004AB  C7440A4006        mov word [si+0xa],0x640
000004B0  C744220200        mov word [si+0x22],0x2
000004B5  BEB706            mov si,0x6b7
000004B8  C704FFFF          mov word [si],0xffff
000004BC  C6440511          mov byte [si+0x5],0x11
000004C0  C744060000        mov word [si+0x6],0x0
000004C5  C744080000        mov word [si+0x8],0x0
000004CA  C7440AFFFF        mov word [si+0xa],0xffff
000004CF  C7440CFFFF        mov word [si+0xc],0xffff
000004D4  C7440EFFFF        mov word [si+0xe],0xffff
000004D9  C744100452        mov word [si+0x10],0x5204
000004DE  BE3F06            mov si,0x63f
000004E1  8CC8              mov ax,cs
000004E3  C7442AAB08        mov word [si+0x2a],0x8ab
000004E8  89442C            mov [si+0x2c],ax
000004EB  C7442E0400        mov word [si+0x2e],0x4
000004F0  1E                push ds
000004F1  0E                push cs
000004F2  1F                pop ds
000004F3  BEAB08            mov si,0x8ab
000004F6  C7040003          mov word [si],0x300
000004FA  C744020004        mov word [si+0x2],0x400
000004FF  1F                pop ds
00000500  B81E00            mov ax,0x1e
00000503  1E                push ds
00000504  07                pop es
00000505  BE3F06            mov si,0x63f
00000508  50                push ax
00000509  52                push dx
0000050A  B22E              mov dl,0x2e
0000050C  B402              mov ah,0x2
0000050E  CD21              int 0x21
00000510  5A                pop dx
00000511  BB0300            mov bx,0x3
00000514  FF1EFA08          call far [0x8fa]
00000518  58                pop ax
00000519  B9FFFF            mov cx,0xffff
0000051C  2E803EF50800      cmp byte [cs:0x8f5],0x0
00000522  7D1F              jnl 0x543
00000524  BB0A00            mov bx,0xa
00000527  FF1EFA08          call far [0x8fa]
0000052B  E2EF              loop 0x51c
0000052D  48                dec ax
0000052E  75D3              jnz 0x503
00000530  BA3D14            mov dx,0x143d
00000533  B409              mov ah,0x9
00000535  CD21              int 0x21
00000537  BA4014            mov dx,0x1440
0000053A  B409              mov ah,0x9
0000053C  CD21              int 0x21
0000053E  E87C01            call 0x6bd
00000541  F9                stc
00000542  C3                ret
00000543  BA3614            mov dx,0x1436
00000546  B409              mov ah,0x9
00000548  CD21              int 0x21
0000054A  F8                clc
0000054B  C3                ret
0000054C  56                push si
0000054D  268E5C2C          mov ds,[es:si+0x2c]
00000551  268B742A          mov si,[es:si+0x2a]
00000555  813C0004          cmp word [si],0x400
00000559  7507              jnz 0x562
0000055B  817C020004        cmp word [si+0x2],0x400
00000560  7409              jz 0x56b
00000562  5E                pop si
00000563  BB0400            mov bx,0x4
00000566  FF1EFA08          call far [0x8fa]
0000056A  CB                retf
0000056B  BF6F04            mov di,0x46f
0000056E  8D7434            lea si,[si+0x34]
00000571  B90600            mov cx,0x6
00000574  F3A5              rep movsw
00000576  5E                pop si
00000577  BF6F04            mov di,0x46f
0000057A  8B441C            mov ax,[si+0x1c]
0000057D  89450C            mov [di+0xc],ax
00000580  8B441E            mov ax,[si+0x1e]
00000583  89450E            mov [di+0xe],ax
00000586  8B4420            mov ax,[si+0x20]
00000589  894510            mov [di+0x10],ax
0000058C  2EFE06F508        inc byte [cs:0x8f5]
00000591  CB                retf
00000592  CB                retf
00000593  06                push es
00000594  1F                pop ds
00000595  268B7C2A          mov di,[es:si+0x2a]
00000599  813D3333          cmp word [di],0x3333
0000059D  751F              jnz 0x5be
0000059F  56                push si
000005A0  BE6F04            mov si,0x46f
000005A3  8A4412            mov al,[si+0x12]
000005A6  384502            cmp [di+0x2],al
000005A9  7513              jnz 0x5be
000005AB  8A4503            mov al,[di+0x3]
000005AE  884413            mov [si+0x13],al
000005B1  8A4505            mov al,[di+0x5]
000005B4  884414            mov [si+0x14],al
000005B7  5E                pop si
000005B8  2EFE06F608        inc byte [cs:0x8f6]
000005BD  CB                retf
000005BE  5E                pop si
000005BF  BB0400            mov bx,0x4
000005C2  FF1EFA08          call far [0x8fa]
000005C6  CB                retf
000005C7  268B7C2A          mov di,[es:si+0x2a]
000005CB  268B442C          mov ax,[es:si+0x2c]
000005CF  8ED8              mov ds,ax
000005D1  813D3333          cmp word [di],0x3333
000005D5  7519              jnz 0x5f0
000005D7  807D0600          cmp byte [di+0x6],0x0
000005DB  7513              jnz 0x5f0
000005DD  56                push si
000005DE  BE6F04            mov si,0x46f
000005E1  8A4412            mov al,[si+0x12]
000005E4  5E                pop si
000005E5  384502            cmp [di+0x2],al
000005E8  7506              jnz 0x5f0
000005EA  2EFE06F708        inc byte [cs:0x8f7]
000005EF  CB                retf
000005F0  BB0400            mov bx,0x4
000005F3  FF1EFA08          call far [0x8fa]
000005F7  CB                retf
000005F8  268B7C2A          mov di,[es:si+0x2a]
000005FC  268B442C          mov ax,[es:si+0x2c]
00000600  8ED8              mov ds,ax
00000602  813D3333          cmp word [di],0x3333
00000606  752B              jnz 0x633
00000608  807D0600          cmp byte [di+0x6],0x0
0000060C  7525              jnz 0x633
0000060E  56                push si
0000060F  BE6F04            mov si,0x46f
00000612  8A4412            mov al,[si+0x12]
00000615  5E                pop si
00000616  384502            cmp [di+0x2],al
00000619  7518              jnz 0x633
0000061B  8B4508            mov ax,[di+0x8]
0000061E  86C4              xchg al,ah
00000620  A3FE08            mov [0x8fe],ax
00000623  48                dec ax
00000624  A30009            mov [0x900],ax
00000627  35FFFF            xor ax,0xffff
0000062A  A30209            mov [0x902],ax
0000062D  2EFE06F808        inc byte [cs:0x8f8]
00000632  CB                retf
00000633  BB0400            mov bx,0x4
00000636  FF1EFA08          call far [0x8fa]
0000063A  CB                retf
0000063B  268B7C2A          mov di,[es:si+0x2a]
0000063F  268B442C          mov ax,[es:si+0x2c]
00000643  8ED8              mov ds,ax
00000645  813D3333          cmp word [di],0x3333
00000649  7519              jnz 0x664
0000064B  807D0600          cmp byte [di+0x6],0x0
0000064F  7513              jnz 0x664
00000651  56                push si
00000652  BE6F04            mov si,0x46f
00000655  8A4412            mov al,[si+0x12]
00000658  5E                pop si
00000659  384502            cmp [di+0x2],al
0000065C  7506              jnz 0x664
0000065E  2EFE06F908        inc byte [cs:0x8f9]
00000663  CB                retf
00000664  BB0400            mov bx,0x4
00000667  FF1EFA08          call far [0x8fa]
0000066B  CB                retf
0000066C  50                push ax
0000066D  53                push bx
0000066E  52                push dx
0000066F  BB0000            mov bx,0x0
00000672  B0FF              mov al,0xff
00000674  BA4003            mov dx,0x340
00000677  FF1EFA08          call far [0x8fa]
0000067B  3CFE              cmp al,0xfe
0000067D  7439              jz 0x6b8
0000067F  B0FF              mov al,0xff
00000681  BA4004            mov dx,0x440
00000684  FF1EFA08          call far [0x8fa]
00000688  3CFE              cmp al,0xfe
0000068A  742C              jz 0x6b8
0000068C  B0FF              mov al,0xff
0000068E  BA4006            mov dx,0x640
00000691  FF1EFA08          call far [0x8fa]
00000695  3CFE              cmp al,0xfe
00000697  741F              jz 0x6b8
00000699  B0FF              mov al,0xff
0000069B  BA0451            mov dx,0x5104
0000069E  FF1EFA08          call far [0x8fa]
000006A2  3CFE              cmp al,0xfe
000006A4  7412              jz 0x6b8
000006A6  B0FF              mov al,0xff
000006A8  BA0452            mov dx,0x5204
000006AB  FF1EFA08          call far [0x8fa]
000006AF  3CFE              cmp al,0xfe
000006B1  7405              jz 0x6b8
000006B3  5A                pop dx
000006B4  5B                pop bx
000006B5  58                pop ax
000006B6  F8                clc
000006B7  C3                ret
000006B8  5A                pop dx
000006B9  5B                pop bx
000006BA  58                pop ax
000006BB  F9                stc
000006BC  C3                ret
000006BD  53                push bx
000006BE  52                push dx
000006BF  06                push es
000006C0  BB0100            mov bx,0x1
000006C3  BA4003            mov dx,0x340
000006C6  FF1EFA08          call far [0x8fa]
000006CA  BA4004            mov dx,0x440
000006CD  FF1EFA08          call far [0x8fa]
000006D1  BA4006            mov dx,0x640
000006D4  FF1EFA08          call far [0x8fa]
000006D8  BA0451            mov dx,0x5104
000006DB  FF1EFA08          call far [0x8fa]
000006DF  BA0452            mov dx,0x5204
000006E2  FF1EFA08          call far [0x8fa]
000006E6  07                pop es
000006E7  5A                pop dx
000006E8  5B                pop bx
000006E9  C3                ret
000006EA  50                push ax
000006EB  44                inc sp
000006EC  42                inc dx
000006ED  50                push ax
000006EE  44                inc sp
000006EF  42                inc dx
000006F0  0001              add [bx+di],al
000006F2  1E                push ds
000006F3  0303              add ax,[bp+di]
000006F5  3C00              cmp al,0x0
000006F7  0002              add [bp+si],al
000006F9  0001              add [bx+di],al
000006FB  06                push es
000006FC  005252            add [bp+si+0x52],dl
000006FF  52                push dx
00000700  0300              add ax,[bx+si]
00000702  0000              add [bx+si],al
00000704  0000              add [bx+si],al
00000706  F5                cmc
00000707  A5                movsw
00000708  50                push ax
00000709  8AD0              mov dl,al
0000070B  8BC5              mov ax,bp
0000070D  32D0              xor dl,al
0000070F  8AF2              mov dh,dl
00000711  02F6              add dh,dh
00000713  9C                pushf
00000714  32D6              xor dl,dh
00000716  32F6              xor dh,dh
00000718  9D                popf
00000719  7A02              jpe 0x71d
0000071B  B603              mov dh,0x3
0000071D  7303              jnc 0x722
0000071F  80F602            xor dh,0x2
00000722  8AC2              mov al,dl
00000724  8AEC              mov ch,ah
00000726  8AE6              mov ah,dh
00000728  D0EE              shr dh,1
0000072A  B106              mov cl,0x6
0000072C  D3E0              shl ax,cl
0000072E  0AC6              or al,dh
00000730  32C5              xor al,ch
00000732  8BE8              mov bp,ax
00000734  58                pop ax
00000735  C3                ret
00000736  50                push ax
00000737  51                push cx
00000738  52                push dx
00000739  FC                cld
0000073A  B91C00            mov cx,0x1c
0000073D  33ED              xor bp,bp
0000073F  AC                lodsb
00000740  51                push cx
00000741  E8C4FF            call 0x708
00000744  59                pop cx
00000745  E2F8              loop 0x73f
00000747  5A                pop dx
00000748  59                pop cx
00000749  58                pop ax
0000074A  C3                ret
0000074B  50                push ax
0000074C  55                push bp
0000074D  56                push si
0000074E  1E                push ds
0000074F  3B440E            cmp ax,[si+0xe]
00000752  750A              jnz 0x75e
00000754  FC                cld
00000755  E8DEFF            call 0x736
00000758  F8                clc
00000759  AD                lodsw
0000075A  3BC5              cmp ax,bp
0000075C  7401              jz 0x75f
0000075E  F9                stc
0000075F  1F                pop ds
00000760  5E                pop si
00000761  5D                pop bp
00000762  58                pop ax
00000763  C3                ret
00000764  F8                clc
00000765  3B4409            cmp ax,[si+0x9]
00000768  7401              jz 0x76b
0000076A  F9                stc
0000076B  C3                ret
0000076C  4C                dec sp
0000076D  41                inc cx
0000076E  4E                dec si
0000076F  7461              jz 0x7d2
00000771  7374              jnc 0x7e7
00000773  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000778  2920              sub [bx+si],sp
0000077A  52                push dx
0000077B  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000782  6F                outsw
00000783  7220              jc 0x7a5
00000785  56                push si
00000786  362E3030          xor [cs:bx+si],dh
0000078A  2F                das
0000078B  41                inc cx
0000078C  49                dec cx
0000078D  202D              and [di],ch
0000078F  2028              and [bx+si],ch
00000791  43                inc bx
00000792  2920              sub [bx+si],sp
00000794  43                inc bx
00000795  6F                outsw
00000796  7079              jo 0x811
00000798  7269              jc 0x803
0000079A  67687420          push word 0x2074
0000079E  3139              xor [bx+di],di
000007A0  3934              cmp [si],si
000007A2  204152            and [bx+di+0x52],al
000007A5  54                push sp
000007A6  49                dec cx
000007A7  53                push bx
000007A8  4F                dec di
000007A9  46                inc si
000007AA  54                push sp
000007AB  20496E            and [bx+di+0x6e],cl
000007AE  632E0D0A          arpl [0xa0d],bp
000007B2  0020              add [bx+si],ah
000007B4  2D2D2D            sub ax,0x2d2d
000007B7  205245            and [bp+si+0x45],dl
000007BA  44                inc sp
000007BB  49                dec cx
000007BC  52                push dx
000007BD  205636            and [bp+0x36],dl
000007C0  2E3030            xor [cs:bx+si],dh
000007C3  2E3038            xor [cs:bx+si],bh
000007C6  322F              xor ch,[bx]
000007C8  41                inc cx
000007C9  49                dec cx
000007CA  202D              and [di],ch
000007CC  2D2D0D            sub ax,0xd2d
000007CF  0A00              or al,[bx+si]
000007D1  4E                dec si
000007D2  61                popa
000007D3  6D                insw
000007D4  65206973          and [gs:bx+di+0x73],ch
000007D8  20616C            and [bx+di+0x6c],ah
000007DB  7265              jc 0x842
000007DD  61                popa
000007DE  647920            fs jns 0x801
000007E1  696E207573        imul bp,[bp+0x20],word 0x7375
000007E6  65206279          and [gs:bp+si+0x79],ah
000007EA  20736F            and [bp+di+0x6f],dh
000007ED  6D                insw
000007EE  656F              gs outsw
000007F0  6E                outsb
000007F1  6520656C          and [gs:di+0x6c],ah
000007F5  7365              jnc 0x85c
000007F7  206F6E            and [bx+0x6e],ch
000007FA  207468            and [si+0x68],dh
000007FD  65206E65          and [gs:bp+0x65],ch
00000801  7477              jz 0x87a
00000803  6F                outsw
00000804  726B              jc 0x871
00000806  0D0A00            or ax,0xa
00000809  59                pop cx
0000080A  6F                outsw
0000080B  7520              jnz 0x82d
0000080D  6D                insw
0000080E  7573              jnz 0x883
00000810  7420              jz 0x832
00000812  7370              jnc 0x884
00000814  65636966          arpl [gs:bx+di+0x66],bp
00000818  7920              jns 0x83a
0000081A  61                popa
0000081B  206C6F            and [si+0x6f],ch
0000081E  63616C            arpl [bx+di+0x6c],sp
00000821  206D61            and [di+0x61],ch
00000824  636869            arpl [bx+si+0x69],bp
00000827  6E                outsb
00000828  65206E61          and [gs:bp+0x61],ch
0000082C  6D                insw
0000082D  650D0A00          gs or ax,0xa
00000831  49                dec cx
00000832  6E                outsb
00000833  7661              jna 0x896
00000835  6C                insb
00000836  6964206C6F        imul sp,[si+0x20],word 0x6f6c
0000083B  63616C            arpl [bx+di+0x6c],sp
0000083E  206D61            and [di+0x61],ch
00000841  636869            arpl [bx+si+0x69],bp
00000844  6E                outsb
00000845  65206E61          and [gs:bp+0x61],ch
00000849  6D                insw
0000084A  650D0A00          gs or ax,0xa
0000084E  4E                dec si
0000084F  45                inc bp
00000850  54                push sp
00000851  42                inc dx
00000852  49                dec cx
00000853  4F                dec di
00000854  53                push bx
00000855  206973            and [bx+di+0x73],ch
00000858  206E6F            and [bp+0x6f],ch
0000085B  7420              jz 0x87d
0000085D  7072              jo 0x8d1
0000085F  657365            gs jnc 0x8c7
00000862  6E                outsb
00000863  740D              jz 0x872
00000865  0A00              or al,[bx+si]
00000867  4C                dec sp
00000868  41                inc cx
00000869  4E                dec si
0000086A  7461              jz 0x8cd
0000086C  7374              jnc 0x8e2
0000086E  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000873  2920              sub [bx+si],sp
00000875  52                push dx
00000876  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
0000087D  6F                outsw
0000087E  7220              jc 0x8a0
00000880  6D                insw
00000881  7573              jnz 0x8f6
00000883  7420              jz 0x8a5
00000885  626520            bound sp,[di+0x20]
00000888  7275              jc 0x8ff
0000088A  6E                outsb
0000088B  207769            and [bx+0x69],dh
0000088E  7468              jz 0x8f8
00000890  20444F            and [si+0x4f],al
00000893  53                push bx
00000894  207665            and [bp+0x65],dh
00000897  7273              jc 0x90c
00000899  696F6E2033        imul bp,[bx+0x6e],word 0x3320
0000089E  2E3130            xor [cs:bx+si],si
000008A1  206F72            and [bx+0x72],ch
000008A4  206162            and [bx+di+0x62],ah
000008A7  6F                outsw
000008A8  7665              jna 0x90f
000008AA  0D0A00            or ax,0xa
000008AD  07                pop es
000008AE  0D0A4C            or ax,0x4c0a
000008B1  41                inc cx
000008B2  4E                dec si
000008B3  7461              jz 0x916
000008B5  7374              jnc 0x92b
000008B7  6963202852        imul sp,[bp+di+0x20],word 0x5228
000008BC  2920              sub [bx+si],sp
000008BE  52                push dx
000008BF  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
000008C6  6F                outsw
000008C7  7220              jc 0x8e9
000008C9  697320616C        imul si,[bp+di+0x20],word 0x6c61
000008CE  7265              jc 0x935
000008D0  61                popa
000008D1  647920            fs jns 0x8f4
000008D4  7374              jnc 0x94a
000008D6  61                popa
000008D7  7274              jc 0x94d
000008D9  6564207769        and [fs:bx+0x69],dh
000008DE  7468              jz 0x948
000008E0  206D61            and [di+0x61],ch
000008E3  636869            arpl [bx+si+0x69],bp
000008E6  6E                outsb
000008E7  65206E61          and [gs:bp+0x61],ch
000008EB  6D                insw
000008EC  65EF              gs out dx,ax
000008EE  04B2              add al,0xb2
000008F0  2011              and [bx+di],dl
000008F2  00B00D0A          add [bx+si+0xa0d],dh
000008F6  004C41            add [si+0x41],cl
000008F9  4E                dec si
000008FA  7461              jz 0x95d
000008FC  7374              jnc 0x972
000008FE  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000903  2920              sub [bx+si],sp
00000905  52                push dx
00000906  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
0000090D  6F                outsw
0000090E  7220              jc 0x930
00000910  6973206E6F        imul si,[bp+di+0x20],word 0x6f6e
00000915  7420              jz 0x937
00000917  7275              jc 0x98e
00000919  6E                outsb
0000091A  6E                outsb
0000091B  696E67200D        imul bp,[bp+0x67],word 0xd20
00000920  0A00              or al,[bx+si]
00000922  4C                dec sp
00000923  41                inc cx
00000924  4E                dec si
00000925  7461              jz 0x988
00000927  7374              jnc 0x99d
00000929  6963202852        imul sp,[bp+di+0x20],word 0x5228
0000092E  2920              sub [bx+si],sp
00000930  52                push dx
00000931  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000938  6F                outsw
00000939  7220              jc 0x95b
0000093B  6D                insw
0000093C  7573              jnz 0x9b1
0000093E  7420              jz 0x960
00000940  626520            bound sp,[di+0x20]
00000943  7374              jnc 0x9b9
00000945  61                popa
00000946  7274              jc 0x9bc
00000948  6564206669        and [fs:bp+0x69],ah
0000094D  7273              jc 0x9c2
0000094F  740D              jz 0x95e
00000951  0A20              or ah,[bx+si]
00000953  2020              and [bx+si],ah
00000955  2020              and [bx+si],ah
00000957  2020              and [bx+si],ah
00000959  43                inc bx
0000095A  44                inc sp
0000095B  2D524F            sub ax,0x4f52
0000095E  4D                dec bp
0000095F  206F72            and [bx+0x72],ch
00000962  206F74            and [bx+0x74],ch
00000965  686572            push word 0x7265
00000968  206E65            and [bp+0x65],ch
0000096B  7477              jz 0x9e4
0000096D  6F                outsw
0000096E  726B              jc 0x9db
00000970  207265            and [bp+si+0x65],dh
00000973  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00000979  6F                outsw
0000097A  7220              jc 0x99c
0000097C  7072              jo 0x9f0
0000097E  657365            gs jnc 0x9e6
00000981  6E                outsb
00000982  740D              jz 0x991
00000984  0A00              or al,[bx+si]
00000986  54                push sp
00000987  6F                outsw
00000988  7461              jz 0x9eb
0000098A  6C                insb
0000098B  206275            and [bp+si+0x75],ah
0000098E  6666657220        gs o32 jc 0x9b3
00000993  7370              jnc 0xa05
00000995  61                popa
00000996  636520            arpl [di+0x20],sp
00000999  284255            sub [bp+si+0x55],al
0000099C  46                inc si
0000099D  46                inc si
0000099E  45                inc bp
0000099F  52                push dx
000009A0  53                push bx
000009A1  2A5349            sub dl,[bp+di+0x49]
000009A4  5A                pop dx
000009A5  45                inc bp
000009A6  2920              sub [bx+si],sp
000009A8  6D                insw
000009A9  61                popa
000009AA  7920              jns 0x9cc
000009AC  6E                outsb
000009AD  6F                outsw
000009AE  7420              jz 0x9d0
000009B0  657863            gs js 0xa16
000009B3  6565642033        and [fs:bp+di],dh
000009B8  3237              xor dh,[bx]
000009BA  36380D            cmp [ss:di],cl
000009BD  0A00              or al,[bx+si]
000009BF  43                inc bx
000009C0  61                popa
000009C1  6E                outsb
000009C2  27                daa
000009C3  7420              jz 0x9e5
000009C5  61                popa
000009C6  6464206E65        and [fs:bp+0x65],ch
000009CB  7477              jz 0xa44
000009CD  6F                outsw
000009CE  726B              jc 0xa3b
000009D0  206E61            and [bp+0x61],ch
000009D3  6D                insw
000009D4  65202D            and [gs:di],ch
000009D7  204E45            and [bp+0x45],cl
000009DA  54                push sp
000009DB  42                inc dx
000009DC  49                dec cx
000009DD  4F                dec di
000009DE  53                push bx
000009DF  206572            and [di+0x72],ah
000009E2  726F              jc 0xa53
000009E4  7220              jc 0xa06
000009E6  3030              xor [bx+si],dh
000009E8  48                dec ax
000009E9  0D0A00            or ax,0xa
000009EC  F8                clc
000009ED  00B2200B          add [bp+si+0xb20],dh
000009F1  00B02D2D          add [bx+si+0x2d2d],dh
000009F5  2D2D20            sub ax,0x202d
000009F8  4C                dec sp
000009F9  41                inc cx
000009FA  4E                dec si
000009FB  7461              jz 0xa5e
000009FD  7374              jnc 0xa73
000009FF  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000A04  2920              sub [bx+si],sp
00000A06  52                push dx
00000A07  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000A0E  6F                outsw
00000A0F  7220              jc 0xa31
00000A11  49                dec cx
00000A12  6E                outsb
00000A13  7374              jnc 0xa89
00000A15  61                popa
00000A16  6C                insb
00000A17  6C                insb
00000A18  6564202D          and [fs:di],ch
00000A1C  2D2D2D            sub ax,0x2d2d
00000A1F  0D0A00            or ax,0xa
00000A22  2F                das
00000A23  00B2200C          add [bp+si+0xc20],dh
00000A27  00B02D2D          add [bx+si+0x2d2d],dh
00000A2B  2D2D20            sub ax,0x202d
00000A2E  4C                dec sp
00000A2F  41                inc cx
00000A30  4E                dec si
00000A31  7461              jz 0xa94
00000A33  7374              jnc 0xaa9
00000A35  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000A3A  2920              sub [bx+si],sp
00000A3C  52                push dx
00000A3D  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000A44  6F                outsw
00000A45  7220              jc 0xa67
00000A47  7265              jc 0xaae
00000A49  6D                insw
00000A4A  6F                outsw
00000A4B  7665              jna 0xab2
00000A4D  64202D            and [fs:di],ch
00000A50  2D2D2D            sub ax,0x2d2d
00000A53  0D0A00            or ax,0xa
00000A56  0D0A2F            or ax,0x2f0a
00000A59  00B22009          add [bp+si+0x920],dh
00000A5D  00B02D2D          add [bx+si+0x2d2d],dh
00000A61  2D2D20            sub ax,0x202d
00000A64  4C                dec sp
00000A65  41                inc cx
00000A66  4E                dec si
00000A67  7461              jz 0xaca
00000A69  7374              jnc 0xadf
00000A6B  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000A70  2920              sub [bx+si],sp
00000A72  52                push dx
00000A73  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000A7A  6F                outsw
00000A7B  7220              jc 0xa9d
00000A7D  4E                dec si
00000A7E  4F                dec di
00000A7F  54                push sp
00000A80  20496E            and [bx+di+0x6e],cl
00000A83  7374              jnc 0xaf9
00000A85  61                popa
00000A86  6C                insb
00000A87  6C                insb
00000A88  6564202D          and [fs:di],ch
00000A8C  2D2D2D            sub ax,0x2d2d
00000A8F  0D0A00            or ax,0xa
00000A92  4E                dec si
00000A93  6F                outsw
00000A94  7420              jz 0xab6
00000A96  656E              gs outsb
00000A98  6F                outsw
00000A99  7567              jnz 0xb02
00000A9B  68206D            push word 0x6d20
00000A9E  656D              gs insw
00000AA0  6F                outsw
00000AA1  7279              jc 0xb1c
00000AA3  202D              and [di],ch
00000AA5  205265            and [bp+si+0x65],dl
00000AA8  647563            fs jnz 0xb0e
00000AAB  65206C6F          and [gs:si+0x6f],ch
00000AAF  67696E732C20      imul bp,[esi+0x73],word 0x202c
00000AB5  627566            bound si,[di+0x66]
00000AB8  66657273          gs o32 jc 0xb2f
00000ABC  2C20              sub al,0x20
00000ABE  6F                outsw
00000ABF  7220              jc 0xae1
00000AC1  627566            bound si,[di+0x66]
00000AC4  66657220          gs o32 jc 0xae8
00000AC8  7369              jnc 0xb33
00000ACA  7A65              jpe 0xb31
00000ACC  0D0A00            or ax,0xa
00000ACF  49                dec cx
00000AD0  6E                outsb
00000AD1  7374              jnc 0xb47
00000AD3  61                popa
00000AD4  6C                insb
00000AD5  6C                insb
00000AD6  6564207265        and [fs:bp+si+0x65],dh
00000ADB  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00000AE1  6F                outsw
00000AE2  7220              jc 0xb04
00000AE4  6973206469        imul si,[bp+di+0x20],word 0x6964
00000AE9  6666657265        gs o32 jc 0xb53
00000AEE  6E                outsb
00000AEF  7420              jz 0xb11
00000AF1  7665              jna 0xb58
00000AF3  7273              jc 0xb68
00000AF5  696F6E0D0A        imul bp,[bx+0x6e],word 0xa0d
00000AFA  004361            add [bp+di+0x61],al
00000AFD  6E                outsb
00000AFE  27                daa
00000AFF  7420              jz 0xb21
00000B01  7265              jc 0xb68
00000B03  6D                insw
00000B04  6F                outsw
00000B05  7665              jna 0xb6c
00000B07  202D              and [di],ch
00000B09  2D2069            sub ax,0x6920
00000B0C  6E                outsb
00000B0D  7465              jz 0xb74
00000B0F  7272              jc 0xb83
00000B11  7570              jnz 0xb83
00000B13  7473              jz 0xb88
00000B15  206861            and [bx+si+0x61],ch
00000B18  7665              jna 0xb7f
00000B1A  206265            and [bp+si+0x65],ah
00000B1D  656E              gs outsb
00000B1F  207265            and [bp+si+0x65],dh
00000B22  2D686F            sub ax,0x6f68
00000B25  6F                outsw
00000B26  6B65640D          imul sp,[di+0x64],byte +0xd
00000B2A  0A00              or al,[bx+si]
00000B2C  0D0A55            or ax,0x550a
00000B2F  53                push bx
00000B30  41                inc cx
00000B31  47                inc di
00000B32  45                inc bp
00000B33  3A20              cmp ah,[bx+si]
00000B35  52                push dx
00000B36  45                inc bp
00000B37  44                inc sp
00000B38  49                dec cx
00000B39  52                push dx
00000B3A  206D61            and [di+0x61],ch
00000B3D  636869            arpl [bx+si+0x69],bp
00000B40  6E                outsb
00000B41  652D6E61          gs sub ax,0x616e
00000B45  6D                insw
00000B46  65205B73          and [gs:bp+di+0x73],bl
00000B4A  7769              ja 0xbb5
00000B4C  7463              jz 0xbb1
00000B4E  686573            push word 0x7365
00000B51  2E2E2E5D          cs pop bp
00000B55  0D0A0D            or ax,0xd0a
00000B58  0A5661            or dl,[bp+0x61]
00000B5B  6C                insb
00000B5C  696420636F        imul sp,[si+0x20],word 0x6f63
00000B61  6D                insw
00000B62  6D                insw
00000B63  61                popa
00000B64  6E                outsb
00000B65  64206C69          and [fs:si+0x69],ch
00000B69  6E                outsb
00000B6A  65207377          and [gs:bp+di+0x77],dh
00000B6E  6974636865        imul si,[si+0x63],word 0x6568
00000B73  733A              jnc 0xbaf
00000B75  0D0A00            or ax,0xa
00000B78  53                push bx
00000B79  657269            gs jc 0xbe5
00000B7C  61                popa
00000B7D  6C                insb
00000B7E  206E75            and [bp+0x75],ch
00000B81  6D                insw
00000B82  626572            bound sp,[di+0x72]
00000B85  206E6F            and [bp+0x6f],ch
00000B88  7420              jz 0xbaa
00000B8A  61                popa
00000B8B  7661              jna 0xbee
00000B8D  696C61626C        imul bp,[si+0x61],word 0x6c62
00000B92  65206174          and [gs:bx+di+0x74],ah
00000B96  207468            and [si+0x68],dh
00000B99  6973207469        imul si,[bp+di+0x20],word 0x6974
00000B9E  6D                insw
00000B9F  652E0D0A00        cs or ax,0xa
00000BA4  53                push bx
00000BA5  657269            gs jc 0xc11
00000BA8  61                popa
00000BA9  6C                insb
00000BAA  204E75            and [bp+0x75],cl
00000BAD  6D                insw
00000BAE  626572            bound sp,[di+0x72]
00000BB1  2020              and [bx+si],ah
00000BB3  2020              and [bx+si],ah
00000BB5  2D5701            sub ax,0x157
00000BB8  B220              mov dl,0x20
00000BBA  0800              or [bx+si],al
00000BBC  B02D              mov al,0x2d
00000BBE  2020              and [bx+si],ah
00000BC0  2020              and [bx+si],ah
00000BC2  206E6F            and [bp+0x6f],ch
00000BC5  6465206C69        and [gs:si+0x69],ch
00000BCA  63656E            arpl [di+0x6e],sp
00000BCD  7365              jnc 0xc34
00000BCF  2E0D0A00          cs or ax,0xa
00000BD3  4D                dec bp
00000BD4  61                popa
00000BD5  636869            arpl [bx+si+0x69],bp
00000BD8  6E                outsb
00000BD9  6520636F          and [gs:bp+di+0x6f],ah
00000BDD  6E                outsb
00000BDE  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
00000BE6  6F                outsw
00000BE7  6E                outsb
00000BE8  207265            and [bp+si+0x65],dh
00000BEB  7175              jno 0xc62
00000BED  6972657320        imul si,[bp+si+0x65],word 0x2073
00000BF2  696E746572        imul bp,[bp+0x74],word 0x7265
00000BF7  6E                outsb
00000BF8  61                popa
00000BF9  7469              jz 0xc64
00000BFB  6F                outsw
00000BFC  6E                outsb
00000BFD  61                popa
00000BFE  6C                insb
00000BFF  207665            and [bp+0x65],dh
00000C02  7273              jc 0xc77
00000C04  696F6E206F        imul bp,[bx+0x6e],word 0x6f20
00000C09  66204C41          o32 and [si+0x41],cl
00000C0D  4E                dec si
00000C0E  7461              jz 0xc71
00000C10  7374              jnc 0xc86
00000C12  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000C17  290D              sub [di],cx
00000C19  0A00              or al,[bx+si]
00000C1B  44                inc sp
00000C1C  49                dec cx
00000C1D  53                push bx
00000C1E  41                inc cx
00000C1F  42                inc dx
00000C20  4C                dec sp
00000C21  45                inc bp
00000C22  44                inc sp
00000C23  0D0A43            or ax,0x430a
00000C26  6F                outsw
00000C27  6D                insw
00000C28  6D                insw
00000C29  61                popa
00000C2A  6E                outsb
00000C2B  64206C69          and [fs:si+0x69],ch
00000C2F  6E                outsb
00000C30  657400            gs jz 0xc33
00000C33  B220              mov dl,0x20
00000C35  0C00              or al,0x0
00000C37  B000              mov al,0x0
00000C39  8000B0            add byte [bx+si],0xb0
00000C3C  0D0A0D            or ax,0xd0a
00000C3F  0A4D61            or cl,[di+0x61]
00000C42  636869            arpl [bx+si+0x69],bp
00000C45  6E                outsb
00000C46  65206E61          and [gs:bp+0x61],ch
00000C4A  6D                insw
00000C4B  651000            adc [gs:bx+si],al
00000C4E  B220              mov dl,0x20
00000C50  1C00              sbb al,0x0
00000C52  B04D              mov al,0x4d
00000C54  61                popa
00000C55  7869              js 0xcc0
00000C57  6D                insw
00000C58  756D              jnz 0xcc7
00000C5A  206C6F            and [si+0x6f],ch
00000C5D  67696E730E00      imul bp,[esi+0x73],word 0xe
00000C63  B220              mov dl,0x20
00000C65  0D00B0            or ax,0xb000
00000C68  0D0A4E            or ax,0x4e0a
00000C6B  756D              jnz 0xcda
00000C6D  626572            bound sp,[di+0x72]
00000C70  206F66            and [bx+0x66],ch
00000C73  206275            and [bp+si+0x75],ah
00000C76  6666657273        gs o32 jc 0xcee
00000C7B  1300              adc ax,[bx+si]
00000C7D  B220              mov dl,0x20
00000C7F  17                pop ss
00000C80  00B04275          add [bx+si+0x7542],dh
00000C84  6666657220        gs o32 jc 0xca9
00000C89  7369              jnc 0xcf4
00000C8B  7A65              jpe 0xcf2
00000C8D  0B00              or ax,[bx+si]
00000C8F  B220              mov dl,0x20
00000C91  1200              adc al,[bx+si]
00000C93  B00D              mov al,0xd
00000C95  0A4265            or al,[bp+si+0x65]
00000C98  657020            gs jo 0xcbb
00000C9B  637963            arpl [bx+di+0x63],di
00000C9E  6C                insb
00000C9F  650C00            gs or al,0x0
00000CA2  B220              mov dl,0x20
00000CA4  1E                push ds
00000CA5  00B04265          add [bx+si+0x6542],dh
00000CA9  657020            gs jo 0xccc
00000CAC  64656C            gs insb
00000CAF  61                popa
00000CB0  790A              jns 0xcbc
00000CB2  00B22013          add [bp+si+0x1320],dh
00000CB6  00B00D0A          add [bx+si+0xa0d],dh
00000CBA  50                push ax
00000CBB  49                dec cx
00000CBC  4E                dec si
00000CBD  47                inc di
00000CBE  205375            and [bp+di+0x75],dl
00000CC1  7070              jo 0xd33
00000CC3  6F                outsw
00000CC4  7274              jc 0xd3a
00000CC6  0E                push cs
00000CC7  00B2200C          add [bp+si+0xc20],dh
00000CCB  00B0454E          add [bx+si+0x4e45],dh
00000CCF  41                inc cx
00000CD0  42                inc dx
00000CD1  4C                dec sp
00000CD2  45                inc bp
00000CD3  44                inc sp
00000CD4  07                pop es
00000CD5  00B22009          add [bp+si+0x920],dh
00000CD9  00B04368          add [bx+si+0x6843],dh
00000CDD  61                popa
00000CDE  696E207365        imul bp,[bp+0x20],word 0x6573
00000CE3  6E                outsb
00000CE4  64730B            fs jnc 0xcf2
00000CE7  00B2200D          add [bp+si+0xd20],dh
00000CEB  00B0454E          add [bx+si+0x4e45],dh
00000CEF  41                inc cx
00000CF0  42                inc dx
00000CF1  4C                dec sp
00000CF2  45                inc bp
00000CF3  44                inc sp
00000CF4  200D              and [di],cl
00000CF6  0A534D            or dl,[bp+di+0x4d]
00000CF9  42                inc dx
00000CFA  205375            and [bp+di+0x75],dl
00000CFD  7070              jo 0xd6f
00000CFF  6F                outsw
00000D00  7274              jc 0xd76
00000D02  1500B2            adc ax,0xb200
00000D05  200D              and [di],cl
00000D07  00B0454E          add [bx+si+0x4e45],dh
00000D0B  41                inc cx
00000D0C  42                inc dx
00000D0D  4C                dec sp
00000D0E  45                inc bp
00000D0F  44                inc sp
00000D10  07                pop es
00000D11  00B22009          add [bp+si+0x920],dh
00000D15  00B04E43          add [bx+si+0x434e],dh
00000D19  50                push ax
00000D1A  205375            and [bp+di+0x75],dl
00000D1D  7070              jo 0xd8f
00000D1F  6F                outsw
00000D20  7274              jc 0xd96
00000D22  0B00              or ax,[bx+si]
00000D24  B220              mov dl,0x20
00000D26  0D00B0            or ax,0xb000
00000D29  45                inc bp
00000D2A  4E                dec si
00000D2B  41                inc cx
00000D2C  42                inc dx
00000D2D  4C                dec sp
00000D2E  45                inc bp
00000D2F  44                inc sp
00000D30  200D              and [di],cl
00000D32  0A0A              or cl,[bp+si]
00000D34  00B22015          add [bp+si+0x1520],dh
00000D38  00B0506F          add [bx+si+0x6f50],dh
00000D3C  702D              jo 0xd6b
00000D3E  7570              jnz 0xdb0
00000D40  204D65            and [di+0x65],cl
00000D43  7373              jnc 0xdb8
00000D45  61                popa
00000D46  67657320          gs jnc 0xd6a
00000D4A  2D2045            sub ax,0x4520
00000D4D  4E                dec si
00000D4E  41                inc cx
00000D4F  42                inc dx
00000D50  4C                dec sp
00000D51  45                inc bp
00000D52  44                inc sp
00000D53  200D              and [di],cl
00000D55  0A506F            or dl,[bx+si+0x6f]
00000D58  702D              jo 0xd87
00000D5A  7570              jnz 0xdcc
00000D5C  206475            and [si+0x75],ah
00000D5F  7261              jc 0xdc2
00000D61  7469              jz 0xdcc
00000D63  6F                outsw
00000D64  6E                outsb
00000D65  2B00              sub ax,[bx+si]
00000D67  B220              mov dl,0x20
00000D69  1900              sbb [bx+si],ax
00000D6B  B050              mov al,0x50
00000D6D  6F                outsw
00000D6E  702D              jo 0xd9d
00000D70  7570              jnz 0xde2
00000D72  206C69            and [si+0x69],ch
00000D75  6E                outsb
00000D76  650B00            or ax,[gs:bx+si]
00000D79  B220              mov dl,0x20
00000D7B  1200              adc al,[bx+si]
00000D7D  B00D              mov al,0xd
00000D7F  0A4279            or al,[bp+si+0x79]
00000D82  7465              jz 0xde9
00000D84  7320              jnc 0xda6
00000D86  6F                outsw
00000D87  66206D65          o32 and [di+0x65],ch
00000D8B  6D                insw
00000D8C  6F                outsw
00000D8D  7279              jc 0xe08
00000D8F  207573            and [di+0x73],dh
00000D92  656416            fs push ss
00000D95  00B2200B          add [bp+si+0xb20],dh
00000D99  00B00D0A          add [bx+si+0xa0d],dh
00000D9D  0A00              or al,[bx+si]
00000D9F  4E                dec si
00000DA0  2F                das
00000DA1  41                inc cx
00000DA2  57                push di
00000DA3  41                inc cx
00000DA4  52                push dx
00000DA5  4E                dec si
00000DA6  49                dec cx
00000DA7  4E                dec si
00000DA8  47                inc di
00000DA9  3A20              cmp ah,[bx+si]
00000DAB  4E                dec si
00000DAC  43                inc bx
00000DAD  50                push ax
00000DAE  207375            and [bp+di+0x75],dh
00000DB1  7070              jo 0xe23
00000DB3  6F                outsw
00000DB4  7274              jc 0xe2a
00000DB6  204E4F            and [bp+0x4f],cl
00000DB9  54                push sp
00000DBA  20656E            and [di+0x6e],ah
00000DBD  61                popa
00000DBE  626C65            bound bp,[si+0x65]
00000DC1  64202D            and [fs:di],ch
00000DC4  204E6F            and [bp+0x6f],cl
00000DC7  204950            and [bx+di+0x50],cl
00000DCA  58                pop ax
00000DCB  207374            and [bp+di+0x74],dh
00000DCE  61                popa
00000DCF  636B20            arpl [bp+di+0x20],bp
00000DD2  666F              outsd
00000DD4  756E              jnz 0xe44
00000DD6  642E0D0A24        cs or ax,0x240a
00000DDB  53                push bx
00000DDC  6561              gs popa
00000DDE  7263              jc 0xe43
00000DE0  68696E            push word 0x6e69
00000DE3  6720666F          and [esi+0x6f],ah
00000DE7  7220              jc 0xe09
00000DE9  4E                dec si
00000DEA  43                inc bx
00000DEB  50                push ax
00000DEC  207365            and [bp+di+0x65],dh
00000DEF  7276              jc 0xe67
00000DF1  65722E            gs jc 0xe22
00000DF4  2E242E            cs and al,0x2e
00000DF7  46                inc si
00000DF8  4F                dec di
00000DF9  55                push bp
00000DFA  4E                dec si
00000DFB  44                inc sp
00000DFC  210D              and [di],cx
00000DFE  0A24              or ah,[si]
00000E00  57                push di
00000E01  41                inc cx
00000E02  52                push dx
00000E03  4E                dec si
00000E04  49                dec cx
00000E05  4E                dec si
00000E06  47                inc di
00000E07  3A20              cmp ah,[bx+si]
00000E09  4E                dec si
00000E0A  43                inc bx
00000E0B  50                push ax
00000E0C  207375            and [bp+di+0x75],dh
00000E0F  7070              jo 0xe81
00000E11  6F                outsw
00000E12  7274              jc 0xe88
00000E14  204E4F            and [bp+0x4f],cl
00000E17  54                push sp
00000E18  20656E            and [di+0x6e],ah
00000E1B  61                popa
00000E1C  626C65            bound bp,[si+0x65]
00000E1F  64202D            and [fs:di],ch
00000E22  204E6F            and [bp+0x6f],cl
00000E25  207365            and [bp+di+0x65],dh
00000E28  7276              jc 0xea0
00000E2A  657273            gs jc 0xea0
00000E2D  206176            and [bx+di+0x76],ah
00000E30  61                popa
00000E31  696C61626C        imul bp,[si+0x61],word 0x6c62
00000E36  652E0D0A24        cs or ax,0x240a
00000E3B  45                inc bp
00000E3C  7865              js 0xea3
00000E3E  637574            arpl [di+0x74],si
00000E41  61                popa
00000E42  626C65            bound bp,[si+0x65]
00000E45  206669            and [bp+0x69],ah
00000E48  6C                insb
00000E49  65206861          and [gs:bx+si+0x61],ch
00000E4D  7320              jnc 0xe6f
00000E4F  626565            bound sp,[di+0x65]
00000E52  6E                outsb
00000E53  20616C            and [bx+di+0x6c],ah
00000E56  7465              jz 0xebd
00000E58  7265              jc 0xebf
00000E5A  642E0D0A00        cs or ax,0xa
00000E5F  5C                pop sp
00000E60  3F                aas
00000E61  2A3C              sub bh,[si]
00000E63  3E24CA            ds and al,0xca
00000E66  00B2002B          add [bp+si+0x2b00],dh
00000E6A  00B0524E          add [bx+si+0x4e52],dh
00000E6E  41                inc cx
00000E6F  41                inc cx
00000E70  0000              add [bx+si],al
00000E72  0000              add [bx+si],al
00000E74  0000              add [bx+si],al
00000E76  44                inc sp
00000E77  49                dec cx
00000E78  53                push bx
00000E79  41                inc cx
00000E7A  42                inc dx
00000E7B  4C                dec sp
00000E7C  45                inc bp
00000E7D  44                inc sp
00000E7E  0001              add [bx+di],al
00000E80  00454E            add [di+0x4e],al
00000E83  41                inc cx
00000E84  42                inc dx
00000E85  4C                dec sp
00000E86  45                inc bp
00000E87  44                inc sp
00000E88  0000              add [bx+si],al
00000E8A  0000              add [bx+si],al
00000E8C  0093EA01          add [bp+di+0x1ea],dl
00000E90  0000              add [bx+si],al
00000E92  0100              add [bx+si],ax
00000E94  100E4245          adc [0x4542],cl
00000E98  45                inc bp
00000E99  50                push ax
00000E9A  5F                pop di
00000E9B  43                inc bx
00000E9C  59                pop cx
00000E9D  43                inc bx
00000E9E  4C                dec sp
00000E9F  45                inc bp
00000EA0  0093E801          add [bp+di+0x1e8],dl
00000EA4  0000              add [bx+si],al
00000EA6  0000              add [bx+si],al
00000EA8  100E4245          adc [0x4542],cl
00000EAC  45                inc bp
00000EAD  50                push ax
00000EAE  5F                pop di
00000EAF  44                inc sp
00000EB0  45                inc bp
00000EB1  4C                dec sp
00000EB2  41                inc cx
00000EB3  59                pop cx
00000EB4  0093EE16          add [bp+di+0x16ee],dl
00000EB8  0000              add [bx+si],al
00000EBA  0100              add [bx+si],ax
00000EBC  40                inc ax
00000EBD  004255            add [bp+si+0x55],al
00000EC0  46                inc si
00000EC1  46                inc si
00000EC2  45                inc bp
00000EC3  52                push dx
00000EC4  53                push bx
00000EC5  0041C8            add [bx+di-0x38],al
00000EC8  1400              adc al,0x0
00000ECA  0000              add [bx+si],al
00000ECC  0000              add [bx+si],al
00000ECE  004445            add [si+0x45],al
00000ED1  53                push bx
00000ED2  43                inc bx
00000ED3  52                push dx
00000ED4  49                dec cx
00000ED5  42                inc dx
00000ED6  45                inc bp
00000ED7  0001              add [bx+di],al
00000ED9  F5                cmc
00000EDA  0100              add [bx+si],ax
00000EDC  0000              add [bx+si],al
00000EDE  0000              add [bx+si],al
00000EE0  004449            add [si+0x49],al
00000EE3  53                push bx
00000EE4  43                inc bx
00000EE5  4F                dec di
00000EE6  4E                dec si
00000EE7  4E                dec si
00000EE8  45                inc bp
00000EE9  43                inc bx
00000EEA  54                push sp
00000EEB  5F                pop di
00000EEC  4E                dec si
00000EED  4F                dec di
00000EEE  52                push dx
00000EEF  45                inc bp
00000EF0  54                push sp
00000EF1  52                push dx
00000EF2  59                pop cx
00000EF3  0001              add [bx+di],al
00000EF5  CA1400            retf 0x14
00000EF8  0000              add [bx+si],al
00000EFA  0000              add [bx+si],al
00000EFC  004845            add [bx+si+0x45],cl
00000EFF  4C                dec sp
00000F00  50                push ax
00000F01  0047C5            add [bx-0x3b],al
00000F04  1B00              sbb ax,[bx+si]
00000F06  0001              add [bx+di],al
00000F08  006300            add [bp+di+0x0],ah
00000F0B  49                dec cx
00000F0C  4E                dec si
00000F0D  54                push sp
00000F0E  45                inc bp
00000F0F  52                push dx
00000F10  4E                dec si
00000F11  41                inc cx
00000F12  4C                dec sp
00000F13  0083D714          add [bp+di+0x14d7],al
00000F17  0000              add [bx+si],al
00000F19  06                push es
00000F1A  003C              add [si],bh
00000F1C  004C49            add [si+0x49],cl
00000F1F  43                inc bx
00000F20  45                inc bp
00000F21  4E                dec si
00000F22  53                push bx
00000F23  45                inc bp
00000F24  5F                pop di
00000F25  54                push sp
00000F26  49                dec cx
00000F27  4D                dec bp
00000F28  45                inc bp
00000F29  4F                dec di
00000F2A  55                push bp
00000F2B  54                push sp
00000F2C  0093EF01          add [bp+di+0x1ef],dl
00000F30  0000              add [bx+si],al
00000F32  0100              add [bx+si],ax
00000F34  FF00              inc word [bx+si]
00000F36  4C                dec sp
00000F37  4F                dec di
00000F38  47                inc di
00000F39  49                dec cx
00000F3A  4E                dec si
00000F3B  53                push bx
00000F3C  0041D5            add [bx+di-0x2b],al
00000F3F  1400              adc al,0x0
00000F41  0000              add [bx+si],al
00000F43  0000              add [bx+si],al
00000F45  004D41            add [di+0x41],cl
00000F48  50                push ax
00000F49  5F                pop di
00000F4A  46                inc si
00000F4B  49                dec cx
00000F4C  4C                dec sp
00000F4D  45                inc bp
00000F4E  0001              add [bx+di],al
00000F50  F60100            test byte [bx+di],0x0
00000F53  0000              add [bx+si],al
00000F55  0000              add [bx+si],al
00000F57  004D4F            add [di+0x4f],cl
00000F5A  4E                dec si
00000F5B  4F                dec di
00000F5C  43                inc bx
00000F5D  48                dec ax
00000F5E  52                push dx
00000F5F  4F                dec di
00000F60  4D                dec bp
00000F61  45                inc bp
00000F62  0001              add [bx+di],al
00000F64  CD14              int 0x14
00000F66  0000              add [bx+si],al
00000F68  0000              add [bx+si],al
00000F6A  0000              add [bx+si],al
00000F6C  4E                dec si
00000F6D  43                inc bx
00000F6E  50                push ax
00000F6F  5F                pop di
00000F70  53                push bx
00000F71  55                push bp
00000F72  50                push ax
00000F73  50                push ax
00000F74  4F                dec di
00000F75  52                push dx
00000F76  54                push sp
00000F77  0041D6            add [bx+di-0x2a],al
00000F7A  1400              adc al,0x0
00000F7C  0000              add [bx+si],al
00000F7E  0000              add [bx+si],al
00000F80  004E4F            add [bp+0x4f],cl
00000F83  5F                pop di
00000F84  55                push bp
00000F85  4D                dec bp
00000F86  42                inc dx
00000F87  53                push bx
00000F88  0001              add [bx+di],al
00000F8A  F7010000          test word [bx+di],0x0
00000F8E  0000              add [bx+si],al
00000F90  0000              add [bx+si],al
00000F92  4E                dec si
00000F93  4F                dec di
00000F94  42                inc dx
00000F95  55                push bp
00000F96  52                push dx
00000F97  53                push bx
00000F98  54                push sp
00000F99  0001              add [bx+di],al
00000F9B  F016              lock push ss
00000F9D  0000              add [bx+si],al
00000F9F  0000              add [bx+si],al
00000FA1  0000              add [bx+si],al
00000FA3  4E                dec si
00000FA4  4F                dec di
00000FA5  43                inc bx
00000FA6  48                dec ax
00000FA7  41                inc cx
00000FA8  49                dec cx
00000FA9  4E                dec si
00000FAA  0001              add [bx+di],al
00000FAC  CE                into
00000FAD  1400              adc al,0x0
00000FAF  0000              add [bx+si],al
00000FB1  0000              add [bx+si],al
00000FB3  004E4F            add [bp+0x4f],cl
00000FB6  45                inc bp
00000FB7  4E                dec si
00000FB8  43                inc bx
00000FB9  52                push dx
00000FBA  59                pop cx
00000FBB  50                push ax
00000FBC  54                push sp
00000FBD  5F                pop di
00000FBE  4E                dec si
00000FBF  43                inc bx
00000FC0  50                push ax
00000FC1  5F                pop di
00000FC2  50                push ax
00000FC3  53                push bx
00000FC4  57                push di
00000FC5  44                inc sp
00000FC6  53                push bx
00000FC7  0001              add [bx+di],al
00000FC9  CB                retf
00000FCA  1400              adc al,0x0
00000FCC  0000              add [bx+si],al
00000FCE  0000              add [bx+si],al
00000FD0  004E4F            add [bp+0x4f],cl
00000FD3  50                push ax
00000FD4  49                dec cx
00000FD5  4E                dec si
00000FD6  47                inc di
00000FD7  0001              add [bx+di],al
00000FD9  CF                iret
00000FDA  1400              adc al,0x0
00000FDC  0000              add [bx+si],al
00000FDE  0000              add [bx+si],al
00000FE0  004E4F            add [bp+0x4f],cl
00000FE3  50                push ax
00000FE4  4F                dec di
00000FE5  50                push ax
00000FE6  55                push bp
00000FE7  50                push ax
00000FE8  53                push bx
00000FE9  0093EC01          add [bp+di+0x1ec],dl
00000FED  0000              add [bx+si],al
00000FEF  0000              add [bx+si],al
00000FF1  100E504F          adc [0x4f50],cl
00000FF5  50                push ax
00000FF6  55                push bp
00000FF7  50                push ax
00000FF8  5F                pop di
00000FF9  44                inc sp
00000FFA  55                push bp
00000FFB  52                push dx
00000FFC  41                inc cx
00000FFD  54                push sp
00000FFE  49                dec cx
00000FFF  4F                dec di
00001000  4E                dec si
00001001  0083EE01          add [bp+di+0x1ee],al
00001005  0000              add [bx+si],al
00001007  0000              add [bx+si],al
00001009  1800              sbb [bx+si],al
0000100B  50                push ax
0000100C  4F                dec di
0000100D  50                push ax
0000100E  55                push bp
0000100F  50                push ax
00001010  5F                pop di
00001011  4C                dec sp
00001012  49                dec cx
00001013  4E                dec si
00001014  45                inc bp
00001015  0001              add [bx+di],al
00001017  C9                leave
00001018  1400              adc al,0x0
0000101A  0000              add [bx+si],al
0000101C  0000              add [bx+si],al
0000101E  005245            add [bp+si+0x45],dl
00001021  4D                dec bp
00001022  4F                dec di
00001023  56                push si
00001024  45                inc bp
00001025  0083F801          add [bp+di+0x1f8],al
00001029  0000              add [bx+si],al
0000102B  0000              add [bx+si],al
0000102D  FF00              inc word [bx+si]
0000102F  52                push dx
00001030  45                inc bp
00001031  51                push cx
00001032  55                push bp
00001033  45                inc bp
00001034  53                push bx
00001035  54                push sp
00001036  5F                pop di
00001037  54                push sp
00001038  49                dec cx
00001039  4D                dec bp
0000103A  45                inc bp
0000103B  4F                dec di
0000103C  55                push bp
0000103D  54                push sp
0000103E  0093F101          add [bp+di+0x1f1],dl
00001042  0000              add [bx+si],al
00001044  0002              add [bp+si],al
00001046  00805349          add [bx+si+0x4953],al
0000104A  5A                pop dx
0000104B  45                inc bp
0000104C  0001              add [bx+di],al
0000104E  CC                int3
0000104F  1400              adc al,0x0
00001051  0000              add [bx+si],al
00001053  0000              add [bx+si],al
00001055  00534D            add [bp+di+0x4d],dl
00001058  42                inc dx
00001059  5F                pop di
0000105A  53                push bx
0000105B  55                push bp
0000105C  50                push ax
0000105D  50                push ax
0000105E  4F                dec di
0000105F  52                push dx
00001060  54                push sp
00001061  0001              add [bx+di],al
00001063  C7                db 0xc7
00001064  1400              adc al,0x0
00001066  0000              add [bx+si],al
00001068  0000              add [bx+si],al
0000106A  005645            add [bp+0x45],dl
0000106D  52                push dx
0000106E  42                inc dx
0000106F  4F                dec di
00001070  53                push bx
00001071  45                inc bp
00001072  0001              add [bx+di],al
00001074  CA1400            retf 0x14
00001077  0000              add [bx+si],al
00001079  0000              add [bx+si],al
0000107B  003F              add [bx],bh
0000107D  00952117          add [di+0x1721],dl
00001081  0000              add [bx+si],al
00001083  0000              add [bx+si],al
00001085  E80340            call 0x508b
00001088  0000              add [bx+si],al
0000108A  0100              add [bx+si],ax
0000108C  0021              add [bx+di],ah
0000108E  02B2200F          add dh,[bp+si+0xf20]
00001092  00B00049          add [bx+si+0x4900],dh
00001096  04B0              add al,0xb0
00001098  091B              or [bp+di],bx
0000109A  0000              add [bx+si],al
0000109C  3C00              cmp al,0x0
0000109E  2A07              sub al,[bx]
000010A0  00B20035          add [bp+si+0x3500],dh
000010A4  00B07F01          add [bx+si+0x17f],dh
000010A8  00B2003F          add [bp+si+0x3f00],dh
000010AC  00B02680          add [bx+si-0x7fda],dh
000010B0  25BF2E            and ax,0x2ebf
000010B3  80262A15BF        and byte [0x152a],0xbf
000010B8  2E8026A115BF      and byte [cs:0x15a1],0xbf
000010BE  2E8026DC15BF      and byte [cs:0x15dc],0xbf
000010C4  CB                retf
000010C5  06                push es
000010C6  B85C35            mov ax,0x355c
000010C9  CD21              int 0x21
000010CB  8CC0              mov ax,es
000010CD  07                pop es
000010CE  3D00F0            cmp ax,0xf000
000010D1  7404              jz 0x10d7
000010D3  0BC3              or ax,bx
000010D5  7502              jnz 0x10d9
000010D7  F9                stc
000010D8  C3                ret
000010D9  B000              mov al,0x0
000010DB  BB851B            mov bx,0x1b85
000010DE  CD5C              int 0x5c
000010E0  84C0              test al,al
000010E2  74F3              jz 0x10d7
000010E4  F8                clc
000010E5  C3                ret
000010E6  41                inc cx
000010E7  52                push dx
000010E8  54                push sp
000010E9  49                dec cx
000010EA  53                push bx
000010EB  4F                dec di
000010EC  46                inc si
000010ED  54                push sp
000010EE  41                inc cx
000010EF  4E                dec si
000010F0  54                push sp
000010F1  61                popa
000010F2  7374              jnc 0x1168
000010F4  6963204E45        imul sp,[bp+di+0x20],word 0x454e
000010F9  54                push sp
000010FA  42                inc dx
000010FB  49                dec cx
000010FC  4F                dec di
000010FD  53                push bx
000010FE  52                push dx
000010FF  45                inc bp
00001100  44                inc sp
00001101  49                dec cx
00001102  52                push dx
00001103  55                push bp
00001104  00B23008          add [bp+si+0x830],dh
00001108  00B02020          add [bx+si+0x2020],dh
0000110C  0000              add [bx+si],al
0000110E  006E00            add [bp+0x0],ch
00001111  50                push ax
00001112  53                push bx
00001113  51                push cx
00001114  52                push dx
00001115  56                push si
00001116  57                push di
00001117  06                push es
00001118  1E                push ds
00001119  B85C35            mov ax,0x355c
0000111C  CD21              int 0x21
0000111E  BF0000            mov di,0x0
00001121  8CC8              mov ax,cs
00001123  8ED8              mov ds,ax
00001125  57                push di
00001126  BEFD1B            mov si,0x1bfd
00001129  B90800            mov cx,0x8
0000112C  F3A6              repe cmpsb
0000112E  5F                pop di
0000112F  740A              jz 0x113b
00001131  47                inc di
00001132  83FF78            cmp di,byte +0x78
00001135  76EE              jna 0x1125
00001137  F9                stc
00001138  E9B500            jmp 0x11f0
0000113B  BF0000            mov di,0x0
0000113E  C606281C01        mov byte [0x1c28],0x1
00001143  57                push di
00001144  BE051C            mov si,0x1c05
00001147  B91000            mov cx,0x10
0000114A  F3A6              repe cmpsb
0000114C  5F                pop di
0000114D  740B              jz 0x115a
0000114F  47                inc di
00001150  83FF70            cmp di,byte +0x70
00001153  76EE              jna 0x1143
00001155  C606281C00        mov byte [0x1c28],0x0
0000115A  33D2              xor dx,dx
0000115C  8C0E4B1B          mov [0x1b4b],cs
00001160  8816751B          mov [0x1b75],dl
00001164  0E                push cs
00001165  07                pop es
00001166  BB451B            mov bx,0x1b45
00001169  26C60733          mov byte [es:bx],0x33
0000116D  CD5C              int 0x5c
0000116F  84C0              test al,al
00001171  7408              jz 0x117b
00001173  3C23              cmp al,0x23
00001175  7471              jz 0x11e8
00001177  3C06              cmp al,0x6
00001179  75BC              jnz 0x1137
0000117B  BE091B            mov si,0x1b09
0000117E  BF251C            mov di,0x1c25
00001181  B90300            mov cx,0x3
00001184  F3A6              repe cmpsb
00001186  75AF              jnz 0x1137
00001188  803E281C01        cmp byte [0x1c28],0x1
0000118D  7452              jz 0x11e1
0000118F  8A26111B          mov ah,[0x1b11]
00001193  A0121B            mov al,[0x1b12]
00001196  3C63              cmp al,0x63
00001198  779D              ja 0x1137
0000119A  80FC01            cmp ah,0x1
0000119D  7298              jc 0x1137
0000119F  7714              ja 0x11b5
000011A1  3C0F              cmp al,0xf
000011A3  7310              jnc 0x11b5
000011A5  803E2E1B0F        cmp byte [0x1b2e],0xf
000011AA  758B              jnz 0x1137
000011AC  803E2F1B0C        cmp byte [0x1b2f],0xc
000011B1  742E              jz 0x11e1
000011B3  EB82              jmp short 0x1137
000011B5  56                push si
000011B6  51                push cx
000011B7  8D36091B          lea si,[0x1b09]
000011BB  B90600            mov cx,0x6
000011BE  B400              mov ah,0x0
000011C0  AC                lodsb
000011C1  02E0              add ah,al
000011C3  E2FB              loop 0x11c0
000011C5  8AC4              mov al,ah
000011C7  B104              mov cl,0x4
000011C9  D2EC              shr ah,cl
000011CB  240F              and al,0xf
000011CD  32C4              xor al,ah
000011CF  8AE0              mov ah,al
000011D1  D2E4              shl ah,cl
000011D3  0AE0              or ah,al
000011D5  80F4F0            xor ah,0xf0
000011D8  3A24              cmp ah,[si]
000011DA  59                pop cx
000011DB  5E                pop si
000011DC  7403              jz 0x11e1
000011DE  E956FF            jmp 0x1137
000011E1  FEC6              inc dh
000011E3  80FE06            cmp dh,0x6
000011E6  7307              jnc 0x11ef
000011E8  FEC2              inc dl
000011EA  7403              jz 0x11ef
000011EC  E96DFF            jmp 0x115c
000011EF  F8                clc
000011F0  C606751B00        mov byte [0x1b75],0x0
000011F5  07                pop es
000011F6  1F                pop ds
000011F7  5F                pop di
000011F8  5E                pop si
000011F9  5A                pop dx
000011FA  59                pop cx
000011FB  5B                pop bx
000011FC  58                pop ax
000011FD  C3                ret
000011FE  52                push dx
000011FF  33D2              xor dx,dx
00001201  E80200            call 0x1206
00001204  5A                pop dx
00001205  C3                ret
00001206  50                push ax
00001207  53                push bx
00001208  51                push cx
00001209  52                push dx
0000120A  B90A00            mov cx,0xa
0000120D  E80500            call 0x1215
00001210  5A                pop dx
00001211  59                pop cx
00001212  5B                pop bx
00001213  58                pop ax
00001214  C3                ret
00001215  E82605            call 0x173e
00001218  53                push bx
00001219  8BD8              mov bx,ax
0000121B  0BDA              or bx,dx
0000121D  7403              jz 0x1222
0000121F  E8F3FF            call 0x1215
00001222  5B                pop bx
00001223  93                xchg ax,bx
00001224  0430              add al,0x30
00001226  AA                stosb
00001227  8BC3              mov ax,bx
00001229  C3                ret
0000122A  2EFF366522        push word [cs:0x2265]
0000122F  2E8F066922        pop word [cs:0x2269]
00001234  E91104            jmp 0x1648
00001237  2EFF366522        push word [cs:0x2265]
0000123C  2E8F066922        pop word [cs:0x2269]
00001241  E92E04            jmp 0x1672
00001244  56                push si
00001245  BEDD24            mov si,0x24dd
00001248  1E                push ds
00001249  0E                push cs
0000124A  1F                pop ds
0000124B  E80C00            call 0x125a
0000124E  1F                pop ds
0000124F  5E                pop si
00001250  C3                ret
00001251  56                push si
00001252  BEE824            mov si,0x24e8
00001255  EBF1              jmp short 0x1248
00001257  E8EAFF            call 0x1244
0000125A  2EFF366722        push word [cs:0x2267]
0000125F  2E8F066922        pop word [cs:0x2269]
00001264  E9E103            jmp 0x1648
00001267  E8DAFF            call 0x1244
0000126A  2EFF366722        push word [cs:0x2267]
0000126F  2E8F066922        pop word [cs:0x2269]
00001274  E9FB03            jmp 0x1672
00001277  57                push di
00001278  51                push cx
00001279  26803D00          cmp byte [es:di],0x0
0000127D  740E              jz 0x128d
0000127F  E8FC03            call 0x167e
00001282  8D7D09            lea di,[di+0x9]
00001285  E8E202            call 0x156a
00001288  03F9              add di,cx
0000128A  47                inc di
0000128B  EBEC              jmp short 0x1279
0000128D  59                pop cx
0000128E  5F                pop di
0000128F  C3                ret
00001290  015053            add [bx+si+0x53],dx
00001293  52                push dx
00001294  B80037            mov ax,0x3700
00001297  CD21              int 0x21
00001299  8AFA              mov bh,dl
0000129B  5A                pop dx
0000129C  51                push cx
0000129D  52                push dx
0000129E  57                push di
0000129F  E8D902            call 0x157b
000012A2  E354              jcxz 0x12f8
000012A4  B320              mov bl,0x20
000012A6  383C              cmp [si],bh
000012A8  7404              jz 0x12ae
000012AA  381C              cmp [si],bl
000012AC  7705              ja 0x12b3
000012AE  46                inc si
000012AF  E2F5              loop 0x12a6
000012B1  EB45              jmp short 0x12f8
000012B3  803C3B            cmp byte [si],0x3b
000012B6  750F              jnz 0x12c7
000012B8  AC                lodsb
000012B9  3C0D              cmp al,0xd
000012BB  74E9              jz 0x12a6
000012BD  3C0A              cmp al,0xa
000012BF  74E5              jz 0x12a6
000012C1  84C0              test al,al
000012C3  743C              jz 0x1301
000012C5  EBF1              jmp short 0x12b8
000012C7  8A04              mov al,[si]
000012C9  3AC7              cmp al,bh
000012CB  742B              jz 0x12f8
000012CD  3AC3              cmp al,bl
000012CF  7627              jna 0x12f8
000012D1  80FB00            cmp bl,0x0
000012D4  7413              jz 0x12e9
000012D6  3C2C              cmp al,0x2c
000012D8  7503              jnz 0x12dd
000012DA  46                inc si
000012DB  EB1B              jmp short 0x12f8
000012DD  3C22              cmp al,0x22
000012DF  7404              jz 0x12e5
000012E1  3C27              cmp al,0x27
000012E3  7504              jnz 0x12e9
000012E5  B300              mov bl,0x0
000012E7  8AF8              mov bh,al
000012E9  80FB00            cmp bl,0x0
000012EC  7403              jz 0x12f1
000012EE  E87E06            call 0x196f
000012F1  AA                stosb
000012F2  46                inc si
000012F3  4A                dec dx
000012F4  7445              jz 0x133b
000012F6  E2CF              loop 0x12c7
000012F8  3C22              cmp al,0x22
000012FA  7404              jz 0x1300
000012FC  3C27              cmp al,0x27
000012FE  7501              jnz 0x1301
00001300  A4                movsb
00001301  26C60500          mov byte [es:di],0x0
00001305  5F                pop di
00001306  56                push si
00001307  57                push di
00001308  5E                pop si
00001309  2E803EA81D01      cmp byte [cs:0x1da8],0x1
0000130F  7508              jnz 0x1319
00001311  E8A002            call 0x15b4
00001314  7203              jc 0x1319
00001316  E84206            call 0x195b
00001319  8BF7              mov si,di
0000131B  AC                lodsb
0000131C  3C22              cmp al,0x22
0000131E  7404              jz 0x1324
00001320  3C27              cmp al,0x27
00001322  7511              jnz 0x1335
00001324  8AE0              mov ah,al
00001326  59                pop cx
00001327  51                push cx
00001328  E81F06            call 0x194a
0000132B  263865FF          cmp [es:di-0x1],ah
0000132F  7504              jnz 0x1335
00001331  4F                dec di
00001332  B000              mov al,0x0
00001334  AA                stosb
00001335  5E                pop si
00001336  5A                pop dx
00001337  59                pop cx
00001338  5B                pop bx
00001339  58                pop ax
0000133A  C3                ret
0000133B  381C              cmp [si],bl
0000133D  76B9              jna 0x12f8
0000133F  383C              cmp [si],bh
00001341  74B5              jz 0x12f8
00001343  46                inc si
00001344  E2F5              loop 0x133b
00001346  EBB0              jmp short 0x12f8
00001348  53                push bx
00001349  B32C              mov bl,0x2c
0000134B  B720              mov bh,0x20
0000134D  50                push ax
0000134E  51                push cx
0000134F  52                push dx
00001350  57                push di
00001351  E82702            call 0x157b
00001354  E326              jcxz 0x137c
00001356  383C              cmp [si],bh
00001358  7405              jz 0x135f
0000135A  803C20            cmp byte [si],0x20
0000135D  7705              ja 0x1364
0000135F  46                inc si
00001360  E2F4              loop 0x1356
00001362  EB18              jmp short 0x137c
00001364  8A04              mov al,[si]
00001366  3AC3              cmp al,bl
00001368  7503              jnz 0x136d
0000136A  46                inc si
0000136B  EB0F              jmp short 0x137c
0000136D  3AC7              cmp al,bh
0000136F  740B              jz 0x137c
00001371  3C20              cmp al,0x20
00001373  7607              jna 0x137c
00001375  AA                stosb
00001376  46                inc si
00001377  4A                dec dx
00001378  740C              jz 0x1386
0000137A  E2E8              loop 0x1364
0000137C  26C60500          mov byte [es:di],0x0
00001380  5F                pop di
00001381  5A                pop dx
00001382  59                pop cx
00001383  58                pop ax
00001384  5B                pop bx
00001385  C3                ret
00001386  803C20            cmp byte [si],0x20
00001389  76F1              jna 0x137c
0000138B  381C              cmp [si],bl
0000138D  76ED              jna 0x137c
0000138F  383C              cmp [si],bh
00001391  74E9              jz 0x137c
00001393  46                inc si
00001394  E2F0              loop 0x1386
00001396  EBE4              jmp short 0x137c
00001398  51                push cx
00001399  57                push di
0000139A  26803D00          cmp byte [es:di],0x0
0000139E  7415              jz 0x13b5
000013A0  26394503          cmp [es:di+0x3],ax
000013A4  7504              jnz 0x13aa
000013A6  26895D03          mov [es:di+0x3],bx
000013AA  8D7D09            lea di,[di+0x9]
000013AD  E8BA01            call 0x156a
000013B0  03F9              add di,cx
000013B2  47                inc di
000013B3  EBE5              jmp short 0x139a
000013B5  5F                pop di
000013B6  59                pop cx
000013B7  C3                ret
000013B8  50                push ax
000013B9  53                push bx
000013BA  51                push cx
000013BB  56                push si
000013BC  57                push di
000013BD  1E                push ds
000013BE  B462              mov ah,0x62
000013C0  CD21              int 0x21
000013C2  8EDB              mov ds,bx
000013C4  BE8000            mov si,0x80
000013C7  AC                lodsb
000013C8  8AC8              mov cl,al
000013CA  B500              mov ch,0x0
000013CC  F3A4              rep movsb
000013CE  26880D            mov [es:di],cl
000013D1  1F                pop ds
000013D2  5F                pop di
000013D3  5E                pop si
000013D4  59                pop cx
000013D5  5B                pop bx
000013D6  58                pop ax
000013D7  C3                ret
000013D8  50                push ax
000013D9  240F              and al,0xf
000013DB  0430              add al,0x30
000013DD  3C39              cmp al,0x39
000013DF  7602              jna 0x13e3
000013E1  0407              add al,0x7
000013E3  AA                stosb
000013E4  58                pop ax
000013E5  C3                ret
000013E6  50                push ax
000013E7  51                push cx
000013E8  B104              mov cl,0x4
000013EA  D2E8              shr al,cl
000013EC  59                pop cx
000013ED  E8E8FF            call 0x13d8
000013F0  58                pop ax
000013F1  E9E4FF            jmp 0x13d8
000013F4  0D0A00            or ax,0xa
000013F7  56                push si
000013F8  1E                push ds
000013F9  0E                push cs
000013FA  1F                pop ds
000013FB  BE0C1F            mov si,0x1f0c
000013FE  E829FE            call 0x122a
00001401  1F                pop ds
00001402  5E                pop si
00001403  C3                ret
00001404  FA                cli
00001405  02B20000          add dh,[bp+si+0x0]
00001409  01B02EFF          add [bx+si-0xd2],si
0000140D  3665222EFF36      and ch,[gs:0x36ff]
00001413  67222E            and ch,[esi]
00001416  8F066522          pop word [0x2265]
0000141A  53                push bx
0000141B  51                push cx
0000141C  52                push dx
0000141D  56                push si
0000141E  1E                push ds
0000141F  BE1C1F            mov si,0x1f1c
00001422  8BDF              mov bx,di
00001424  8CC2              mov dx,es
00001426  0E                push cs
00001427  07                pop es
00001428  BF1C1F            mov di,0x1f1c
0000142B  E891FE            call 0x12bf
0000142E  0E                push cs
0000142F  1F                pop ds
00001430  2EA0A81D          mov al,[cs:0x1da8]
00001434  2EC606A81D00      mov byte [cs:0x1da8],0x0
0000143A  E309              jcxz 0x1445
0000143C  BF9C1F            mov di,0x1f9c
0000143F  E856FD            call 0x1198
00001442  49                dec cx
00001443  EBF5              jmp short 0x143a
00001445  2EA2A81D          mov [cs:0x1da8],al
00001449  8BFB              mov di,bx
0000144B  8EC2              mov es,dx
0000144D  E81A03            call 0x176a
00001450  1F                pop ds
00001451  5E                pop si
00001452  5A                pop dx
00001453  59                pop cx
00001454  5B                pop bx
00001455  2E8F066522        pop word [cs:0x2265]
0000145A  C3                ret
0000145B  2EFF366522        push word [cs:0x2265]
00001460  2EFF366722        push word [cs:0x2267]
00001465  2E8F066522        pop word [cs:0x2265]
0000146A  53                push bx
0000146B  51                push cx
0000146C  52                push dx
0000146D  56                push si
0000146E  1E                push ds
0000146F  EBB1              jmp short 0x1422
00001471  50                push ax
00001472  57                push di
00001473  06                push es
00001474  B9FFFF            mov cx,0xffff
00001477  32C0              xor al,al
00001479  F2AE              repne scasb
0000147B  F7D1              not cx
0000147D  49                dec cx
0000147E  07                pop es
0000147F  5F                pop di
00001480  58                pop ax
00001481  C3                ret
00001482  06                push es
00001483  57                push di
00001484  1E                push ds
00001485  07                pop es
00001486  8BFE              mov di,si
00001488  E8E6FF            call 0x1471
0000148B  5F                pop di
0000148C  07                pop es
0000148D  C3                ret
0000148E  50                push ax
0000148F  53                push bx
00001490  06                push es
00001491  B4C0              mov ah,0xc0
00001493  33DB              xor bx,bx
00001495  8EC3              mov es,bx
00001497  CD15              int 0x15
00001499  7214              jc 0x14af
0000149B  8CC0              mov ax,es
0000149D  0BC3              or ax,bx
0000149F  740D              jz 0x14ae
000014A1  26833F06          cmp word [es:bx],byte +0x6
000014A5  7208              jc 0x14af
000014A7  26F6470502        test byte [es:bx+0x5],0x2
000014AC  7501              jnz 0x14af
000014AE  F9                stc
000014AF  07                pop es
000014B0  5B                pop bx
000014B1  58                pop ax
000014B2  C3                ret
000014B3  0000              add [bx+si],al
000014B5  0400              add al,0x0
000014B7  0820              or [bx+si],ah
000014B9  0800              or [bx+si],al
000014BB  50                push ax
000014BC  53                push bx
000014BD  51                push cx
000014BE  52                push dx
000014BF  56                push si
000014C0  57                push di
000014C1  55                push bp
000014C2  8BEF              mov bp,di
000014C4  AC                lodsb
000014C5  3C3F              cmp al,0x3f
000014C7  7435              jz 0x14fe
000014C9  3C5E              cmp al,0x5e
000014CB  F9                stc
000014CC  7557              jnz 0x1525
000014CE  E85C00            call 0x152d
000014D1  7252              jc 0x1525
000014D3  B408              mov ah,0x8
000014D5  CD21              int 0x21
000014D7  3C08              cmp al,0x8
000014D9  750F              jnz 0x14ea
000014DB  3BEF              cmp bp,di
000014DD  74F4              jz 0x14d3
000014DF  4F                dec di
000014E0  56                push si
000014E1  BEC820            mov si,0x20c8
000014E4  E86800            call 0x154f
000014E7  5E                pop si
000014E8  EBE9              jmp short 0x14d3
000014EA  3C0D              cmp al,0xd
000014EC  7505              jnz 0x14f3
000014EE  E80DFE            call 0x12fe
000014F1  EB2E              jmp short 0x1521
000014F3  AA                stosb
000014F4  56                push si
000014F5  BEC620            mov si,0x20c6
000014F8  E85400            call 0x154f
000014FB  5E                pop si
000014FC  EBD5              jmp short 0x14d3
000014FE  E82C00            call 0x152d
00001501  7222              jc 0x1525
00001503  B98000            mov cx,0x80
00001506  8BD7              mov dx,di
00001508  2E8B1E6322        mov bx,[cs:0x2263]
0000150D  B43F              mov ah,0x3f
0000150F  CD21              int 0x21
00001511  03F8              add di,ax
00001513  807DFF0A          cmp byte [di-0x1],0xa
00001517  7508              jnz 0x1521
00001519  4F                dec di
0000151A  807DFF0D          cmp byte [di-0x1],0xd
0000151E  7501              jnz 0x1521
00001520  4F                dec di
00001521  B000              mov al,0x0
00001523  AA                stosb
00001524  F8                clc
00001525  5D                pop bp
00001526  5F                pop di
00001527  5E                pop si
00001528  5A                pop dx
00001529  59                pop cx
0000152A  5B                pop bx
0000152B  58                pop ax
0000152C  C3                ret
0000152D  AC                lodsb
0000152E  3C22              cmp al,0x22
00001530  7405              jz 0x1537
00001532  3C27              cmp al,0x27
00001534  F9                stc
00001535  7517              jnz 0x154e
00001537  8AE0              mov ah,al
00001539  AC                lodsb
0000153A  84C0              test al,al
0000153C  7410              jz 0x154e
0000153E  3AC4              cmp al,ah
00001540  740C              jz 0x154e
00001542  56                push si
00001543  BEC420            mov si,0x20c4
00001546  8804              mov [si],al
00001548  E80400            call 0x154f
0000154B  5E                pop si
0000154C  EBEB              jmp short 0x1539
0000154E  C3                ret
0000154F  50                push ax
00001550  53                push bx
00001551  51                push cx
00001552  E82DFF            call 0x1482
00001555  E31E              jcxz 0x1575
00001557  2E8B1E6922        mov bx,[cs:0x2269]
0000155C  83FBFF            cmp bx,byte -0x1
0000155F  750C              jnz 0x156d
00001561  56                push si
00001562  43                inc bx
00001563  AC                lodsb
00001564  B40E              mov ah,0xe
00001566  CD10              int 0x10
00001568  E2F9              loop 0x1563
0000156A  5E                pop si
0000156B  EB08              jmp short 0x1575
0000156D  52                push dx
0000156E  8BD6              mov dx,si
00001570  B440              mov ah,0x40
00001572  CD21              int 0x21
00001574  5A                pop dx
00001575  59                pop cx
00001576  5B                pop bx
00001577  58                pop ax
00001578  C3                ret
00001579  1E                push ds
0000157A  06                push es
0000157B  1F                pop ds
0000157C  87F7              xchg si,di
0000157E  E8CEFF            call 0x154f
00001581  87F7              xchg si,di
00001583  1F                pop ds
00001584  C3                ret
00001585  26F60540          test byte [es:di],0x40
00001589  7403              jz 0x158e
0000158B  E9B600            jmp 0x1644
0000158E  50                push ax
0000158F  53                push bx
00001590  51                push cx
00001591  56                push si
00001592  1E                push ds
00001593  0E                push cs
00001594  1F                pop ds
00001595  BEF024            mov si,0x24f0
00001598  E896FB            call 0x1131
0000159B  57                push di
0000159C  8D7D09            lea di,[di+0x9]
0000159F  E89CFB            call 0x113e
000015A2  5F                pop di
000015A3  268A0D            mov cl,[es:di]
000015A6  8AE9              mov ch,cl
000015A8  80E10F            and cl,0xf
000015AB  80E530            and ch,0x30
000015AE  80F901            cmp cl,0x1
000015B1  742B              jz 0x15de
000015B3  80F908            cmp cl,0x8
000015B6  7426              jz 0x15de
000015B8  80F905            cmp cl,0x5
000015BB  7423              jz 0x15e0
000015BD  BEF524            mov si,0x24f5
000015C0  E86EFB            call 0x1131
000015C3  80F907            cmp cl,0x7
000015C6  7508              jnz 0x15d0
000015C8  BE5425            mov si,0x2554
000015CB  E863FB            call 0x1131
000015CE  EB6C              jmp short 0x163c
000015D0  80F906            cmp cl,0x6
000015D3  750B              jnz 0x15e0
000015D5  BE3525            mov si,0x2535
000015D8  E856FB            call 0x1131
000015DB  E8C303            call 0x19a1
000015DE  EB5C              jmp short 0x163c
000015E0  26F60580          test byte [es:di],0x80
000015E4  7438              jz 0x161e
000015E6  BEF724            mov si,0x24f7
000015E9  E845FB            call 0x1131
000015EC  BE8125            mov si,0x2581
000015EF  268B4505          mov ax,[es:di+0x5]
000015F3  268B5D07          mov bx,[es:di+0x7]
000015F7  80F904            cmp cl,0x4
000015FA  740A              jz 0x1606
000015FC  80F905            cmp cl,0x5
000015FF  7405              jz 0x1606
00001601  80F903            cmp cl,0x3
00001604  750D              jnz 0x1613
00001606  E88A03            call 0x1993
00001609  E825FB            call 0x1131
0000160C  8BC3              mov ax,bx
0000160E  E88203            call 0x1993
00001611  EB0B              jmp short 0x161e
00001613  E83002            call 0x1846
00001616  E818FB            call 0x1131
00001619  8BC3              mov ax,bx
0000161B  E82802            call 0x1846
0000161E  BEFF24            mov si,0x24ff
00001621  80F903            cmp cl,0x3
00001624  7413              jz 0x1639
00001626  BE0925            mov si,0x2509
00001629  80F902            cmp cl,0x2
0000162C  740B              jz 0x1639
0000162E  BE0F25            mov si,0x250f
00001631  80F904            cmp cl,0x4
00001634  7403              jz 0x1639
00001636  BE2225            mov si,0x2522
00001639  E8F5FA            call 0x1131
0000163C  E8BFFC            call 0x12fe
0000163F  1F                pop ds
00001640  5E                pop si
00001641  59                pop cx
00001642  5B                pop bx
00001643  58                pop ax
00001644  C3                ret
00001645  92                xchg ax,dx
00001646  8BDA              mov bx,dx
00001648  33D2              xor dx,dx
0000164A  F7F1              div cx
0000164C  93                xchg ax,bx
0000164D  F7F1              div cx
0000164F  87DA              xchg bx,dx
00001651  C3                ret
00001652  0000              add [bx+si],al
00001654  0100              add [bx+si],ax
00001656  0200              add al,[bx+si]
00001658  014E02            add [bp+0x2],cx
0000165B  B200              mov dl,0x0
0000165D  1101              adc [bx+di],ax
0000165F  B02E              mov al,0x2e
00001661  FF366522          push word [0x2265]
00001665  2EFF366722        push word [cs:0x2267]
0000166A  2E8F066522        pop word [cs:0x2265]
0000166F  53                push bx
00001670  51                push cx
00001671  52                push dx
00001672  56                push si
00001673  1E                push ds
00001674  8BDF              mov bx,di
00001676  8CC2              mov dx,es
00001678  8BCE              mov cx,si
0000167A  8BF1              mov si,cx
0000167C  0E                push cs
0000167D  07                pop es
0000167E  BFEB22            mov di,0x22eb
00001681  52                push dx
00001682  BA8000            mov dx,0x80
00001685  E806FA            call 0x108e
00001688  5A                pop dx
00001689  8BFB              mov di,bx
0000168B  8BCE              mov cx,si
0000168D  BEEB22            mov si,0x22eb
00001690  26803C00          cmp byte [es:si],0x0
00001694  8EC2              mov es,dx
00001696  740B              jz 0x16a3
00001698  1E                push ds
00001699  0E                push cs
0000169A  1F                pop ds
0000169B  E86102            call 0x18ff
0000169E  1F                pop ds
0000169F  7205              jc 0x16a6
000016A1  EB01              jmp short 0x16a4
000016A3  0101              add [bx+di],ax
000016A5  0101              add [bx+di],ax
000016A7  0101              add [bx+di],ax
000016A9  0101              add [bx+di],ax
000016AB  0101              add [bx+di],ax
000016AD  0300              add ax,[bx+si]
000016AF  DC5306            fcom qword [bp+di+0x6]
000016B2  C7                db 0xc7
000016B3  56                push si
000016B4  015E05            add [bp+0x5],bx
000016B7  7409              jz 0x16c2
000016B9  2E833EC31C08      cmp word [cs:0x1cc3],byte +0x8
000016BF  0463              add al,0x63
000016C1  4E                dec si
000016C2  02B2203E          add dh,[bp+si+0x3e20]
000016C6  7723              ja 0x16eb
000016C8  E8C903            call 0x1a94
000016CB  E8A1F9            call 0x106f
000016CE  09E8              or ax,bp
000016D0  9C                pushf
000016D1  6D                insw
000016D2  25E88C            and ax,0x8ce8
000016D5  F9                stc
000016D6  1E                push ds
000016D7  0E                push cs
000016D8  1F                pop ds
000016D9  E886F9            call 0x1062
000016DC  E820FB            call 0x11ff
000016DF  3D0200            cmp ax,0x2
000016E2  7533              jnz 0x1717
000016E4  E872F9            call 0x1059
000016E7  BE7125            mov si,0x2571
000016EA  E875F9            call 0x1062
000016ED  E8C303            call 0x1ab3
000016F0  7437              jz 0x1729
000016F2  80F904            cmp cl,0x4
000016F5  8BC2              mov ax,dx
000016F7  7403              jz 0x16fc
000016F9  BE220D            mov si,0xd22
000016FC  E89501            call 0x1894
000016FF  E860F9            call 0x1062
00001702  7413              jz 0x1717
00001704  BE8D01            mov si,0x18d
00001707  2802              sub [bp+si],al
00001709  BE3B00            mov si,0x3b
0000170C  E853F9            call 0x1062
0000170F  7413              jz 0x1724
00001711  BE3300            mov si,0x33
00001714  E8E8FA            call 0x11ff
00001717  5A                pop dx
00001718  5B                pop bx
00001719  F9                stc
0000171A  5B                pop bx
0000171B  2E8F062EFF        pop word [cs:0xff2e]
00001720  3665222EFF36      and ch,[gs:0x36ff]
00001726  67222E            and ch,[esi]
00001729  BF8625            mov di,0x2586
0000172C  E843F9            call 0x1072
0000172F  07                pop es
00001730  06                push es
00001731  2E8B3E7723        mov di,[cs:0x2377]
00001736  E86901            call 0x18a2
00001739  EBD9              jmp short 0x1714
0000173B  80F901            cmp cl,0x1
0000173E  742B              jz 0x176b
00001740  80F908            cmp cl,0x8
00001743  7426              jz 0x176b
00001745  80C380            add bl,0x80
00001748  FD                std
00001749  007503            add [di+0x3],dh
0000174C  E99B01            jmp 0x18ea
0000174F  E9A601            jmp 0x18f8
00001752  50                push ax
00001753  E308              jcxz 0x175d
00001755  C420              les sp,[bx+si]
00001757  8804              mov [si],al
00001759  03AAE2F8          add bp,[bp+si-0x71e]
0000175D  3C20              cmp al,0x20
0000175F  76F1              jna 0x1752
00001761  FF58E9            call far [bx+si-0x17]
00001764  E456              in al,0x56
00001766  57                push di
00001767  E819FC            call 0x1383
0000176A  41                inc cx
0000176B  AC                lodsb
0000176C  E80800            call 0x1777
0000176F  AA                stosb
00001770  E2F9              loop 0x176b
00001772  3C39              cmp al,0x39
00001774  76FF              jna 0x1775
00001776  58                pop ax
00001777  E9B813            jmp 0x2b32
0000177A  12CD              adc cl,ch
0000177C  2F                das
0000177D  83C402            add sp,byte +0x2
00001780  C3                ret
00001781  0100              add [bx+si],ax
00001783  4A                dec dx
00001784  61                popa
00001785  6E                outsb
00001786  2EFF364665        push word [cs:0x6546]
0000178B  6200              bound ax,[bx+si]
0000178D  036E66            add bp,[bp+0x66]
00001790  6972565755        imul si,[bp+si+0x56],word 0x5557
00001795  41                inc cx
00001796  7072              jo 0x180a
00001798  0005              add [di],al
0000179A  6E                outsb
0000179B  666979455F544A75  imul edi,[bx+di+0x45],dword 0x754a545f
000017A3  6E                outsb
000017A4  0007              add [bx],al
000017A6  54                push sp
000017A7  4A                dec dx
000017A8  756C              jnz 0x1816
000017AA  0008              add [bx+si],cl
000017AC  004175            add [bx+di+0x75],al
000017AF  670009            add [ecx],cl
000017B2  626572            bound sp,[di+0x72]
000017B5  701E              jo 0x17d5
000017B7  B8004F            mov ax,0x4f00
000017BA  637400            arpl [si+0x0],si
000017BD  0B20              or sp,[bx+si]
000017BF  6D                insw
000017C0  657600            gs jna 0x17c3
000017C3  0C00              or al,0x0
000017C5  44                inc sp
000017C6  656300            arpl [gs:bx+si],ax
000017C9  0000              add [bx+si],al
000017CB  E8030D            call 0x24d1
000017CE  0A4552            or al,[di+0x52]
000017D1  52                push dx
000017D2  4F                dec di
000017D3  52                push dx
000017D4  3A20              cmp ah,[bx+si]
000017D6  07                pop es
000017D7  004F4D            add [bx+0x4d],cl
000017DA  206F72            and [bx+0x72],ch
000017DD  206F00            and [bx+0x0],ch
000017E0  4F                dec di
000017E1  4D                dec bp
000017E2  206F00            and [bx+0x0],ch
000017E5  3D0020            cmp ax,0x2000
000017E8  52                push dx
000017E9  61                popa
000017EA  6E                outsb
000017EB  67656F            gs a32 outsw
000017EE  004F64            add [bx+0x64],cl
000017F1  61                popa
000017F2  6C                insb
000017F3  206D6F            and [di+0x6f],ch
000017F6  662000            o32 and [bx+si],al
000017F9  206865            and [bx+si+0x65],ch
000017FC  7820              js 0x181e
000017FE  0020              add [bx+si],ah
00001800  636861            arpl [bx+si+0x61],bp
00001803  7261              jc 0x1866
00001805  637412            arpl [si+0x12],si
00001808  00B00D74          add [bx+si+0x740d],dh
0000180C  7220              jc 0x182e
0000180E  7365              jnc 0x1875
00001810  7200              jc 0x1812
00001812  20656C            and [di+0x6c],ah
00001815  740D              jz 0x1824
00001817  0A00              or al,[bx+si]
00001819  53                push bx
0000181A  657269            gs jc 0x1886
0000181D  61                popa
0000181E  65656E            gs outsb
00001821  20616C            and [bx+di+0x6c],ah
00001824  0020              add [bx+si],ah
00001826  4F                dec di
00001827  1C00              sbb al,0x0
00001829  B073              mov al,0x73
0000182B  65640D0A00        fs or ax,0xa
00001830  59                pop cx
00001831  666F              outsd
00001833  6C                insb
00001834  6C                insb
00001835  6F                outsw
00001836  7720              ja 0x1858
00001838  7365              jnc 0x189f
0000183A  7263              jc 0x189f
0000183C  686F61            push word 0x616f
0000183F  636873            arpl [bx+si+0x73],bp
00001842  3A00              cmp al,[bx+si]
00001844  205065            and [bx+si+0x65],dl
00001847  7276              jc 0x18bf
00001849  65726D            gs jc 0x18b9
0000184C  736C              jnc 0x18ba
0000184E  6F                outsw
0000184F  63616C            arpl [bx+di+0x6c],sp
00001852  206F66            and [bx+0x66],ch
00001855  206163            and [bx+di+0x63],ah
00001858  746F              jz 0x18c9
0000185A  702D              jo 0x1889
0000185C  205636            and [bp+0x36],dl
0000185F  2000              and [bx+si],al
00001861  6E                outsb
00001862  64206C69          and [fs:si+0x69],ch
00001866  6E                outsb
00001867  7261              jc 0x18ca
00001869  6E                outsb
0000186A  67656F            gs a32 outsw
0000186D  53                push bx
0000186E  657200            gs jc 0x1871
00001871  20746F            and [si+0x6f],dh
00001874  2000              and [bx+si],al
00001876  6F                outsw
00001877  1C00              sbb al,0x0
00001879  B073              mov al,0x73
0000187B  65640D0A00        fs or ax,0xa
00001880  59                pop cx
00001881  666F              outsd
00001883  6C                insb
00001884  6C                insb
00001885  6F                outsw
00001886  7720              ja 0x18a8
00001888  7365              jnc 0x18ef
0000188A  7263              jc 0x18ef
0000188C  686F61            push word 0x616f
0000188F  636873            arpl [bx+si+0x73],bp
00001892  3A00              cmp al,[bx+si]
00001894  57                push di
00001895  06                push es
00001896  FA                cli
00001897  5A                pop dx
00001898  8B9D2B57          mov bx,[di+0x572b]
0000189C  E867F7            call 0x1006
0000189F  E91402            jmp 0x1ab6
000018A2  E9E456            jmp 0x6f89
000018A5  57                push di
000018A6  1E                push ds
000018A7  06                push es
000018A8  26C57505          lds si,[es:di+0x5]
000018AC  0E                push cs
000018AD  07                pop es
000018AE  AD                lodsw
000018AF  E84DF9            call 0x11ff
000018B2  BFE824            mov di,0x24e8
000018B5  E887F7            call 0x103f
000018B8  BF9D2A            mov di,0x2a9d
000018BB  3C20              cmp al,0x20
000018BD  76F1              jna 0x18b0
000018BF  61                popa
000018C0  021F              add bl,[bx]
000018C2  7414              jz 0x18d8
000018C4  E8BCFA            call 0x1383
000018C7  F3A4              rep movsb
000018C9  46                inc si
000018CA  AD                lodsw
000018CB  B020              mov al,0x20
000018CD  AA                stosb
000018CE  3C20              cmp al,0x20
000018D0  76F1              jna 0x18c3
000018D2  81FFD72A          cmp di,0x2ad7
000018D6  72E7              jc 0x18bf
000018D8  BF9D2A            mov di,0x2a9d
000018DB  E861F7            call 0x103f
000018DE  61                popa
000018DF  021F              add bl,[bx]
000018E1  75CC              jnz 0x18af
000018E3  D2E8              shr al,cl
000018E5  0200              add al,[bx+si]
000018E7  76FF              jna 0x18e8
000018E9  58                pop ax
000018EA  57                push di
000018EB  06                push es
000018EC  FA                cli
000018ED  5A                pop dx
000018EE  8B9D2B57          mov bx,[di+0x572b]
000018F2  E8F9F8            call 0x11ee
000018F5  E9BE01            jmp 0x1ab6
000018F8  57                push di
000018F9  06                push es
000018FA  FA                cli
000018FB  5A                pop dx
000018FC  8B9D2B57          mov bx,[di+0x572b]
00001900  E8BD01            call 0x1ac0
00001903  E9B045            jmp 0x5eb6
00001906  53                push bx
00001907  54                push sp
00001908  5F                pop di
00001909  54                push sp
0000190A  B220              mov dl,0x20
0000190C  3E16              ds push ss
0000190E  26D88EC018        fmul dword [es:bp+0x18c0]
00001913  267435            es jz 0x194b
00001916  3C75              cmp al,0x75
00001918  57                push di
00001919  E80426            call 0x3f20
0000191C  895D03            mov [di+0x3],bx
0000191F  198BD6E8          sbb [bp+di-0x172a],cx
00001923  CD02              int 0x2
00001925  7366              jnc 0x198d
00001927  3D0000            cmp ax,0x0
0000192A  7560              jnz 0x198c
0000192C  8BF2              mov si,dx
0000192E  E980E1            jmp 0xfab1
00001931  0F                db 0x0f
00001932  3EFA              ds cli
00001934  56                push si
00001935  57                push di
00001936  1E                push ds
00001937  B4E1              mov ah,0xe1
00001939  8BFD              mov di,bp
0000193B  03D0              add dx,ax
0000193D  AA                stosb
0000193E  C9                leave
0000193F  56                push si
00001940  C420              les sp,[bx+si]
00001942  8804              mov [si],al
00001944  0B3C              or di,[si]
00001946  3D7407            cmp ax,0x774
00001949  3C3A              cmp al,0x3a
0000194B  7403              jz 0x1950
0000194D  41                inc cx
0000194E  EBF0              jmp short 0x1940
00001950  5E                pop si
00001951  0426              add al,0x26
00001953  895D03            mov [di+0x3],bx
00001956  1DE456            sbb ax,0x56e4
00001959  57                push di
0000195A  E980E1            jmp 0xfadd
0000195D  C606285E59        mov byte [0x5e28],0x59
00001962  7503              jnz 0x1967
00001964  8BEF              mov bp,di
00001966  43                inc bx
00001967  E980E1            jmp 0xfaea
0000196A  51                push cx
0000196B  E804FA            call 0x1372
0000196E  56                push si
0000196F  57                push di
00001970  59                pop cx
00001971  47                inc di
00001972  EBDD              jmp short 0x1951
00001974  85DB              test bx,bx
00001976  7411              jz 0x1989
00001978  4B                dec bx
00001979  7509              jnz 0x1984
0000197B  8BFD              mov di,bp
0000197D  03F1              add si,cx
0000197F  E88302            call 0x1c05
00001982  EB09              jmp short 0x198d
00001984  B80700            mov ax,0x7
00001987  EB03              jmp short 0x198c
00001989  730F              jnc 0x199a
0000198B  B0F9              mov al,0xf9
0000198D  5D                pop bp
0000198E  366522C3          gs and al,bl
00001992  49                dec cx
00001993  63746F            arpl [si+0x6f],si
00001996  676F              a32 outsw
00001998  662000            o32 and [bx+si],al
0000199B  53                push bx
0000199C  657269            gs jc 0x1a08
0000199F  61                popa
000019A0  004963            add [bx+di+0x63],cl
000019A3  746F              jz 0x1a14
000019A5  676F              a32 outsw
000019A7  66206368          o32 and [bp+di+0x68],ah
000019AB  61                popa
000019AC  7261              jc 0x1a0f
000019AE  637412            arpl [si+0x12],si
000019B1  00B06166          add [bx+si+0x6661],dh
000019B5  7412              jz 0x19c9
000019B7  00B00D53          add [bx+si+0x530d],dh
000019BB  657269            gs jc 0x1a27
000019BE  61                popa
000019BF  654D              gs dec bp
000019C1  61                popa
000019C2  7869              js 0x1a2d
000019C4  005353            add [bp+di+0x53],dl
000019C7  657269            gs jc 0x1a33
000019CA  61                popa
000019CB  65206D61          and [gs:di+0x61],ch
000019CF  7565              jnz 0x1a36
000019D1  626C65            bound bp,[si+0x65]
000019D4  206120            and [bx+di+0x20],ah
000019D7  0D0072            or ax,0x7200
000019DA  61                popa
000019DB  6E                outsb
000019DC  6765004963        add [gs:ecx+0x63],cl
000019E1  746F              jz 0x1a52
000019E3  676F              a32 outsw
000019E5  66206469          o32 and [si+0x69],ah
000019E9  6769206120        imul sp,[eax],word 0x2061
000019EE  0D0073            or ax,0x7300
000019F1  53                push bx
000019F2  657269            gs jc 0x1a5e
000019F5  61                popa
000019F6  65206D61          and [gs:di+0x61],ch
000019FA  7565              jnz 0x1a61
000019FC  7265              jc 0x1a63
000019FE  64207665          and [fs:bp+0x65],dh
00001A02  7273              jc 0x1a77
00001A04  662000            o32 and [bx+si],al
00001A07  53                push bx
00001A08  657269            gs jc 0x1a74
00001A0B  61                popa
00001A0C  4E                dec si
00001A0D  6F                outsw
00001A0E  20740B            and [si+0xb],dh
00001A11  00B07479          add [bx+si+0x7974],dh
00001A15  7065              jo 0x1a7c
00001A17  6F                outsw
00001A18  53                push bx
00001A19  657262            gs jc 0x1a7e
00001A1C  61                popa
00001A1D  647665            fs jna 0x1a85
00001A20  202D              and [di],ch
00001A22  6C                insb
00001A23  6520616F          and [gs:bx+di+0x6f],ah
00001A27  7065              jo 0x1a8e
00001A29  6E                outsb
00001A2A  0A00              or al,[bx+si]
00001A2C  53                push bx
00001A2D  657269            gs jc 0x1a99
00001A30  61                popa
00001A31  65656E            gs outsb
00001A34  206176            and [bx+di+0x76],ah
00001A37  65202D            and [gs:di],ch
00001A3A  6C                insb
00001A3B  65206170          and [gs:bx+di+0x70],ah
00001A3F  657276            gs jc 0x1ab8
00001A42  65726D            gs jc 0x1ab2
00001A45  6C                insb
00001A46  6F                outsw
00001A47  63616C            arpl [bx+di+0x6c],sp
00001A4A  206F66            and [bx+0x66],ch
00001A4D  206163            and [bx+di+0x63],ah
00001A50  746F              jz 0x1ac1
00001A52  702D              jo 0x1a81
00001A54  53                push bx
00001A55  53                push bx
00001A56  657269            gs jc 0x1ac2
00001A59  61                popa
00001A5A  657374            gs jnc 0x1ad1
00001A5D  61                popa
00001A5E  726D              jc 0x1acd
00001A60  626571            bound sp,[di+0x71]
00001A63  756F              jnz 0x1ad4
00001A65  7573              jnz 0x1ada
00001A67  004645            add [bp+0x45],al
00001A6A  7865              js 0x1ad1
00001A6C  7572              jnz 0x1ae0
00001A6E  6561              gs popa
00001A70  200D              and [di],cl
00001A72  007353            add [bp+di+0x53],dh
00001A75  657269            gs jc 0x1ae1
00001A78  61                popa
00001A79  65656E            gs outsb
00001A7C  206176            and [bx+di+0x76],ah
00001A7F  00A226B1          add [bp+si-0x4eda],ah
00001A83  26D526            es aad 0x26
00001A86  EF                out dx,ax
00001A87  260D272F          es or ax,0x2f27
00001A8B  27                daa
00001A8C  47                inc di
00001A8D  27                daa
00001A8E  6427              fs daa
00001A90  7827              js 0x1ab9
00001A92  00860033          add [bp+0x3300],al
00001A96  3D0900            cmp ax,0x9
00001A99  770B              ja 0x1aa6
00001A9B  8BF8              mov di,ax
00001A9D  03FF              add di,di
00001A9F  2E8BBD9027        mov di,[cs:di+0x2790]
00001AA4  F8                clc
00001AA5  C3                ret
00001AA6  BF8F27            mov di,0x278f
00001AA9  F9                stc
00001AAA  58                pop ax
00001AAB  57                push di
00001AAC  06                push es
00001AAD  FA                cli
00001AAE  5A                pop dx
00001AAF  8B9D2B57          mov bx,[di+0x572b]
00001AB3  E858F5            call 0x100e
00001AB6  C3                ret
00001AB7  AC                lodsb
00001AB8  3C5F              cmp al,0x5f
00001ABA  E882F5            call 0x103f
00001ABD  07                pop es
00001ABE  5F                pop di
00001ABF  C3                ret
00001AC0  50                push ax
00001AC1  8AC4              mov al,ah
00001AC3  E828F7            call 0x11ee
00001AC6  58                pop ax
00001AC7  E924F7            jmp 0x11ee
00001ACA  5F                pop di
00001ACB  04B2              add al,0xb2
00001ACD  0014              add [si],dl
00001ACF  00B00101          add [bx+si+0x101],dh
00001AD3  BE8000            mov si,0x80
00001AD6  AC                lodsb
00001AD7  8A061B2E          mov al,[0x2e1b]
00001ADB  A09300            mov al,[0x93]
00001ADE  BFBF9D            mov di,0x9dbf
00001AE1  2AB95000          sub bh,[bx+di+0x50]
00001AE5  E8A403            call 0x1e8c
00001AE8  E87AF8            call 0x1365
00001AEB  03F9              add di,cx
00001AED  81FF9D2A          cmp di,0x2a9d
00001AF1  7616              jna 0x1b09
00001AF3  803D2E            cmp byte [di],0x2e
00001AF6  7503              jnz 0x1afb
00001AF8  2076F1            and [bp-0xf],dh
00001AFB  8A45FF            mov al,[di-0x1]
00001AFE  3C5C              cmp al,0x5c
00001B00  7407              jz 0x1b09
00001B02  3C3A              cmp al,0x3a
00001B04  7403              jz 0x1b09
00001B06  4F                dec di
00001B07  EBE4              jmp short 0x1aed
00001B09  8BF7              mov si,di
00001B0B  BFDA27            mov di,0x27da
00001B0E  7876              js 0x1b86
00001B10  EE                out dx,al
00001B11  E831FC            call 0x1745
00001B14  E856FD            call 0x186d
00001B17  E227              loop 0x1b40
00001B19  33D2              xor dx,dx
00001B1B  E80200            call 0x1b20
00001B1E  59                pop cx
00001B1F  5B                pop bx
00001B20  57                push di
00001B21  06                push es
00001B22  268B4D07          mov cx,[es:di+0x7]
00001B26  26C47D01          les di,[es:di+0x1]
00001B2A  E856FD            call 0x1883
00001B2D  EF                out dx,ax
00001B2E  27                daa
00001B2F  01E8              add ax,bp
00001B31  56                push si
00001B32  FD                std
00001B33  EE                out dx,al
00001B34  27                daa
00001B35  01E8              add ax,bp
00001B37  8E00              mov es,[bx+si]
00001B39  727F              jc 0x1bba
00001B3B  7203              jc 0x1b40
00001B3D  E8EF27            call 0x432f
00001B40  017554            add [di+0x54],si
00001B43  3C5B              cmp al,0x5b
00001B45  7550              jnz 0x1b97
00001B47  BE8000            mov si,0x80
00001B4A  AC                lodsb
00001B4B  8A061B2E          mov al,[0x2e1b]
00001B4F  A09300            mov al,[0x93]
00001B52  BFBEE3            mov di,0xe3be
00001B55  27                daa
00001B56  0F1720            movhps qword [bx+si],xmm4
00001B59  26055369          es add ax,0x6953
00001B5D  007213            add [bp+si+0x13],dh
00001B60  3C5D              cmp al,0x5d
00001B62  740F              jz 0x1b73
00001B64  3C20              cmp al,0x20
00001B66  040B              add al,0xb
00001B68  3C0D              cmp al,0xd
00001B6A  7407              jz 0x1b73
00001B6C  3C0A              cmp al,0xa
00001B6E  0403              add al,0x3
00001B70  AA                stosb
00001B71  E2E8              loop 0x1b5b
00001B73  33C0              xor ax,ax
00001B75  AA                stosb
00001B76  B4C0              mov ah,0xc0
00001B78  33DB              xor bx,bx
00001B7A  FB                sti
00001B7B  BFDA27            mov di,0x27da
00001B7E  E88303            call 0x1f04
00001B81  D2E8              shr al,cl
00001B83  0200              add al,[bx+si]
00001B85  59                pop cx
00001B86  5B                pop bx
00001B87  B00D              mov al,0xd
00001B89  E856FD            call 0x18e2
00001B8C  EE                out dx,al
00001B8D  27                daa
00001B8E  00FF              add bh,bh
00001B90  1E                push ds
00001B91  FA                cli
00001B92  56                push si
00001B93  FD                std
00001B94  EE                out dx,al
00001B95  27                daa
00001B96  01E8              add ax,bp
00001B98  56                push si
00001B99  FD                std
00001B9A  EF                out dx,ax
00001B9B  27                daa
00001B9C  013C              add [si],di
00001B9E  0D740A            or ax,0xa74
00001BA1  3C0A              cmp al,0xa
00001BA3  0406              add al,0x6
00001BA5  E856FD            call 0x18fe
00001BA8  EF                out dx,ax
00001BA9  27                daa
00001BAA  007203            add [bp+si+0x3],dh
00001BAD  E8EE27            call 0x439e
00001BB0  017504            add [di+0x4],si
00001BB3  AA                stosb
00001BB4  49                dec cx
00001BB5  E303              jcxz 0x1bba
00001BB7  E97CFF            jmp 0x1b36
00001BBA  33C0              xor ax,ax
00001BBC  AA                stosb
00001BBD  07                pop es
00001BBE  5F                pop di
00001BBF  262B4D07          sub cx,[es:di+0x7]
00001BC3  F7D9              neg cx
00001BC5  C3                ret
00001BC6  005152            add [bx+di+0x52],dl
00001BC9  1E                push ds
00001BCA  BAE328            mov dx,0x28e3
00001BCD  0E                push cs
00001BCE  1F                pop ds
00001BCF  B90100            mov cx,0x1
00001BD2  084F80            or [bx-0x80],cl
00001BD5  7D72              jnl 0x1c49
00001BD7  093D              or [di],di
00001BD9  0100              add [bx+si],ax
00001BDB  7204              jc 0x1be1
00001BDD  2EA0E328          mov al,[cs:0x28e3]
00001BE1  1F                pop ds
00001BE2  5A                pop dx
00001BE3  59                pop cx
00001BE4  C3                ret
00001BE5  51                push cx
00001BE6  8AE9              mov ch,cl
00001BE8  80E10F            and cl,0xf
00001BEB  78F7              js 0x1be4
00001BED  C606285974        mov byte [0x5928],0x74
00001BF2  05730F            add ax,0xf73
00001BF5  B0F9              mov al,0xf9
00001BF7  1E                push ds
00001BF8  FA                cli
00001BF9  08268A15          or [0x158a],ah
00001BFD  8AF2              mov dh,dl
00001BFF  80E60F            and dh,0xf
00001C02  8A04              mov al,[si]
00001C04  021F              add bl,[bx]
00001C06  7412              jz 0x1c1a
00001C08  AC                lodsb
00001C09  3C3D              cmp al,0x3d
00001C0B  740D              jz 0x1c1a
00001C0D  3C3A              cmp al,0x3a
00001C0F  7409              jz 0x1c1a
00001C11  80FE05            cmp dh,0x5
00001C14  742C              jz 0x1c42
00001C16  5A                pop dx
00001C17  5B                pop bx
00001C18  EBD9              jmp short 0x1bf3
00001C1A  80FE07            cmp dh,0x7
00001C1D  7565              jnz 0x1c84
00001C1F  51                push cx
00001C20  57                push di
00001C21  06                push es
00001C22  55                push bp
00001C23  51                push cx
00001C24  52                push dx
00001C25  56                push si
00001C26  18265152          sbb [0x5251],ah
00001C2A  56                push si
00001C2B  16                push ss
00001C2C  2626FF5D01        call far [es:di+0x1]
00001C31  DF8CC216          fisttp word [si+0x16c2]
00001C35  26D88FC018        fmul dword [es:bx+0x18c0]
00001C3A  265D              es pop bp
00001C3C  07                pop es
00001C3D  5F                pop di
00001C3E  59                pop cx
00001C3F  1E                push ds
00001C40  0303              add ax,[bp+di]
00001C42  3C3A              cmp al,0x3a
00001C44  7405              jz 0x1c4b
00001C46  3C3D              cmp al,0x3d
00001C48  7401              jz 0x1c4b
00001C4A  4E                dec si
00001C4B  8BD6              mov dx,si
00001C4D  B8003D            mov ax,0x3d00
00001C50  CD21              int 0x21
00001C52  8BD8              mov bx,ax
00001C54  B8053B            mov ax,0x3b05
00001C57  EF                out dx,ax
00001C58  7451              jz 0x1cab
00001C5A  E876FE            call 0x1ad3
00001C5D  B43E              mov ah,0x3e
00001C5F  CD21              int 0x21
00001C61  59                pop cx
00001C62  56                push si
00001C63  1E                push ds
00001C64  57                push di
00001C65  06                push es
00001C66  26C57501          lds si,[es:di+0x1]
00001C6A  2EC43E1626        les di,[cs:0x2616]
00001C6F  E8ECF9            call 0x165e
00001C72  07                pop es
00001C73  5F                pop di
00001C74  1F                pop ds
00001C75  5E                pop si
00001C76  B80800            mov ax,0x8
00001C79  7230              jc 0x1cab
00001C7B  51                push cx
00001C7C  E8F7F6            call 0x1376
00001C7F  03F1              add si,cx
00001C81  59                pop cx
00001C82  EBBB              jmp short 0x1c3f
00001C84  80FE08            cmp dh,0x8
00001C87  25FB8B            and ax,0x8bfb
00001C8A  FE01              inc byte [bx+di]
00001C8C  7512              jnz 0x1ca0
00001C8E  84C0              test al,al
00001C90  40                inc ax
00001C91  04FF              add al,0xff
00001C93  7581              jnz 0x1c16
00001C95  80FE08            cmp dh,0x8
00001C98  7503              jnz 0x1c9d
00001C9A  083C              or [si],bh
00001C9C  FE                db 0xfe
00001C9D  E9B000            jmp 0x1d50
00001CA0  3C3D              cmp al,0x3d
00001CA2  740A              jz 0x1cae
00001CA4  3C3A              cmp al,0x3a
00001CA6  7406              jz 0x1cae
00001CA8  B80100            mov ax,0x1
00001CAB  F9                stc
00001CAC  EB91              jmp short 0x1c3f
00001CAE  80FE04            cmp dh,0x4
00001CB1  7533              jnz 0x1ce6
00001CB3  51                push cx
00001CB4  06                push es
00001CB5  57                push di
00001CB6  268B4D07          mov cx,[es:di+0x7]
00001CBA  26C47D01          les di,[es:di+0x1]
00001CBE  E315              jcxz 0x1cd5
00001CC0  80AC84C074        sub byte [si-0x3f7c],0x74
00001CC5  8026386510        and byte [0x6538],0x10
00001CCA  AC                lodsb
00001CCB  56                push si
00001CCC  BEC404            mov si,0x4c4
00001CCF  005E03            add [bp+0x3],bl
00001CD2  AA                stosb
00001CD3  E2F8              loop 0x1ccd
00001CD5  C3                ret
00001CD6  AC                lodsb
00001CD7  3CEB              cmp al,0xeb
00001CD9  058BD1            add ax,0xd18b
00001CDC  E8ADF3            call 0x108c
00001CDF  5F                pop di
00001CE0  07                pop es
00001CE1  59                pop cx
00001CE2  F8                clc
00001CE3  E959FF            jmp 0x1c3f
00001CE6  FF                db 0xff
00001CE7  F8                clc
00001CE8  C6                db 0xc6
00001CE9  7543              jnz 0x1d2e
00001CEB  353C5E            xor ax,0x5e3c
00001CEE  F9                stc
00001CEF  1E                push ds
00001CF0  06                push es
00001CF1  57                push di
00001CF2  06                push es
00001CF3  FA                cli
00001CF4  5A                pop dx
00001CF5  8B9D2ABA          mov bx,[di-0x45d6]
00001CF9  FF00              inc word [bx+si]
00001CFB  E88EF3            call 0x108c
00001CFE  07                pop es
00001CFF  5F                pop di
00001D00  26C57505          lds si,[es:di+0x5]
00001D04  0E                push cs
00001D05  07                pop es
00001D06  8B9D2AAD          mov bx,[di-0x52d6]
00001D0A  61                popa
00001D0B  021F              add bl,[bx]
00001D0D  740D              jz 0x1d1c
00001D0F  E8F201            call 0x1f04
00001D12  7410              jz 0x1d24
00001D14  E85FF6            call 0x1376
00001D17  03F1              add si,cx
00001D19  46                inc si
00001D1A  EBED              jmp short 0x1d09
00001D1C  D2E8              shr al,cl
00001D1E  0200              add al,[bx+si]
00001D20  5A                pop dx
00001D21  C3                ret
00001D22  EB37              jmp short 0x1d5b
00001D24  D2E8              shr al,cl
00001D26  0200              add al,[bx+si]
00001D28  5A                pop dx
00001D29  C3                ret
00001D2A  8BD8              mov bx,ax
00001D2C  EB39              jmp short 0x1d67
00001D2E  80FEBE            cmp dh,0xbe
00001D31  2225              and ah,[di]
00001D33  80FE03            cmp dh,0x3
00001D36  7411              jz 0x1d49
00001D38  B80400            mov ax,0x4
00001D3B  5F                pop di
00001D3C  5E                pop si
00001D3D  5A                pop dx
00001D3E  E8A901            call 0x1eea
00001D41  730D              jnc 0x1d50
00001D43  B80300            mov ax,0x3
00001D46  E962FF            jmp 0x1cab
00001D49  E86901            call 0x1eb5
00001D4C  700D              jo 0x1d5b
00001D4E  72F3              jc 0x1d43
00001D50  F6C280            test dl,0x80
00001D53  7412              jz 0x1d67
00001D55  263B5D05          cmp bx,[es:di+0x5]
00001D59  7306              jnc 0x1d61
00001D5B  1372E5            adc si,[bp+si-0x1b]
00001D5E  E94AFF            jmp 0x1cab
00001D61  263B5D07          cmp bx,[es:di+0x7]
00001D65  77F4              ja 0x1d5b
00001D67  80E230            and dl,0x30
00001D6A  56                push si
00001D6B  1E                push ds
00001D6C  26C57501          lds si,[es:di+0x1]
00001D70  881C              mov [si],bl
00001D72  80FA10            cmp dl,0x10
00001D75  7503              jnz 0x1d7a
00001D77  887C01            mov [si+0x1],bh
00001D7A  1F                pop ds
00001D7B  5E                pop si
00001D7C  F8                clc
00001D7D  E9BFFE            jmp 0x1c3f
00001D80  AF                scasw
00001D81  2EFF360C01        push word [cs:0x10c]
00001D86  B050              mov al,0x50
00001D88  53                push bx
00001D89  C8B500F3          enter 0xb5,0xf3
00001D8D  E80300            call 0x1d93
00001D90  F7F1              div cx
00001D92  87561E            xchg dx,[bp+0x1e]
00001D95  8EDB              mov ds,bx
00001D97  8E1E2C00          mov ds,[0x2c]
00001D9B  33F6              xor si,si
00001D9D  83021F            add word [bp+si],byte +0x1f
00001DA0  7407              jz 0x1da9
00001DA2  AA                stosb
00001DA3  46                inc si
00001DA4  F8                clc
00001DA5  83C604            add si,byte +0x4
00001DA8  E8A5EA            call 0x850
00001DAB  FF2EFF0A          jmp far [0xaff]
00001DAF  007405            add [si+0x5],dh
00001DB2  8033C9            xor byte [bp+di],0xc9
00001DB5  33DB              xor bx,bx
00001DB7  61                popa
00001DB8  021F              add bl,[bx]
00001DBA  750B              jnz 0x1dc7
00001DBC  F9                stc
00001DBD  E304              jcxz 0x1dc3
00001DBF  9C                pushf
00001DC0  F7DB              neg bx
00001DC2  9D                popf
00001DC3  750A              jnz 0x1dcf
00001DC5  FC                cld
00001DC6  E8803C            call 0x5a49
00001DC9  2D7406            sub ax,0x674
00001DCC  803C2B            cmp byte [si],0x2b
00001DCF  7503              jnz 0x1dd4
00001DD1  49                dec cx
00001DD2  46                inc si
00001DD3  41                inc cx
00001DD4  53                push bx
00001DD5  690076E4          imul ax,[bx+si],word 0xe476
00001DD9  93                xchg ax,bx
00001DDA  2EF726D02B        mul word [cs:0x2bd0]
00001DDF  70DC              jo 0x1dbd
00001DE1  03D8              add bx,ax
00001DE3  EBEF              jmp short 0x1dd4
00001DE5  51                push cx
00001DE6  50                push ax
00001DE7  33DB              xor bx,bx
00001DE9  61                popa
00001DEA  021F              add bl,[bx]
00001DEC  F9                stc
00001DED  740D              jz 0x1dfc
00001DEF  B104              mov cl,0x4
00001DF1  E81B00            call 0x1e0f
00001DF4  7606              jna 0x1dfc
00001DF6  D3E3              shl bx,cl
00001DF8  0BD8              or bx,ax
00001DFA  EBF5              jmp short 0x1df1
00001DFC  58                pop ax
00001DFD  218EDB56          and [bp+0x56db],cx
00001E01  57                push di
00001E02  A6                cmpsb
00001E03  7506              jnz 0x1e0b
00001E05  807CFF00          cmp byte [si-0x1],0x0
00001E09  75F7              jnz 0x1e02
00001E0B  5F                pop di
00001E0C  5E                pop si
00001E0D  58                pop ax
00001E0E  C3                ret
00001E0F  8A04              mov al,[si]
00001E11  0220              add ah,[bx+si]
00001E13  7628              jna 0x1e3d
00001E15  3C30              cmp al,0x30
00001E17  7222              jc 0x1e3b
00001E19  3C39              cmp al,0x39
00001E1B  7704              ja 0x1e21
00001E1D  2C30              sub al,0x30
00001E1F  EB14              jmp short 0x1e35
00001E21  3C41              cmp al,0x41
00001E23  7216              jc 0x1e3b
00001E25  3C46              cmp al,0x46
00001E27  760A              jna 0x1e33
00001E29  3C61              cmp al,0x61
00001E2B  720E              jc 0x1e3b
00001E2D  3C66              cmp al,0x66
00001E2F  770A              ja 0x1e3b
00001E31  04E0              add al,0xe0
00001E33  04C9              add al,0xc9
00001E35  98                cbw
00001E36  46                inc si
00001E37  0BF6              or si,si
00001E39  F8                clc
00001E3A  C3                ret
00001E3B  F9                stc
00001E3C  C3                ret
00001E3D  3AC0              cmp al,al
00001E3F  C3                ret
00001E40  E8CCFF            call 0x1e0f
00001E43  7633              jna 0x1e78
00001E45  3D0900            cmp ax,0x9
00001E48  7703              ja 0x1e4d
00001E4A  0BF6              or si,si
00001E4C  C3                ret
00001E4D  4E                dec si
00001E4E  F9                stc
00001E4F  C3                ret
00001E50  51                push cx
00001E51  1E                push ds
00001E52  56                push si
00001E53  06                push es
00001E54  57                push di
00001E55  E8E8F7            call 0x1640
00001E58  5F                pop di
00001E59  07                pop es
00001E5A  5E                pop si
00001E5B  1F                pop ds
00001E5C  59                pop cx
00001E5D  C3                ret
00001E5E  E80700            call 0x1e68
00001E61  E8ECFF            call 0x1e50
00001E64  50                push ax
00001E65  5F                pop di
00001E66  44                inc sp
00001E67  1F                pop ds
00001E68  C3                ret
00001E69  26F60787          test byte [es:bx],0x87
00001E6D  FEC3              inc bl
00001E6F  E88026            call 0x44f2
00001E72  2A0F              sub cl,[bx]
00001E74  02B0E98A          add dh,[bx+si-0x7517]
00001E78  08900480          or [bx+si-0x7ffc],dl
00001E7C  262AC5            es sub al,ch
00001E7F  00B00103          add [bx+si+0x301],dh
00001E83  0D0A0A            or ax,0xa0a
00001E86  45                inc bp
00001E87  52                push dx
00001E88  52                push dx
00001E89  4F                dec di
00001E8A  52                push dx
00001E8B  3A20              cmp ah,[bx+si]
00001E8D  005520            add [di+0x20],dl
00001E90  7365              jnc 0x1ef7
00001E92  7276              jc 0x1f0a
00001E94  20746F            and [si+0x6f],dh
00001E97  206E65            and [bp+0x65],ch
00001E9A  206E74            and [bp+0x74],ch
00001E9D  0D0A6D            or ax,0x6d0a
00001EA0  6F                outsw
00001EA1  647520            fs jnz 0x1ec4
00001EA4  61                popa
00001EA5  6C                insb
00001EA6  0045F8            add [di-0x8],al
00001EA9  00B2200B          add [bp+si+0xb20],dh
00001EAD  6564207720        and [fs:bx+0x20],dh
00001EB2  7365              jnc 0x1f19
00001EB4  726D              jc 0x1f23
00001EB6  6F                outsw
00001EB7  647520            fs jnz 0x1eda
00001EBA  61                popa
00001EBB  6C                insb
00001EBC  656E              gs outsb
00001EBE  20616C            and [bx+di+0x6c],ah
00001EC1  00616C            add [bx+di+0x6c],ah
00001EC4  206D61            and [di+0x61],ch
00001EC7  636869            arpl [bx+si+0x69],bp
00001ECA  6D                insw
00001ECB  6F                outsw
00001ECC  647520            fs jnz 0x1eef
00001ECF  61                popa
00001ED0  6C                insb
00001ED1  004475            add [si+0x75],al
00001ED4  704D              jo 0x1f23
00001ED6  61                popa
00001ED7  636E74            arpl [bp+0x74],bp
00001EDA  0D0A6D            or ax,0x6d0a
00001EDD  6F                outsw
00001EDE  647520            fs jnz 0x1f01
00001EE1  61                popa
00001EE2  6C                insb
00001EE3  686573            push word 0x7365
00001EE6  2E2E61            cs popa
00001EE9  7263              jc 0x1f4e
00001EEB  686972            push word 0x7269
00001EEE  7665              jna 0x1f55
00001EF0  722E              jc 0x1f20
00001EF2  005520            add [di+0x20],dl
00001EF5  7365              jnc 0x1f5c
00001EF7  7276              jc 0x1f6f
00001EF9  20746F            and [si+0x6f],dh
00001EFC  206F70            and [bx+0x70],ch
00001EFF  656E              gs outsb
00001F01  0A6D6F            or ch,[di+0x6f]
00001F04  647520            fs jnz 0x1f27
00001F07  61                popa
00001F08  6C                insb
00001F09  67726F            jc 0x1f7b
00001F0C  1200              adc al,[bx+si]
00001F0E  B065              mov al,0x65
00001F10  6E                outsb
00001F11  20612E            and [bx+di+0x2e],ah
00001F14  206D65            and [di+0x65],ch
00001F17  0A6D6F            or ch,[di+0x6f]
00001F1A  647520            fs jnz 0x1f3d
00001F1D  61                popa
00001F1E  207265            and [bp+si+0x65],dh
00001F21  2D686F            sub ax,0x6f68
00001F24  6F                outsw
00001F25  6B65640D          imul sp,[di+0x64],byte +0xd
00001F29  0A6272            or ah,[bp+si+0x72]
00001F2C  636869            arpl [bx+si+0x69],bp
00001F2F  7274              jc 0x1fa5
00001F31  6F                outsw
00001F32  200A              and [bp+si],cl
00001F34  005365            add [bp+di+0x65],dl
00001F37  7265              jc 0x1f9e
00001F39  696C652068        imul bp,[si+0x65],word 0x6820
00001F3E  61                popa
00001F3F  7320              jnc 0x1f61
00001F41  622E206D          bound bp,[0x6d20]
00001F45  650A7374          or dh,[gs:bp+di+0x74]
00001F49  0D0A20            or ax,0x200a
00001F4C  207365            and [bp+di+0x65],dh
00001F4F  7220              jc 0x1f71
00001F51  6E                outsb
00001F52  61                popa
00001F53  7469              jz 0x1fbe
00001F55  6F                outsw
00001F56  7365              jnc 0x1fbd
00001F58  61                popa
00001F59  7263              jc 0x1fbe
00001F5B  68696E            push word 0x6e69
00001F5E  004D6F            add [di+0x6f],cl
00001F61  647520            fs jnz 0x1f84
00001F64  61                popa
00001F65  6C                insb
00001F66  7274              jc 0x1fdc
00001F68  6564206F6E        and [fs:bx+0x6e],ch
00001F6D  2074B2            and [si-0x4e],dh
00001F70  200D              and [di],cl
00001F72  006164            add [bx+di+0x64],ah
00001F75  2E0D0A24          cs or ax,0x240a
00001F79  53                push bx
00001F7A  2E206D65          and [cs:di+0x65],ch
00001F7E  6D                insw
00001F7F  6F                outsw
00001F80  7279              jc 0x1ffb
00001F82  202D              and [di],ch
00001F84  205265            and [bp+si+0x65],dl
00001F87  647563            fs jnz 0x1fed
00001F8A  65206C6F          and [gs:si+0x6f],ch
00001F8E  7420              jz 0x1fb0
00001F90  7468              jz 0x1ffa
00001F92  6973207469        imul si,[bp+di+0x20],word 0x6974
00001F97  6D                insw
00001F98  746F              jz 0x2009
00001F9A  206E65            and [bp+0x65],ch
00001F9D  61                popa
00001F9E  6454              fs push sp
00001FA0  6F                outsw
00001FA1  746F              jz 0x2012
00001FA3  677261            jc 0x2007
00001FA6  6D                insw
00001FA7  2E00410A          add [cs:bx+di+0xa],al
00001FAB  6D                insw
00001FAC  6F                outsw
00001FAD  647520            fs jnz 0x1fd0
00001FB0  61                popa
00001FB1  6C                insb
00001FB2  6F                outsw
00001FB3  6E                outsb
00001FB4  2074B2            and [si-0x4e],dh
00001FB7  200D              and [di],cl
00001FB9  7461              jz 0x201c
00001FBB  726E              jc 0x202b
00001FBD  61                popa
00001FBE  200D              and [di],cl
00001FC0  206D61            and [di+0x61],ch
00001FC3  636869            arpl [bx+si+0x69],bp
00001FC6  657861            gs js 0x202a
00001FC9  626C65            bound bp,[si+0x65]
00001FCC  2E030D            add cx,[cs:di]
00001FCF  0A0A              or cl,[bp+si]
00001FD1  46                inc si
00001FD2  49                dec cx
00001FD3  58                pop ax
00001FD4  55                push bp
00001FD5  50                push ax
00001FD6  204552            and [di+0x52],al
00001FD9  52                push dx
00001FDA  4F                dec di
00001FDB  52                push dx
00001FDC  3A20              cmp ah,[bx+si]
00001FDE  002D              add [di],ch
00001FE0  52                push dx
00001FE1  4F                dec di
00001FE2  4D                dec bp
00001FE3  20536F            and [bp+di+0x6f],dl
00001FE6  7572              jnz 0x205a
00001FE8  627566            bound si,[di+0x66]
00001FEB  4D                dec bp
00001FEC  6F                outsw
00001FED  647520            fs jnz 0x2010
00001FF0  61                popa
00001FF1  3A20              cmp ah,[bx+si]
00001FF3  002D              add [di],ch
00001FF5  52                push dx
00001FF6  4F                dec di
00001FF7  4D                dec bp
00001FF8  205461            and [si+0x61],dl
00001FFB  7267              jc 0x2064
00001FFD  657466            gs jz 0x2066
00002000  4D                dec bp
00002001  6F                outsw
00002002  647520            fs jnz 0x2025
00002005  61                popa
00002006  3A20              cmp ah,[bx+si]
00002008  002D              add [di],ch
0000200A  52                push dx
0000200B  8A20              mov ah,[bx+si]
0000200D  6E                outsb
0000200E  6F                outsw
0000200F  B8007A            mov ax,0x7a00
00002012  49                dec cx
00002013  6D                insw
00002014  61                popa
00002015  626C65            bound bp,[si+0x65]
00002018  3A20              cmp ah,[bx+si]
0000201A  002D              add [di],ch
0000201C  52                push dx
0000201D  4F                dec di
0000201E  4D                dec bp
0000201F  49                dec cx
00002020  6D                insw
00002021  61                popa
00002022  626C65            bound bp,[si+0x65]
00002025  204F72            and [bx+0x72],cl
00002028  7720              ja 0x204a
0000202A  7361              jnc 0x208d
0000202C  6C                insb
0000202D  3A20              cmp ah,[bx+si]
0000202F  004D6F            add [di+0x6f],cl
00002032  647520            fs jnz 0x2055
00002035  61                popa
00002036  6C                insb
00002037  6F                outsw
00002038  6E                outsb
00002039  2074B2            and [si-0x4e],dh
0000203C  200D              and [di],cl
0000203E  7461              jz 0x20a1
00002040  200D              and [di],cl
00002042  206D61            and [di+0x61],ch
00002045  636869            arpl [bx+si+0x69],bp
00002048  6669781200B0696E  imul edi,[bx+si+0x12],dword 0x6e69b000
00002050  7665              jna 0x20b7
00002052  726D              jc 0x20c1
00002054  B050              mov al,0x50
00002056  6F                outsw
00002057  702D              jo 0x2086
00002059  2E206D72          and [cs:di+0x72],ch
0000205D  204E0B            and [bp+0xb],cl
00002060  6564696F6E0D0A    imul bp,[fs:bx+0x6e],word 0xa0d
00002067  627566            bound si,[di+0x66]
0000206A  7765              ja 0x20d1
0000206C  7265              jc 0x20d3
0000206E  6D                insw
0000206F  61                popa
00002070  64696D746F20      imul bp,[fs:di+0x74],word 0x206f
00002076  61                popa
00002077  206620            and [bp+0x20],ah
0000207A  4E                dec si
0000207B  0B6F62            or bp,[bx+0x62]
0000207E  6A66              push byte +0x66
00002080  66652E005461      o32 add [cs:si+0x61],dl
00002086  7267              jc 0x20ef
00002088  657466            gs jz 0x20f1
0000208B  6D                insw
0000208C  6F                outsw
0000208D  647520            fs jnz 0x20b0
00002090  61                popa
00002091  6C                insb
00002092  686520            push word 0x2065
00002095  61                popa
00002096  61                popa
00002097  7263              jc 0x20fc
00002099  68696E            push word 0x6e69
0000209C  005461            add [si+0x61],dl
0000209F  7267              jc 0x2108
000020A1  657466            gs jz 0x210a
000020A4  696D61626C        imul bp,[di+0x61],word 0x6c62
000020A9  65206865          and [gs:bx+si+0x65],ch
000020AD  206161            and [bx+di+0x61],ah
000020B0  7263              jc 0x2115
000020B2  68696E            push word 0x6e69
000020B5  0000              add [bx+si],al
000020B7  2D52A7            sub ax,0xa752
000020BA  00B22A3C          add [bp+si+0x3c2a],dh
000020BE  002A              add [bp+si],ch
000020C0  204445            and [si+0x45],al
000020C3  42                inc dx
000020C4  55                push bp
000020C5  47                inc di
000020C6  204520            and [di+0x20],al
000020C9  7365              jnc 0x2130
000020CB  7276              jc 0x2143
000020CD  65720F            gs jc 0x20df
000020D0  00B22A6F          add [bp+si+0x6f2a],dh
000020D4  66206D65          o32 and [di+0x65],ch
000020D8  2A2A              sub ch,[bp+si]
000020DA  0480              add al,0x80
000020DC  266F              es outsw
000020DE  B8007A            mov ax,0x7a00
000020E1  2033              and [bp+di],dh
000020E3  2E4C              cs dec sp
000020E5  4F                dec di
000020E6  41                inc cx
000020E7  44                inc sp
000020E8  205631            and [bp+0x31],dl
000020EB  2E3033            xor [cs:bp+di],dh
000020EE  0D8026            or ax,0x2680
000020F1  6F                outsw
000020F2  1400              adc al,0x0
000020F4  B02A              mov al,0x2a
000020F6  2A6D65            sub ch,[di+0x65]
000020F9  2A2A              sub ch,[bp+si]
000020FB  4F                dec di
000020FC  4D                dec bp
000020FD  206F72            and [bx+0x72],ch
00002100  206F20            and [bx+0x20],ch
00002103  332E4C4F          xor bp,[0x4f4c]
00002107  41                inc cx
00002108  44                inc sp
00002109  2E0100            add [cs:bx+si],ax
0000210C  00656D            add [di+0x6d],ah
0000210F  61                popa
00002110  00B0656E          add [bx+si+0x6e65],dh
00002114  206120            and [bx+di+0x20],ah
00002117  636564            arpl [di+0x64],sp
0000211A  2020              and [bx+si],ah
0000211C  2020              and [bx+si],ah
0000211E  297570            sub [di+0x70],si
00002121  706F              jo 0x2192
00002123  7274              jc 0x2199
00002125  2A2A              sub ch,[bp+si]
00002127  6D                insw
00002128  650480            gs add al,0x80
0000212B  262A30            sub dh,[es:bx+si]
0000212E  7469              jz 0x2199
00002130  6320              arpl [bx+si],sp
00002132  282D              sub [di],ch
00002134  52                push dx
00002135  4F                dec di
00002136  53                push bx
00002137  740D              jz 0x2146
00002139  0A20              or ah,[bx+si]
0000213B  206F72            and [bx+0x72],ch
0000213E  206F4C            and [bx+0x4c],ch
00002141  656E              gs outsb
00002143  676E              a32 outsb
00002145  61                popa
00002146  6D                insw
00002147  6D                insw
00002148  6D                insw
00002149  6D                insw
0000214A  6D                insw
0000214B  6561              gs popa
0000214D  64791F            fs jns 0x216f
00002150  47                inc di
00002151  205375            and [bp+di+0x75],dl
00002154  7070              jo 0x21c6
00002156  43                inc bx
00002157  6C                insb
00002158  61                popa
00002159  7373              jnc 0x21ce
0000215B  206E61            and [bp+0x61],ch
0000215E  6D                insw
0000215F  2020              and [bx+si],ah
00002161  41                inc cx
00002162  6E                outsb
00002163  61                popa
00002164  7469              jz 0x21cf
00002166  6F                outsw
00002167  7312              jnc 0x217b
00002169  7570              jnz 0x21db
0000216B  706F              jo 0x21dc
0000216D  7274              jc 0x21e3
0000216F  50                push ax
00002170  7562              jnz 0x21d4
00002172  4D                dec bp
00002173  61                popa
00002174  637320            arpl [bp+di+0x20],si
00002177  656C              gs insb
00002179  734E              jnc 0x21c9
0000217B  4F                dec di
0000217C  53                push bx
0000217D  206973            and [bx+di+0x73],ch
00002180  61                popa
00002181  6D                insw
00002182  2020              and [bx+si],ah
00002184  41                inc cx
00002185  6E                outsb
00002186  61                popa
00002187  7469              jz 0x21f2
00002189  6F                outsw
0000218A  731C              jnc 0x21a8
0000218C  7570              jnz 0x21fe
0000218E  706F              jo 0x21ff
00002190  7274              jc 0x2206
00002192  50                push ax
00002193  7562              jnz 0x21f7
00002195  4D                dec bp
00002196  61                popa
00002197  637320            arpl [bp+di+0x20],si
0000219A  656C              gs insb
0000219C  7356              jnc 0x21f4
0000219E  6D                insw
0000219F  61                popa
000021A0  7565              jnz 0x2207
000021A2  6973616D00        imul si,[bp+di+0x61],word 0x6d
000021A7  4F                dec di
000021A8  4D                dec bp
000021A9  206F72            and [bx+0x72],ch
000021AC  206F00            and [bx+0x0],ch
000021AF  3A00              cmp al,[bx+si]
000021B1  2033              and [bp+di],dh
000021B3  2E4C              cs dec sp
000021B5  4F                dec di
000021B6  41                inc cx
000021B7  44                inc sp
000021B8  2E0100            add [cs:bx+si],ax
000021BB  0000              add [bx+si],al
000021BD  90                nop
000021BE  1E                push ds
000021BF  134D13            adc cx,[di+0x13]
000021C2  2313              and dx,[bp+di]
000021C4  2813              sub [bp+di],dl
000021C6  4D                dec bp
000021C7  1331              adc si,[bx+di]
000021C9  1328              adc bp,[bx+si]
000021CB  1336133F          adc si,[0x3f13]
000021CF  134D12            adc cx,[di+0x12]
000021D2  6B127C            imul dx,[bp+si],byte +0x7c
000021D5  129C12DA          adc bl,[si-0x25ee]
000021D9  14E0              adc al,0xe0
000021DB  14DA              adc al,0xda
000021DD  14E0              adc al,0xe0
000021DF  14DA              adc al,0xda
000021E1  1453              adc al,0x53
000021E3  54                push sp
000021E4  41                inc cx
000021E5  43                inc bx
000021E6  53                push bx
000021E7  54                push sp
000021E8  41                inc cx
000021E9  43                inc bx
000021EA  53                push bx
000021EB  54                push sp
000021EC  41                inc cx
000021ED  43                inc bx
000021EE  53                push bx
000021EF  54                push sp
000021F0  41                inc cx
000021F1  43                inc bx
000021F2  53                push bx
000021F3  54                push sp
000021F4  41                inc cx
000021F5  43                inc bx
000021F6  53                push bx
000021F7  54                push sp
000021F8  41                inc cx
000021F9  43                inc bx
000021FA  53                push bx
000021FB  54                push sp
000021FC  41                inc cx
000021FD  43                inc bx
000021FE  53                push bx
000021FF  54                push sp
00002200  41                inc cx
00002201  43                inc bx
00002202  53                push bx
00002203  54                push sp
00002204  41                inc cx
00002205  43                inc bx
00002206  53                push bx
00002207  54                push sp
00002208  41                inc cx
00002209  43                inc bx
0000220A  53                push bx
0000220B  54                push sp
0000220C  41                inc cx
0000220D  43                inc bx
0000220E  53                push bx
0000220F  54                push sp
00002210  41                inc cx
00002211  43                inc bx
00002212  53                push bx
00002213  54                push sp
00002214  41                inc cx
00002215  43                inc bx
00002216  53                push bx
00002217  54                push sp
00002218  41                inc cx
00002219  43                inc bx
0000221A  53                push bx
0000221B  54                push sp
0000221C  41                inc cx
0000221D  43                inc bx
0000221E  53                push bx
0000221F  54                push sp
00002220  41                inc cx
00002221  43                inc bx
00002222  53                push bx
00002223  54                push sp
00002224  41                inc cx
00002225  43                inc bx
00002226  53                push bx
00002227  54                push sp
00002228  41                inc cx
00002229  43                inc bx
0000222A  53                push bx
0000222B  54                push sp
0000222C  41                inc cx
0000222D  43                inc bx
0000222E  53                push bx
0000222F  54                push sp
00002230  41                inc cx
00002231  43                inc bx
00002232  53                push bx
00002233  54                push sp
00002234  41                inc cx
00002235  43                inc bx
00002236  53                push bx
00002237  54                push sp
00002238  41                inc cx
00002239  43                inc bx
0000223A  53                push bx
0000223B  54                push sp
0000223C  41                inc cx
0000223D  43                inc bx
0000223E  53                push bx
0000223F  54                push sp
00002240  41                inc cx
00002241  43                inc bx
00002242  53                push bx
00002243  54                push sp
00002244  41                inc cx
00002245  43                inc bx
00002246  53                push bx
00002247  54                push sp
00002248  41                inc cx
00002249  43                inc bx
0000224A  53                push bx
0000224B  54                push sp
0000224C  41                inc cx
0000224D  43                inc bx
0000224E  53                push bx
0000224F  54                push sp
00002250  41                inc cx
00002251  43                inc bx
00002252  53                push bx
00002253  54                push sp
00002254  41                inc cx
00002255  43                inc bx
00002256  53                push bx
00002257  54                push sp
00002258  41                inc cx
00002259  43                inc bx
0000225A  53                push bx
0000225B  54                push sp
0000225C  41                inc cx
0000225D  43                inc bx
0000225E  53                push bx
0000225F  54                push sp
00002260  41                inc cx
00002261  43                inc bx
00002262  53                push bx
00002263  54                push sp
00002264  41                inc cx
00002265  43                inc bx
00002266  53                push bx
00002267  54                push sp
00002268  41                inc cx
00002269  43                inc bx
0000226A  53                push bx
0000226B  54                push sp
0000226C  41                inc cx
0000226D  43                inc bx
0000226E  53                push bx
0000226F  54                push sp
00002270  41                inc cx
00002271  43                inc bx
00002272  53                push bx
00002273  54                push sp
00002274  41                inc cx
00002275  43                inc bx
00002276  53                push bx
00002277  54                push sp
00002278  41                inc cx
00002279  43                inc bx
0000227A  53                push bx
0000227B  54                push sp
0000227C  41                inc cx
0000227D  43                inc bx
0000227E  53                push bx
0000227F  54                push sp
00002280  41                inc cx
00002281  43                inc bx
00002282  53                push bx
00002283  54                push sp
00002284  41                inc cx
00002285  43                inc bx
00002286  53                push bx
00002287  54                push sp
00002288  41                inc cx
00002289  43                inc bx
0000228A  53                push bx
0000228B  54                push sp
0000228C  41                inc cx
0000228D  43                inc bx
0000228E  53                push bx
0000228F  54                push sp
00002290  41                inc cx
00002291  43                inc bx
00002292  53                push bx
00002293  54                push sp
00002294  41                inc cx
00002295  43                inc bx
00002296  53                push bx
00002297  54                push sp
00002298  41                inc cx
00002299  43                inc bx
0000229A  53                push bx
0000229B  54                push sp
0000229C  41                inc cx
0000229D  43                inc bx
0000229E  53                push bx
0000229F  54                push sp
000022A0  41                inc cx
000022A1  43                inc bx
000022A2  53                push bx
000022A3  54                push sp
000022A4  41                inc cx
000022A5  43                inc bx
000022A6  53                push bx
000022A7  54                push sp
000022A8  41                inc cx
000022A9  43                inc bx
000022AA  53                push bx
000022AB  54                push sp
000022AC  41                inc cx
000022AD  43                inc bx
000022AE  53                push bx
000022AF  54                push sp
000022B0  41                inc cx
000022B1  43                inc bx
000022B2  53                push bx
000022B3  54                push sp
000022B4  41                inc cx
000022B5  43                inc bx
000022B6  53                push bx
000022B7  54                push sp
000022B8  41                inc cx
000022B9  43                inc bx
000022BA  53                push bx
000022BB  54                push sp
000022BC  41                inc cx
000022BD  43                inc bx
000022BE  53                push bx
000022BF  54                push sp
000022C0  41                inc cx
000022C1  43                inc bx
000022C2  53                push bx
000022C3  54                push sp
000022C4  41                inc cx
000022C5  43                inc bx
000022C6  53                push bx
000022C7  54                push sp
000022C8  41                inc cx
000022C9  43                inc bx
000022CA  53                push bx
000022CB  54                push sp
000022CC  41                inc cx
000022CD  43                inc bx
000022CE  53                push bx
000022CF  54                push sp
000022D0  41                inc cx
000022D1  43                inc bx
000022D2  53                push bx
000022D3  54                push sp
000022D4  41                inc cx
000022D5  43                inc bx
000022D6  53                push bx
000022D7  54                push sp
000022D8  41                inc cx
000022D9  43                inc bx
000022DA  53                push bx
000022DB  54                push sp
000022DC  41                inc cx
000022DD  43                inc bx
000022DE  53                push bx
000022DF  54                push sp
000022E0  41                inc cx
000022E1  43                inc bx
000022E2  53                push bx
000022E3  54                push sp
000022E4  41                inc cx
000022E5  43                inc bx
000022E6  53                push bx
000022E7  54                push sp
000022E8  41                inc cx
000022E9  43                inc bx
000022EA  53                push bx
000022EB  54                push sp
000022EC  41                inc cx
000022ED  43                inc bx
000022EE  53                push bx
000022EF  54                push sp
000022F0  41                inc cx
000022F1  43                inc bx
000022F2  53                push bx
000022F3  54                push sp
000022F4  41                inc cx
000022F5  43                inc bx
000022F6  53                push bx
000022F7  54                push sp
000022F8  41                inc cx
000022F9  43                inc bx
000022FA  53                push bx
000022FB  54                push sp
000022FC  41                inc cx
000022FD  43                inc bx
000022FE  53                push bx
000022FF  54                push sp
00002300  41                inc cx
00002301  43                inc bx
00002302  53                push bx
00002303  54                push sp
00002304  41                inc cx
00002305  43                inc bx
00002306  53                push bx
00002307  54                push sp
00002308  41                inc cx
00002309  43                inc bx
0000230A  53                push bx
0000230B  54                push sp
0000230C  41                inc cx
0000230D  43                inc bx
0000230E  53                push bx
0000230F  54                push sp
00002310  41                inc cx
00002311  43                inc bx
00002312  53                push bx
00002313  54                push sp
00002314  41                inc cx
00002315  43                inc bx
00002316  53                push bx
00002317  54                push sp
00002318  41                inc cx
00002319  43                inc bx
0000231A  53                push bx
0000231B  54                push sp
0000231C  41                inc cx
0000231D  43                inc bx
0000231E  53                push bx
0000231F  54                push sp
00002320  41                inc cx
00002321  43                inc bx
00002322  53                push bx
00002323  54                push sp
00002324  41                inc cx
00002325  43                inc bx
00002326  53                push bx
00002327  54                push sp
00002328  41                inc cx
00002329  43                inc bx
0000232A  53                push bx
0000232B  54                push sp
0000232C  41                inc cx
0000232D  43                inc bx
0000232E  53                push bx
0000232F  54                push sp
00002330  41                inc cx
00002331  43                inc bx
00002332  53                push bx
00002333  54                push sp
00002334  41                inc cx
00002335  43                inc bx
00002336  53                push bx
00002337  54                push sp
00002338  41                inc cx
00002339  43                inc bx
0000233A  53                push bx
0000233B  54                push sp
0000233C  41                inc cx
0000233D  43                inc bx
0000233E  53                push bx
0000233F  54                push sp
00002340  41                inc cx
00002341  43                inc bx
00002342  53                push bx
00002343  54                push sp
00002344  41                inc cx
00002345  43                inc bx
00002346  53                push bx
00002347  54                push sp
00002348  41                inc cx
00002349  43                inc bx
0000234A  53                push bx
0000234B  54                push sp
0000234C  41                inc cx
0000234D  43                inc bx
0000234E  53                push bx
0000234F  54                push sp
00002350  41                inc cx
00002351  43                inc bx
00002352  53                push bx
00002353  54                push sp
00002354  41                inc cx
00002355  43                inc bx
00002356  53                push bx
00002357  54                push sp
00002358  41                inc cx
00002359  43                inc bx
0000235A  53                push bx
0000235B  54                push sp
0000235C  41                inc cx
0000235D  43                inc bx
0000235E  53                push bx
0000235F  54                push sp
00002360  41                inc cx
00002361  43                inc bx
00002362  53                push bx
00002363  54                push sp
00002364  41                inc cx
00002365  43                inc bx
00002366  53                push bx
00002367  54                push sp
00002368  41                inc cx
00002369  43                inc bx
0000236A  53                push bx
0000236B  54                push sp
0000236C  41                inc cx
0000236D  43                inc bx
0000236E  53                push bx
0000236F  54                push sp
00002370  41                inc cx
00002371  43                inc bx
00002372  53                push bx
00002373  54                push sp
00002374  41                inc cx
00002375  43                inc bx
00002376  53                push bx
00002377  54                push sp
00002378  41                inc cx
00002379  43                inc bx
0000237A  53                push bx
0000237B  54                push sp
0000237C  41                inc cx
0000237D  43                inc bx
0000237E  53                push bx
0000237F  54                push sp
00002380  41                inc cx
00002381  43                inc bx
00002382  53                push bx
00002383  54                push sp
00002384  41                inc cx
00002385  43                inc bx
00002386  53                push bx
00002387  54                push sp
00002388  41                inc cx
00002389  43                inc bx
0000238A  53                push bx
0000238B  54                push sp
0000238C  41                inc cx
0000238D  43                inc bx
0000238E  53                push bx
0000238F  54                push sp
00002390  41                inc cx
00002391  43                inc bx
00002392  53                push bx
00002393  54                push sp
00002394  41                inc cx
00002395  43                inc bx
00002396  53                push bx
00002397  54                push sp
00002398  41                inc cx
00002399  43                inc bx
0000239A  53                push bx
0000239B  54                push sp
0000239C  41                inc cx
0000239D  43                inc bx
0000239E  53                push bx
0000239F  54                push sp
000023A0  41                inc cx
000023A1  43                inc bx
000023A2  53                push bx
000023A3  54                push sp
000023A4  41                inc cx
000023A5  43                inc bx
000023A6  53                push bx
000023A7  54                push sp
000023A8  41                inc cx
000023A9  43                inc bx
000023AA  53                push bx
000023AB  54                push sp
000023AC  41                inc cx
000023AD  43                inc bx
000023AE  53                push bx
000023AF  54                push sp
000023B0  41                inc cx
000023B1  43                inc bx
000023B2  53                push bx
000023B3  54                push sp
000023B4  41                inc cx
000023B5  43                inc bx
000023B6  53                push bx
000023B7  54                push sp
000023B8  41                inc cx
000023B9  43                inc bx
000023BA  53                push bx
000023BB  54                push sp
000023BC  41                inc cx
000023BD  43                inc bx
000023BE  53                push bx
000023BF  54                push sp
000023C0  41                inc cx
000023C1  43                inc bx
000023C2  53                push bx
000023C3  54                push sp
000023C4  41                inc cx
000023C5  43                inc bx
000023C6  53                push bx
000023C7  54                push sp
000023C8  41                inc cx
000023C9  43                inc bx
000023CA  53                push bx
000023CB  54                push sp
000023CC  41                inc cx
000023CD  43                inc bx
000023CE  53                push bx
000023CF  54                push sp
000023D0  41                inc cx
000023D1  43                inc bx
000023D2  53                push bx
000023D3  54                push sp
000023D4  41                inc cx
000023D5  43                inc bx
000023D6  53                push bx
000023D7  54                push sp
000023D8  41                inc cx
000023D9  43                inc bx
000023DA  53                push bx
000023DB  54                push sp
000023DC  41                inc cx
000023DD  43                inc bx
000023DE  53                push bx
000023DF  54                push sp
000023E0  41                inc cx
000023E1  43                inc bx
000023E2  53                push bx
000023E3  54                push sp
000023E4  41                inc cx
000023E5  43                inc bx
000023E6  53                push bx
000023E7  54                push sp
000023E8  41                inc cx
000023E9  43                inc bx
000023EA  53                push bx
000023EB  54                push sp
000023EC  41                inc cx
000023ED  43                inc bx
000023EE  53                push bx
000023EF  54                push sp
000023F0  41                inc cx
000023F1  43                inc bx
000023F2  53                push bx
000023F3  54                push sp
000023F4  41                inc cx
000023F5  43                inc bx
000023F6  53                push bx
000023F7  54                push sp
000023F8  41                inc cx
000023F9  43                inc bx
000023FA  53                push bx
000023FB  54                push sp
000023FC  41                inc cx
000023FD  43                inc bx
000023FE  53                push bx
000023FF  54                push sp
00002400  41                inc cx
00002401  43                inc bx
00002402  53                push bx
00002403  54                push sp
00002404  41                inc cx
00002405  43                inc bx
00002406  53                push bx
00002407  54                push sp
00002408  41                inc cx
00002409  43                inc bx
0000240A  53                push bx
0000240B  54                push sp
0000240C  41                inc cx
0000240D  43                inc bx
0000240E  53                push bx
0000240F  54                push sp
00002410  41                inc cx
00002411  43                inc bx
00002412  53                push bx
00002413  54                push sp
00002414  41                inc cx
00002415  43                inc bx
00002416  53                push bx
00002417  54                push sp
00002418  41                inc cx
00002419  43                inc bx
0000241A  53                push bx
0000241B  54                push sp
0000241C  41                inc cx
0000241D  43                inc bx
0000241E  53                push bx
0000241F  54                push sp
00002420  41                inc cx
00002421  43                inc bx
00002422  53                push bx
00002423  54                push sp
00002424  41                inc cx
00002425  43                inc bx
00002426  53                push bx
00002427  54                push sp
00002428  41                inc cx
00002429  43                inc bx
0000242A  53                push bx
0000242B  54                push sp
0000242C  41                inc cx
0000242D  43                inc bx
0000242E  53                push bx
0000242F  54                push sp
00002430  41                inc cx
00002431  43                inc bx
00002432  53                push bx
00002433  54                push sp
00002434  41                inc cx
00002435  43                inc bx
00002436  53                push bx
00002437  54                push sp
00002438  41                inc cx
00002439  43                inc bx
0000243A  53                push bx
0000243B  54                push sp
0000243C  41                inc cx
0000243D  43                inc bx
0000243E  53                push bx
0000243F  54                push sp
00002440  41                inc cx
00002441  43                inc bx
00002442  53                push bx
00002443  54                push sp
00002444  41                inc cx
00002445  43                inc bx
00002446  53                push bx
00002447  54                push sp
00002448  41                inc cx
00002449  43                inc bx
0000244A  53                push bx
0000244B  54                push sp
0000244C  41                inc cx
0000244D  43                inc bx
0000244E  53                push bx
0000244F  54                push sp
00002450  41                inc cx
00002451  43                inc bx
00002452  53                push bx
00002453  54                push sp
00002454  41                inc cx
00002455  43                inc bx
00002456  53                push bx
00002457  54                push sp
00002458  41                inc cx
00002459  43                inc bx
0000245A  53                push bx
0000245B  54                push sp
0000245C  41                inc cx
0000245D  43                inc bx
0000245E  53                push bx
0000245F  54                push sp
00002460  41                inc cx
00002461  43                inc bx
00002462  53                push bx
00002463  54                push sp
00002464  41                inc cx
00002465  43                inc bx
00002466  53                push bx
00002467  54                push sp
00002468  41                inc cx
00002469  43                inc bx
0000246A  53                push bx
0000246B  54                push sp
0000246C  41                inc cx
0000246D  43                inc bx
0000246E  53                push bx
0000246F  54                push sp
00002470  41                inc cx
00002471  43                inc bx
00002472  53                push bx
00002473  54                push sp
00002474  41                inc cx
00002475  43                inc bx
00002476  53                push bx
00002477  54                push sp
00002478  41                inc cx
00002479  43                inc bx
0000247A  53                push bx
0000247B  54                push sp
0000247C  41                inc cx
0000247D  43                inc bx
0000247E  53                push bx
0000247F  54                push sp
00002480  41                inc cx
00002481  43                inc bx
00002482  53                push bx
00002483  54                push sp
00002484  41                inc cx
00002485  43                inc bx
00002486  53                push bx
00002487  54                push sp
00002488  41                inc cx
00002489  43                inc bx
0000248A  53                push bx
0000248B  54                push sp
0000248C  41                inc cx
0000248D  43                inc bx
0000248E  53                push bx
0000248F  54                push sp
00002490  41                inc cx
00002491  43                inc bx
00002492  53                push bx
00002493  54                push sp
00002494  41                inc cx
00002495  43                inc bx
00002496  53                push bx
00002497  54                push sp
00002498  41                inc cx
00002499  43                inc bx
0000249A  53                push bx
0000249B  54                push sp
0000249C  41                inc cx
0000249D  43                inc bx
0000249E  53                push bx
0000249F  54                push sp
000024A0  41                inc cx
000024A1  43                inc bx
000024A2  53                push bx
000024A3  54                push sp
000024A4  41                inc cx
000024A5  43                inc bx
000024A6  53                push bx
000024A7  54                push sp
000024A8  41                inc cx
000024A9  43                inc bx
000024AA  53                push bx
000024AB  54                push sp
000024AC  41                inc cx
000024AD  43                inc bx
000024AE  53                push bx
000024AF  54                push sp
000024B0  41                inc cx
000024B1  43                inc bx
000024B2  53                push bx
000024B3  54                push sp
000024B4  41                inc cx
000024B5  43                inc bx
000024B6  53                push bx
000024B7  54                push sp
000024B8  41                inc cx
000024B9  43                inc bx
000024BA  53                push bx
000024BB  54                push sp
000024BC  41                inc cx
000024BD  43                inc bx
000024BE  53                push bx
000024BF  54                push sp
000024C0  41                inc cx
000024C1  43                inc bx
000024C2  53                push bx
000024C3  54                push sp
000024C4  41                inc cx
000024C5  43                inc bx
000024C6  53                push bx
000024C7  54                push sp
000024C8  41                inc cx
000024C9  43                inc bx
000024CA  53                push bx
000024CB  54                push sp
000024CC  41                inc cx
000024CD  43                inc bx
000024CE  53                push bx
000024CF  54                push sp
000024D0  41                inc cx
000024D1  43                inc bx
000024D2  53                push bx
000024D3  54                push sp
000024D4  41                inc cx
000024D5  43                inc bx
000024D6  53                push bx
000024D7  54                push sp
000024D8  41                inc cx
000024D9  43                inc bx
000024DA  53                push bx
000024DB  54                push sp
000024DC  41                inc cx
000024DD  43                inc bx
000024DE  53                push bx
000024DF  54                push sp
000024E0  41                inc cx
000024E1  43                inc bx
000024E2  53                push bx
000024E3  54                push sp
000024E4  41                inc cx
000024E5  43                inc bx
000024E6  53                push bx
000024E7  54                push sp
000024E8  41                inc cx
000024E9  43                inc bx
000024EA  53                push bx
000024EB  54                push sp
000024EC  41                inc cx
000024ED  43                inc bx
000024EE  53                push bx
000024EF  54                push sp
000024F0  41                inc cx
000024F1  43                inc bx
000024F2  53                push bx
000024F3  54                push sp
000024F4  41                inc cx
000024F5  43                inc bx
000024F6  53                push bx
000024F7  54                push sp
000024F8  41                inc cx
000024F9  43                inc bx
000024FA  53                push bx
000024FB  54                push sp
000024FC  41                inc cx
000024FD  43                inc bx
000024FE  53                push bx
000024FF  54                push sp
00002500  41                inc cx
00002501  43                inc bx
00002502  53                push bx
00002503  54                push sp
00002504  41                inc cx
00002505  43                inc bx
00002506  53                push bx
00002507  54                push sp
00002508  41                inc cx
00002509  43                inc bx
0000250A  53                push bx
0000250B  54                push sp
0000250C  41                inc cx
0000250D  43                inc bx
0000250E  53                push bx
0000250F  54                push sp
00002510  41                inc cx
00002511  43                inc bx
00002512  53                push bx
00002513  54                push sp
00002514  41                inc cx
00002515  43                inc bx
00002516  53                push bx
00002517  54                push sp
00002518  41                inc cx
00002519  43                inc bx
0000251A  53                push bx
0000251B  54                push sp
0000251C  41                inc cx
0000251D  43                inc bx
0000251E  53                push bx
0000251F  54                push sp
00002520  41                inc cx
00002521  43                inc bx
00002522  53                push bx
00002523  54                push sp
00002524  41                inc cx
00002525  43                inc bx
00002526  53                push bx
00002527  54                push sp
00002528  41                inc cx
00002529  43                inc bx
0000252A  53                push bx
0000252B  54                push sp
0000252C  41                inc cx
0000252D  43                inc bx
0000252E  53                push bx
0000252F  54                push sp
00002530  41                inc cx
00002531  43                inc bx
00002532  53                push bx
00002533  54                push sp
00002534  41                inc cx
00002535  43                inc bx
00002536  53                push bx
00002537  54                push sp
00002538  41                inc cx
00002539  43                inc bx
0000253A  53                push bx
0000253B  54                push sp
0000253C  41                inc cx
0000253D  43                inc bx
0000253E  53                push bx
0000253F  54                push sp
00002540  41                inc cx
00002541  43                inc bx
00002542  53                push bx
00002543  54                push sp
00002544  41                inc cx
00002545  43                inc bx
00002546  53                push bx
00002547  54                push sp
00002548  41                inc cx
00002549  43                inc bx
0000254A  53                push bx
0000254B  54                push sp
0000254C  41                inc cx
0000254D  43                inc bx
0000254E  53                push bx
0000254F  54                push sp
00002550  41                inc cx
00002551  43                inc bx
00002552  53                push bx
00002553  54                push sp
00002554  41                inc cx
00002555  43                inc bx
00002556  53                push bx
00002557  54                push sp
00002558  41                inc cx
00002559  43                inc bx
0000255A  53                push bx
0000255B  54                push sp
0000255C  41                inc cx
0000255D  43                inc bx
0000255E  53                push bx
0000255F  54                push sp
00002560  41                inc cx
00002561  43                inc bx
00002562  53                push bx
00002563  54                push sp
00002564  41                inc cx
00002565  43                inc bx
00002566  53                push bx
00002567  54                push sp
00002568  41                inc cx
00002569  43                inc bx
0000256A  53                push bx
0000256B  54                push sp
0000256C  41                inc cx
0000256D  43                inc bx
0000256E  53                push bx
0000256F  54                push sp
00002570  41                inc cx
00002571  43                inc bx
00002572  53                push bx
00002573  54                push sp
00002574  41                inc cx
00002575  43                inc bx
00002576  53                push bx
00002577  54                push sp
00002578  41                inc cx
00002579  43                inc bx
0000257A  53                push bx
0000257B  54                push sp
0000257C  41                inc cx
0000257D  43                inc bx
0000257E  53                push bx
0000257F  54                push sp
00002580  41                inc cx
00002581  43                inc bx
00002582  53                push bx
00002583  54                push sp
00002584  41                inc cx
00002585  43                inc bx
00002586  53                push bx
00002587  54                push sp
00002588  41                inc cx
00002589  43                inc bx
0000258A  53                push bx
0000258B  54                push sp
0000258C  41                inc cx
0000258D  43                inc bx
0000258E  53                push bx
0000258F  54                push sp
00002590  41                inc cx
00002591  43                inc bx
00002592  53                push bx
00002593  54                push sp
00002594  41                inc cx
00002595  43                inc bx
00002596  53                push bx
00002597  54                push sp
00002598  41                inc cx
00002599  43                inc bx
0000259A  53                push bx
0000259B  54                push sp
0000259C  41                inc cx
0000259D  43                inc bx
0000259E  53                push bx
0000259F  54                push sp
000025A0  41                inc cx
000025A1  43                inc bx
000025A2  53                push bx
000025A3  54                push sp
000025A4  41                inc cx
000025A5  43                inc bx
000025A6  53                push bx
000025A7  54                push sp
000025A8  41                inc cx
000025A9  43                inc bx
000025AA  53                push bx
000025AB  54                push sp
000025AC  41                inc cx
000025AD  43                inc bx
000025AE  53                push bx
000025AF  54                push sp
000025B0  41                inc cx
000025B1  43                inc bx
000025B2  53                push bx
000025B3  54                push sp
000025B4  41                inc cx
000025B5  43                inc bx
000025B6  53                push bx
000025B7  54                push sp
000025B8  41                inc cx
000025B9  43                inc bx
000025BA  53                push bx
000025BB  54                push sp
000025BC  41                inc cx
000025BD  43                inc bx
000025BE  53                push bx
000025BF  54                push sp
000025C0  41                inc cx
000025C1  43                inc bx
000025C2  53                push bx
000025C3  54                push sp
000025C4  41                inc cx
000025C5  43                inc bx
000025C6  53                push bx
000025C7  54                push sp
000025C8  41                inc cx
000025C9  43                inc bx
000025CA  53                push bx
000025CB  54                push sp
000025CC  41                inc cx
000025CD  43                inc bx
000025CE  53                push bx
000025CF  54                push sp
000025D0  41                inc cx
000025D1  43                inc bx
000025D2  53                push bx
000025D3  54                push sp
000025D4  41                inc cx
000025D5  43                inc bx
000025D6  53                push bx
000025D7  54                push sp
000025D8  41                inc cx
000025D9  43                inc bx
000025DA  53                push bx
000025DB  54                push sp
000025DC  41                inc cx
000025DD  43                inc bx
000025DE  53                push bx
000025DF  54                push sp
000025E0  41                inc cx
000025E1  43                inc bx
000025E2  54                push sp
000025E3  53                push bx
000025E4  2E89360800        mov [cs:0x8],si
000025E9  2E8C1E0A54        mov [cs:0x540a],ds
000025EE  B220              mov dl,0x20
000025F0  0E                push cs
000025F1  0C00              or al,0x0
000025F3  2EA20103          mov [cs:0x301],al
000025F7  1B2EA093          sbb bp,[0x93a0]
000025FB  00D0              add al,dl
000025FD  BC8B08            mov sp,0x88b
00002600  C8B500F3          enter 0xb5,0xf3
00002604  891E0E00          mov [0xe],bx
00002608  8B1E63B9          mov bx,[0xb963]
0000260C  8000E8            add byte [bx+si],0xe8
0000260F  41                inc cx
00002610  03E8              add bp,ax
00002612  59                pop cx
00002613  03E8              add bp,ax
00002615  1A04              sbb al,[si]
00002617  FF36BB00          push word [0xbb]
0000261B  E89810            call 0x36b6
0000261E  C706083CFE00      mov word [0x3c08],0xfe
00002624  E96603            jmp 0x298d
00002627  A1BB00            mov ax,[0xbb]
0000262A  0BC0              or ax,ax
0000262C  7404              jz 0x2632
0000262E  50                push ax
0000262F  E88410            call 0x36b6
00002632  B8014C            mov ax,0x4c01
00002635  00F3              add bl,dh
00002637  A4                movsb
00002638  06                push es
00002639  0E                push cs
0000263A  00268E06          add [0x68e],ah
0000263E  2C00              sub al,0x0
00002640  33FF              xor di,di
00002642  33C0              xor ax,ax
00002644  5F                pop di
00002645  58                pop ax
00002646  C3                ret
00002647  F2AE              repne scasb
00002649  AE                scasb
0000264A  75FB              jnz 0x2647
0000264C  83C702            add di,byte +0x2
0000264F  06                push es
00002650  57                push di
00002651  E84D10            call 0x36a1
00002654  0BC0              or ax,ax
00002656  7404              jz 0x265c
00002658  A3BB00            mov [0xbb],ax
0000265B  C3                ret
0000265C  BA3B01            mov dx,0x13b
0000265F  E99B0E            jmp 0x34fd
00002662  E81900            call 0x267e
00002665  B84209            mov ax,0x942
00002668  50                push ax
00002669  FF360A00          push word [0xa]
0000266D  FF360800          push word [0x8]
00002671  E84F01            call 0x27c3
00002674  E82001            call 0x2797
00002677  A1B600            mov ax,[0xb6]
0000267A  A3B800            mov [0xb8],ax
0000267D  C3                ret
0000267E  A10E00            mov ax,[0xe]
00002681  83C010            add ax,byte +0x10
00002684  C706FF366700      mov word [0x36ff],0x67
0000268A  A3B400            mov [0xb4],ax
0000268D  A4                movsb
0000268E  06                push es
0000268F  0E                push cs
00002690  0026A102          add [0x2a1],ah
00002694  00A3B600          add [bp+di+0xb6],ah
00002698  C3                ret
00002699  55                push bp
0000269A  8BEC              mov bp,sp
0000269C  83C4F2            add sp,byte -0xe
0000269F  A1C500            mov ax,[0xc5]
000026A2  8B16C700          mov dx,[0xc7]
000026A6  83C040            add ax,byte +0x40
000026A9  83D200            adc dx,byte +0x0
000026AC  FF36BB00          push word [0xbb]
000026B0  52                push dx
000026B1  50                push ax
000026B2  E82D10            call 0x36e2
000026B5  FF36BB00          push word [0xbb]
000026B9  16                push ss
000026BA  8D46FC            lea ax,[bp-0x4]
000026BD  50                push ax
000026BE  B80400            mov ax,0x4
000026C1  50                push ax
000026C2  E80310            call 0x36c8
000026C5  0BC0              or ax,ax
000026C7  7503              jnz 0x26cc
000026C9  E9C300            jmp 0x278f
000026CC  A1C500            mov ax,[0xc5]
000026CF  8B16C700          mov dx,[0xc7]
000026D3  83C044            add ax,byte +0x44
000026D6  83D200            adc dx,byte +0x0
000026D9  FF36BB00          push word [0xbb]
000026DD  52                push dx
000026DE  50                push ax
000026DF  E80010            call 0x36e2
000026E2  FF36BB00          push word [0xbb]
000026E6  16                push ss
000026E7  8D46FA            lea ax,[bp-0x6]
000026EA  50                push ax
000026EB  1372E5            adc si,[bp+si-0x1b]
000026EE  50                push ax
000026EF  E8D60F            call 0x36c8
000026F2  0BC0              or ax,ax
000026F4  7503              jnz 0x26f9
000026F6  E99600            jmp 0x278f
000026F9  8B4EFA            mov cx,[bp-0x6]
000026FC  390E1000          cmp [0x10],cx
00002700  7704              ja 0x2706
00002702  890E1000          mov [0x10],cx
00002706  BF1200            mov di,0x12
00002709  A1C500            mov ax,[0xc5]
0000270C  8B16C700          mov dx,[0xc7]
00002710  0146FC            add [bp-0x4],ax
00002713  1156FE            adc [bp-0x2],dx
00002716  51                push cx
00002717  FF36BB00          push word [0xbb]
0000271B  FF76FE            push word [bp-0x2]
0000271E  FF76FC            push word [bp-0x4]
00002721  E8BE0F            call 0x36e2
00002724  FF36BB00          push word [0xbb]
00002728  16                push ss
00002729  8D46F6            lea ax,[bp-0xa]
0000272C  50                push ax
0000272D  B80400            mov ax,0x4
00002730  50                push ax
00002731  E8940F            call 0x36c8
00002734  0BC0              or ax,ax
00002736  7457              jz 0x278f
00002738  8B46FC            mov ax,[bp-0x4]
0000273B  8B56FE            mov dx,[bp-0x2]
0000273E  83C008            add ax,byte +0x8
00002741  83D200            adc dx,byte +0x0
00002744  FF36BB00          push word [0xbb]
00002748  52                push dx
00002749  50                push ax
0000274A  E8950F            call 0x36e2
0000274D  FF36BB00          push word [0xbb]
00002751  16                push ss
00002752  8D46F2            lea ax,[bp-0xe]
00002755  50                push ax
00002756  B80400            mov ax,0x4
00002759  50                push ax
0000275A  E86B0F            call 0x36c8
0000275D  0BC0              or ax,ax
0000275F  742E              jz 0x278f
00002761  8B46F2            mov ax,[bp-0xe]
00002764  0905              or [di],ax
00002766  83450203          add word [di+0x2],byte +0x3
0000276A  836502FC          and word [di+0x2],byte -0x4
0000276E  8B46F6            mov ax,[bp-0xa]
00002771  8B56F8            mov dx,[bp-0x8]
00002774  0BD2              or dx,dx
00002776  7517              jnz 0x278f
00002778  014502            add [di+0x2],ax
0000277B  7212              jc 0x278f
0000277D  8346FC18          add word [bp-0x4],byte +0x18
00002781  8356FE00          adc word [bp-0x2],byte +0x0
00002785  83C708            add di,byte +0x8
00002788  59                pop cx
00002789  E28B              loop 0x2716
0000278B  8BE5              mov sp,bp
0000278D  5D                pop bp
0000278E  C3                ret
0000278F  0E                push cs
00002790  B8EF00            mov ax,0xef
00002793  50                push ax
00002794  E87C0D            call 0x3513
00002797  8B0E1000          mov cx,[0x10]
0000279B  BF1200            mov di,0x12
0000279E  51                push cx
0000279F  F7054000          test word [di],0x40
000027A3  7516              jnz 0x27bb
000027A5  E8150D            call 0x34bd
000027A8  FF7502            push word [di+0x2]
000027AB  E8570C            call 0x3405
000027AE  894504            mov [di+0x4],ax
000027B1  895506            mov [di+0x6],dx
000027B4  83C708            add di,byte +0x8
000027B7  59                pop cx
000027B8  E2E4              loop 0x279e
000027BA  C3                ret
000027BB  FF7502            push word [di+0x2]
000027BE  E8750C            call 0x3436
000027C1  EBEB              jmp short 0x27ae
000027C3  55                push bp
000027C4  8BEC              mov bp,sp
000027C6  C47E04            les di,[bp+0x4]
000027C9  268A05            mov al,[es:di]
000027CC  0AC0              or al,al
000027CE  7418              jz 0x27e8
000027D0  3CFF              cmp al,0xff
000027D2  7424              jz 0x27f8
000027D4  47                inc di
000027D5  893EBD00          mov [0xbd],di
000027D9  8C06BF00          mov [0xbf],es
000027DD  06                push es
000027DE  57                push di
000027DF  E81A00            call 0x27fc
000027E2  E8BE00            call 0x28a3
000027E5  FF5608            call [bp+0x8]
000027E8  33C0              xor ax,ax
000027EA  5F                pop di
000027EB  58                pop ax
000027EC  C3                ret
000027ED  C47E04            les di,[bp+0x4]
000027F0  47                inc di
000027F1  F2AE              repne scasb
000027F3  897E04            mov [bp+0x4],di
000027F6  EBD1              jmp short 0x27c9
000027F8  5D                pop bp
000027F9  C20600            ret 0x6
000027FC  55                push bp
000027FD  8BEC              mov bp,sp
000027FF  83C4E6            add sp,byte -0x1a
00002802  33C0              xor ax,ax
00002804  5F                pop di
00002805  58                pop ax
00002806  C3                ret
00002807  C47E04            les di,[bp+0x4]
0000280A  1E                push ds
0000280B  07                pop es
0000280C  8BD9              mov bx,cx
0000280E  49                dec cx
0000280F  894EFE            mov [bp-0x2],cx
00002812  FF36BB00          push word [0xbb]
00002816  33C0              xor ax,ax
00002818  50                push ax
00002819  B83C00            mov ax,0x3c
0000281C  50                push ax
0000281D  E8C20E            call 0x36e2
00002820  FF36BB00          push word [0xbb]
00002824  16                push ss
00002825  8D46FA            lea ax,[bp-0x6]
00002828  50                push ax
00002829  1304              adc ax,[si]
0000282B  0050E8            add [bx+si-0x18],dl
0000282E  98                cbw
0000282F  0E                push cs
00002830  8B46FA            mov ax,[bp-0x6]
00002833  0B46FC            or ax,[bp-0x4]
00002836  7465              jz 0x289d
00002838  FF36BB00          push word [0xbb]
0000283C  FF76FC            push word [bp-0x4]
0000283F  FF76FA            push word [bp-0x6]
00002842  E89D0E            call 0x36e2
00002845  FF36BB00          push word [0xbb]
00002849  16                push ss
0000284A  8D46F8            lea ax,[bp-0x8]
0000284D  50                push ax
0000284E  1372E5            adc si,[bp+si-0x1b]
00002851  50                push ax
00002852  E8730E            call 0x36c8
00002855  FF36BB00          push word [0xbb]
00002859  16                push ss
0000285A  8D46E6            lea ax,[bp-0x1a]
0000285D  50                push ax
0000285E  B812E5            mov ax,0xe512
00002861  50                push ax
00002862  E8630E            call 0x36c8
00002865  8CD0              mov ax,ss
00002867  8EC0              mov es,ax
00002869  8D7EEA            lea di,[bp-0x16]
0000286C  1E                push ds
0000286D  C57604            lds si,[bp+0x4]
00002870  8B4EFE            mov cx,[bp-0x2]
00002873  F3A6              repe cmpsb
00002875  1F                pop ds
00002876  740D              jz 0x2885
00002878  FF4EF8            dec word [bp-0x8]
0000287B  75D8              jnz 0x2855
0000287D  0E                push cs
0000287E  B8D6E5            mov ax,0xe5d6
00002881  50                push ax
00002882  E88E0C            call 0x3513
00002885  8B46E6            mov ax,[bp-0x1a]
00002888  A3C100            mov [0xc1],ax
0000288B  A3C500            mov [0xc5],ax
0000288E  8B46E8            mov ax,[bp-0x18]
00002891  A3C300            mov [0xc3],ax
00002894  A3C700            mov [0xc7],ax
00002897  8BE5              mov sp,bp
00002899  5D                pop bp
0000289A  C20400            ret 0x4
0000289D  BA5D01            mov dx,0x15d
000028A0  E95A0C            jmp 0x34fd
000028A3  55                push bp
000028A4  8BEC              mov bp,sp
000028A6  83C4FE            add sp,byte -0x2
000028A9  FF36BB00          push word [0xbb]
000028AD  FF36C300          push word [0xc3]
000028B1  FF36C100          push word [0xc1]
000028B5  E82A0E            call 0x36e2
000028B8  FF36BB00          push word [0xbb]
000028BC  16                push ss
000028BD  8D46FE            lea ax,[bp-0x2]
000028C0  50                push ax
000028C1  1372E5            adc si,[bp+si-0x1b]
000028C4  50                push ax
000028C5  E8000E            call 0x36c8
000028C8  0BC0              or ax,ax
000028CA  7476              jz 0x2942
000028CC  817EFE4D5A        cmp word [bp-0x2],0x5a4d
000028D1  7564              jnz 0x2937
000028D3  B83C00            mov ax,0x3c
000028D6  33D2              xor dx,dx
000028D8  0306C100          add ax,[0xc1]
000028DC  1316C300          adc dx,[0xc3]
000028E0  FF36BB00          push word [0xbb]
000028E4  52                push dx
000028E5  50                push ax
000028E6  E8F90D            call 0x36e2
000028E9  FF36BB00          push word [0xbb]
000028ED  0E                push cs
000028EE  B8C500            mov ax,0xc5
000028F1  50                push ax
000028F2  1304              adc ax,[si]
000028F4  0050E8            add [bx+si-0x18],dl
000028F7  CF                iret
000028F8  0D0BC0            or ax,0xc00b
000028FB  7445              jz 0x2942
000028FD  A1C500            mov ax,[0xc5]
00002900  0B16C700          or dx,[0xc7]
00002904  7444              jz 0x294a
00002906  A1C100            mov ax,[0xc1]
00002909  0106C500          add [0xc5],ax
0000290D  A1C300            mov ax,[0xc3]
00002910  0106C700          add [0xc7],ax
00002914  FF36BB00          push word [0xbb]
00002918  FF36C700          push word [0xc7]
0000291C  FF36C500          push word [0xc5]
00002920  E8BF0D            call 0x36e2
00002923  FF36BB00          push word [0xbb]
00002927  16                push ss
00002928  8D46FE            lea ax,[bp-0x2]
0000292B  50                push ax
0000292C  1372E5            adc si,[bp+si-0x1b]
0000292F  50                push ax
00002930  E8950D            call 0x36c8
00002933  0BC0              or ax,ax
00002935  740B              jz 0x2942
00002937  817EFE4C58        cmp word [bp-0x2],0x584c
0000293C  750C              jnz 0x294a
0000293E  8BE5              mov sp,bp
00002940  5D                pop bp
00002941  C3                ret
00002942  0E                push cs
00002943  B8EF00            mov ax,0xef
00002946  50                push ax
00002947  E8C90B            call 0x3513
0000294A  0E                push cs
0000294B  B80A01            mov ax,0x10a
0000294E  50                push ax
0000294F  E8C10B            call 0x3513
00002952  B8A019            mov ax,0x19a0
00002955  50                push ax
00002956  E8DD0A            call 0x3436
00002959  8EC2              mov es,dx
0000295B  33FF              xor di,di
0000295D  33F6              xor si,si
0000295F  B9A019            mov cx,0x19a0
00002962  FC                cld
00002963  F3A4              rep movsb
00002965  8ED2              mov ss,dx
00002967  8EDA              mov ds,dx
00002969  58                pop ax
0000296A  52                push dx
0000296B  50                push ax
0000296C  CB                retf
0000296D  1E                push ds
0000296E  FF360C00          push word [0xc]
00002972  E8C10A            call 0x3436
00002975  8EC2              mov es,dx
00002977  8BF8              mov di,ax
00002979  87060800          xchg ax,[0x8]
0000297D  87160A00          xchg dx,[0xa]
00002981  8B0E0C00          mov cx,[0xc]
00002985  8EDA              mov ds,dx
00002987  8BF0              mov si,ax
00002989  F3A4              rep movsb
0000298B  1F                pop ds
0000298C  C3                ret
0000298D  55                push bp
0000298E  8BEC              mov bp,sp
00002990  83C4F8            add sp,byte -0x8
00002993  C41E0400          les bx,[0x4]
00002997  0826F647          or [0x47f6],ah
0000299B  7503              jnz 0x29a0
0000299D  E987FC            jmp 0x2627
000029A0  26C45F04          les bx,[es:bx+0x4]
000029A4  268B4718          mov ax,[es:bx+0x18]
000029A8  0BC0              or ax,ax
000029AA  7479              jz 0x2a25
000029AC  268B571C          mov dx,[es:bx+0x1c]
000029B0  8956FC            mov [bp-0x4],dx
000029B3  26FF7742          push word [es:bx+0x42]
000029B7  26FF7740          push word [es:bx+0x40]
000029BB  50                push ax
000029BC  E8FA08            call 0x32b9
000029BF  268B4704          mov ax,[es:bx+0x4]
000029C3  0146FC            add [bp-0x4],ax
000029C6  268B5706          mov dx,[es:bx+0x6]
000029CA  8956FE            mov [bp-0x2],dx
000029CD  C41E0400          les bx,[0x4]
000029D1  26C45F04          les bx,[es:bx+0x4]
000029D5  268B4720          mov ax,[es:bx+0x20]
000029D9  0BC0              or ax,ax
000029DB  744E              jz 0x2a2b
000029DD  26FF7742          push word [es:bx+0x42]
000029E1  26FF7740          push word [es:bx+0x40]
000029E5  50                push ax
000029E6  E8D008            call 0x32b9
000029E9  268B4704          mov ax,[es:bx+0x4]
000029ED  268B5706          mov dx,[es:bx+0x6]
000029F1  C41E0400          les bx,[0x4]
000029F5  26C45F04          les bx,[es:bx+0x4]
000029F9  26034724          add ax,[es:bx+0x24]
000029FD  8946F8            mov [bp-0x8],ax
00002A00  8956FA            mov [bp-0x6],dx
00002A03  E84A09            call 0x3350
00002A06  A1B800            mov ax,[0xb8]
00002A09  A4                movsb
00002A0A  06                push es
00002A0B  0E                push cs
00002A0C  008E1E0E          add [bp+0xe1e],cl
00002A10  00A30200          add [bp+di+0x2],ah
00002A14  8B46FC            mov ax,[bp-0x4]
00002A17  8B56FE            mov dx,[bp-0x2]
00002A1A  8B7EF8            mov di,[bp-0x8]
00002A1D  8E56FA            mov ss,[bp-0x6]
00002A20  8BE7              mov sp,di
00002A22  52                push dx
00002A23  50                push ax
00002A24  CB                retf
00002A25  BA8C01            mov dx,0x18c
00002A28  E9D20A            jmp 0x34fd
00002A2B  BAA701            mov dx,0x1a7
00002A2E  E9CC0A            jmp 0x34fd
00002A31  B8010D            mov ax,0xd01
00002A34  50                push ax
00002A35  FF360A00          push word [0xa]
00002A39  FF360800          push word [0x8]
00002A3D  E883FD            call 0x27c3
00002A40  F606010301        test byte [0x301],0x1
00002A45  CF                iret
00002A46  3C22              cmp al,0x22
00002A48  F002E8            lock add ch,al
00002A4B  D503              aad 0x3
00002A4D  803EBA001F        cmp byte [0xba],0x1f
00002A52  7407              jz 0x2a5b
00002A54  E9D0FB            jmp 0x2627
00002A57  C3                ret
00002A58  55                push bp
00002A59  8BEC              mov bp,sp
00002A5B  83C4FC            add sp,byte -0x4
00002A5E  B84500            mov ax,0x45
00002A61  01E8              add ax,bp
00002A63  D109              ror word [bx+di],1
00002A65  8946FC            mov [bp-0x4],ax
00002A68  8956FE            mov [bp-0x2],dx
00002A6B  FF76FE            push word [bp-0x2]
00002A6E  FF76FC            push word [bp-0x4]
00002A71  E81F00            call 0x2a93
00002A74  FF76FE            push word [bp-0x2]
00002A77  FF76FC            push word [bp-0x4]
00002A7A  E85701            call 0x2bd4
00002A7D  FF76FE            push word [bp-0x2]
00002A80  FF76FC            push word [bp-0x4]
00002A83  E8C601            call 0x2c4c
00002A86  FF76FE            push word [bp-0x2]
00002A89  FF76FC            push word [bp-0x4]
00002A8C  E89608            call 0x3325
00002A8F  8BE5              mov sp,bp
00002A91  5D                pop bp
00002A92  C3                ret
00002A93  55                push bp
00002A94  8BEC              mov bp,sp
00002A96  83C4FC            add sp,byte -0x4
00002A99  FF36BB00          push word [0xbb]
00002A9D  FF36C700          push word [0xc7]
00002AA1  FF36C500          push word [0xc5]
00002AA5  E83A0C            call 0x36e2
00002AA8  B8B000            mov ax,0xb0
00002AAB  01E8              add ax,bp
00002AAD  8709              xchg cx,[bx+di]
00002AAF  8946FC            mov [bp-0x4],ax
00002AB2  8956FE            mov [bp-0x2],dx
00002AB5  FF36BB00          push word [0xbb]
00002AB9  52                push dx
00002ABA  50                push ax
00002ABB  B8B000            mov ax,0xb0
00002ABE  01E8              add ax,bp
00002AC0  06                push es
00002AC1  0C0B              or al,0xb
00002AC3  C0                db 0xc0
00002AC4  7503              jnz 0x2ac9
00002AC6  E9DF00            jmp 0x2ba8
00002AC9  C45EFC            les bx,[bp-0x4]
00002ACC  268B4740          mov ax,[es:bx+0x40]
00002AD0  268B5742          mov dx,[es:bx+0x42]
00002AD4  0306C500          add ax,[0xc5]
00002AD8  1316C700          adc dx,[0xc7]
00002ADC  FF36BB00          push word [0xbb]
00002AE0  52                push dx
00002AE1  50                push ax
00002AE2  E8FD0B            call 0x36e2
00002AE5  C45EFC            les bx,[bp-0x4]
00002AE8  268B4738          mov ax,[es:bx+0x38]
00002AEC  262B4730          sub ax,[es:bx+0x30]
00002AF0  50                push ax
00002AF1  E84209            call 0x3436
00002AF4  8BC8              mov cx,ax
00002AF6  C45EFC            les bx,[bp-0x4]
00002AF9  262B4F40          sub cx,[es:bx+0x40]
00002AFD  26014F40          add [es:bx+0x40],cx
00002B01  26895742          mov [es:bx+0x42],dx
00002B05  26014F48          add [es:bx+0x48],cx
00002B09  2689574A          mov [es:bx+0x4a],dx
00002B0D  26014F58          add [es:bx+0x58],cx
00002B11  2689575A          mov [es:bx+0x5a],dx
00002B15  26014F5C          add [es:bx+0x5c],cx
00002B19  2689575E          mov [es:bx+0x5e],dx
00002B1D  268B4F38          mov cx,[es:bx+0x38]
00002B21  262B4F30          sub cx,[es:bx+0x30]
00002B25  FF36BB00          push word [0xbb]
00002B29  52                push dx
00002B2A  50                push ax
00002B2B  51                push cx
00002B2C  E8990B            call 0x36c8
00002B2F  0BC0              or ax,ax
00002B31  7475              jz 0x2ba8
00002B33  C45EFC            les bx,[bp-0x4]
00002B36  26FF7730          push word [es:bx+0x30]
00002B3A  E8F908            call 0x3436
00002B3D  8BC8              mov cx,ax
00002B3F  C45EFC            les bx,[bp-0x4]
00002B42  262B4F68          sub cx,[es:bx+0x68]
00002B46  26014F68          add [es:bx+0x68],cx
00002B4A  2689576A          mov [es:bx+0x6a],dx
00002B4E  26014F6C          add [es:bx+0x6c],cx
00002B52  2689576E          mov [es:bx+0x6e],dx
00002B56  26014F70          add [es:bx+0x70],cx
00002B5A  26895772          mov [es:bx+0x72],dx
00002B5E  26014F78          add [es:bx+0x78],cx
00002B62  2689577A          mov [es:bx+0x7a],dx
00002B66  FF36BB00          push word [0xbb]
00002B6A  52                push dx
00002B6B  50                push ax
00002B6C  26FF7730          push word [es:bx+0x30]
00002B70  E8550B            call 0x36c8
00002B73  0BC0              or ax,ax
00002B75  7431              jz 0x2ba8
00002B77  C45E04            les bx,[bp+0x4]
00002B7A  8B46FC            mov ax,[bp-0x4]
00002B7D  26894704          mov [es:bx+0x4],ax
00002B81  8B46FE            mov ax,[bp-0x2]
00002B84  26894706          mov [es:bx+0x6],ax
00002B88  06                push es
00002B89  53                push bx
00002B8A  FF76FE            push word [bp-0x2]
00002B8D  FF76FC            push word [bp-0x4]
00002B90  E82500            call 0x2bb8
00002B93  C45E04            les bx,[bp+0x4]
00002B96  06                push es
00002B97  8D4708            lea ax,[bx+0x8]
00002B9A  50                push ax
00002B9B  E84F07            call 0x32ed
00002B9E  0BC2              or ax,dx
00002BA0  750E              jnz 0x2bb0
00002BA2  8BE5              mov sp,bp
00002BA4  5D                pop bp
00002BA5  C20400            ret 0x4
00002BA8  0E                push cs
00002BA9  B8EF00            mov ax,0xef
00002BAC  50                push ax
00002BAD  E86309            call 0x3513
00002BB0  0E                push cs
00002BB1  B81A01            mov ax,0x11a
00002BB4  50                push ax
00002BB5  E85B09            call 0x3513
00002BB8  55                push bp
00002BB9  8BEC              mov bp,sp
00002BBB  1E                push ds
00002BBC  C57604            lds si,[bp+0x4]
00002BBF  C57458            lds si,[si+0x58]
00002BC2  8A0C              mov cl,[si]
00002BC4  32ED              xor ch,ch
00002BC6  41                inc cx
00002BC7  C47E08            les di,[bp+0x8]
00002BCA  8D7D08            lea di,[di+0x8]
00002BCD  F3A4              rep movsb
00002BCF  1F                pop ds
00002BD0  5D                pop bp
00002BD1  C20800            ret 0x8
00002BD4  55                push bp
00002BD5  8BEC              mov bp,sp
00002BD7  83C4FA            add sp,byte -0x6
00002BDA  C746FE0100        mov word [bp-0x2],0x1
00002BDF  C47E04            les di,[bp+0x4]
00002BE2  26C45D04          les bx,[es:di+0x4]
00002BE6  268B4F44          mov cx,[es:bx+0x44]
00002BEA  E31D              jcxz 0x2c09
00002BEC  26C45F40          les bx,[es:bx+0x40]
00002BF0  895EFA            mov [bp-0x6],bx
00002BF3  8C46FC            mov [bp-0x4],es
00002BF6  51                push cx
00002BF7  FF76FC            push word [bp-0x4]
00002BFA  FF76FA            push word [bp-0x6]
00002BFD  FF76FE            push word [bp-0x2]
00002C00  F1                int1
00002C01  E8EAFF            call 0x2bee
00002C04  46                inc si
00002C05  FE                db 0xfe
00002C06  59                pop cx
00002C07  E2ED              loop 0x2bf6
00002C09  8BE5              mov sp,bp
00002C0B  5D                pop bp
00002C0C  C20400            ret 0x4
00002C0F  55                push bp
00002C10  8BEC              mov bp,sp
00002C12  FF7608            push word [bp+0x8]
00002C15  FF7606            push word [bp+0x6]
00002C18  FF7604            push word [bp+0x4]
00002C1B  E89B06            call 0x32b9
00002C1E  BF1200            mov di,0x12
00002C21  8B4E04            mov cx,[bp+0x4]
00002C24  49                dec cx
00002C25  E305              jcxz 0x2c2c
00002C27  83C708            add di,byte +0x8
00002C2A  E2FB              loop 0x2c27
00002C2C  83450403          add word [di+0x4],byte +0x3
00002C30  836504FC          and word [di+0x4],byte -0x4
00002C34  8B4504            mov ax,[di+0x4]
00002C37  26894704          mov [es:bx+0x4],ax
00002C3B  8B4506            mov ax,[di+0x6]
00002C3E  26894706          mov [es:bx+0x6],ax
00002C42  268B07            mov ax,[es:bx]
00002C45  014504            add [di+0x4],ax
00002C48  5D                pop bp
00002C49  C20600            ret 0x6
00002C4C  55                push bp
00002C4D  8BEC              mov bp,sp
00002C4F  83C4F4            add sp,byte -0xc
00002C52  C45E04            les bx,[bp+0x4]
00002C55  26C45F04          les bx,[es:bx+0x4]
00002C59  895EFC            mov [bp-0x4],bx
00002C5C  8C46FE            mov [bp-0x2],es
00002C5F  268B4F44          mov cx,[es:bx+0x44]
00002C63  E33C              jcxz 0x2ca1
00002C65  268B7748          mov si,[es:bx+0x48]
00002C69  26C45F40          les bx,[es:bx+0x40]
00002C6D  8976F4            mov [bp-0xc],si
00002C70  8C46F6            mov [bp-0xa],es
00002C73  895EF8            mov [bp-0x8],bx
00002C76  8C46FA            mov [bp-0x6],es
00002C79  51                push cx
00002C7A  C45EF8            les bx,[bp-0x8]
00002C7D  8B76F4            mov si,[bp-0xc]
00002C80  268B470C          mov ax,[es:bx+0xc]
00002C84  48                dec ax
00002C85  D1E0              shl ax,1
00002C87  D1E0              shl ax,1
00002C89  D1E0              shl ax,1
00002C8B  03F0              add si,ax
00002C8D  FF76FE            push word [bp-0x2]
00002C90  FF76FC            push word [bp-0x4]
00002C93  06                push es
00002C94  53                push bx
00002C95  06                push es
00002C96  56                push si
00002C97  E80D00            call 0x2ca7
00002C9A  8346F818          add word [bp-0x8],byte +0x18
00002C9E  59                pop cx
00002C9F  E2D8              loop 0x2c79
00002CA1  8BE5              mov sp,bp
00002CA3  5D                pop bp
00002CA4  C20400            ret 0x4
00002CA7  55                push bp
00002CA8  8BEC              mov bp,sp
00002CAA  83C4F8            add sp,byte -0x8
00002CAD  C45E08            les bx,[bp+0x8]
00002CB0  268B4704          mov ax,[es:bx+0x4]
00002CB4  8946FA            mov [bp-0x6],ax
00002CB7  268B4706          mov ax,[es:bx+0x6]
00002CBB  8946FC            mov [bp-0x4],ax
00002CBE  268B07            mov ax,[es:bx]
00002CC1  8946F8            mov [bp-0x8],ax
00002CC4  268B4F10          mov cx,[es:bx+0x10]
00002CC8  E35E              jcxz 0x2d28
00002CCA  51                push cx
00002CCB  C47604            les si,[bp+0x4]
00002CCE  268B14            mov dx,[es:si]
00002CD1  268B4C02          mov cx,[es:si+0x2]
00002CD5  C45E0C            les bx,[bp+0xc]
00002CD8  268B472C          mov ax,[es:bx+0x2c]
00002CDC  D1E2              shl dx,1
00002CDE  D1D1              rcl cx,1
00002CE0  48                dec ax
00002CE1  75F9              jnz 0x2cdc
00002CE3  2603972E83        add dx,[es:bx-0x7cd2]
00002CE8  3E138F8200        adc cx,[ds:bx+0x82]
00002CED  FF36BB00          push word [0xbb]
00002CF1  51                push cx
00002CF2  52                push dx
00002CF3  E8EC09            call 0x36e2
00002CF6  C47604            les si,[bp+0x4]
00002CF9  268B4C04          mov cx,[es:si+0x4]
00002CFD  3B4EF8            cmp cx,[bp-0x8]
00002D00  7203              jc 0x2d05
00002D02  8B4EF8            mov cx,[bp-0x8]
00002D05  894EFE            mov [bp-0x2],cx
00002D08  FF36BB00          push word [0xbb]
00002D0C  FF76FC            push word [bp-0x4]
00002D0F  FF76FA            push word [bp-0x6]
00002D12  FF76FE            push word [bp-0x2]
00002D15  F1                int1
00002D16  B009              mov al,0x9
00002D18  8B46FE            mov ax,[bp-0x2]
00002D1B  0146FA            add [bp-0x6],ax
00002D1E  2946F8            sub [bp-0x8],ax
00002D21  83460408          add word [bp+0x4],byte +0x8
00002D25  59                pop cx
00002D26  E2A2              loop 0x2cca
00002D28  8B4EF8            mov cx,[bp-0x8]
00002D2B  E307              jcxz 0x2d34
00002D2D  C47EFA            les di,[bp-0x6]
00002D30  32C0              xor al,al
00002D32  F3AA              rep stosb
00002D34  8BE5              mov sp,bp
00002D36  5D                pop bp
00002D37  C20C00            ret 0xc
00002D3A  55                push bp
00002D3B  8BEC              mov bp,sp
00002D3D  83C4FE            add sp,byte -0x2
00002D40  FF36C900          push word [0xc9]
00002D44  0E                push cs
00002D45  B80203            mov ax,0x302
00002D48  50                push ax
00002D49  E8E408            call 0x3630
00002D4C  0E                push cs
00002D4D  B85A04            mov ax,0x45a
00002D50  50                push ax
00002D51  E83609            call 0x368a
00002D54  0BC0              or ax,ax
00002D56  7432              jz 0x2d8a
00002D58  A3C900            mov [0xc9],ax
00002D5B  0E                push cs
00002D5C  B8CC03            mov ax,0x3cc
00002D5F  50                push ax
00002D60  E8CD08            call 0x3630
00002D63  BF1200            mov di,0x12
00002D66  C746FE0100        mov word [bp-0x2],0x1
00002D6B  8B0E1000          mov cx,[0x10]
00002D6F  8B4506            mov ax,[di+0x6]
00002D72  51                push cx
00002D73  FF76FE            push word [bp-0x2]
00002D76  50                push ax
00002D77  E81800            call 0x2d92
00002D7A  59                pop cx
00002D7B  FF46FE            inc word [bp-0x2]
00002D7E  83C708            add di,byte +0x8
00002D81  E2EC              loop 0x2d6f
00002D83  FF36C900          push word [0xc9]
00002D87  E82C09            call 0x36b6
00002D8A  8F06C900          pop word [0xc9]
00002D8E  8BE5              mov sp,bp
00002D90  5D                pop bp
00002D91  C3                ret
00002D92  55                push bp
00002D93  8BEC              mov bp,sp
00002D95  1E                push ds
00002D96  57                push di
00002D97  56                push si
00002D98  C43E0400          les di,[0x4]
00002D9C  0826F6C7          or [0xc7f6],ah
00002DA0  7479              jz 0x2e1b
00002DA2  06                push es
00002DA3  57                push di
00002DA4  26C47D04          les di,[es:di+0x4]
00002DA8  268B4544          mov ax,[es:di+0x44]
00002DAC  3B4606            cmp ax,[bp+0x6]
00002DAF  7263              jc 0x2e14
00002DB1  26C57558          lds si,[es:di+0x58]
00002DB5  8A1C              mov bl,[si]
00002DB7  0ADB              or bl,bl
00002DB9  7459              jz 0x2e14
00002DBB  32FF              xor bh,bh
00002DBD  8B4001            mov ax,[bx+si+0x1]
00002DC0  0BC0              or ax,ax
00002DC2  7445              jz 0x2e09
00002DC4  26FF7542          push word [es:di+0x42]
00002DC8  26FF7540          push word [es:di+0x40]
00002DCC  26FF755E          push word [es:di+0x5e]
00002DD0  26FF755C          push word [es:di+0x5c]
00002DD4  50                push ax
00002DD5  E82304            call 0x31fb
00002DD8  3B5604            cmp dx,[bp+0x4]
00002DDB  752C              jnz 0x2e09
00002DDD  50                push ax
00002DDE  52                push dx
00002DDF  0E                push cs
00002DE0  B85004            mov ax,0x450
00002DE3  50                push ax
00002DE4  E84908            call 0x3630
00002DE7  5A                pop dx
00002DE8  52                push dx
00002DE9  E8D407            call 0x35c0
00002DEC  0E                push cs
00002DED  B85804            mov ax,0x458
00002DF0  50                push ax
00002DF1  E83C08            call 0x3630
00002DF4  58                pop ax
00002DF5  50                push ax
00002DF6  E8C707            call 0x35c0
00002DF9  0E                push cs
00002DFA  B85004            mov ax,0x450
00002DFD  50                push ax
00002DFE  E82F08            call 0x3630
00002E01  1E                push ds
00002E02  56                push si
00002E03  E80D08            call 0x3613
00002E06  E84308            call 0x364c
00002E09  8A04              mov al,[si]
00002E0B  32E4              xor ah,ah
00002E0D  03F0              add si,ax
00002E0F  83C603            add si,byte +0x3
00002E12  EBA1              jmp short 0x2db5
00002E14  5F                pop di
00002E15  07                pop es
00002E16  26C43D            les di,[es:di]
00002E19  EB81              jmp short 0x2d9c
00002E1B  5E                pop si
00002E1C  5F                pop di
00002E1D  1F                pop ds
00002E1E  5D                pop bp
00002E1F  C20400            ret 0x4
00002E22  C43E0400          les di,[0x4]
00002E26  0826F6C7          or [0xc7f6],ah
00002E2A  7414              jz 0x2e40
00002E2C  06                push es
00002E2D  57                push di
00002E2E  26FF7506          push word [es:di+0x6]
00002E32  26FF7504          push word [es:di+0x4]
00002E36  E80800            call 0x2e41
00002E39  5F                pop di
00002E3A  07                pop es
00002E3B  26C43D            les di,[es:di]
00002E3E  EBE6              jmp short 0x2e26
00002E40  C3                ret
00002E41  55                push bp
00002E42  8BEC              mov bp,sp
00002E44  83C4FC            add sp,byte -0x4
00002E47  C45E04            les bx,[bp+0x4]
00002E4A  268B4F44          mov cx,[es:bx+0x44]
00002E4E  26C45F40          les bx,[es:bx+0x40]
00002E52  895EFC            mov [bp-0x4],bx
00002E55  8C46FE            mov [bp-0x2],es
00002E58  51                push cx
00002E59  FF7606            push word [bp+0x6]
00002E5C  FF7604            push word [bp+0x4]
00002E5F  FF76FE            push word [bp-0x2]
00002E62  FF76FC            push word [bp-0x4]
00002E65  E80D00            call 0x2e75
00002E68  8346FC18          add word [bp-0x4],byte +0x18
00002E6C  59                pop cx
00002E6D  E2E9              loop 0x2e58
00002E6F  8BE5              mov sp,bp
00002E71  5D                pop bp
00002E72  C20400            ret 0x4
00002E75  55                push bp
00002E76  8BEC              mov bp,sp
00002E78  83C4F8            add sp,byte -0x8
00002E7B  C45E04            les bx,[bp+0x4]
00002E7E  268B4F10          mov cx,[es:bx+0x10]
00002E82  E34D              jcxz 0x2ed1
00002E84  268B4704          mov ax,[es:bx+0x4]
00002E88  8946FC            mov [bp-0x4],ax
00002E8B  268B4706          mov ax,[es:bx+0x6]
00002E8F  8946FE            mov [bp-0x2],ax
00002E92  268B570C          mov dx,[es:bx+0xc]
00002E96  4A                dec dx
00002E97  D1E2              shl dx,1
00002E99  D1E2              shl dx,1
00002E9B  C45E08            les bx,[bp+0x8]
00002E9E  26C45F68          les bx,[es:bx+0x68]
00002EA2  03D3              add dx,bx
00002EA4  8956F8            mov [bp-0x8],dx
00002EA7  8C46FA            mov [bp-0x6],es
00002EAA  51                push cx
00002EAB  FF760A            push word [bp+0xa]
00002EAE  FF7608            push word [bp+0x8]
00002EB1  FF76FA            push word [bp-0x6]
00002EB4  FF76F8            push word [bp-0x8]
00002EB7  FF76FE            push word [bp-0x2]
00002EBA  FF76FC            push word [bp-0x4]
00002EBD  E81700            call 0x2ed7
00002EC0  C45E08            les bx,[bp+0x8]
00002EC3  268B4728          mov ax,[es:bx+0x28]
00002EC7  0146FC            add [bp-0x4],ax
00002ECA  8346F804          add word [bp-0x8],byte +0x4
00002ECE  59                pop cx
00002ECF  E2D9              loop 0x2eaa
00002ED1  8BE5              mov sp,bp
00002ED3  5D                pop bp
00002ED4  C20800            ret 0x8
00002ED7  55                push bp
00002ED8  8BEC              mov bp,sp
00002EDA  83C4FC            add sp,byte -0x4
00002EDD  C45E0C            les bx,[bp+0xc]
00002EE0  268B476C          mov ax,[es:bx+0x6c]
00002EE4  C47608            les si,[bp+0x8]
00002EE7  268B14            mov dx,[es:si]
00002EEA  03D0              add dx,ax
00002EEC  8956FE            mov [bp-0x2],dx
00002EEF  268B5404          mov dx,[es:si+0x4]
00002EF3  03D0              add dx,ax
00002EF5  8956FC            mov [bp-0x4],dx
00002EF8  8B76FE            mov si,[bp-0x2]
00002EFB  3B76FC            cmp si,[bp-0x4]
00002EFE  7319              jnc 0x2f19
00002F00  8B460A            mov ax,[bp+0xa]
00002F03  FF760E            push word [bp+0xe]
00002F06  FF760C            push word [bp+0xc]
00002F09  50                push ax
00002F0A  56                push si
00002F0B  FF7606            push word [bp+0x6]
00002F0E  FF7604            push word [bp+0x4]
00002F11  E80B00            call 0x2f1f
00002F14  8946FE            mov [bp-0x2],ax
00002F17  EBDF              jmp short 0x2ef8
00002F19  8BE5              mov sp,bp
00002F1B  5D                pop bp
00002F1C  C20C00            ret 0xc
00002F1F  55                push bp
00002F20  8BEC              mov bp,sp
00002F22  83C4EE            add sp,byte -0x12
00002F25  1E                push ds
00002F26  C57608            lds si,[bp+0x8]
00002F29  AC                lodsb
00002F2A  8846F9            mov [bp-0x7],al
00002F2D  AC                lodsb
00002F2E  8846F8            mov [bp-0x8],al
00002F31  F646F920          test byte [bp-0x7],0x20
00002F35  7408              jz 0x2f3f
00002F37  33C0              xor ax,ax
00002F39  AC                lodsb
00002F3A  8946F6            mov [bp-0xa],ax
00002F3D  EB0C              jmp short 0x2f4b
00002F3F  C7464F4348        mov word [bp+0x4f],0x4843
00002F44  8976F2            mov [bp-0xe],si
00002F47  8C5EF4            mov [bp-0xc],ds
00002F4A  AD                lodsw
00002F4B  F646F80E          test byte [bp-0x8],0xe
00002F4F  1F                pop ds
00002F50  BEADEB            mov si,0xebad
00002F53  03AC32E4          add bp,[si-0x1bce]
00002F57  8946FE            mov [bp-0x2],ax
00002F5A  33C0              xor ax,ax
00002F5C  33D2              xor dx,dx
00002F5E  8A5EF8            mov bl,[bp-0x8]
00002F61  80E303            and bl,0x3
00002F64  7445              jz 0x2fab
00002F66  E275              loop 0x2fdd
00002F68  0B8A5EF9          or cx,[bp+si-0x6a2]
00002F6C  80E30F            and bl,0xf
00002F6F  80FB02            cmp bl,0x2
00002F72  7417              jz 0x2f8b
00002F74  F646F880          test byte [bp-0x8],0x80
00002F78  7510              jnz 0x2f8a
00002F7A  F646F810          test byte [bp-0x8],0x10
00002F7E  7503              jnz 0x2f83
00002F80  AD                lodsw
00002F81  EB08              jmp short 0x2f8b
00002F83  AD                lodsw
00002F84  8BD0              mov dx,ax
00002F86  AD                lodsw
00002F87  92                xchg ax,dx
00002F88  EB01              jmp short 0x2f8b
00002F8A  AC                lodsb
00002F8B  8946FA            mov [bp-0x6],ax
00002F8E  8956FC            mov [bp-0x4],dx
00002F91  897608            mov [bp+0x8],si
00002F94  1B2EA093          sbb bp,[0x93a0]
00002F98  8A5EF8            mov bl,[bp-0x8]
00002F9B  83E303            and bx,byte +0x3
00002F9E  D1E3              shl bx,1
00002FA0  FFA77904          jmp [bx+0x479]
00002FA4  C45E0C            les bx,[bp+0xc]
00002FA7  26FF7742          push word [es:bx+0x42]
00002FAB  26FF7740          push word [es:bx+0x40]
00002FAF  FF76FE            push word [bp-0x2]
00002FB2  F1                int1
00002FB3  0403              add al,0x3
00002FB5  268B4704          mov ax,[es:bx+0x4]
00002FB9  0346FA            add ax,[bp-0x6]
00002FBC  268B5706          mov dx,[es:bx+0x6]
00002FC0  EB4A              jmp short 0x300c
00002FC2  FF760E            push word [bp+0xe]
00002FC5  FF760C            push word [bp+0xc]
00002FC8  FF76FE            push word [bp-0x2]
00002FCB  FF76FA            push word [bp-0x6]
00002FCE  E87701            call 0x3148
00002FD1  EB39              jmp short 0x300c
00002FD3  C45E0C            les bx,[bp+0xc]
00002FD6  26C45F78          les bx,[es:bx+0x78]
00002FDA  035EFA            add bx,[bp-0x6]
00002FDD  895EFA            mov [bp-0x6],bx
00002FE0  8C46FC            mov [bp-0x4],es
00002FE3  FF760E            push word [bp+0xe]
00002FE6  FF760C            push word [bp+0xc]
00002FE9  FF76FE            push word [bp-0x2]
00002FEC  06                push es
00002FED  53                push bx
00002FEE  E8DB00            call 0x30cc
00002FF1  EB19              jmp short 0x300c
00002FF3  C45E0C            les bx,[bp+0xc]
00002FF6  26FF7742          push word [es:bx+0x42]
00002FFA  26FF7740          push word [es:bx+0x40]
00002FFE  26FF775E          push word [es:bx+0x5e]
00003002  26FF775C          push word [es:bx+0x5c]
00003006  FF76FE            push word [bp-0x2]
00003009  F1                int1
0000300A  EF                out dx,ax
0000300B  018946EE          add [bx+di-0x11ba],cx
0000300F  8956F0            mov [bp-0x10],dx
00003012  C57608            lds si,[bp+0x8]
00003015  F646F804          test byte [bp-0x8],0x4
00003019  7416              jz 0x3031
0000301B  33D2              xor dx,dx
0000301D  F646F820          test byte [bp-0x8],0x20
00003021  7407              jz 0x302a
00003023  AD                lodsw
00003024  8BD0              mov dx,ax
00003026  AD                lodsw
00003027  92                xchg ax,dx
00003028  EB01              jmp short 0x302b
0000302A  AD                lodsw
0000302B  0146EE            add [bp-0x12],ax
0000302E  1156F0            adc [bp-0x10],dx
00003031  F646F920          test byte [bp-0x7],0x20
00003035  740D              jz 0x3044
00003037  8976F2            mov [bp-0xe],si
0000303A  8C5EF4            mov [bp-0xc],ds
0000303D  8B46F6            mov ax,[bp-0xa]
00003040  D1E0              shl ax,1
00003042  03F0              add si,ax
00003044  897608            mov [bp+0x8],si
00003047  1B2EA093          sbb bp,[0x93a0]
0000304B  803EBA001F        cmp byte [0xba],0x1f
00003050  7570              jnz 0x30c2
00003052  8B46EE            mov ax,[bp-0x12]
00003055  8B56F0            mov dx,[bp-0x10]
00003058  8A5EF9            mov bl,[bp-0x7]
0000305B  83E30F            and bx,byte +0xf
0000305E  D1E3              shl bx,1
00003060  8B9F6704          mov bx,[bx+0x467]
00003064  8B4EF6            mov cx,[bp-0xa]
00003067  51                push cx
00003068  C47EF2            les di,[bp-0xe]
0000306B  268B35            mov si,[es:di]
0000306E  C47E04            les di,[bp+0x4]
00003071  03FE              add di,si
00003073  FFE3              jmp bx
00003075  268805            mov [es:di],al
00003078  EB41              jmp short 0x30bb
0000307A  268915            mov [es:di],dx
0000307D  EB3C              jmp short 0x30bb
0000307F  268905            mov [es:di],ax
00003082  26895502          mov [es:di+0x2],dx
00003086  EB33              jmp short 0x30bb
00003088  268905            mov [es:di],ax
0000308B  EB2E              jmp short 0x30bb
0000308D  268905            mov [es:di],ax
00003090  26895502          mov [es:di+0x2],dx
00003094  EB25              jmp short 0x30bb
00003096  2BC7              sub ax,di
00003098  83E802            sub ax,byte +0x2
0000309B  268905            mov [es:di],ax
0000309E  8CC0              mov ax,es
000030A0  3BC2              cmp ax,dx
000030A2  7417              jz 0x30bb
000030A4  0E                push cs
000030A5  B8A602            mov ax,0x2a6
000030A8  50                push ax
000030A9  FF760E            push word [bp+0xe]
000030AC  FF760C            push word [bp+0xc]
000030AF  FF76FE            push word [bp-0x2]
000030B2  FF76FC            push word [bp-0x4]
000030B5  FF76FA            push word [bp-0x6]
000030B8  E88504            call 0x3540
000030BB  8346F202          add word [bp-0xe],byte +0x2
000030BF  59                pop cx
000030C0  E2A5              loop 0x3067
000030C2  8B4608            mov ax,[bp+0x8]
000030C5  1F                pop ds
000030C6  8BE5              mov sp,bp
000030C8  5D                pop bp
000030C9  C20C00            ret 0xc
000030CC  55                push bp
000030CD  8BEC              mov bp,sp
000030CF  83C4FC            add sp,byte -0x4
000030D2  FF760C            push word [bp+0xc]
000030D5  FF760A            push word [bp+0xa]
000030D8  FF7608            push word [bp+0x8]
000030DB  E8F001            call 0x32ce
000030DE  0430              add al,0x30
000030E0  AA                stosb
000030E1  C2744B            ret 0x4b74
000030E4  8EC2              mov es,dx
000030E6  895EFC            mov [bp-0x4],bx
000030E9  8C46FE            mov [bp-0x2],es
000030EC  26C45F04          les bx,[es:bx+0x4]
000030F0  FF760C            push word [bp+0xc]
000030F3  FF760A            push word [bp+0xa]
000030F6  FF7608            push word [bp+0x8]
000030F9  26FF775A          push word [es:bx+0x5a]
000030FD  26FF7758          push word [es:bx+0x58]
00003101  FF7606            push word [bp+0x6]
00003104  FF7604            push word [bp+0x4]
00003107  E8A900            call 0x31b3
0000310A  0BC0              or ax,ax
0000310C  741B              jz 0x3129
0000310E  C45EFC            les bx,[bp-0x4]
00003111  26C45F04          les bx,[es:bx+0x4]
00003115  26FF7742          push word [es:bx+0x42]
00003119  26FF7740          push word [es:bx+0x40]
0000311D  26FF775E          push word [es:bx+0x5e]
00003121  26FF775C          push word [es:bx+0x5c]
00003125  50                push ax
00003126  E8D200            call 0x31fb
00003129  8BE5              mov sp,bp
0000312B  5D                pop bp
0000312C  C20A00            ret 0xa
0000312F  0E                push cs
00003130  B8CF02            mov ax,0x2cf
00003133  50                push ax
00003134  FF760C            push word [bp+0xc]
00003137  FF760A            push word [bp+0xa]
0000313A  FF7608            push word [bp+0x8]
0000313D  FF7606            push word [bp+0x6]
00003140  FF7604            push word [bp+0x4]
00003143  E8FA03            call 0x3540
00003146  EBE1              jmp short 0x3129
00003148  55                push bp
00003149  8BEC              mov bp,sp
0000314B  FF760A            push word [bp+0xa]
0000314E  FF7608            push word [bp+0x8]
00003151  FF7606            push word [bp+0x6]
00003154  E87701            call 0x32ce
00003157  0430              add al,0x30
00003159  AA                stosb
0000315A  C27420            ret 0x2074
0000315D  8EC2              mov es,dx
0000315F  26C45F04          les bx,[es:bx+0x4]
00003163  26FF7742          push word [es:bx+0x42]
00003167  26FF7740          push word [es:bx+0x40]
0000316B  26FF775E          push word [es:bx+0x5e]
0000316F  26FF775C          push word [es:bx+0x5c]
00003173  FF7604            push word [bp+0x4]
00003176  E88200            call 0x31fb
00003179  5D                pop bp
0000317A  C20800            ret 0x8
0000317D  8B4604            mov ax,[bp+0x4]
00003180  33D2              xor dx,dx
00003182  0E                push cs
00003183  B8CF02            mov ax,0x2cf
00003186  50                push ax
00003187  FF760A            push word [bp+0xa]
0000318A  FF7608            push word [bp+0x8]
0000318D  FF7606            push word [bp+0x6]
00003190  52                push dx
00003191  50                push ax
00003192  E8AB03            call 0x3540
00003195  EBE2              jmp short 0x3179
00003197  55                push bp
00003198  8BEC              mov bp,sp
0000319A  1E                push ds
0000319B  C57606            lds si,[bp+0x6]
0000319E  32E4              xor ah,ah
000031A0  8B4E04            mov cx,[bp+0x4]
000031A3  E305              jcxz 0x31aa
000031A5  AC                lodsb
000031A6  03F0              add si,ax
000031A8  E2FB              loop 0x31a5
000031AA  8BC6              mov ax,si
000031AC  8CDA              mov dx,ds
000031AE  1F                pop ds
000031AF  5D                pop bp
000031B0  C20600            ret 0x6
000031B3  55                push bp
000031B4  8BEC              mov bp,sp
000031B6  1E                push ds
000031B7  C57604            lds si,[bp+0x4]
000031BA  C47E08            les di,[bp+0x8]
000031BD  8BD6              mov dx,si
000031BF  80F901            cmp cl,0x1
000031C2  32ED              xor ch,ch
000031C4  E316              jcxz 0x31dc
000031C6  41                inc cx
000031C7  F3A6              repe cmpsb
000031C9  7409              jz 0x31d4
000031CB  03F9              add di,cx
000031CD  83C702            add di,byte +0x2
000031D0  8BF2              mov si,dx
000031D2  EBEB              jmp short 0x31bf
000031D4  268B05            mov ax,[es:di]
000031D7  1F                pop ds
000031D8  5D                pop bp
000031D9  C20E00            ret 0xe
000031DC  1B2EA093          sbb bp,[0x93a0]
000031E0  0E                push cs
000031E1  B8E802            mov ax,0x2e8
000031E4  50                push ax
000031E5  FF7610            push word [bp+0x10]
000031E8  FF760E            push word [bp+0xe]
000031EB  FF760C            push word [bp+0xc]
000031EE  FF7606            push word [bp+0x6]
000031F1  FF7604            push word [bp+0x4]
000031F4  E84903            call 0x3540
000031F7  33C0              xor ax,ax
000031F9  EBDC              jmp short 0x31d7
000031FB  55                push bp
000031FC  8BEC              mov bp,sp
000031FE  83C4FA            add sp,byte -0x6
00003201  1E                push ds
00003202  06                push es
00003203  57                push di
00003204  56                push si
00003205  FF7608            push word [bp+0x8]
00003208  FF7606            push word [bp+0x6]
0000320B  FF7604            push word [bp+0x4]
0000320E  16                push ss
0000320F  8D46FE            lea ax,[bp-0x2]
00003212  50                push ax
00003213  16                push ss
00003214  8D46FC            lea ax,[bp-0x4]
00003217  50                push ax
00003218  E85600            call 0x3271
0000321B  8EDA              mov ds,dx
0000321D  8BF0              mov si,ax
0000321F  AC                lodsb
00003220  AD                lodsw
00003221  8946FA            mov [bp-0x6],ax
00003224  8B5EFE            mov bx,[bp-0x2]
00003227  83E30F            and bx,byte +0xf
0000322A  D1E3              shl bx,1
0000322C  2EFFA78104        jmp [cs:bx+0x481]
00003231  33C0              xor ax,ax
00003233  8BD0              mov dx,ax
00003235  EB23              jmp short 0x325a
00003237  837EFC00          cmp word [bp-0x4],byte +0x0
0000323B  7427              jz 0x3264
0000323D  837EFCFF          cmp word [bp-0x4],byte -0x1
00003241  7428              jz 0x326b
00003243  FF760C            push word [bp+0xc]
00003246  FF760A            push word [bp+0xa]
00003249  FF76FC            push word [bp-0x4]
0000324C  E8CEE8            call 0x1b1d
0000324F  6A00              push byte +0x0
00003251  47                inc di
00003252  0426              add al,0x26
00003254  8B5706            mov dx,[bx+0x6]
00003257  C41EFA26          les bx,[0x26fa]
0000325B  8B5E5F            mov bx,[bp+0x5f]
0000325E  07                pop es
0000325F  1F                pop ds
00003260  5D                pop bp
00003261  C20A00            ret 0xa
00003264  0E                push cs
00003265  B833D2            mov ax,0xd233
00003268  FA                cli
00003269  0B46EB            or ax,[bp-0x15]
0000326C  EF                out dx,ax
0000326D  BAF101            mov dx,0x1f1
00003270  E98C02            jmp 0x34ff
00003273  EC                in al,dx
00003274  1E                push ds
00003275  C57604            lds si,[bp+0x4]
00003278  C40EE489          les cx,[0x89e4]
0000327C  46                inc si
0000327D  8BC8              mov cx,ax
0000327F  AC                lodsb
00003280  8AD0              mov dl,al
00003282  0AD2              or dl,dl
00003284  AD                lodsw
00003285  EB03              jmp short 0x328a
00003287  8BD8              mov bx,ax
00003289  33C0              xor ax,ax
0000328B  80FA00            cmp dl,0x0
0000328E  740B              jz 0x329b
00003290  00E9              add cl,ch
00003292  6280FA3C          bound ax,[bx+si+0x3cfa]
00003296  22F0              and dh,al
00003298  3BEF              cmp bp,di
0000329A  74FF              jz 0x329b
0000329C  4E                dec si
0000329D  0C74              or al,0x74
0000329F  06                push es
000032A0  E2FB              loop 0x329d
000032A2  8BF7              mov si,di
000032A4  EBD4              jmp short 0x327a
000032A6  088BD626          or [bp+di+0x26d6],cl
000032AA  8815              mov [di],dl
000032AC  0426              add al,0x26
000032AE  C45D89            les bx,[di-0x77]
000032B1  1D8CDA            sbb ax,0xda8c
000032B4  8BC6              mov ax,si
000032B6  C20E00            ret 0xe
000032B9  1B2EECC4          sbb bp,[0xc4ec]
000032BD  7E04              jng 0x32c3
000032BF  5E                pop si
000032C0  06                push es
000032C1  0449              add al,0x49
000032C3  E305              jcxz 0x32ca
000032C5  83C708            add di,byte +0x8
000032C8  C3                ret
000032C9  18E2              sbb dl,ah
000032CB  FB                sti
000032CC  06                push es
000032CD  00558B            add [di-0x75],dl
000032D0  EC                in al,dx
000032D1  1E                push ds
000032D2  C504              lds ax,[si]
000032D4  33D2              xor dx,dx
000032D6  48                dec ax
000032D7  045E              add al,0x5e
000032D9  06                push es
000032DA  775C              ja 0x3338
000032DC  50                push ax
000032DD  7277              jc 0x3356
000032DF  5C                pop sp
000032E0  50                push ax
000032E1  7050              jo 0x3333
000032E3  E8B3FE            call 0x3199
000032E6  E8AB03            call 0x3694
000032E9  0400              add al,0x0
000032EB  06                push es
000032EC  00558B            add [di-0x75],dl
000032EF  EC                in al,dx
000032F0  1E                push ds
000032F1  C57604            lds si,[bp+0x4]
000032F4  0026C404          add [0x4c4],ah
000032F8  C47E59            les di,[bp+0x59]
000032FB  5B                pop bx
000032FC  58                pop ax
000032FD  32ED              xor ch,ch
000032FF  F6470502          test byte [bx+0x5],0x2
00003303  7510              jnz 0x3315
00003305  8D7F09            lea di,[bx+0x9]
00003308  51                push cx
00003309  56                push si
0000330A  F3A6              repe cmpsb
0000330C  5E                pop si
0000330D  59                pop cx
0000330E  740E              jz 0x331e
00003310  26C41F            les bx,[es:bx]
00003313  EBEA              jmp short 0x32ff
00003315  8BD0              mov dx,ax
00003317  EB23              jmp short 0x333c
00003319  C20400            ret 0x4
0000331C  C43E8000          les di,[0x80]
00003320  E8C31F            call 0x52e6
00003323  0400              add al,0x0
00003325  55                push bp
00003326  8BEC              mov bp,sp
00003328  83C41E            add sp,byte +0x1e
0000332B  0426              add al,0x26
0000332D  C4BE0400          les di,[bp+0x4]
00003331  8B04              mov ax,[si]
00003333  0B4402            or ax,[si+0x2]
00003336  7404              jz 0x333c
00003338  C534              lds si,[si]
0000333A  EBF5              jmp short 0x3331
0000333C  8BC4              mov ax,sp
0000333E  5D                pop bp
0000333F  8905              mov [di],ax
00003341  8B4489            mov ax,[si-0x77]
00003344  058C45            add ax,0x458c
00003347  02893C8C          add cl,[bx+di-0x73c4]
0000334B  44                inc sp
0000334C  02C2              add al,dl
0000334E  0400              add al,0x0
00003350  C43E0400          les di,[0x4]
00003354  0826F6C7          or [0xc7f6],ah
00003358  7414              jz 0x336e
0000335A  06                push es
0000335B  2D7D04            sub ax,0x47d
0000335E  268B45FF          mov ax,[es:di-0x1]
00003362  756A              jnz 0x33ce
00003364  E84B00            call 0x33b2
00003367  7542              jnz 0x33ab
00003369  26                es
0000336A  FF                db 0xff
0000336B  E84400            call 0x33b2
0000336E  06                push es
0000336F  E8403E            call 0x71b2
00003372  0400              add al,0x0
00003374  0826051F          or [0x1f05],ah
00003378  5D                pop bp
00003379  A30826            mov [0x2608],ax
0000337C  051F45            add ax,0x451f
0000337F  02A30600          add ah,[bp+di+0x6]
00003383  06                push es
00003384  E82B00            call 0x33b2
00003387  EBC9              jmp short 0x3352
00003389  0A00              or al,[bx+si]
0000338B  FF36E822          push word [0x22e8]
0000338F  000EE81E          add [0x1ee8],cl
00003393  0010              add [bx+si],dl
00003395  00BF1200          add [bx+0x12],bh
00003399  51                push cx
0000339A  F7054000          test word [di],0x40
0000339E  7516              jnz 0x33b6
000033A0  7406              jz 0x33a8
000033A2  06                push es
000033A3  26                es
000033A4  FF                db 0xff
000033A5  E80AC7            call 0xfab2
000033A8  0859E2            or [bx+di-0x1e],bl
000033AB  8B8BEDE8          mov cx,[bp+di-0x1713]
000033AF  2455              and al,0x55
000033B1  8BEC              mov bp,sp
000033B3  83C406            add sp,byte +0x6
000033B6  0433              add al,0x33
000033B8  D23B              sar byte [bp+di],cl
000033BA  008E1E72          add [bp+0x721e],cl
000033BE  0B0E0026          or cx,[0x2600]
000033C2  A1023B            mov ax,[0x3b02]
000033C5  06                push es
000033C6  0200              add al,[bx+si]
000033C8  7206              jc 0x33d0
000033CA  8EC0              mov es,ax
000033CC  B449              mov ah,0x49
000033CE  CD21              int 0x21
000033D0  07                pop es
000033D1  5D                pop bp
000033D2  C2028B            ret 0x8b02
000033D5  EC                in al,dx
000033D6  83C4FE            add sp,byte -0x2
000033D9  FF36B802          push word [0x2b8]
000033DD  58                pop ax
000033DE  CD21              int 0x21
000033E0  8946FE            mov [bp-0x2],ax
000033E3  33C0              xor ax,ax
000033E5  0103              add [bp+di],ax
000033E7  01CF              add di,cx
000033E9  027508            add dh,[di+0x8]
000033EC  B80358            mov ax,0x5803
000033EF  FF7581            push word [di-0x7f]
000033F2  CD21              int 0x21
000033F4  B448              mov ah,0x48
000033F6  BBFFFF            mov bx,0xffff
000033F9  CD21              int 0x21
000033FB  B80358            mov ax,0x5803
000033FE  FE83E38B          inc byte [bp+di-0x741d]
00003402  D8B8C355          fdivr dword [bx+si+0x55c3]
00003406  8BEC              mov bp,sp
00003408  1E                push ds
00003409  57                push di
0000340A  FF36B436          push word [0x36b4]
0000340E  BB00B2            mov bx,0xb200
00003411  36BB00B6          ss mov bx,0xb600
00003415  0004              add [si],al
00003417  E84903            call 0x3763
0000341A  BF00A1            mov di,0xa100
0000341D  B216              mov dl,0x16
0000341F  C700B44E          mov word [bx+si],0x4eb4
00003423  0449              add al,0x49
00003425  E301              jcxz 0x3428
00003427  0E                push cs
00003428  B204              mov dl,0x4
0000342A  2EA05DC2          mov al,[cs:0xc25d]
0000342E  028B8106          add cl,[bp+di+0x681]
00003432  B400              mov ah,0x0
00003434  0010              add [bx+si],dl
00003436  EBF4              jmp short 0x342c
00003438  EC                in al,dx
00003439  83C4FC            add sp,byte -0x4
0000343C  B84500            mov ax,0x45
0000343F  0058CD            add [bx+si-0x33],bl
00003442  21FE              and si,di
00003444  33C0              xor ax,ax
00003446  B80258            mov ax,0x5802
00003449  CD21              int 0x21
0000344B  8946FE            mov [bp-0x2],ax
0000344E  33FC              xor di,sp
00003450  B80158            mov ax,0x5801
00003453  BB8281            mov bx,0x8182
00003456  CD21              int 0x21
00003458  0103              add [bp+di],ax
0000345A  01CF              add di,cx
0000345C  027508            add dh,[di+0x8]
0000345F  B80358            mov ax,0x5803
00003462  FF7581            push word [di-0x7f]
00003465  CD21              int 0x21
00003467  B448              mov ah,0x48
00003469  8B5E04            mov bx,[bp+0x4]
0000346C  83C30F            add bx,byte +0xf
0000346F  D1EB              shr bx,1
00003471  D1EB              shr bx,1
00003473  D1EB              shr bx,1
00003475  D1EB              shr bx,1
00003477  CD21              int 0x21
00003479  50                push ax
0000347A  9C                pushf
0000347B  B80158            mov ax,0x5801
0000347E  FE83E38B          inc byte [bp+di-0x741d]
00003482  D8B80358          fdivr dword [bx+si+0x5803]
00003486  FE83FCCD          inc byte [bp+di-0x3204]
0000348A  219D5A73          and [di+0x735a],bx
0000348E  28FF              sub bh,bh
00003490  36B436            ss mov ah,0x36
00003493  BB00B2            mov bx,0xb200
00003496  36BB00B6          ss mov bx,0xb600
0000349A  0004              add [si],al
0000349C  E84903            call 0x37e8
0000349F  3A4604            cmp al,[bp+0x4]
000034A2  33D2              xor dx,dx
000034A4  83C00F            add ax,byte +0xf
000034A7  D1E8              shr ax,1
000034A9  D1E8              shr ax,1
000034AB  D1E8              shr ax,1
000034AD  D1E8              shr ax,1
000034AF  2906B616          sub [0x16b6],ax
000034B3  C700B6C0          mov word [bx+si],0xc0b6
000034B7  50                push ax
000034B8  B85DC2            mov ax,0xc25d
000034BB  0A00              or al,[bx+si]
000034BD  0200              add al,[bx+si]
000034BF  A1B216            mov ax,[0x16b2]
000034C2  83C00F            add ax,byte +0xf
000034C5  83E0F0            and ax,byte -0x10
000034C8  D1E8              shr ax,1
000034CA  D1E8              shr ax,1
000034CC  D1E8              shr ax,1
000034CE  D1E8              shr ax,1
000034D0  0106B400          add [0xb4],ax
000034D4  FF366700          push word [0x67]
000034D8  A3B4C3            mov [0xc3b4],ax
000034DB  EC                in al,dx
000034DC  1E                push ds
000034DD  C504              lds ax,[si]
000034DF  3308              xor cx,[bx+si]
000034E1  8B560A            mov dx,[bp+0xa]
000034E4  034604            add ax,[bp+0x4]
000034E7  D1E8              shr ax,1
000034E9  D1E8              shr ax,1
000034EB  D1E8              shr ax,1
000034ED  D1E8              shr ax,1
000034EF  03D0              add dx,ax
000034F1  3B5606            cmp dx,[bp+0x6]
000034F4  7304              jnc 0x34fa
000034F6  0800              or [bx+si],al
000034F8  8B46BA            mov ax,[bp-0x46]
000034FB  C401              les ax,[bx+di]
000034FD  EB2E              jmp short 0x352d
000034FF  A0930E            mov al,[0xe93]
00003502  B8B850            mov ax,0x50b8
00003505  04CB              add al,0xcb
00003507  E86309            call 0x3e6d
0000350A  26015A1E          add [es:bp+si+0x1e],bx
0000350E  52                push dx
0000350F  01A1B6E9          add [bx+di-0x164a],sp
00003513  14F1              adc al,0xf1
00003515  EC                in al,dx
00003516  1E                push ds
00003517  C5A0930E          lds sp,[bx+si+0xe93]
0000351B  B8E802            mov ax,0x2e8
0000351E  CB                retf
0000351F  E86309            call 0x3e85
00003522  0E                push cs
00003523  0106FF76          add [0x76ff],ax
00003527  04E8              add al,0xe8
00003529  49                dec cx
0000352A  0305              add ax,[di]
0000352C  01FF              add di,di
0000352E  36BF36BB          ss mov di,0xbb36
00003532  00BD00E8          add [di-0x1800],bh
00003536  FA                cli
00003537  00E8              add al,ch
00003539  1301              adc ax,[bx+di]
0000353B  E9EBF0            jmp 0x2629
0000353E  0400              add al,0x0
00003540  55                push bp
00003541  8BEC              mov bp,sp
00003543  83C41E            add sp,byte +0x1e
00003546  A0930E            mov al,[0xe93]
00003549  B8C606            mov ax,0x6c6
0000354C  BA00FF            mov dx,0xff00
0000354F  0E                push cs
00003550  B81602            mov ax,0x216
00003553  50                push ax
00003554  00EB              add bl,ch
00003556  1910              sbb [bx+si],dx
00003558  FF760E            push word [bp+0xe]
0000355B  FF7600            push word [bp+0x0]
0000355E  8BE5              mov sp,bp
00003560  0E                push cs
00003561  B82702            mov ax,0x227
00003564  50                push ax
00003565  00CA              add dl,cl
00003567  5E                pop si
00003568  08260A77          or [0x770a],ah
0000356C  5A                pop dx
0000356D  26FF7758          push word [es:bx+0x58]
00003571  FF76E8            push word [bp-0x18]
00003574  9F                lahf
00003575  E50E              in ax,0xe
00003577  B83C02            mov ax,0x23c
0000357A  50                push ax
0000357B  00B44E04          add [si+0x44e],dh
0000357F  46                inc si
00003580  084808            or [bx+si+0x8],cl
00003583  260A775A          or dh,[es:bx+0x5a]
00003587  267277            es jc 0x3601
0000358A  5C                pop sp
0000358B  50                push ax
0000358C  7050              jo 0x35de
0000358E  E808FC            call 0x3199
00003591  E8AB03            call 0x393f
00003594  7F00              jg 0x3596
00003596  837E0600          cmp word [bp+0x6],byte +0x0
0000359A  7413              jz 0x35af
0000359C  0E                push cs
0000359D  B85102            mov ax,0x251
000035A0  50                push ax
000035A1  008E0006          add [bp+0x600],cl
000035A5  FF7604            push word [bp+0x4]
000035A8  E84903            call 0x38f4
000035AB  6800EB            push word 0xeb00
000035AE  0E                push cs
000035AF  0E                push cs
000035B0  B86602            mov ax,0x266
000035B3  50                push ax
000035B4  007B00            add [bp+di+0x0],bh
000035B7  04E8              add al,0xe8
000035B9  49                dec cx
000035BA  0305              add ax,[di]
000035BC  00C2              add dl,al
000035BE  0E                push cs
000035BF  001B              add [bp+di],bl
000035C1  2EEC              cs in al,dx
000035C3  C47E8A            les di,[bp-0x76]
000035C6  46                inc si
000035C7  055000            add ax,0x50
000035CA  89468A            mov [bp-0x76],ax
000035CD  46                inc si
000035CE  04AB              add al,0xab
000035D0  0304              add ax,[si]
000035D2  00060002          add [0x200],al
000035D6  2EEC              cs in al,dx
000035D8  C47E8A            les di,[bp-0x76]
000035DB  46                inc si
000035DC  04D0              add al,0xd0
000035DE  E8D0E8            call 0x1eb1
000035E1  D0E8              shr al,1
000035E3  D0E8              shr al,1
000035E5  50                push ax
000035E6  0089468A          add [bx+di-0x75ba],cl
000035EA  46                inc si
000035EB  04AB              add al,0xab
000035ED  0304              add ax,[si]
000035EF  00060002          add [0x200],al
000035F3  2EEC              cs in al,dx
000035F5  C47E80            les di,[bp-0x80]
000035F8  66040F            o32 add al,0xf
000035FB  80460430          add byte [bp+0x4],0x30
000035FF  807E0439          cmp byte [bp+0x4],0x39
00003603  7604              jna 0x3609
00003605  80460407          add byte [bp+0x4],0x7
00003609  46                inc si
0000360A  FC                cld
0000360B  50                push ax
0000360C  04AB              add al,0xab
0000360E  035F00            add bx,[bx+0x0]
00003611  06                push es
00003612  0002              add [bp+si],al
00003614  2EEC              cs in al,dx
00003616  C47E1E            les di,[bp+0x1e]
00003619  56                push si
0000361A  04C4              add al,0xc4
0000361C  7E59              jng 0x3677
0000361E  5B                pop bx
0000361F  58                pop ax
00003620  32ED              xor ch,ch
00003622  56                push si
00003623  06                push es
00003624  57                push di
00003625  E84800            call 0x3670
00003628  46                inc si
00003629  59                pop cx
0000362A  E2F6              loop 0x3622
0000362C  5E                pop si
0000362D  1F                pop ds
0000362E  0400              add al,0x0
00003630  55                push bp
00003631  8BEC              mov bp,sp
00003633  83C41E            add sp,byte +0x1e
00003636  56                push si
00003637  04C4              add al,0xc4
00003639  7E8A              jng 0x35c5
0000363B  0474              add al,0x74
0000363D  183C              sbb [si],bh
0000363F  56                push si
00003640  E80D08            call 0x3e50
00003643  2B00              sub ax,[bx+si]
00003645  46                inc si
00003646  EBF2              jmp short 0x363a
00003648  5E                pop si
00003649  1F                pop ds
0000364A  0400              add al,0x0
0000364C  55                push bp
0000364D  8BEC              mov bp,sp
0000364F  83C4FE            add sp,byte -0x2
00003652  FF36C646          push word [0x46c6]
00003656  FF0D              dec word [di]
00003658  46                inc si
00003659  FC                cld
0000365A  50                push ax
0000365B  FF50E8            call [bx+si-0x18]
0000365E  1000              adc [bx+si],al
00003660  C646FF0A          mov byte [bp-0x1],0xa
00003664  46                inc si
00003665  FC                cld
00003666  50                push ax
00003667  FF50E8            call [bx+si-0x18]
0000366A  04E5              add al,0xe5
0000366C  5D                pop bp
0000366D  C3                ret
0000366E  55                push bp
0000366F  8BEC              mov bp,sp
00003671  1E                push ds
00003672  57                push di
00003673  56                push si
00003674  56                push si
00003675  04C4              add al,0xc4
00003677  7E8B              jng 0x3604
00003679  D6                salc
0000367A  B440              mov ah,0x40
0000367C  2E8B1EC900        mov bx,[cs:0xc9]
00003681  B97581            mov cx,0x8175
00003684  CD21              int 0x21
00003686  5E                pop si
00003687  1F                pop ds
00003688  0400              add al,0x0
0000368A  55                push bp
0000368B  8BEC              mov bp,sp
0000368D  83C41E            add sp,byte +0x1e
00003690  C55604            lds dx,[bp+0x4]
00003693  B8003C            mov ax,0x3c00
00003696  33C9              xor cx,cx
00003698  CD21              int 0x21
0000369A  7302              jnc 0x369e
0000369C  33C0              xor ax,ax
0000369E  1F                pop ds
0000369F  0400              add al,0x0
000036A1  55                push bp
000036A2  8BEC              mov bp,sp
000036A4  83C41E            add sp,byte +0x1e
000036A7  C55604            lds dx,[bp+0x4]
000036AA  B8003D            mov ax,0x3d00
000036AD  CD21              int 0x21
000036AF  7302              jnc 0x36b3
000036B1  33C0              xor ax,ax
000036B3  1F                pop ds
000036B4  0400              add al,0x0
000036B6  55                push bp
000036B7  8BEC              mov bp,sp
000036B9  83C453            add sp,byte +0x53
000036BC  B43E              mov ah,0x3e
000036BE  8B5E04            mov bx,[bp+0x4]
000036C1  CD21              int 0x21
000036C3  33C0              xor ax,ax
000036C5  5B                pop bx
000036C6  06                push es
000036C7  0002              add [bp+si],al
000036C9  2EEC              cs in al,dx
000036CB  C47E1E            les di,[bp+0x1e]
000036CE  C55606            lds dx,[bp+0x6]
000036D1  0449              add al,0x49
000036D3  E3B4              jcxz 0x3689
000036D5  3F                aas
000036D6  8B5E0A            mov bx,[bp+0xa]
000036D9  CD21              int 0x21
000036DB  7302              jnc 0x36df
000036DD  33C0              xor ax,ax
000036DF  1F                pop ds
000036E0  0400              add al,0x0
000036E2  55                push bp
000036E3  8BEC              mov bp,sp
000036E5  83C48B            add sp,byte -0x75
000036E8  5E                pop si
000036E9  088B564E          or [bp+di+0x4e56],cl
000036ED  F65106            not byte [bx+di+0x6]
000036F0  B80042            mov ax,0x4200
000036F3  CD21              int 0x21
000036F5  06                push es
000036F6  00558B            add [di-0x75],dl
000036F9  6515B2FF          gs adc ax,0xffb2
000036FD  0200              add al,[bx+si]
000036FF  E8030D            call 0x4405
00003702  0A970100          or dl,[bx+0x1]
00003706  02CA              add cl,dl
00003708  02840452          add al,[si+0x5204]
0000370C  42                inc dx
0000370D  8BE8              mov bp,ax
0000370F  8CC0              mov ax,es
00003711  051000            add ax,0x10
00003714  0E                push cs
00003715  1F                pop ds
00003716  A30826            mov [0x2608],ax
00003719  03068EDA          add ax,[0xda8e]
0000371D  8BC0              mov ax,ax
0000371F  8B0E0600          mov cx,[0x6]
00003723  8BF9              mov di,cx
00003725  4F                dec di
00003726  8BF7              mov si,di
00003728  FD                std
00003729  F3A4              rep movsb
0000372B  50                push ax
0000372C  B83400            mov ax,0x34
0000372F  50                push ax
00003730  CB                retf
00003731  8CC3              mov bx,es
00003733  8CD8              mov ax,ds
00003735  48                dec ax
00003736  00BFBF9D          add [bx-0x6241],bh
0000373A  2A0F              sub cl,[bx]
0000373C  00B91000          add [bx+di+0x10],bh
00003740  B0FF              mov al,0xff
00003742  F3AE              repe scasb
00003744  47                inc di
00003745  8BF7              mov si,di
00003747  8BC3              mov ax,bx
00003749  48                dec ax
0000374A  BF9D2A            mov di,0x2a9d
0000374D  0F00B1048B        jmpe word [bx+di-0x74fc]
00003752  C6                db 0xc6
00003753  F7D0              not ax
00003755  D3E8              shr ax,cl
00003757  8CDA              mov dx,ds
00003759  2BD0              sub dx,ax
0000375B  7304              jnc 0x3761
0000375D  8CD8              mov ax,ds
0000375F  2BD2              sub dx,dx
00003761  D3                db 0xd3
00003762  F089768B          lock mov [bp-0x75],si
00003766  F0AC              lock lodsb
00003768  C7                db 0xc7
00003769  F7D0              not ax
0000376B  D3E8              shr ax,cl
0000376D  8CC2              mov dx,es
0000376F  2BD0              sub dx,ax
00003771  7304              jnc 0x3777
00003773  8CC0              mov ax,es
00003775  2BD2              sub dx,dx
00003777  D3                db 0xd3
00003778  F089F8            lock mov ax,di
0000377B  8EC2              mov es,dx
0000377D  AC                lodsb
0000377E  8AD0              mov dl,al
00003780  4E                dec si
00003781  AD                lodsw
00003782  8BC8              mov cx,ax
00003784  46                inc si
00003785  8AC2              mov al,dl
00003787  24FE              and al,0xfe
00003789  3CB0              cmp al,0xb0
0000378B  7506              jnz 0x3793
0000378D  AC                lodsb
0000378E  F3AA              rep stosb
00003790  EB07              jmp short 0x3799
00003792  90                nop
00003793  3CB2              cmp al,0xb2
00003795  756D              jnz 0x3804
00003797  F3A4              rep movsb
00003799  8AC2              mov al,dl
0000379B  A801              test al,0x1
0000379D  74B0              jz 0x374f
0000379F  BE3301            mov si,0x133
000037A2  0E                push cs
000037A3  1F                pop ds
000037A4  8B00              mov ax,[bx+si]
000037A6  26                es
000037A7  C4                db 0xc4
000037A8  FC                cld
000037A9  33D2              xor dx,dx
000037AB  AD                lodsw
000037AC  8BC8              mov cx,ax
000037AE  E313              jcxz 0x37c3
000037B0  8BC2              mov ax,dx
000037B2  03C3              add ax,bx
000037B4  8EC0              mov es,ax
000037B6  AD                lodsw
000037B7  8BF8              mov di,ax
000037B9  83FFFF            cmp di,byte -0x1
000037BC  7411              jz 0x37cf
000037BE  26011D            add [es:di],bx
000037C1  E2F3              loop 0x37b6
000037C3  81FA00F0          cmp dx,0xf000
000037C7  7416              jz 0x37df
000037C9  81C20010          add dx,0x1000
000037CD  EBDC              jmp short 0x37ab
000037CF  8CC0              mov ax,es
000037D1  40                inc ax
000037D2  8EC0              mov es,ax
000037D4  83EF10            sub di,byte +0x10
000037D7  26011D            add [es:di],bx
000037DA  48                dec ax
000037DB  BF9DEB            mov di,0xeb9d
000037DE  E28B              loop 0x376b
000037E0  C3                ret
000037E1  8B3E8B46          mov di,[0x468b]
000037E5  0400              add al,0x0
000037E7  FF3603F0          push word [0xf003]
000037EB  01060200          add [0x2],ax
000037EF  2D1000            sub ax,0x10
000037F2  00BFBF9D          add [bx-0x6241],bh
000037F6  FE00              inc byte [bx+si]
000037F8  E9FA8E            jmp 0xc6f5
000037FB  D6                salc
000037FC  8BE7              mov sp,di
000037FE  FB                sti
000037FF  8BC5              mov ax,bp
00003801  2EFF2F            jmp far [cs:bx]
00003804  B440              mov ah,0x40
00003806  BB0200            mov bx,0x2
00003809  B91600            mov cx,0x16
0000380C  8CCA              mov dx,cs
0000380E  8EDA              mov ds,dx
00003810  BA1D01            mov dx,0x11d
00003813  8BD8              mov bx,ax
00003815  B8FFF3            mov ax,0xf3ff
00003818  A4                movsb
00003819  06                push es
0000381A  50                push ax
0000381B  53                push bx
0000381C  2E206564          and [cs:di+0x64],ah
00003820  6E                outsb
00003821  206120            and [bx+di+0x20],ah
00003824  636572            arpl [di+0x72],sp
00003827  6569636F7272      imul sp,[gs:bp+di+0x6f],word 0x7272
0000382D  7570              jnz 0x389f
0000382F  7422              jz 0x3853
00003831  030D              add cx,[di]
00003833  0A7202            or dh,[bp+si+0x2]
00003836  59                pop cx
00003837  037903            add di,[bx+di+0x3]
0000383A  830396            add word [bp+di],byte -0x6a
0000383D  03F4              add si,sp
0000383F  1408              adc al,0x8
00003841  151C15            adc ax,0x151c
00003844  2D153F            sub ax,0x3f15
00003847  155B15            adc ax,0x155b
0000384A  69157B15          imul dx,[di],word 0x157b
0000384E  94                xchg ax,sp
0000384F  15A415            adc ax,0x15a4
00003852  B615              mov dh,0x15
00003854  CA15DF            retf 0xdf15
00003857  15F015            adc ax,0x15f0
0000385A  01161216          add [0x1612],dx
0000385E  2F                das
0000385F  16                push ss
00003860  3F                aas
00003861  16                push ss
00003862  51                push cx
00003863  16                push ss
00003864  69167D168D16      imul dx,[0x167d],word 0x168d
0000386A  A6                cmpsb
0000386B  16                push ss
0000386C  B416              mov ah,0x16
0000386E  C9                leave
0000386F  16                push ss
00003870  DA16E516          ficom dword [0x16e5]
00003874  4B                dec bx
00003875  1B00              sbb ax,[bx+si]
00003877  0000              add [bx+si],al
00003879  0000              add [bx+si],al
0000387B  0000              add [bx+si],al
0000387D  0000              add [bx+si],al
0000387F  0000              add [bx+si],al
00003881  0000              add [bx+si],al
00003883  0000              add [bx+si],al
00003885  0000              add [bx+si],al
