00000000  0002              add [bp+si],al
00000002  02B10E00          add dh,[bx+di+0xe]
00000006  2003              and [bp+di],al
00000008  00B20009          add [bp+si+0x900],dh
0000000C  00B00520          add [bx+si+0x2005],dh
00000010  2D2D2D            sub ax,0x2d2d
00000013  2D0D07            sub ax,0x70d
00000016  00B2009A          add [bp+si-0x6600],dh
0000001A  00B05052          add [bx+si+0x5250],dh
0000001E  1E                push ds
0000001F  0E                push cs
00000020  1F                pop ds
00000021  BA9900            mov dx,0x99
00000024  A39900            mov [0x99],ax
00000027  891E9B00          mov [0x9b],bx
0000002B  890E9D00          mov [0x9d],cx
0000002F  B80A5D            mov ax,0x5d0a
00000032  CD21              int 0x21
00000034  1F                pop ds
00000035  5A                pop dx
00000036  58                pop ax
00000037  F9                stc
00000038  C3                ret
00000039  B000              mov al,0x0
0000003B  E8AE3E            call 0x3eec
0000003E  B462              mov ah,0x62
00000040  CD21              int 0x21
00000042  06                push es
00000043  8EC3              mov es,bx
00000045  C70606005C00      mov word [0x6],0x5c
0000004B  8C060800          mov [0x8],es
0000004F  C7060A006C00      mov word [0xa],0x6c
00000055  8C060C00          mov [0xc],es
00000059  BB4301            mov bx,0x143
0000005C  83C30F            add bx,byte +0xf
0000005F  B104              mov cl,0x4
00000061  D3EB              shr bx,cl
00000063  83C310            add bx,byte +0x10
00000066  81C32000          add bx,0x20
0000006A  81EB0000          sub bx,0x0
0000006E  B44A              mov ah,0x4a
00000070  CD21              int 0x21
00000072  07                pop es
00000073  7235              jc 0xaa
00000075  BF6151            mov di,0x5161
00000078  B98000            mov cx,0x80
0000007B  E8365B            call 0x5bb4
0000007E  E8235E            call 0x5ea4
00000081  57                push di
00000082  03F9              add di,cx
00000084  83EF03            sub di,byte +0x3
00000087  B84D4E            mov ax,0x4e4d
0000008A  AB                stosw
0000008B  B055              mov al,0x55
0000008D  AA                stosb
0000008E  5A                pop dx
0000008F  BB0000            mov bx,0x0
00000092  B8004B            mov ax,0x4b00
00000095  CD21              int 0x21
00000097  7312              jnc 0xab
00000099  50                push ax
0000009A  B80D0A            mov ax,0xa0d
0000009D  AB                stosw
0000009E  B000              mov al,0x0
000000A0  AA                stosb
000000A1  58                pop ax
000000A2  3C02              cmp al,0x2
000000A4  F9                stc
000000A5  7503              jnz 0xaa
000000A7  B08B              mov al,0x8b
000000A9  90                nop
000000AA  C3                ret
000000AB  B8004C            mov ax,0x4c00
000000AE  CD21              int 0x21
000000B0  80016D            add byte [bx+di],0x6d
000000B3  47                inc di
000000B4  B91D40            mov cx,0x401d
000000B7  4B                dec bx
000000B8  800281            add byte [bp+si],0x81
000000BB  47                inc di
000000BC  D01E3F4B          rcr byte [0x4b3f],1
000000C0  800022            add byte [bx+si],0x22
000000C3  4B                dec bx
000000C4  DC1E3F4B          fcomp qword [0x4b3f]
000000C8  800195            add byte [bx+di],0x95
000000CB  47                inc di
000000CC  E71E              out 0x1e,ax
000000CE  3F                aas
000000CF  4B                dec bx
000000D0  8001B3            add byte [bx+di],0xb3
000000D3  47                inc di
000000D4  0A1F              or bl,[bx]
000000D6  3F                aas
000000D7  4B                dec bx
000000D8  8002CE            add byte [bp+si],0xce
000000DB  47                inc di
000000DC  3D1F40            cmp ax,0x401f
000000DF  4B                dec bx
000000E0  8001EB            add byte [bx+di],0xeb
000000E3  47                inc di
000000E4  6720404B          and [eax+0x4b],al
000000E8  0000              add [bx+si],al
000000EA  0A48BA            or cl,[bx+si-0x46]
000000ED  20524B            and [bp+si+0x4b],dl
000000F0  80021C            add byte [bp+si],0x1c
000000F3  48                dec ax
000000F4  BA223F            mov dx,0x3f22
000000F7  4B                dec bx
000000F8  0000              add [bx+si],al
000000FA  194AD3            sbb [bp+si-0x2d],cx
000000FD  223F              and bh,[bx]
000000FF  4B                dec bx
00000100  80013A            add byte [bx+di],0x3a
00000103  48                dec ax
00000104  0223              add ah,[bp+di]
00000106  60                pusha
00000107  4B                dec bx
00000108  800159            add byte [bx+di],0x59
0000010B  48                dec ax
0000010C  321F              xor bl,[bx]
0000010E  3F                aas
0000010F  4B                dec bx
00000110  0000              add [bx+si],al
00000112  7848              js 0x15c
00000114  6C                insb
00000115  233F              and di,[bx]
00000117  4B                dec bx
00000118  80028A            add byte [bp+si],0x8a
0000011B  48                dec ax
0000011C  F5                cmc
0000011D  243F              and al,0x3f
0000011F  4B                dec bx
00000120  8001AD            add byte [bx+di],0xad
00000123  48                dec ax
00000124  6625844B8001      and eax,0x1804b84
0000012A  C148EE27          ror word [bx+si-0x12],byte 0x27
0000012E  C9                leave
0000012F  4B                dec bx
00000130  8001D7            add byte [bx+di],0xd7
00000133  48                dec ax
00000134  7627              jna 0x15d
00000136  3F                aas
00000137  4B                dec bx
00000138  8001EC            add byte [bx+di],0xec
0000013B  48                dec ax
0000013C  55                push bp
0000013D  283E4C80          sub [0x804c],bh
00000141  0008              add [bx+si],cl
00000143  49                dec cx
00000144  AC                lodsb
00000145  28EC              sub ah,ch
00000147  4B                dec bx
00000148  800125            add byte [bx+di],0x25
0000014B  49                dec cx
0000014C  FA                cli
0000014D  293E4C00          sub [0x4c],di
00000151  004549            add [di+0x49],al
00000154  4F                dec di
00000155  2A1D              sub bl,[di]
00000157  4C                dec sp
00000158  800080            add byte [bx+si],0x80
0000015B  49                dec cx
0000015C  A4                movsb
0000015D  2A3F              sub bh,[bx]
0000015F  4B                dec bx
00000160  8002A0            add byte [bp+si],0xa0
00000163  49                dec cx
00000164  702B              jo 0x191
00000166  BD4C80            mov bp,0x804c
00000169  02BE4967          add bh,[bp+0x6749]
0000016D  2D3F4B            sub ax,0x4b3f
00000170  8000DC            add byte [bx+si],0xdc
00000173  49                dec cx
00000174  EB2E              jmp short 0x1a4
00000176  3F                aas
00000177  4B                dec bx
00000178  8002FC            add byte [bp+si],0xfc
0000017B  49                dec cx
0000017C  702F              jo 0x1ad
0000017E  2F                das
0000017F  4C                dec sp
00000180  800019            add byte [bx+si],0x19
00000183  4A                dec dx
00000184  6B314C            imul si,[bx+di],byte +0x4c
00000187  4D                dec bp
00000188  80021A            add byte [bp+si],0x1a
0000018B  4A                dec dx
0000018C  06                push es
0000018D  366D              ss insw
0000018F  4D                dec bp
00000190  800137            add byte [bx+di],0x37
00000193  4A                dec dx
00000194  93                xchg ax,bx
00000195  2F                das
00000196  60                pusha
00000197  4C                dec sp
00000198  800168            add byte [bx+di],0x68
0000019B  4A                dec dx
0000019C  7436              jz 0x1d4
0000019E  3E4C              ds dec sp
000001A0  0001              add [bx+di],al
000001A2  874A46            xchg cx,[bp+si+0x46]
000001A5  37                aaa
000001A6  9F                lahf
000001A7  4C                dec sp
000001A8  8002A6            add byte [bp+si],0xa6
000001AB  4A                dec dx
000001AC  0228              add ch,[bx+si]
000001AE  3F                aas
000001AF  4B                dec bx
000001B0  0000              add [bx+si],al
000001B2  BE4A17            mov si,0x174a
000001B5  3A3F              cmp bh,[bx]
000001B7  4B                dec bx
000001B8  8001DD            add byte [bx+di],0xdd
000001BB  4A                dec dx
000001BC  CE                into
000001BD  3A3F              cmp bh,[bx]
000001BF  4B                dec bx
000001C0  8002F1            add byte [bp+si],0xf1
000001C3  4A                dec dx
000001C4  793B              jns 0x201
000001C6  A5                movsw
000001C7  4B                dec bx
000001C8  800003            add byte [bx+si],0x3
000001CB  4B                dec bx
000001CC  0925              or [di],sp
000001CE  8C4D80            mov [di-0x80],cs
000001D1  006349            add [bp+di+0x49],ah
000001D4  57                push di
000001D5  44                inc sp
000001D6  3F                aas
000001D7  4B                dec bx
000001D8  800022            add byte [bx+si],0x22
000001DB  4B                dec bx
000001DC  C3                ret
000001DD  3C3F              cmp al,0x3f
000001DF  4B                dec bx
000001E0  FFC5              inc bp
000001E2  01B20016          add [bp+si+0x1600],si
000001E6  00B00101          add [bx+si+0x101],dh
000001EA  00B20032          add [bp+si+0x3200],dh
000001EE  01B05C5C          add [bx+si+0x5c5c],si
000001F2  0200              add al,[bx+si]
000001F4  B200              mov dl,0x0
000001F6  8000B0            add byte [bx+si],0xb0
000001F9  5C                pop sp
000001FA  5C                pop sp
000001FB  0200              add al,[bx+si]
000001FD  B200              mov dl,0x0
000001FF  0203              add al,[bp+di]
00000201  B05C              mov al,0x5c
00000203  5C                pop sp
00000204  0200              add al,[bx+si]
00000206  B200              mov dl,0x0
00000208  0004              add [si],al
0000020A  B05C              mov al,0x5c
0000020C  5C                pop sp
0000020D  0200              add al,[bx+si]
0000020F  B200              mov dl,0x0
00000211  8000B0            add byte [bx+si],0xb0
00000214  D04EFB            ror byte [bp-0x5],1
00000217  4E                dec si
00000218  B74F              mov bh,0x4f
0000021A  D34F05            ror word [bx+0x5],cl
0000021D  50                push ax
0000021E  39505D            cmp [bx+si+0x5d],dx
00000221  50                push ax
00000222  93                xchg ax,bx
00000223  50                push ax
00000224  C3                ret
00000225  50                push ax
00000226  E550              in ax,0x50
00000228  16                push ss
00000229  51                push cx
0000022A  44                inc sp
0000022B  51                push cx
0000022C  304F78            xor [bx+0x78],cl
0000022F  4F                dec di
00000230  9D                popf
00000231  4F                dec di
00000232  0D5238            or ax,0x3852
00000235  52                push dx
00000236  7852              js 0x28a
00000238  61                popa
00000239  51                push cx
0000023A  F051              lock push cx
0000023C  0000              add [bx+si],al
0000023E  0000              add [bx+si],al
00000240  0000              add [bx+si],al
00000242  007F30            add [bx+0x30],bh
00000245  00B2002B          add [bp+si+0x2b00],dh
00000249  11B00201          adc [bx+si+0x102],si
0000024D  00B2001E          add [bp+si+0x1e00],dh
00000251  00B0A056          add [bx+si+0x56a0],dh
00000255  BEC245            mov si,0x45c2
00000258  E8073D            call 0x3f62
0000025B  5E                pop si
0000025C  C3                ret
0000025D  E86B3D            call 0x3fcb
00000260  813D2127          cmp word [di],0x2721
00000264  7408              jz 0x26e
00000266  813D2122          cmp word [di],0x2221
0000026A  7402              jz 0x26e
0000026C  F8                clc
0000026D  C3                ret
0000026E  51                push cx
0000026F  53                push bx
00000270  56                push si
00000271  57                push di
00000272  55                push bp
00000273  50                push ax
00000274  8BF7              mov si,di
00000276  8BEF              mov bp,di
00000278  AC                lodsb
00000279  AC                lodsb
0000027A  8BFE              mov di,si
0000027C  8AD8              mov bl,al
0000027E  AC                lodsb
0000027F  84C0              test al,al
00000281  7406              jz 0x289
00000283  2AC3              sub al,bl
00000285  7402              jz 0x289
00000287  EBF5              jmp short 0x27e
00000289  8844FF            mov [si-0x1],al
0000028C  8BF7              mov si,di
0000028E  E85042            call 0x44e1
00000291  BFDA53            mov di,0x53da
00000294  E87940            call 0x4310
00000297  731C              jnc 0x2b5
00000299  BF3051            mov di,0x5130
0000029C  8BF5              mov si,bp
0000029E  B91000            mov cx,0x10
000002A1  E86C41            call 0x4410
000002A4  8AC3              mov al,bl
000002A6  AA                stosb
000002A7  3D8000            cmp ax,0x80
000002AA  7703              ja 0x2af
000002AC  B88A00            mov ax,0x8a
000002AF  F9                stc
000002B0  83C402            add sp,byte +0x2
000002B3  EB0C              jmp short 0x2c1
000002B5  BE4507            mov si,0x745
000002B8  8BFD              mov di,bp
000002BA  B90004            mov cx,0x400
000002BD  E87141            call 0x4431
000002C0  58                pop ax
000002C1  5D                pop bp
000002C2  5F                pop di
000002C3  5E                pop si
000002C4  5B                pop bx
000002C5  59                pop cx
000002C6  C3                ret
000002C7  0000              add [bx+si],al
000002C9  FF                db 0xff
000002CA  FF8BF289          dec word [bp+di-0x760e]
000002CE  3EB51D            ds mov ch,0x1d
000002D1  8BD7              mov dx,di
000002D3  E87341            call 0x4449
000002D6  03F9              add di,cx
000002D8  8BEF              mov bp,di
000002DA  B85C2A            mov ax,0x2a5c
000002DD  AB                stosw
000002DE  B82E2A            mov ax,0x2a2e
000002E1  AB                stosw
000002E2  B000              mov al,0x0
000002E4  AA                stosb
000002E5  B91100            mov cx,0x11
000002E8  B44E              mov ah,0x4e
000002EA  CD21              int 0x21
000002EC  7303              jnc 0x2f1
000002EE  C3                ret
000002EF  F8                clc
000002F0  C3                ret
000002F1  2E803E980001      cmp byte [cs:0x98],0x1
000002F7  750A              jnz 0x303
000002F9  B88D5F            mov ax,0x5f8d
000002FC  CD21              int 0x21
000002FE  8AC2              mov al,dl
00000300  EB0B              jmp short 0x30d
00000302  90                nop
00000303  B419              mov ah,0x19
00000305  CD21              int 0x21
00000307  8AD0              mov dl,al
00000309  B40E              mov ah,0xe
0000030B  CD21              int 0x21
0000030D  3C1A              cmp al,0x1a
0000030F  7602              jna 0x313
00000311  B01A              mov al,0x1a
00000313  8AC8              mov cl,al
00000315  B500              mov ch,0x0
00000317  E89100            call 0x3ab
0000031A  72D3              jc 0x2ef
0000031C  E8A500            call 0x3c4
0000031F  72CE              jc 0x2ef
00000321  56                push si
00000322  51                push cx
00000323  8BFD              mov di,bp
00000325  8D741E            lea si,[si+0x1e]
00000328  B05C              mov al,0x5c
0000032A  AA                stosb
0000032B  B91000            mov cx,0x10
0000032E  E80041            call 0x4431
00000331  59                pop cx
00000332  51                push cx
00000333  8B3EB51D          mov di,[0x1db5]
00000337  BE4507            mov si,0x745
0000033A  80C540            add ch,0x40
0000033D  882C              mov [si],ch
0000033F  C744013A00        mov word [si+0x1],0x3a
00000344  B304              mov bl,0x4
00000346  33C9              xor cx,cx
00000348  B8035F            mov ax,0x5f03
0000034B  2E803E980001      cmp byte [cs:0x98],0x1
00000351  7502              jnz 0x355
00000353  B08B              mov al,0x8b
00000355  CD21              int 0x21
00000357  59                pop cx
00000358  5E                pop si
00000359  7293              jc 0x2ee
0000035B  803E810201        cmp byte [0x281],0x1
00000360  75B5              jnz 0x317
00000362  51                push cx
00000363  56                push si
00000364  FF06B71D          inc word [0x1db7]
00000368  7506              jnz 0x370
0000036A  BEB854            mov si,0x54b8
0000036D  E8F23B            call 0x3f62
00000370  BEC454            mov si,0x54c4
00000373  E8EC3B            call 0x3f62
00000376  BE4507            mov si,0x745
00000379  E8E63B            call 0x3f62
0000037C  BEC654            mov si,0x54c6
0000037F  E8E03B            call 0x3f62
00000382  57                push di
00000383  8BF7              mov si,di
00000385  BF4507            mov di,0x745
00000388  B91F00            mov cx,0x1f
0000038B  E88240            call 0x4410
0000038E  B020              mov al,0x20
00000390  F3AA              rep stosb
00000392  C60500            mov byte [di],0x0
00000395  8BF7              mov si,di
00000397  5F                pop di
00000398  B8B15F            mov ax,0x5fb1
0000039B  CD21              int 0x21
0000039D  BE4507            mov si,0x745
000003A0  E8BF3B            call 0x3f62
000003A3  E8F33D            call 0x4199
000003A6  5E                pop si
000003A7  59                pop cx
000003A8  E96CFF            jmp 0x317
000003AB  FEC5              inc ch
000003AD  3AE9              cmp ch,cl
000003AF  770B              ja 0x3bc
000003B1  B80944            mov ax,0x4409
000003B4  8ADD              mov bl,ch
000003B6  CD21              int 0x21
000003B8  73F1              jnc 0x3ab
000003BA  F8                clc
000003BB  C3                ret
000003BC  F9                stc
000003BD  C3                ret
000003BE  B44F              mov ah,0x4f
000003C0  CD21              int 0x21
000003C2  721D              jc 0x3e1
000003C4  B000              mov al,0x0
000003C6  864415            xchg al,[si+0x15]
000003C9  A810              test al,0x10
000003CB  74F1              jz 0x3be
000003CD  837C1E2E          cmp word [si+0x1e],byte +0x2e
000003D1  74EB              jz 0x3be
000003D3  817C1E2E2E        cmp word [si+0x1e],0x2e2e
000003D8  7506              jnz 0x3e0
000003DA  807C2000          cmp byte [si+0x20],0x0
000003DE  74DE              jz 0x3be
000003E0  F8                clc
000003E1  C3                ret
000003E2  BA4104            mov dx,0x441
000003E5  BEC104            mov si,0x4c1
000003E8  B8A75F            mov ax,0x5fa7
000003EB  CD21              int 0x21
000003ED  C3                ret
000003EE  E863FE            call 0x254
000003F1  C606110043        mov byte [0x11],0x43
000003F6  E9E5E1            jmp 0xe5de
000003F9  57                push di
000003FA  E84C40            call 0x4449
000003FD  03F9              add di,cx
000003FF  B05C              mov al,0x5c
00000401  AA                stosb
00000402  B91000            mov cx,0x10
00000405  BE4104            mov si,0x441
00000408  E80540            call 0x4410
0000040B  47                inc di
0000040C  B91000            mov cx,0x10
0000040F  BEC104            mov si,0x4c1
00000412  E8FB3F            call 0x4410
00000415  5F                pop di
00000416  B8855F            mov ax,0x5f85
00000419  CD21              int 0x21
0000041B  C3                ret
0000041C  BE4507            mov si,0x745
0000041F  B8C05F            mov ax,0x5fc0
00000422  CD21              int 0x21
00000424  721D              jc 0x443
00000426  B42B              mov ah,0x2b
00000428  8A7403            mov dh,[si+0x3]
0000042B  8A5402            mov dl,[si+0x2]
0000042E  8B0C              mov cx,[si]
00000430  CD21              int 0x21
00000432  B42D              mov ah,0x2d
00000434  8A6C05            mov ch,[si+0x5]
00000437  8A4C04            mov cl,[si+0x4]
0000043A  8A7407            mov dh,[si+0x7]
0000043D  8A5406            mov dl,[si+0x6]
00000440  CD21              int 0x21
00000442  F8                clc
00000443  C3                ret
00000444  B8CD5F            mov ax,0x5fcd
00000447  CD21              int 0x21
00000449  C3                ret
0000044A  0000              add [bx+si],al
0000044C  0000              add [bx+si],al
0000044E  00BEBF03          add [bp+0x3bf],bh
00000452  56                push si
00000453  46                inc si
00000454  803C3A            cmp byte [si],0x3a
00000457  751C              jnz 0x475
00000459  46                inc si
0000045A  803C2E            cmp byte [si],0x2e
0000045D  7516              jnz 0x475
0000045F  46                inc si
00000460  803C00            cmp byte [si],0x0
00000463  7510              jnz 0x475
00000465  4E                dec si
00000466  C6042A            mov byte [si],0x2a
00000469  46                inc si
0000046A  C6042E            mov byte [si],0x2e
0000046D  46                inc si
0000046E  C6042A            mov byte [si],0x2a
00000471  46                inc si
00000472  C60400            mov byte [si],0x0
00000475  5E                pop si
00000476  E8EC00            call 0x565
00000479  890E3B1F          mov [0x1f3b],cx
0000047D  BA4104            mov dx,0x441
00000480  8BF2              mov si,dx
00000482  E8D53F            call 0x445a
00000485  83F902            cmp cx,byte +0x2
00000488  7512              jnz 0x49c
0000048A  46                inc si
0000048B  803C3A            cmp byte [si],0x3a
0000048E  750C              jnz 0x49c
00000490  46                inc si
00000491  C6042E            mov byte [si],0x2e
00000494  46                inc si
00000495  C60400            mov byte [si],0x0
00000498  83EE03            sub si,byte +0x3
0000049B  41                inc cx
0000049C  890E391F          mov [0x1f39],cx
000004A0  B93700            mov cx,0x37
000004A3  B44E              mov ah,0x4e
000004A5  CD21              int 0x21
000004A7  7308              jnc 0x4b1
000004A9  3D1200            cmp ax,0x12
000004AC  740F              jz 0x4bd
000004AE  F9                stc
000004AF  EB92              jmp short 0x443
000004B1  F6062F0B10        test byte [0xb2f],0x10
000004B6  7405              jz 0x4bd
000004B8  C606381F01        mov byte [0x1f38],0x1
000004BD  BABF03            mov dx,0x3bf
000004C0  B92700            mov cx,0x27
000004C3  B44E              mov ah,0x4e
000004C5  CD21              int 0x21
000004C7  7303              jnc 0x4cc
000004C9  E977FF            jmp 0x443
000004CC  803E381F01        cmp byte [0x1f38],0x1
000004D1  7513              jnz 0x4e6
000004D3  BE380B            mov si,0xb38
000004D6  BF4104            mov di,0x441
000004D9  033E391F          add di,[0x1f39]
000004DD  B05C              mov al,0x5c
000004DF  AA                stosb
000004E0  B91000            mov cx,0x10
000004E3  E84B3F            call 0x4431
000004E6  BA4104            mov dx,0x441
000004E9  33C9              xor cx,cx
000004EB  B43C              mov ah,0x3c
000004ED  CD21              int 0x21
000004EF  72D8              jc 0x4c9
000004F1  50                push ax
000004F2  BE380B            mov si,0xb38
000004F5  BFBF03            mov di,0x3bf
000004F8  8BD7              mov dx,di
000004FA  033E3B1F          add di,[0x1f3b]
000004FE  B90D00            mov cx,0xd
00000501  E82D3F            call 0x4431
00000504  5F                pop di
00000505  803E810201        cmp byte [0x281],0x1
0000050A  7508              jnz 0x514
0000050C  8BF2              mov si,dx
0000050E  E8513A            call 0x3f62
00000511  E8853C            call 0x4199
00000514  B8403D            mov ax,0x3d40
00000517  CD21              int 0x21
00000519  7235              jc 0x550
0000051B  8BF0              mov si,ax
0000051D  B9FFFF            mov cx,0xffff
00000520  BAFFFF            mov dx,0xffff
00000523  B8975F            mov ax,0x5f97
00000526  CD21              int 0x21
00000528  7227              jc 0x551
0000052A  B80057            mov ax,0x5700
0000052D  8BDE              mov bx,si
0000052F  CD21              int 0x21
00000531  B80157            mov ax,0x5701
00000534  8BDF              mov bx,di
00000536  CD21              int 0x21
00000538  8BDE              mov bx,si
0000053A  B43E              mov ah,0x3e
0000053C  CD21              int 0x21
0000053E  8BDF              mov bx,di
00000540  B43E              mov ah,0x3e
00000542  CD21              int 0x21
00000544  B44F              mov ah,0x4f
00000546  CD21              int 0x21
00000548  7382              jnc 0x4cc
0000054A  3D1200            cmp ax,0x12
0000054D  7301              jnc 0x550
0000054F  F9                stc
00000550  C3                ret
00000551  3D4D00            cmp ax,0x4d
00000554  75FA              jnz 0x550
00000556  8BDF              mov bx,di
00000558  B43E              mov ah,0x3e
0000055A  CD21              int 0x21
0000055C  BA4104            mov dx,0x441
0000055F  B441              mov ah,0x41
00000561  CD21              int 0x21
00000563  F9                stc
00000564  C3                ret
00000565  E8F23E            call 0x445a
00000568  03F1              add si,cx
0000056A  E30C              jcxz 0x578
0000056C  803C5C            cmp byte [si],0x5c
0000056F  7503              jnz 0x574
00000571  41                inc cx
00000572  EB04              jmp short 0x578
00000574  49                dec cx
00000575  4E                dec si
00000576  EBF2              jmp short 0x56a
00000578  C3                ret
00000579  8BEF              mov bp,di
0000057B  BE4507            mov si,0x745
0000057E  BF4508            mov di,0x845
00000581  33DB              xor bx,bx
00000583  53                push bx
00000584  B8025F            mov ax,0x5f02
00000587  2E803E980001      cmp byte [cs:0x98],0x1
0000058D  7502              jnz 0x591
0000058F  B08A              mov al,0x8a
00000591  CD21              int 0x21
00000593  8BD3              mov dx,bx
00000595  5B                pop bx
00000596  7231              jc 0x5c9
00000598  80FA04            cmp dl,0x4
0000059B  7529              jnz 0x5c6
0000059D  56                push si
0000059E  8BF5              mov si,bp
000005A0  E8B73E            call 0x445a
000005A3  F3A6              repe cmpsb
000005A5  5E                pop si
000005A6  751E              jnz 0x5c6
000005A8  8A05              mov al,[di]
000005AA  84C0              test al,al
000005AC  7408              jz 0x5b6
000005AE  3C20              cmp al,0x20
000005B0  7404              jz 0x5b6
000005B2  3C5C              cmp al,0x5c
000005B4  7510              jnz 0x5c6
000005B6  B8045F            mov ax,0x5f04
000005B9  2E803E980001      cmp byte [cs:0x98],0x1
000005BF  7502              jnz 0x5c3
000005C1  B08C              mov al,0x8c
000005C3  CD21              int 0x21
000005C5  4B                dec bx
000005C6  43                inc bx
000005C7  EBBA              jmp short 0x583
000005C9  F8                clc
000005CA  C3                ret
000005CB  008BDABF          add [bp+di-0x4026],cl
000005CF  BF038B            mov di,0x8b03
000005D2  D7                xlatb
000005D3  803D00            cmp byte [di],0x0
000005D6  7506              jnz 0x5de
000005D8  B02E              mov al,0x2e
000005DA  AA                stosb
000005DB  E98100            jmp 0x65f
000005DE  E8683E            call 0x4449
000005E1  03F9              add di,cx
000005E3  E89401            call 0x77a
000005E6  E37A              jcxz 0x662
000005E8  8B04              mov ax,[si]
000005EA  3C2E              cmp al,0x2e
000005EC  7512              jnz 0x600
000005EE  3D2E2E            cmp ax,0x2e2e
000005F1  746C              jz 0x65f
000005F3  3D2E00            cmp ax,0x2e
000005F6  7467              jz 0x65f
000005F8  B02A              mov al,0x2a
000005FA  E8AC01            call 0x7a9
000005FD  EB6D              jmp short 0x66c
000005FF  90                nop
00000600  8B45FF            mov ax,[di-0x1]
00000603  3D2E00            cmp ax,0x2e
00000606  7508              jnz 0x610
00000608  C645FF00          mov byte [di-0x1],0x0
0000060C  FE06B920          inc byte [0x20b9]
00000610  803E672200        cmp byte [0x2267],0x0
00000615  741E              jz 0x635
00000617  803EB92001        cmp byte [0x20b9],0x1
0000061C  744E              jz 0x66c
0000061E  803EB92002        cmp byte [0x20b9],0x2
00000623  7540              jnz 0x665
00000625  C745FF2E20        mov word [di-0x1],0x202e
0000062A  C745012020        mov word [di+0x1],0x2020
0000062F  C6450300          mov byte [di+0x3],0x0
00000633  EB37              jmp short 0x66c
00000635  B93100            mov cx,0x31
00000638  803E740201        cmp byte [0x274],0x1
0000063D  7503              jnz 0x642
0000063F  B93F00            mov cx,0x3f
00000642  B44E              mov ah,0x4e
00000644  CD21              int 0x21
00000646  724D              jc 0x695
00000648  F6471510          test byte [bx+0x15],0x10
0000064C  7509              jnz 0x657
0000064E  803EB92002        cmp byte [0x20b9],0x2
00000653  7410              jz 0x665
00000655  EB15              jmp short 0x66c
00000657  BFBF03            mov di,0x3bf
0000065A  E8EC3D            call 0x4449
0000065D  03F9              add di,cx
0000065F  B05C              mov al,0x5c
00000661  AA                stosb
00000662  B02A              mov al,0x2a
00000664  AA                stosb
00000665  B82E2A            mov ax,0x2a2e
00000668  AB                stosw
00000669  B000              mov al,0x0
0000066B  AA                stosb
0000066C  BEBF03            mov si,0x3bf
0000066F  BFC105            mov di,0x5c1
00000672  8BEF              mov bp,di
00000674  B80060            mov ax,0x6000
00000677  CD21              int 0x21
00000679  721A              jc 0x695
0000067B  8BF5              mov si,bp
0000067D  E8E5FE            call 0x565
00000680  03E9              add bp,cx
00000682  B93100            mov cx,0x31
00000685  803E740201        cmp byte [0x274],0x1
0000068A  7503              jnz 0x68f
0000068C  B93F00            mov cx,0x3f
0000068F  B44E              mov ah,0x4e
00000691  CD21              int 0x21
00000693  7303              jnc 0x698
00000695  E9E000            jmp 0x778
00000698  3EC6460000        mov byte [ds:bp+0x0],0x0
0000069D  BED254            mov si,0x54d2
000006A0  E8BF38            call 0x3f62
000006A3  BEC105            mov si,0x5c1
000006A6  E8B938            call 0x3f62
000006A9  E8ED3A            call 0x4199
000006AC  E8EA3A            call 0x4199
000006AF  BF4507            mov di,0x745
000006B2  81C70000          add di,0x0
000006B6  57                push di
000006B7  B020              mov al,0x20
000006B9  B95000            mov cx,0x50
000006BC  F3AA              rep stosb
000006BE  BF4507            mov di,0x745
000006C1  81C73600          add di,0x36
000006C5  C60500            mov byte [di],0x0
000006C8  5F                pop di
000006C9  57                push di
000006CA  8D771E            lea si,[bx+0x1e]
000006CD  B90D00            mov cx,0xd
000006D0  E83D3D            call 0x4410
000006D3  C60520            mov byte [di],0x20
000006D6  BF4507            mov di,0x745
000006D9  81C71700          add di,0x17
000006DD  F6471510          test byte [bx+0x15],0x10
000006E1  754C              jnz 0x72f
000006E3  57                push di
000006E4  BF4507            mov di,0x745
000006E7  81C72100          add di,0x21
000006EB  E8CC00            call 0x7ba
000006EE  5F                pop di
000006EF  7529              jnz 0x71a
000006F1  804F1540          or byte [bx+0x15],0x40
000006F5  BF4507            mov di,0x745
000006F8  81C72100          add di,0x21
000006FC  C60500            mov byte [di],0x0
000006FF  8D771E            lea si,[bx+0x1e]
00000702  57                push di
00000703  8BFD              mov di,bp
00000705  B94000            mov cx,0x40
00000708  E8263D            call 0x4431
0000070B  5F                pop di
0000070C  8BF7              mov si,di
0000070E  BFC105            mov di,0x5c1
00000711  B8B55F            mov ax,0x5fb5
00000714  CD21              int 0x21
00000716  8BFE              mov di,si
00000718  EB38              jmp short 0x752
0000071A  8BF7              mov si,di
0000071C  8B471A            mov ax,[bx+0x1a]
0000071F  8B571C            mov dx,[bx+0x1c]
00000722  E80B38            call 0x3f30
00000725  B92100            mov cx,0x21
00000728  81E91900          sub cx,0x19
0000072C  E8693C            call 0x4398
0000072F  BF4507            mov di,0x745
00000732  81C72100          add di,0x21
00000736  8B4718            mov ax,[bx+0x18]
00000739  E89837            call 0x3ed4
0000073C  E8AF37            call 0x3eee
0000073F  C60520            mov byte [di],0x20
00000742  BF4507            mov di,0x745
00000745  81C72E00          add di,0x2e
00000749  8B4716            mov ax,[bx+0x16]
0000074C  E8173D            call 0x4466
0000074F  E82E3D            call 0x4480
00000752  8A7715            mov dh,[bx+0x15]
00000755  D0E6              shl dh,1
00000757  B90700            mov cx,0x7
0000075A  BF4507            mov di,0x745
0000075D  81C70F00          add di,0xf
00000761  BECB54            mov si,0x54cb
00000764  E85737            call 0x3ebe
00000767  5F                pop di
00000768  E80438            call 0x3f6f
0000076B  E82B3A            call 0x4199
0000076E  B44F              mov ah,0x4f
00000770  CD21              int 0x21
00000772  7203              jc 0x777
00000774  E938FF            jmp 0x6af
00000777  F8                clc
00000778  C3                ret
00000779  008BF733          add [bp+di+0x33f7],cl
0000077D  C9                leave
0000077E  8A44FF            mov al,[si-0x1]
00000781  3C5C              cmp al,0x5c
00000783  7423              jz 0x7a8
00000785  3C3A              cmp al,0x3a
00000787  741F              jz 0x7a8
00000789  3C2E              cmp al,0x2e
0000078B  7507              jnz 0x794
0000078D  C606B92001        mov byte [0x20b9],0x1
00000792  EB0C              jmp short 0x7a0
00000794  3C3F              cmp al,0x3f
00000796  7404              jz 0x79c
00000798  3C2A              cmp al,0x2a
0000079A  7504              jnz 0x7a0
0000079C  FE066722          inc byte [0x2267]
000007A0  41                inc cx
000007A1  4E                dec si
000007A2  81FEBF03          cmp si,0x3bf
000007A6  75D6              jnz 0x77e
000007A8  C3                ret
000007A9  41                inc cx
000007AA  56                push si
000007AB  51                push cx
000007AC  BF4104            mov di,0x441
000007AF  F3A4              rep movsb
000007B1  59                pop cx
000007B2  5F                pop di
000007B3  BE4104            mov si,0x441
000007B6  AA                stosb
000007B7  F3A4              rep movsb
000007B9  C3                ret
000007BA  F6471510          test byte [bx+0x15],0x10
000007BE  750B              jnz 0x7cb
000007C0  817F169EF7        cmp word [bx+0x16],0xf79e
000007C5  7504              jnz 0x7cb
000007C7  837F18E0          cmp word [bx+0x18],byte -0x20
000007CB  C3                ret
000007CC  57                push di
000007CD  E8793C            call 0x4449
000007D0  03F9              add di,cx
000007D2  B05C              mov al,0x5c
000007D4  AA                stosb
000007D5  B91000            mov cx,0x10
000007D8  BE4104            mov si,0x441
000007DB  E8323C            call 0x4410
000007DE  5F                pop di
000007DF  B8865F            mov ax,0x5f86
000007E2  CD21              int 0x21
000007E4  C3                ret
000007E5  BEBF03            mov si,0x3bf
000007E8  56                push si
000007E9  E87637            call 0x3f62
000007EC  5E                pop si
000007ED  81C68000          add si,0x80
000007F1  81FE4104          cmp si,0x441
000007F5  7703              ja 0x7fa
000007F7  BE4104            mov si,0x441
000007FA  81FEC105          cmp si,0x5c1
000007FE  770F              ja 0x80f
00000800  803C00            cmp byte [si],0x0
00000803  74E8              jz 0x7ed
00000805  56                push si
00000806  BEA854            mov si,0x54a8
00000809  E85637            call 0x3f62
0000080C  5E                pop si
0000080D  EBD9              jmp short 0x7e8
0000080F  E88739            call 0x4199
00000812  F8                clc
00000813  C3                ret
00000814  BEBF03            mov si,0x3bf
00000817  837C013A          cmp word [si+0x1],byte +0x3a
0000081B  7505              jnz 0x822
0000081D  C744025C00        mov word [si+0x2],0x5c
00000822  BF470B            mov di,0xb47
00000825  B80060            mov ax,0x6000
00000828  CD21              int 0x21
0000082A  7251              jc 0x87d
0000082C  813E470B5C5C      cmp word [0xb47],0x5c5c
00000832  753B              jnz 0x86f
00000834  8BF7              mov si,di
00000836  46                inc si
00000837  46                inc si
00000838  AC                lodsb
00000839  3C20              cmp al,0x20
0000083B  7604              jna 0x841
0000083D  3C5C              cmp al,0x5c
0000083F  75F7              jnz 0x838
00000841  4E                dec si
00000842  33D2              xor dx,dx
00000844  803E820201        cmp byte [0x282],0x1
00000849  7503              jnz 0x84e
0000084B  80CA02            or dl,0x2
0000084E  803E830201        cmp byte [0x283],0x1
00000853  7503              jnz 0x858
00000855  80CA01            or dl,0x1
00000858  B8B35F            mov ax,0x5fb3
0000085B  CD21              int 0x21
0000085D  721E              jc 0x87d
0000085F  803E8B0200        cmp byte [0x28b],0x0
00000864  7407              jz 0x86d
00000866  803E820201        cmp byte [0x282],0x1
0000086B  7502              jnz 0x86f
0000086D  8BFE              mov di,si
0000086F  803E8A0200        cmp byte [0x28a],0x0
00000874  7407              jz 0x87d
00000876  E8F636            call 0x3f6f
00000879  E81D39            call 0x4199
0000087C  F8                clc
0000087D  C3                ret
0000087E  8B2E7C5C          mov bp,[0x5c7c]
00000882  BF4106            mov di,0x641
00000885  803D00            cmp byte [di],0x0
00000888  7532              jnz 0x8bc
0000088A  BE9E4D            mov si,0x4d9e
0000088D  E8D236            call 0x3f62
00000890  BE1553            mov si,0x5315
00000893  E89C00            call 0x932
00000896  BED94D            mov si,0x4dd9
00000899  E8C636            call 0x3f62
0000089C  BE2846            mov si,0x4628
0000089F  E89000            call 0x932
000008A2  BE0D4E            mov si,0x4e0d
000008A5  E8BA36            call 0x3f62
000008A8  E8CB00            call 0x976
000008AB  7306              jnc 0x8b3
000008AD  BE3F4E            mov si,0x4e3f
000008B0  E8AF36            call 0x3f62
000008B3  BE794E            mov si,0x4e79
000008B6  E8A936            call 0x3f62
000008B9  EB71              jmp short 0x92c
000008BB  90                nop
000008BC  E8DA38            call 0x4199
000008BF  BE1553            mov si,0x5315
000008C2  E82E3B            call 0x43f3
000008C5  730E              jnc 0x8d5
000008C7  BE2846            mov si,0x4628
000008CA  E8263B            call 0x43f3
000008CD  7306              jnc 0x8d5
000008CF  8D75FF            lea si,[di-0x1]
000008D2  C6042A            mov byte [si],0x2a
000008D5  4E                dec si
000008D6  C60460            mov byte [si],0x60
000008D9  E8FB00            call 0x9d7
000008DC  724F              jc 0x92d
000008DE  BF4507            mov di,0x745
000008E1  B9FF03            mov cx,0x3ff
000008E4  E85B38            call 0x4142
000008E7  B88900            mov ax,0x89
000008EA  7239              jc 0x925
000008EC  813D605A          cmp word [di],0x5a60
000008F0  75EC              jnz 0x8de
000008F2  807D025A          cmp byte [di+0x2],0x5a
000008F6  75E6              jnz 0x8de
000008F8  BF4507            mov di,0x745
000008FB  B9FF03            mov cx,0x3ff
000008FE  E84138            call 0x4142
00000901  B88900            mov ax,0x89
00000904  721F              jc 0x925
00000906  E8513B            call 0x445a
00000909  56                push si
0000090A  F3A6              repe cmpsb
0000090C  5E                pop si
0000090D  75E9              jnz 0x8f8
0000090F  BF4507            mov di,0x745
00000912  B9FF03            mov cx,0x3ff
00000915  E82A38            call 0x4142
00000918  720A              jc 0x924
0000091A  803D60            cmp byte [di],0x60
0000091D  7405              jz 0x924
0000091F  E84D36            call 0x3f6f
00000922  EBEB              jmp short 0x90f
00000924  F8                clc
00000925  9C                pushf
00000926  E8D300            call 0x9fc
00000929  9D                popf
0000092A  EB01              jmp short 0x92d
0000092C  F8                clc
0000092D  892E7C5C          mov [0x5c7c],bp
00000931  C3                ret
00000932  BF4507            mov di,0x745
00000935  57                push di
00000936  B020              mov al,0x20
00000938  B94F00            mov cx,0x4f
0000093B  F3AA              rep stosb
0000093D  B80D0A            mov ax,0xa0d
00000940  AB                stosw
00000941  B000              mov al,0x0
00000943  AA                stosb
00000944  5F                pop di
00000945  83C704            add di,byte +0x4
00000948  33D2              xor dx,dx
0000094A  8D7402            lea si,[si+0x2]
0000094D  803C00            cmp byte [si],0x0
00000950  7414              jz 0x966
00000952  B90D00            mov cx,0xd
00000955  57                push di
00000956  E8B73A            call 0x4410
00000959  C60520            mov byte [di],0x20
0000095C  5F                pop di
0000095D  83C70D            add di,byte +0xd
00000960  42                inc dx
00000961  83FA05            cmp dx,byte +0x5
00000964  72E4              jc 0x94a
00000966  85D2              test dx,dx
00000968  740B              jz 0x975
0000096A  BF4507            mov di,0x745
0000096D  E8FF35            call 0x3f6f
00000970  83FA05            cmp dx,byte +0x5
00000973  74BD              jz 0x932
00000975  C3                ret
00000976  E85E00            call 0x9d7
00000979  725B              jc 0x9d6
0000097B  BF4507            mov di,0x745
0000097E  57                push di
0000097F  B020              mov al,0x20
00000981  B94F00            mov cx,0x4f
00000984  F3AA              rep stosb
00000986  B80D0A            mov ax,0xa0d
00000989  AB                stosw
0000098A  B000              mov al,0x0
0000098C  AA                stosb
0000098D  5F                pop di
0000098E  83C704            add di,byte +0x4
00000991  33D2              xor dx,dx
00000993  57                push di
00000994  BF4509            mov di,0x945
00000997  B98000            mov cx,0x80
0000099A  E8A537            call 0x4142
0000099D  5F                pop di
0000099E  7224              jc 0x9c4
000009A0  813E4509602A      cmp word [0x945],0x2a60
000009A6  75EB              jnz 0x993
000009A8  BE4709            mov si,0x947
000009AB  B90F00            mov cx,0xf
000009AE  57                push di
000009AF  E85E3A            call 0x4410
000009B2  C745FE2020        mov word [di-0x2],0x2020
000009B7  C60520            mov byte [di],0x20
000009BA  5F                pop di
000009BB  83C70D            add di,byte +0xd
000009BE  42                inc dx
000009BF  83FA05            cmp dx,byte +0x5
000009C2  72CF              jc 0x993
000009C4  85D2              test dx,dx
000009C6  740B              jz 0x9d3
000009C8  BF4507            mov di,0x745
000009CB  E8A135            call 0x3f6f
000009CE  83FA05            cmp dx,byte +0x5
000009D1  74A8              jz 0x97b
000009D3  E82600            call 0x9fc
000009D6  C3                ret
000009D7  BF4507            mov di,0x745
000009DA  B98000            mov cx,0x80
000009DD  E87937            call 0x4159
000009E0  E8663A            call 0x4449
000009E3  57                push di
000009E4  03F9              add di,cx
000009E6  83EF03            sub di,byte +0x3
000009E9  B8484C            mov ax,0x4c48
000009EC  AB                stosw
000009ED  B050              mov al,0x50
000009EF  AA                stosb
000009F0  5A                pop dx
000009F1  B8403D            mov ax,0x3d40
000009F4  CD21              int 0x21
000009F6  7203              jc 0x9fb
000009F8  A37C5C            mov [0x5c7c],ax
000009FB  C3                ret
000009FC  50                push ax
000009FD  B43E              mov ah,0x3e
000009FF  8B1E7C5C          mov bx,[0x5c7c]
00000A03  CD21              int 0x21
00000A05  58                pop ax
00000A06  C3                ret
00000A07  BF4507            mov di,0x745
00000A0A  BEBF03            mov si,0x3bf
00000A0D  B80060            mov ax,0x6000
00000A10  CD21              int 0x21
00000A12  BE4104            mov si,0x441
00000A15  B8B45F            mov ax,0x5fb4
00000A18  CD21              int 0x21
00000A1A  C3                ret
00000A1B  803E7E0201        cmp byte [0x27e],0x1
00000A20  750A              jnz 0xa2c
00000A22  BF4507            mov di,0x745
00000A25  C60500            mov byte [di],0x0
00000A28  B3FF              mov bl,0xff
00000A2A  EB3B              jmp short 0xa67
00000A2C  B91000            mov cx,0x10
00000A2F  BEBF03            mov si,0x3bf
00000A32  803C00            cmp byte [si],0x0
00000A35  7505              jnz 0xa3c
00000A37  B88400            mov ax,0x84
00000A3A  F9                stc
00000A3B  C3                ret
00000A3C  BF4507            mov di,0x745
00000A3F  E8CE39            call 0x4410
00000A42  47                inc di
00000A43  B91000            mov cx,0x10
00000A46  BE4104            mov si,0x441
00000A49  E8C439            call 0x4410
00000A4C  B3FF              mov bl,0xff
00000A4E  BEC104            mov si,0x4c1
00000A51  803C00            cmp byte [si],0x0
00000A54  740E              jz 0xa64
00000A56  B88700            mov ax,0x87
00000A59  E86239            call 0x43be
00000A5C  720E              jc 0xa6c
00000A5E  81FBFE00          cmp bx,0xfe
00000A62  77D6              ja 0xa3a
00000A64  BF4507            mov di,0x745
00000A67  B8B65F            mov ax,0x5fb6
00000A6A  CD21              int 0x21
00000A6C  C3                ret
00000A6D  0000              add [bx+si],al
00000A6F  0000              add [bx+si],al
00000A71  00FF              add bh,bh
00000A73  0000              add [bx+si],al
00000A75  59                pop cx
00000A76  07                pop es
00000A77  00BE4105          add [bp+0x541],bh
00000A7B  803C00            cmp byte [si],0x0
00000A7E  7416              jz 0xa96
00000A80  B88700            mov ax,0x87
00000A83  E83839            call 0x43be
00000A86  7304              jnc 0xa8c
00000A88  F9                stc
00000A89  E94801            jmp 0xbd4
00000A8C  81FBFE00          cmp bx,0xfe
00000A90  77F6              ja 0xa88
00000A92  881E6025          mov [0x2560],bl
00000A96  57                push di
00000A97  B02A              mov al,0x2a
00000A99  B90F00            mov cx,0xf
00000A9C  813D5C5C          cmp word [di],0x5c5c
00000AA0  7502              jnz 0xaa4
00000AA2  47                inc di
00000AA3  47                inc di
00000AA4  F2AE              repne scasb
00000AA6  9C                pushf
00000AA7  803E760200        cmp byte [0x276],0x0
00000AAC  7412              jz 0xac0
00000AAE  B89D5F            mov ax,0x5f9d
00000AB1  CD21              int 0x21
00000AB3  2E88166525        mov [cs:0x2565],dl
00000AB8  80CA40            or dl,0x40
00000ABB  B89E5F            mov ax,0x5f9e
00000ABE  CD21              int 0x21
00000AC0  9D                popf
00000AC1  5F                pop di
00000AC2  7406              jz 0xaca
00000AC4  E80E01            call 0xbd5
00000AC7  E9F500            jmp 0xbbf
00000ACA  83E90F            sub cx,byte +0xf
00000ACD  F7D1              not cx
00000ACF  890E5E25          mov [0x255e],cx
00000AD3  893E6125          mov [0x2561],di
00000AD7  BEBF03            mov si,0x3bf
00000ADA  813C5C5C          cmp word [si],0x5c5c
00000ADE  7502              jnz 0xae2
00000AE0  46                inc si
00000AE1  46                inc si
00000AE2  8B3E6325          mov di,[0x2563]
00000AE6  B91000            mov cx,0x10
00000AE9  F3A4              rep movsb
00000AEB  B8845F            mov ax,0x5f84
00000AEE  8B1E5B25          mov bx,[0x255b]
00000AF2  BF4507            mov di,0x745
00000AF5  CD21              int 0x21
00000AF7  7303              jnc 0xafc
00000AF9  E99D00            jmp 0xb99
00000AFC  8B0E5E25          mov cx,[0x255e]
00000B00  E30E              jcxz 0xb10
00000B02  8B366325          mov si,[0x2563]
00000B06  F3A6              repe cmpsb
00000B08  7406              jz 0xb10
00000B0A  FF065B25          inc word [0x255b]
00000B0E  EBDB              jmp short 0xaeb
00000B10  803E6025FF        cmp byte [0x2560],0xff
00000B15  740C              jz 0xb23
00000B17  3A166025          cmp dl,[0x2560]
00000B1B  7406              jz 0xb23
00000B1D  FF065B25          inc word [0x255b]
00000B21  EBC8              jmp short 0xaeb
00000B23  33DB              xor bx,bx
00000B25  BF6D07            mov di,0x76d
00000B28  BE4507            mov si,0x745
00000B2B  B90F00            mov cx,0xf
00000B2E  B8805F            mov ax,0x5f80
00000B31  CD21              int 0x21
00000B33  720D              jc 0xb42
00000B35  51                push cx
00000B36  57                push di
00000B37  56                push si
00000B38  F3A6              repe cmpsb
00000B3A  5E                pop si
00000B3B  5F                pop di
00000B3C  59                pop cx
00000B3D  74CB              jz 0xb0a
00000B3F  43                inc bx
00000B40  EBEC              jmp short 0xb2e
00000B42  B91000            mov cx,0x10
00000B45  BE4507            mov si,0x745
00000B48  BFBF03            mov di,0x3bf
00000B4B  813D5C5C          cmp word [di],0x5c5c
00000B4F  7502              jnz 0xb53
00000B51  47                inc di
00000B52  47                inc di
00000B53  AC                lodsb
00000B54  3C20              cmp al,0x20
00000B56  7407              jz 0xb5f
00000B58  3C00              cmp al,0x0
00000B5A  7403              jz 0xb5f
00000B5C  AA                stosb
00000B5D  E2F4              loop 0xb53
00000B5F  C60500            mov byte [di],0x0
00000B62  8B3E6125          mov di,[0x2561]
00000B66  BE2E55            mov si,0x552e
00000B69  E8F633            call 0x3f62
00000B6C  BEBF03            mov si,0x3bf
00000B6F  E8F033            call 0x3f62
00000B72  E86000            call 0xbd5
00000B75  9C                pushf
00000B76  BF4655            mov di,0x5546
00000B79  720A              jc 0xb85
00000B7B  C6065D2501        mov byte [0x255d],0x1
00000B80  BF3855            mov di,0x5538
00000B83  EB08              jmp short 0xb8d
00000B85  3D8E00            cmp ax,0x8e
00000B88  7503              jnz 0xb8d
00000B8A  BF5155            mov di,0x5551
00000B8D  9D                popf
00000B8E  83165B2500        adc word [0x255b],byte +0x0
00000B93  E8D933            call 0x3f6f
00000B96  E952FF            jmp 0xaeb
00000B99  803E5D2501        cmp byte [0x255d],0x1
00000B9E  731F              jnc 0xbbf
00000BA0  8B3E6125          mov di,[0x2561]
00000BA4  B02A              mov al,0x2a
00000BA6  B91100            mov cx,0x11
00000BA9  57                push di
00000BAA  F2AE              repne scasb
00000BAC  3845FF            cmp [di-0x1],al
00000BAF  B89300            mov ax,0x93
00000BB2  F9                stc
00000BB3  5F                pop di
00000BB4  7409              jz 0xbbf
00000BB6  B8815F            mov ax,0x5f81
00000BB9  8A1E6025          mov bl,[0x2560]
00000BBD  CD21              int 0x21
00000BBF  9C                pushf
00000BC0  50                push ax
00000BC1  803E760200        cmp byte [0x276],0x0
00000BC6  740A              jz 0xbd2
00000BC8  2E8A166525        mov dl,[cs:0x2565]
00000BCD  B89E5F            mov ax,0x5f9e
00000BD0  CD21              int 0x21
00000BD2  58                pop ax
00000BD3  9D                popf
00000BD4  C3                ret
00000BD5  57                push di
00000BD6  8BF7              mov si,di
00000BD8  BF4507            mov di,0x745
00000BDB  B9FF03            mov cx,0x3ff
00000BDE  E85038            call 0x4431
00000BE1  5F                pop di
00000BE2  57                push di
00000BE3  E86338            call 0x4449
00000BE6  03F9              add di,cx
00000BE8  B05C              mov al,0x5c
00000BEA  AA                stosb
00000BEB  B91000            mov cx,0x10
00000BEE  BE4104            mov si,0x441
00000BF1  E81C38            call 0x4410
00000BF4  47                inc di
00000BF5  B91000            mov cx,0x10
00000BF8  BEC104            mov si,0x4c1
00000BFB  E81238            call 0x4410
00000BFE  5F                pop di
00000BFF  8A1E6025          mov bl,[0x2560]
00000C03  33ED              xor bp,bp
00000C05  E86206            call 0x126a
00000C08  B8815F            mov ax,0x5f81
00000C0B  CD21              int 0x21
00000C0D  7316              jnc 0xc25
00000C0F  803E750201        cmp byte [0x275],0x1
00000C14  750D              jnz 0xc23
00000C16  3D3300            cmp ax,0x33
00000C19  7418              jz 0xc33
00000C1B  3D3500            cmp ax,0x35
00000C1E  7413              jz 0xc33
00000C20  3D3700            cmp ax,0x37
00000C23  F9                stc
00000C24  C3                ret
00000C25  BF4507            mov di,0x745
00000C28  803E760200        cmp byte [0x276],0x0
00000C2D  7503              jnz 0xc32
00000C2F  E81419            call 0x2546
00000C32  C3                ret
00000C33  85ED              test bp,bp
00000C35  751F              jnz 0xc56
00000C37  BEE854            mov si,0x54e8
00000C3A  E82533            call 0x3f62
00000C3D  BE4707            mov si,0x747
00000C40  50                push ax
00000C41  56                push si
00000C42  AC                lodsb
00000C43  3C20              cmp al,0x20
00000C45  77FB              ja 0xc42
00000C47  C60400            mov byte [si],0x0
00000C4A  5E                pop si
00000C4B  58                pop ax
00000C4C  E81333            call 0x3f62
00000C4F  BEFC54            mov si,0x54fc
00000C52  E80D33            call 0x3f62
00000C55  45                inc bp
00000C56  803E970001        cmp byte [0x97],0x1
00000C5B  7517              jnz 0xc74
00000C5D  50                push ax
00000C5E  53                push bx
00000C5F  B405              mov ah,0x5
00000C61  CD18              int 0x18
00000C63  80FF01            cmp bh,0x1
00000C66  7508              jnz 0xc70
00000C68  3C1B              cmp al,0x1b
00000C6A  7504              jnz 0xc70
00000C6C  5B                pop bx
00000C6D  58                pop ax
00000C6E  F9                stc
00000C6F  C3                ret
00000C70  5B                pop bx
00000C71  58                pop ax
00000C72  EB91              jmp short 0xc05
00000C74  50                push ax
00000C75  B401              mov ah,0x1
00000C77  CD16              int 0x16
00000C79  58                pop ax
00000C7A  7489              jz 0xc05
00000C7C  50                push ax
00000C7D  B400              mov ah,0x0
00000C7F  CD16              int 0x16
00000C81  3C1B              cmp al,0x1b
00000C83  58                pop ax
00000C84  75D0              jnz 0xc56
00000C86  F9                stc
00000C87  C3                ret
00000C88  57                push di
00000C89  B02A              mov al,0x2a
00000C8B  B90F00            mov cx,0xf
00000C8E  813D5C5C          cmp word [di],0x5c5c
00000C92  7502              jnz 0xc96
00000C94  47                inc di
00000C95  47                inc di
00000C96  F2AE              repne scasb
00000C98  5F                pop di
00000C99  740B              jz 0xca6
00000C9B  E8CC05            call 0x126a
00000C9E  B8825F            mov ax,0x5f82
00000CA1  CD21              int 0x21
00000CA3  EB59              jmp short 0xcfe
00000CA5  90                nop
00000CA6  C70645075C5C      mov word [0x745],0x5c5c
00000CAC  83E90F            sub cx,byte +0xf
00000CAF  F7D1              not cx
00000CB1  890E5E25          mov [0x255e],cx
00000CB5  893E6125          mov [0x2561],di
00000CB9  BEBF03            mov si,0x3bf
00000CBC  813C5C5C          cmp word [si],0x5c5c
00000CC0  7502              jnz 0xcc4
00000CC2  46                inc si
00000CC3  46                inc si
00000CC4  8B3E6325          mov di,[0x2563]
00000CC8  B91000            mov cx,0x10
00000CCB  F3A4              rep movsb
00000CCD  B8805F            mov ax,0x5f80
00000CD0  8B1E5B25          mov bx,[0x255b]
00000CD4  BF4707            mov di,0x747
00000CD7  CD21              int 0x21
00000CD9  7223              jc 0xcfe
00000CDB  8B0E5E25          mov cx,[0x255e]
00000CDF  E30E              jcxz 0xcef
00000CE1  8B366325          mov si,[0x2563]
00000CE5  F3A6              repe cmpsb
00000CE7  7406              jz 0xcef
00000CE9  FF065B25          inc word [0x255b]
00000CED  EBDE              jmp short 0xccd
00000CEF  BF4507            mov di,0x745
00000CF2  B8825F            mov ax,0x5f82
00000CF5  CD21              int 0x21
00000CF7  83165B2500        adc word [0x255b],byte +0x0
00000CFC  EBCF              jmp short 0xccd
00000CFE  F8                clc
00000CFF  C3                ret
00000D00  BA0100            mov dx,0x1
00000D03  33C9              xor cx,cx
00000D05  803E7E0201        cmp byte [0x27e],0x1
00000D0A  7502              jnz 0xd0e
00000D0C  8BCA              mov cx,dx
00000D0E  B8CC5F            mov ax,0x5fcc
00000D11  CD21              int 0x21
00000D13  C3                ret
00000D14  8BEF              mov bp,di
00000D16  803E410400        cmp byte [0x441],0x0
00000D1B  7506              jnz 0xd23
00000D1D  C70641042A00      mov word [0x441],0x2a
00000D23  803EC10400        cmp byte [0x4c1],0x0
00000D28  7506              jnz 0xd30
00000D2A  C706C1042A00      mov word [0x4c1],0x2a
00000D30  8D3E4507          lea di,[0x745]
00000D34  BE4104            mov si,0x441
00000D37  E88117            call 0x24bb
00000D3A  8D3E5907          lea di,[0x759]
00000D3E  BEC104            mov si,0x4c1
00000D41  E87717            call 0x24bb
00000D44  BE4105            mov si,0x541
00000D47  BB0000            mov bx,0x0
00000D4A  803C00            cmp byte [si],0x0
00000D4D  7408              jz 0xd57
00000D4F  E86C36            call 0x43be
00000D52  B88700            mov ax,0x87
00000D55  720F              jc 0xd66
00000D57  8BCB              mov cx,bx
00000D59  BE4507            mov si,0x745
00000D5C  BA5907            mov dx,0x759
00000D5F  8BFD              mov di,bp
00000D61  B8CB5F            mov ax,0x5fcb
00000D64  CD21              int 0x21
00000D66  C3                ret
00000D67  BE6853            mov si,0x5368
00000D6A  BFBF03            mov di,0x3bf
00000D6D  E88336            call 0x43f3
00000D70  8BD8              mov bx,ax
00000D72  B88600            mov ax,0x86
00000D75  720A              jc 0xd81
00000D77  FFE3              jmp bx
00000D79  B200              mov dl,0x0
00000D7B  B008              mov al,0x8
00000D7D  B45D              mov ah,0x5d
00000D7F  CD21              int 0x21
00000D81  C3                ret
00000D82  B201              mov dl,0x1
00000D84  EBF5              jmp short 0xd7b
00000D86  B009              mov al,0x9
00000D88  EBF3              jmp short 0xd7d
00000D8A  BE4104            mov si,0x441
00000D8D  E82E36            call 0x43be
00000D90  B88700            mov ax,0x87
00000D93  72EC              jc 0xd81
00000D95  B81200            mov ax,0x12
00000D98  F7E3              mul bx
00000D9A  8BC8              mov cx,ax
00000D9C  B8D15F            mov ax,0x5fd1
00000D9F  EBDE              jmp short 0xd7f
00000DA1  B89D5F            mov ax,0x5f9d
00000DA4  CD21              int 0x21
00000DA6  72D9              jc 0xd81
00000DA8  803E7E0201        cmp byte [0x27e],0x1
00000DAD  7408              jz 0xdb7
00000DAF  80CA80            or dl,0x80
00000DB2  B89E5F            mov ax,0x5f9e
00000DB5  EBC8              jmp short 0xd7f
00000DB7  80E27F            and dl,0x7f
00000DBA  EBF6              jmp short 0xdb2
00000DBC  0000              add [bx+si],al
00000DBE  803EBF0300        cmp byte [0x3bf],0x0
00000DC3  750B              jnz 0xdd0
00000DC5  E88CF4            call 0x254
00000DC8  C60613004D        mov byte [0x13],0x4d
00000DCD  E90ED8            jmp 0xe5de
00000DD0  BABF03            mov dx,0x3bf
00000DD3  803E810201        cmp byte [0x281],0x1
00000DD8  7508              jnz 0xde2
00000DDA  8BF2              mov si,dx
00000DDC  E88331            call 0x3f62
00000DDF  E8B733            call 0x4199
00000DE2  B8403D            mov ax,0x3d40
00000DE5  CD21              int 0x21
00000DE7  721D              jc 0xe06
00000DE9  8BD8              mov bx,ax
00000DEB  BA4104            mov dx,0x441
00000DEE  8BFA              mov di,dx
00000DF0  E85636            call 0x4449
00000DF3  890EAA28          mov [0x28aa],cx
00000DF7  03F9              add di,cx
00000DF9  BE7855            mov si,0x5578
00000DFC  B1FF              mov cl,0xff
00000DFE  E83036            call 0x4431
00000E01  B8413D            mov ax,0x3d41
00000E04  CD21              int 0x21
00000E06  7266              jc 0xe6e
00000E08  8BE8              mov bp,ax
00000E0A  87DD              xchg bx,bp
00000E0C  B80044            mov ax,0x4400
00000E0F  CD21              int 0x21
00000E11  725B              jc 0xe6e
00000E13  80CA20            or dl,0x20
00000E16  B600              mov dh,0x0
00000E18  B80144            mov ax,0x4401
00000E1B  CD21              int 0x21
00000E1D  724F              jc 0xe6e
00000E1F  BF4507            mov di,0x745
00000E22  B9A200            mov cx,0xa2
00000E25  B000              mov al,0x0
00000E27  F3AA              rep stosb
00000E29  BEC104            mov si,0x4c1
00000E2C  BFA607            mov di,0x7a6
00000E2F  B91000            mov cx,0x10
00000E32  E8FC35            call 0x4431
00000E35  BE4105            mov si,0x541
00000E38  BFB707            mov di,0x7b7
00000E3B  B92F00            mov cx,0x2f
00000E3E  E8F035            call 0x4431
00000E41  BE4507            mov si,0x745
00000E44  803E780201        cmp byte [0x278],0x1
00000E49  7504              jnz 0xe4f
00000E4B  C6440620          mov byte [si+0x6],0x20
00000E4F  B8A15F            mov ax,0x5fa1
00000E52  CD21              int 0x21
00000E54  7218              jc 0xe6e
00000E56  87DD              xchg bx,bp
00000E58  BAB40C            mov dx,0xcb4
00000E5B  B90010            mov cx,0x1000
00000E5E  B43F              mov ah,0x3f
00000E60  CD21              int 0x21
00000E62  72A2              jc 0xe06
00000E64  8BC8              mov cx,ax
00000E66  B440              mov ah,0x40
00000E68  87EB              xchg bp,bx
00000E6A  CD21              int 0x21
00000E6C  7303              jnc 0xe71
00000E6E  E99A00            jmp 0xf0b
00000E71  87EB              xchg bp,bx
00000E73  85C0              test ax,ax
00000E75  75E4              jnz 0xe5b
00000E77  B43E              mov ah,0x3e
00000E79  CD21              int 0x21
00000E7B  8BDD              mov bx,bp
00000E7D  B43E              mov ah,0x3e
00000E7F  CD21              int 0x21
00000E81  803E840201        cmp byte [0x284],0x1
00000E86  74E6              jz 0xe6e
00000E88  BE4507            mov si,0x745
00000E8B  C6440100          mov byte [si+0x1],0x0
00000E8F  C6440200          mov byte [si+0x2],0x0
00000E93  8D7C12            lea di,[si+0x12]
00000E96  B91000            mov cx,0x10
00000E99  B020              mov al,0x20
00000E9B  57                push di
00000E9C  F3AA              rep stosb
00000E9E  5F                pop di
00000E9F  BE4304            mov si,0x443
00000EA2  8B0EAA28          mov cx,[0x28aa]
00000EA6  49                dec cx
00000EA7  49                dec cx
00000EA8  F3A4              rep movsb
00000EAA  BEC104            mov si,0x4c1
00000EAD  BF6707            mov di,0x767
00000EB0  B91000            mov cx,0x10
00000EB3  AC                lodsb
00000EB4  84C0              test al,al
00000EB6  740B              jz 0xec3
00000EB8  3C2A              cmp al,0x2a
00000EBA  7504              jnz 0xec0
00000EBC  B000              mov al,0x0
00000EBE  B101              mov cl,0x1
00000EC0  AA                stosb
00000EC1  E2F0              loop 0xeb3
00000EC3  BF4104            mov di,0x441
00000EC6  BE4508            mov si,0x845
00000EC9  C60400            mov byte [si],0x0
00000ECC  B8875F            mov ax,0x5f87
00000ECF  CD21              int 0x21
00000ED1  87F7              xchg si,di
00000ED3  46                inc si
00000ED4  46                inc si
00000ED5  E8A716            call 0x257f
00000ED8  B95000            mov cx,0x50
00000EDB  BF8707            mov di,0x787
00000EDE  BE7F55            mov si,0x557f
00000EE1  E82C35            call 0x4410
00000EE4  BE4104            mov si,0x441
00000EE7  51                push cx
00000EE8  8B0EAA28          mov cx,[0x28aa]
00000EEC  E82135            call 0x4410
00000EEF  59                pop cx
00000EF0  2B0EAA28          sub cx,[0x28aa]
00000EF4  BE9855            mov si,0x5598
00000EF7  E81635            call 0x4410
00000EFA  B91000            mov cx,0x10
00000EFD  BE4508            mov si,0x845
00000F00  E80D35            call 0x4410
00000F03  BE4507            mov si,0x745
00000F06  B8985F            mov ax,0x5f98
00000F09  CD21              int 0x21
00000F0B  C3                ret
00000F0C  B89A5F            mov ax,0x5f9a
00000F0F  33D2              xor dx,dx
00000F11  CD21              int 0x21
00000F13  8A0E7E02          mov cl,[0x27e]
00000F17  BE4953            mov si,0x5349
00000F1A  BFBF03            mov di,0x3bf
00000F1D  E8D334            call 0x43f3
00000F20  8BD8              mov bx,ax
00000F22  B88600            mov ax,0x86
00000F25  72E4              jc 0xf0b
00000F27  FFE3              jmp bx
00000F29  80CA01            or dl,0x1
00000F2C  80F901            cmp cl,0x1
00000F2F  7503              jnz 0xf34
00000F31  80E2FE            and dl,0xfe
00000F34  B89B5F            mov ax,0x5f9b
00000F37  CD21              int 0x21
00000F39  C3                ret
00000F3A  80CA04            or dl,0x4
00000F3D  80F901            cmp cl,0x1
00000F40  75F2              jnz 0xf34
00000F42  80E2FB            and dl,0xfb
00000F45  EBED              jmp short 0xf34
00000F47  80CA08            or dl,0x8
00000F4A  80F901            cmp cl,0x1
00000F4D  75E5              jnz 0xf34
00000F4F  80E2F7            and dl,0xf7
00000F52  EBE0              jmp short 0xf34
00000F54  80CA0D            or dl,0xd
00000F57  80F901            cmp cl,0x1
00000F5A  75D8              jnz 0xf34
00000F5C  80E2F2            and dl,0xf2
00000F5F  EBD3              jmp short 0xf34
00000F61  BE4104            mov si,0x441
00000F64  33DB              xor bx,bx
00000F66  E85534            call 0x43be
00000F69  81FBE703          cmp bx,0x3e7
00000F6D  7603              jna 0xf72
00000F6F  EB40              jmp short 0xfb1
00000F71  90                nop
00000F72  B81200            mov ax,0x12
00000F75  F7E3              mul bx
00000F77  8BC8              mov cx,ax
00000F79  BEBF03            mov si,0x3bf
00000F7C  E8E32F            call 0x3f62
00000F7F  803E890201        cmp byte [0x289],0x1
00000F84  7503              jnz 0xf89
00000F86  E81032            call 0x4199
00000F89  E82335            call 0x44af
00000F8C  B40B              mov ah,0xb
00000F8E  CD21              int 0x21
00000F90  3CFF              cmp al,0xff
00000F92  7512              jnz 0xfa6
00000F94  B408              mov ah,0x8
00000F96  CD21              int 0x21
00000F98  B40B              mov ah,0xb
00000F9A  CD21              int 0x21
00000F9C  3CFF              cmp al,0xff
00000F9E  750F              jnz 0xfaf
00000FA0  B408              mov ah,0x8
00000FA2  CD21              int 0x21
00000FA4  EB09              jmp short 0xfaf
00000FA6  E3E4              jcxz 0xf8c
00000FA8  E82635            call 0x44d1
00000FAB  3BC1              cmp ax,cx
00000FAD  72DD              jc 0xf8c
00000FAF  F8                clc
00000FB0  C3                ret
00000FB1  B88700            mov ax,0x87
00000FB4  F9                stc
00000FB5  C3                ret
00000FB6  803EBF0300        cmp byte [0x3bf],0x0
00000FBB  7437              jz 0xff4
00000FBD  8BF7              mov si,di
00000FBF  E89834            call 0x445a
00000FC2  BF4104            mov di,0x441
00000FC5  B85C5C            mov ax,0x5c5c
00000FC8  AB                stosw
00000FC9  BBFFFF            mov bx,0xffff
00000FCC  43                inc bx
00000FCD  B8805F            mov ax,0x5f80
00000FD0  CD21              int 0x21
00000FD2  7217              jc 0xfeb
00000FD4  51                push cx
00000FD5  56                push si
00000FD6  57                push di
00000FD7  4F                dec di
00000FD8  4F                dec di
00000FD9  F3A6              repe cmpsb
00000FDB  5F                pop di
00000FDC  5E                pop si
00000FDD  59                pop cx
00000FDE  F8                clc
00000FDF  75EB              jnz 0xfcc
00000FE1  BFBF03            mov di,0x3bf
00000FE4  B8835F            mov ax,0x5f83
00000FE7  CD21              int 0x21
00000FE9  7329              jnc 0x1014
00000FEB  7306              jnc 0xff3
00000FED  3D1200            cmp ax,0x12
00000FF0  7401              jz 0xff3
00000FF2  F9                stc
00000FF3  C3                ret
00000FF4  33DB              xor bx,bx
00000FF6  BF4104            mov di,0x441
00000FF9  B85C5C            mov ax,0x5c5c
00000FFC  AB                stosw
00000FFD  B8805F            mov ax,0x5f80
00001000  CD21              int 0x21
00001002  72E7              jc 0xfeb
00001004  BFBF03            mov di,0x3bf
00001007  B8835F            mov ax,0x5f83
0000100A  CD21              int 0x21
0000100C  72DD              jc 0xfeb
0000100E  E80300            call 0x1014
00001011  43                inc bx
00001012  EBE2              jmp short 0xff6
00001014  50                push ax
00001015  53                push bx
00001016  51                push cx
00001017  52                push dx
00001018  56                push si
00001019  57                push di
0000101A  33D2              xor dx,dx
0000101C  33DB              xor bx,bx
0000101E  BF4104            mov di,0x441
00001021  BE4507            mov si,0x745
00001024  B8A05F            mov ax,0x5fa0
00001027  CD21              int 0x21
00001029  7223              jc 0x104e
0000102B  807C0501          cmp byte [si+0x5],0x1
0000102F  75ED              jnz 0x101e
00001031  8D7461            lea si,[si+0x61]
00001034  BFBF03            mov di,0x3bf
00001037  B91100            mov cx,0x11
0000103A  A6                cmpsb
0000103B  7408              jz 0x1045
0000103D  807CFF2A          cmp byte [si-0x1],0x2a
00001041  7408              jz 0x104b
00001043  EBD9              jmp short 0x101e
00001045  807CFF00          cmp byte [si-0x1],0x0
00001049  E0EF              loopne 0x103a
0000104B  42                inc dx
0000104C  EBD0              jmp short 0x101e
0000104E  85D2              test dx,dx
00001050  7429              jz 0x107b
00001052  BE9F55            mov si,0x559f
00001055  E80A2F            call 0x3f62
00001058  8BC2              mov ax,dx
0000105A  E8F72E            call 0x3f54
0000105D  BEA955            mov si,0x55a9
00001060  83FA01            cmp dx,byte +0x1
00001063  7403              jz 0x1068
00001065  BEB855            mov si,0x55b8
00001068  E8F72E            call 0x3f62
0000106B  BEC855            mov si,0x55c8
0000106E  E8F12E            call 0x3f62
00001071  BE4104            mov si,0x441
00001074  E8EB2E            call 0x3f62
00001077  E81F31            call 0x4199
0000107A  F8                clc
0000107B  5F                pop di
0000107C  5E                pop si
0000107D  5A                pop dx
0000107E  59                pop cx
0000107F  5B                pop bx
00001080  58                pop ax
00001081  C3                ret
00001082  BABF03            mov dx,0x3bf
00001085  B92700            mov cx,0x27
00001088  B44E              mov ah,0x4e
0000108A  CD21              int 0x21
0000108C  7241              jc 0x10cf
0000108E  B98000            mov cx,0x80
00001091  BF4509            mov di,0x945
00001094  8BD7              mov dx,di
00001096  BEBF03            mov si,0x3bf
00001099  E87433            call 0x4410
0000109C  BE4509            mov si,0x945
0000109F  E8B833            call 0x445a
000010A2  268A45FF          mov al,[es:di-0x1]
000010A6  3C5C              cmp al,0x5c
000010A8  7408              jz 0x10b2
000010AA  3C3A              cmp al,0x3a
000010AC  7404              jz 0x10b2
000010AE  4F                dec di
000010AF  49                dec cx
000010B0  75F0              jnz 0x10a2
000010B2  BE380B            mov si,0xb38
000010B5  B98000            mov cx,0x80
000010B8  E87633            call 0x4431
000010BB  803E810201        cmp byte [0x281],0x1
000010C0  7508              jnz 0x10ca
000010C2  8BF2              mov si,dx
000010C4  E89B2E            call 0x3f62
000010C7  E8CF30            call 0x4199
000010CA  B8403D            mov ax,0x3d40
000010CD  CD21              int 0x21
000010CF  7274              jc 0x1145
000010D1  8BD8              mov bx,ax
000010D3  BA4104            mov dx,0x441
000010D6  B8413D            mov ax,0x3d41
000010D9  CD21              int 0x21
000010DB  7268              jc 0x1145
000010DD  8BE8              mov bp,ax
000010DF  B80044            mov ax,0x4400
000010E2  87DD              xchg bx,bp
000010E4  CD21              int 0x21
000010E6  725D              jc 0x1145
000010E8  F6C280            test dl,0x80
000010EB  750D              jnz 0x10fa
000010ED  B84200            mov ax,0x42
000010F0  BB030B            mov bx,0xb03
000010F3  B503              mov ch,0x3
000010F5  E8C9D4            call 0xe5c1
000010F8  EB4B              jmp short 0x1145
000010FA  803E790201        cmp byte [0x279],0x1
000010FF  750C              jnz 0x110d
00001101  80CA20            or dl,0x20
00001104  B600              mov dh,0x0
00001106  B80144            mov ax,0x4401
00001109  CD21              int 0x21
0000110B  7238              jc 0x1145
0000110D  BF4507            mov di,0x745
00001110  B9A200            mov cx,0xa2
00001113  B000              mov al,0x0
00001115  F3AA              rep stosb
00001117  E8A514            call 0x25bf
0000111A  7229              jc 0x1145
0000111C  BFB707            mov di,0x7b7
0000111F  51                push cx
00001120  E80E33            call 0x4431
00001123  59                pop cx
00001124  BEC104            mov si,0x4c1
00001127  803C00            cmp byte [si],0x0
0000112A  7403              jz 0x112f
0000112C  E80233            call 0x4431
0000112F  BE4105            mov si,0x541
00001132  803C00            cmp byte [si],0x0
00001135  7411              jz 0x1148
00001137  53                push bx
00001138  E88332            call 0x43be
0000113B  891E4C07          mov [0x74c],bx
0000113F  5B                pop bx
00001140  B88700            mov ax,0x87
00001143  7303              jnc 0x1148
00001145  E91201            jmp 0x125a
00001148  B89D5F            mov ax,0x5f9d
0000114B  CD21              int 0x21
0000114D  72F6              jc 0x1145
0000114F  800E4B0708        or byte [0x74b],0x8
00001154  F6C280            test dl,0x80
00001157  7505              jnz 0x115e
00001159  80264B07F7        and byte [0x74b],0xf7
0000115E  803E7F0201        cmp byte [0x27f],0x1
00001163  7505              jnz 0x116a
00001165  800E4B0708        or byte [0x74b],0x8
0000116A  803E800201        cmp byte [0x280],0x1
0000116F  7505              jnz 0x1176
00001171  80264B07F7        and byte [0x74b],0xf7
00001176  C606520700        mov byte [0x752],0x0
0000117B  80264B073F        and byte [0x74b],0x3f
00001180  C6068A0200        mov byte [0x28a],0x0
00001185  C606830201        mov byte [0x283],0x1
0000118A  BE4104            mov si,0x441
0000118D  E887F6            call 0x817
00001190  C606830200        mov byte [0x283],0x0
00001195  C6068A0201        mov byte [0x28a],0x1
0000119A  813D5C5C          cmp word [di],0x5c5c
0000119E  B89100            mov ax,0x91
000011A1  F9                stc
000011A2  7403              jz 0x11a7
000011A4  E9B300            jmp 0x125a
000011A7  B8A15F            mov ax,0x5fa1
000011AA  803E7D0201        cmp byte [0x27d],0x1
000011AF  7403              jz 0x11b4
000011B1  EB62              jmp short 0x1215
000011B3  90                nop
000011B4  800E4B07C0        or byte [0x74b],0xc0
000011B9  803E7C0201        cmp byte [0x27c],0x1
000011BE  7505              jnz 0x11c5
000011C0  80264B07BF        and byte [0x74b],0xbf
000011C5  57                push di
000011C6  BE4509            mov si,0x945
000011C9  BFC509            mov di,0x9c5
000011CC  B80060            mov ax,0x6000
000011CF  CD21              int 0x21
000011D1  8BF7              mov si,di
000011D3  5F                pop di
000011D4  813C5C5C          cmp word [si],0x5c5c
000011D8  B88F00            mov ax,0x8f
000011DB  F9                stc
000011DC  7403              jz 0x11e1
000011DE  EB7A              jmp short 0x125a
000011E0  90                nop
000011E1  46                inc si
000011E2  46                inc si
000011E3  47                inc di
000011E4  47                inc di
000011E5  56                push si
000011E6  57                push di
000011E7  FC                cld
000011E8  B05C              mov al,0x5c
000011EA  B9FFFF            mov cx,0xffff
000011ED  F2AE              repne scasb
000011EF  F7D9              neg cx
000011F1  49                dec cx
000011F2  5F                pop di
000011F3  F3A6              repe cmpsb
000011F5  5E                pop si
000011F6  B89000            mov ax,0x90
000011F9  F9                stc
000011FA  755E              jnz 0x125a
000011FC  AC                lodsb
000011FD  3C00              cmp al,0x0
000011FF  7404              jz 0x1205
00001201  3C5C              cmp al,0x5c
00001203  75F7              jnz 0x11fc
00001205  4E                dec si
00001206  C6443000          mov byte [si+0x30],0x0
0000120A  BF5207            mov di,0x752
0000120D  B91800            mov cx,0x18
00001210  F3A5              rep movsw
00001212  B8A95F            mov ax,0x5fa9
00001215  BE4507            mov si,0x745
00001218  CD21              int 0x21
0000121A  87DD              xchg bx,bp
0000121C  723C              jc 0x125a
0000121E  803E7D0201        cmp byte [0x27d],0x1
00001223  741C              jz 0x1241
00001225  BAB40C            mov dx,0xcb4
00001228  B90010            mov cx,0x1000
0000122B  B43F              mov ah,0x3f
0000122D  CD21              int 0x21
0000122F  7229              jc 0x125a
00001231  8BC8              mov cx,ax
00001233  B440              mov ah,0x40
00001235  87EB              xchg bp,bx
00001237  CD21              int 0x21
00001239  721F              jc 0x125a
0000123B  87EB              xchg bp,bx
0000123D  85C0              test ax,ax
0000123F  75E7              jnz 0x1228
00001241  B43E              mov ah,0x3e
00001243  CD21              int 0x21
00001245  8BDD              mov bx,bp
00001247  B43E              mov ah,0x3e
00001249  CD21              int 0x21
0000124B  B44F              mov ah,0x4f
0000124D  CD21              int 0x21
0000124F  7203              jc 0x1254
00001251  E93AFE            jmp 0x108e
00001254  3D1200            cmp ax,0x12
00001257  7401              jz 0x125a
00001259  F9                stc
0000125A  C3                ret
0000125B  51                push cx
0000125C  F3A6              repe cmpsb
0000125E  7508              jnz 0x1268
00001260  803C00            cmp byte [si],0x0
00001263  7403              jz 0x1268
00001265  803C20            cmp byte [si],0x20
00001268  59                pop cx
00001269  C3                ret
0000126A  807D015C          cmp byte [di+0x1],0x5c
0000126E  7408              jz 0x1278
00001270  4F                dec di
00001271  807D015C          cmp byte [di+0x1],0x5c
00001275  7401              jz 0x1278
00001277  4F                dec di
00001278  C3                ret
00001279  BE9C53            mov si,0x539c
0000127C  BFBF03            mov di,0x3bf
0000127F  E87131            call 0x43f3
00001282  8BD8              mov bx,ax
00001284  B88600            mov ax,0x86
00001287  7255              jc 0x12de
00001289  53                push bx
0000128A  BAFFFF            mov dx,0xffff
0000128D  BFC104            mov di,0x4c1
00001290  C6450800          mov byte [di+0x8],0x0
00001294  803D00            cmp byte [di],0x0
00001297  7446              jz 0x12df
00001299  813D414C          cmp word [di],0x4c41
0000129D  7506              jnz 0x12a5
0000129F  837D024C          cmp word [di+0x2],byte +0x4c
000012A3  743A              jz 0x12df
000012A5  BFC104            mov di,0x4c1
000012A8  B9FFFF            mov cx,0xffff
000012AB  B000              mov al,0x0
000012AD  57                push di
000012AE  F2AE              repne scasb
000012B0  5F                pop di
000012B1  F7D9              neg cx
000012B3  49                dec cx
000012B4  49                dec cx
000012B5  33DB              xor bx,bx
000012B7  8BD3              mov dx,bx
000012B9  BE4507            mov si,0x745
000012BC  BF4104            mov di,0x441
000012BF  E8A8FF            call 0x126a
000012C2  B8C35F            mov ax,0x5fc3
000012C5  CD21              int 0x21
000012C7  7210              jc 0x12d9
000012C9  BFC104            mov di,0x4c1
000012CC  BE4607            mov si,0x746
000012CF  E889FF            call 0x125b
000012D2  740B              jz 0x12df
000012D4  83FBFF            cmp bx,byte -0x1
000012D7  75DE              jnz 0x12b7
000012D9  5B                pop bx
000012DA  B88700            mov ax,0x87
000012DD  F9                stc
000012DE  C3                ret
000012DF  5B                pop bx
000012E0  BF4104            mov di,0x441
000012E3  83C702            add di,byte +0x2
000012E6  57                push di
000012E7  33C0              xor ax,ax
000012E9  B9FFFF            mov cx,0xffff
000012EC  F2AE              repne scasb
000012EE  F7D9              neg cx
000012F0  49                dec cx
000012F1  5F                pop di
000012F2  B85C00            mov ax,0x5c
000012F5  F2AE              repne scasb
000012F7  BF4104            mov di,0x441
000012FA  83F900            cmp cx,byte +0x0
000012FD  7406              jz 0x1305
000012FF  B88700            mov ax,0x87
00001302  F9                stc
00001303  EB0E              jmp short 0x1313
00001305  81FB022E          cmp bx,0x2e02
00001309  7409              jz 0x1314
0000130B  E85CFF            call 0x126a
0000130E  B8A25F            mov ax,0x5fa2
00001311  CD21              int 0x21
00001313  C3                ret
00001314  B90100            mov cx,0x1
00001317  8BDA              mov bx,dx
00001319  83FBFF            cmp bx,byte -0x1
0000131C  7503              jnz 0x1321
0000131E  43                inc bx
0000131F  B111              mov cl,0x11
00001321  51                push cx
00001322  E80C00            call 0x1331
00001325  59                pop cx
00001326  7208              jc 0x1330
00001328  83FBFF            cmp bx,byte -0x1
0000132B  7403              jz 0x1330
0000132D  E2F2              loop 0x1321
0000132F  F8                clc
00001330  C3                ret
00001331  53                push bx
00001332  8D365A07          lea si,[0x75a]
00001336  BF4104            mov di,0x441
00001339  E82EFF            call 0x126a
0000133C  B8A35F            mov ax,0x5fa3
0000133F  CD21              int 0x21
00001341  5B                pop bx
00001342  7303              jnc 0x1347
00001344  E9B500            jmp 0x13fc
00001347  BE4507            mov si,0x745
0000134A  BF4104            mov di,0x441
0000134D  E81AFF            call 0x126a
00001350  B8C35F            mov ax,0x5fc3
00001353  CD21              int 0x21
00001355  72ED              jc 0x1344
00001357  BE0756            mov si,0x5607
0000135A  BFC105            mov di,0x5c1
0000135D  B98000            mov cx,0x80
00001360  E8CE30            call 0x4431
00001363  BE4607            mov si,0x746
00001366  BFC105            mov di,0x5c1
00001369  81C70000          add di,0x0
0000136D  B90800            mov cx,0x8
00001370  E89D30            call 0x4410
00001373  C60520            mov byte [di],0x20
00001376  BED355            mov si,0x55d3
00001379  A04507            mov al,[0x745]
0000137C  A880              test al,0x80
0000137E  7511              jnz 0x1391
00001380  BEDA55            mov si,0x55da
00001383  3C00              cmp al,0x0
00001385  740A              jz 0x1391
00001387  BEE355            mov si,0x55e3
0000138A  3C01              cmp al,0x1
0000138C  7403              jz 0x1391
0000138E  BEEA55            mov si,0x55ea
00001391  BFC105            mov di,0x5c1
00001394  81C70900          add di,0x9
00001398  B98000            mov cx,0x80
0000139B  E87230            call 0x4410
0000139E  C60520            mov byte [di],0x20
000013A1  803E5B07FF        cmp byte [0x75b],0xff
000013A6  750F              jnz 0x13b7
000013A8  BFC105            mov di,0x5c1
000013AB  81C71200          add di,0x12
000013AF  BEF255            mov si,0x55f2
000013B2  E85B30            call 0x4410
000013B5  EB3C              jmp short 0x13f3
000013B7  BFC105            mov di,0x5c1
000013BA  81C71700          add di,0x17
000013BE  A14E07            mov ax,[0x74e]
000013C1  E8642B            call 0x3f28
000013C4  BFC105            mov di,0x5c1
000013C7  81C73400          add di,0x34
000013CB  A15007            mov ax,[0x750]
000013CE  8B165207          mov dx,[0x752]
000013D2  E85B2B            call 0x3f30
000013D5  BFC105            mov di,0x5c1
000013D8  81C72300          add di,0x23
000013DC  A15407            mov ax,[0x754]
000013DF  8B165607          mov dx,[0x756]
000013E3  E84A2B            call 0x3f30
000013E6  BFC105            mov di,0x5c1
000013E9  81C74A00          add di,0x4a
000013ED  A15807            mov ax,[0x758]
000013F0  E8352B            call 0x3f28
000013F3  BEC105            mov si,0x5c1
000013F6  E8692B            call 0x3f62
000013F9  E89D2D            call 0x4199
000013FC  C3                ret
000013FD  803EBF0300        cmp byte [0x3bf],0x0
00001402  7507              jnz 0x140b
00001404  803E410400        cmp byte [0x441],0x0
00001409  743C              jz 0x1447
0000140B  BE4104            mov si,0x441
0000140E  B88400            mov ax,0x84
00001411  803C00            cmp byte [si],0x0
00001414  7503              jnz 0x1419
00001416  F9                stc
00001417  EB68              jmp short 0x1481
00001419  B88700            mov ax,0x87
0000141C  E89F2F            call 0x43be
0000141F  7260              jc 0x1481
00001421  81FB100E          cmp bx,0xe10
00001425  77EF              ja 0x1416
00001427  B81200            mov ax,0x12
0000142A  F7E3              mul bx
0000142C  8BC8              mov cx,ax
0000142E  B88700            mov ax,0x87
00001431  BEBF03            mov si,0x3bf
00001434  E8872F            call 0x43be
00001437  7248              jc 0x1481
00001439  83FB16            cmp bx,byte +0x16
0000143C  77D8              ja 0x1416
0000143E  8AF3              mov dh,bl
00001440  B89C5F            mov ax,0x5f9c
00001443  CD21              int 0x21
00001445  EB3A              jmp short 0x1481
00001447  BF4507            mov di,0x745
0000144A  B8995F            mov ax,0x5f99
0000144D  CD21              int 0x21
0000144F  7230              jc 0x1481
00001451  8D7532            lea si,[di+0x32]
00001454  56                push si
00001455  AC                lodsb
00001456  3C20              cmp al,0x20
00001458  77FB              ja 0x1455
0000145A  C644FF00          mov byte [si-0x1],0x0
0000145E  5E                pop si
0000145F  E8002B            call 0x3f62
00001462  C704202D          mov word [si],0x2d20
00001466  C744022D20        mov word [si+0x2],0x202d
0000146B  C744042000        mov word [si+0x4],0x20
00001470  E8EF28            call 0x3d62
00001473  E38B              jcxz 0x1400
00001475  C8FDE8C3          enter 0xe8fd,0xc3
00001479  26D85FEF          fcomp dword [es:bx-0x11]
0000147D  5F                pop di
0000147E  EF                out dx,ax
0000147F  5F                pop di
00001480  44                inc sp
00001481  20E8              and al,ch
00001483  192D              sbb [di],bp
00001485  F8                clc
00001486  C3                ret
00001487  57                push di
00001488  FF                db 0xff
00001489  B8C3B9            mov ax,0xb9c3
0000148C  7E00              jng 0x148e
0000148E  8AC5              mov al,ch
00001490  F2AE              repne scasb
00001492  4F                dec di
00001493  803E886290        cmp byte [0x6288],0x90
00001498  800EB00DF7        or byte [0xdb0],0xf7
0000149D  5F                pop di
0000149E  B8B1F3            mov ax,0xf3b1
000014A1  A4                movsb
000014A2  C3                ret
000014A3  F6B8CAEF          idiv byte [bx+si-0x1036]
000014A7  803E410400        cmp byte [0x441],0x0
000014AC  7506              jnz 0x14b4
000014AE  86264B07          xchg ah,[0x74b]
000014B2  06                push es
000014B3  B8C95F            mov ax,0x5fc9
000014B6  EB6A              jmp short 0x1522
000014B8  90                nop
000014B9  A4                movsb
000014BA  C3                ret
000014BB  F60074            test byte [bx+si],0x74
000014BE  08E8              or al,ch
000014C0  6C                insb
000014C1  36B88700          ss mov ax,0x87
000014C5  FC                cld
000014C6  2EB81200          cs mov ax,0x12
000014CA  F75A00            neg word [bp+si+0x0]
000014CD  7403              jz 0x14d2
000014CF  E80233            call 0x47d4
000014D2  750B              jnz 0x14df
000014D4  BE5556            mov si,0x5655
000014D7  83FB68            cmp bx,byte +0x68
000014DA  B887BE            mov ax,0xbe87
000014DD  7856              js 0x1535
000014DF  56                push si
000014E0  B80D0A            mov ax,0xa0d
000014E3  8A04              mov al,[si]
000014E5  2A7504            sub dh,[di+0x4]
000014E8  133C              adc di,[si]
000014EA  237505            and si,[di+0x5]
000014ED  C604FF            mov byte [si],0xff
000014F0  EB07              jmp short 0x14f9
000014F2  3C24              cmp al,0x24
000014F4  7503              jnz 0x14f9
000014F6  C604FE            mov byte [si],0xfe
000014F9  46                inc si
000014FA  E2E7              loop 0x14e3
000014FC  5E                pop si
000014FD  8BCB              mov cx,bx
000014FF  0201              add al,[bx+di]
00001501  7503              jnz 0x1506
00001503  8710              xchg dx,[bx+si]
00001505  32E8              xor ch,al
00001507  23837503          and ax,[bp+di+0x375]
0000150B  803E851032        cmp byte [0x1085],0x32
00001510  E82383            call 0x9836
00001513  7504              jnz 0x1519
00001515  74E6              jz 0x14fd
00001517  BE4507            mov si,0x745
0000151A  E82383            call 0x9840
0000151D  7502              jnz 0x1521
0000151F  B8C85F            mov ax,0x5fc8
00001522  8BFD              mov di,bp
00001524  803E41E302        cmp byte [0xe341],0x2
00001529  AA                stosb
0000152A  49                dec cx
0000152B  C3                ret
0000152C  50                push ax
0000152D  E30E              jcxz 0x153d
0000152F  3C2A              cmp al,0x2a
00001531  7504              jnz 0x1537
00001533  09E8              or ax,bp
00001535  F0FF4975          lock dec word [bx+di+0x75]
00001539  F002EB            lock add ch,bl
0000153C  F058              lock pop ax
0000153E  C3                ret
0000153F  57                push di
00001540  33D2              xor dx,dx
00001542  33DB              xor bx,bx
00001544  BF1EB6            mov di,0xb61e
00001547  0006B802          add [0x2b8],al
0000154B  EF                out dx,ax
0000154C  3ECD21            ds int 0x21
0000154F  DA268A00          fisub dword [0x8a]
00001553  AA                stosb
00001554  E2F4              loop 0x154a
00001556  7509              jnz 0x1561
00001558  F9                stc
00001559  1F                pop ds
0000155A  58                pop ax
0000155B  C3                ret
0000155C  BABF03            mov dx,0x3bf
0000155F  B927FE            mov cx,0xfe27
00001562  C8B430F6          enter 0x30b4,0xf6
00001566  E48B              in al,0x8b
00001568  D806B804          fadd dword [0x4b8]
0000156C  EF                out dx,ax
0000156D  3ECD8C            ds int 0x8c
00001570  C0078E            rol byte [bx],byte 0x8e
00001573  D803              fadd dword [bp+di]
00001575  F3B05C            rep mov al,0x5c
00001578  E8ACFF            call 0x1527
0000157B  E8A9FF            call 0x1527
0000157E  E8ABFF            call 0x152c
00001581  B05C              mov al,0x5c
00001583  E8A1FF            call 0x1527
00001586  B800E9            mov ax,0xe900
00001589  C706061FC509      mov word [0x1f06],0x9c5
0000158F  B800C7            mov ax,0xc700
00001592  0402              add al,0x2
00001594  8D7C12            lea di,[si+0x12]
00001597  B90188            mov cx,0x8801
0000159A  44                inc sp
0000159B  03BF450A          add di,[bx+0xa45]
0000159F  C705C800          mov word [di],0xc8
000015A3  B4E2              mov ah,0xe2
000015A5  CD21              int 0x21
000015A7  33DB              xor bx,bx
000015A9  8A5D02            mov bl,[di+0x2]
000015AC  8D7503            lea si,[di+0x3]
000015AF  C60000            mov byte [bx+si],0x0
000015B2  5F                pop di
000015B3  E876AE            call 0xc42c
000015B6  5F                pop di
000015B7  F7E8              imul ax
000015B9  6C                insb
000015BA  FF                db 0xff
000015BB  F8                clc
000015BC  EB9B              jmp short 0x1559
000015BE  57                push di
000015BF  33D2              xor dx,dx
000015C1  33B802B8          xor di,[bx+si-0x47fe]
000015C5  B92B00            mov cx,0x2b
000015C8  BB4509            mov bx,0x945
000015CB  CD21              int 0x21
000015CD  A06F09            mov al,[0x96f]
000015D0  84C0              test al,al
000015D2  BABF03            mov dx,0x3bf
000015D5  B92757            mov cx,0x5727
000015D8  33D2              xor dx,dx
000015DA  33DB              xor bx,bx
000015DC  55                push bp
000015DD  E8DEFF            call 0x15be
000015E0  7508              jnz 0x15ea
000015E2  F9                stc
000015E3  5D                pop bp
000015E4  C3                ret
000015E5  BABF03            mov dx,0x3bf
000015E8  B927BD            mov cx,0xbd27
000015EB  E8BF38            call 0x4ead
000015EE  BF03E8            mov di,0xe803
000015F1  DD3E9800          fnstsw [0x98]
000015F5  52                push dx
000015F6  55                push bp
000015F7  CD21              int 0x21
000015F9  5D                pop bp
000015FA  5A                pop dx
000015FB  72E5              jc 0x15e2
000015FD  80FB03            cmp bl,0x3
00001600  7512              jnz 0x1614
00001602  813C4C50          cmp word [si],0x504c
00001606  750C              jnz 0x1614
00001608  8AC6              mov al,dh
0000160A  0431              add al,0x31
0000160C  3A4403            cmp al,[si+0x3]
0000160F  7503              jnz 0x1614
00001611  F8                clc
00001612  EBCF              jmp short 0x15e3
00001614  45                inc bp
00001615  EBD9              jmp short 0x15f0
00001617  57                push di
00001618  33D2              xor dx,dx
0000161A  33DB              xor bx,bx
0000161C  BF51C5            mov di,0xc551
0000161F  09B80060          or [bx+si+0x6000],di
00001623  45                inc bp
00001624  0A5F2E            or bl,[bx+0x2e]
00001627  803E980001        cmp byte [0x98],0x1
0000162C  7502              jnz 0x1630
0000162E  B08A              mov al,0x8a
00001630  CD21              int 0x21
00001632  8BD3              mov dx,bx
00001634  5B                pop bx
00001635  52                push dx
00001636  CD21              int 0x21
00001638  5A                pop dx
00001639  8BCB              mov cx,bx
0000163B  5B                pop bx
0000163C  7225              jc 0x1663
0000163E  80F904            cmp cl,0x4
00001641  7508              jnz 0x164b
00001643  8A04              mov al,[si]
00001645  2C41              sub al,0x41
00001647  3AC2              cmp al,dl
00001649  7403              jz 0x164e
0000164B  43                inc bx
0000164C  EBD9              jmp short 0x1627
0000164E  5F                pop di
0000164F  59                pop cx
00001650  BE450A            mov si,0xa45
00001653  E8D6FE            call 0x152c
00001656  5F                pop di
00001657  F7E8              imul ax
00001659  CC                int3
0000165A  FE                db 0xfe
0000165B  5B                pop bx
0000165C  58                pop ax
0000165D  C3                ret
0000165E  BABF03            mov dx,0x3bf
00001661  B9275F            mov cx,0x5f27
00001664  59                pop cx
00001665  F9                stc
00001666  EBF4              jmp short 0x165c
00001668  813C5052          cmp word [si],0x5250
0000166C  7513              jnz 0x1681
0000166E  837C024E          cmp word [si+0x2],byte +0x4e
00001672  750D              jnz 0x1681
00001674  C7044C50          mov word [si],0x504c
00001678  C744045431        mov word [si+0x4],0x3154
0000167D  C6440400          mov byte [si+0x4],0x0
00001681  007507            add [di+0x7],dh
00001684  7A45              jpe 0x16cb
00001686  07                pop es
00001687  E823EB            call 0x1ad
0000168A  6A90              push byte -0x70
0000168C  E8CAEB            call 0x259
0000168F  BAC507            mov dx,0x7c5
00001692  B8005E            mov ax,0x5e00
00001695  9A0087EB85        call 0x85eb:0x8700
0000169A  800403            add byte [si],0x3
0000169D  B80060            mov ax,0x6000
000016A0  8D56F7            lea dx,[bp-0x9]
000016A3  D9                db 0xd9
000016A4  49                dec cx
000016A5  E86D2D            call 0x4415
000016A8  8BF2              mov si,dx
000016AA  3C5C              cmp al,0x5c
000016AC  75F7              jnz 0x16a5
000016AE  03AAEBF8          add bp,[bp+si-0x715]
000016B2  BE9656            mov si,0x5696
000016B5  F7D9              neg cx
000016B7  49                dec cx
000016B8  E85A2D            call 0x4415
000016BB  F706B41C4000      test word [0x1cb4],0x40
000016C1  7409              jz 0x16cc
000016C3  BEB556            mov si,0x56b5
000016C6  F7D9              neg cx
000016C8  49                dec cx
000016C9  E8492D            call 0x4415
000016CC  03BFC105          add di,[bx+0x5c1]
000016D0  47                inc di
000016D1  B91092            mov cx,0x9210
000016D4  28E8              sub al,ch
000016D6  C6                db 0xc6
000016D7  2A06B800          sub al,[0xb8]
000016DB  10CD              adc ch,cl
000016DD  2F                das
000016DE  07                pop es
000016DF  740A              jz 0x16eb
000016E1  BE2A75            mov si,0x752a
000016E4  04C1              add al,0xc1
000016E6  0581C7            add ax,0xc781
000016E9  09C3              or bx,ax
000016EB  56                push si
000016EC  E88528            call 0x3f74
000016EF  E87528            call 0x3f67
000016F2  E8A92A            call 0x419e
000016F5  CD21              int 0x21
000016F7  8A0E7E02          mov cl,[0x27e]
000016FB  BE7507            mov si,0x775
000016FE  7A45              jpe 0x1745
00001700  07                pop es
00001701  E850BE            call 0xd554
00001704  0445              add al,0x45
00001706  FE                db 0xfe
00001707  2028              and [bx+si],ch
00001709  BE4557            mov si,0x5745
0000170C  F6C207            test dl,0x7
0000170F  E823BE            call 0xd535
00001712  4E                dec si
00001713  57                push di
00001714  E85028            call 0x3f67
00001717  BE3057            mov si,0x5730
0000171A  E84A28            call 0x3f67
0000171D  BE0445            mov si,0x4504
00001720  FE4428            inc byte [si+0x28]
00001723  BE4557            mov si,0x5745
00001726  F6C204            test dl,0x4
00001729  E823BE            call 0xd54f
0000172C  4E                dec si
0000172D  57                push di
0000172E  E83628            call 0x3f67
00001731  BE3757            mov si,0x5737
00001734  E83028            call 0x3f67
00001737  BE0445            mov si,0x4504
0000173A  FE                db 0xfe
0000173B  2A28              sub ch,[bx+si]
0000173D  BE4557            mov si,0x5745
00001740  F6C208            test dl,0x8
00001743  E823BE            call 0xd569
00001746  4E                dec si
00001747  57                push di
00001748  E81C28            call 0x3f67
0000174B  BE3D57            mov si,0x573d
0000174E  E81628            call 0x3f67
00001751  EB39              jmp short 0x178c
00001753  BEE956            mov si,0x56e9
00001756  E80E28            call 0x3f67
00001759  F6C207            test dl,0x7
0000175C  E806BE            call 0xd565
0000175F  1057E8            adc [bx-0x18],dl
00001762  0328              add bp,[bx+si]
00001764  BE1557            mov si,0x5715
00001767  E8FD27            call 0x3f67
0000176A  F6C204            test dl,0x4
0000176D  E806BE            call 0xd576
00001770  1057E8            adc [bx-0x18],dl
00001773  F227              repne daa
00001775  BE1C57            mov si,0x571c
00001778  E8EC27            call 0x3f67
0000177B  F6C208            test dl,0x8
0000177E  E806BE            call 0xd587
00001781  1057E8            adc [bx-0x18],dl
00001784  E127              loope 0x17ad
00001786  BE2857            mov si,0x5728
00001789  E8DB27            call 0x3f67
0000178C  72F6              jc 0x1784
0000178E  800E4B7507        or byte [0x754b],0x7
00001793  7A45              jpe 0x17da
00001795  07                pop es
00001796  7415              jz 0x17ad
00001798  BE5857            mov si,0x5758
0000179B  E8C927            call 0x3f67
0000179E  F6C280            test dl,0x80
000017A1  7405              jz 0x17a8
000017A3  0581C7            add ax,0xc781
000017A6  EB21              jmp short 0x17c9
000017A8  740A              jz 0x17b4
000017AA  BEEB1C            mov si,0x1ceb
000017AD  BE6B58            mov si,0x586b
000017B0  E8B427            call 0x3f67
000017B3  F6C280            test dl,0x80
000017B6  7408              jz 0x17c0
000017B8  BE4557            mov si,0x5745
000017BB  E8A927            call 0x3f67
000017BE  EB06              jmp short 0x17c6
000017C0  BE4E57            mov si,0x574e
000017C3  E8A127            call 0x3f67
000017C6  BE7358            mov si,0x5873
000017C9  E89B27            call 0x3f67
000017CC  E8CF29            call 0x419e
000017CF  BE6D57            mov si,0x576d
000017D2  7507              jnz 0x17db
000017D4  7A45              jpe 0x181b
000017D6  07                pop es
000017D7  E823BE            call 0xd5fd
000017DA  5A                pop dx
000017DB  58                pop ax
000017DC  E88827            call 0x3f67
000017DF  B8D0EB            mov ax,0xebd0
000017E2  388BF7C1          cmp [bp+di-0x3e09],cl
000017E6  B91200            mov cx,0x12
000017E9  33D2              xor dx,dx
000017EB  F7F1              div cx
000017ED  E86927            call 0x3f59
000017F0  E8AB29            call 0x419e
000017F3  BFF658            mov di,0x58f6
000017F6  B8B780            mov ax,0x80b7
000017F9  0E                push cs
000017FA  4B                dec bx
000017FB  7507              jnz 0x1804
000017FD  7A45              jpe 0x1844
000017FF  07                pop es
00001800  753C              jnz 0x183e
00001802  BEED58            mov si,0x58ed
00001805  E85F27            call 0x3f67
00001808  BE9E4D            mov si,0x4d9e
0000180B  E808BE            call 0xd616
0000180E  4E                dec si
0000180F  57                push di
00001810  E85427            call 0x3f67
00001813  EB5D              jmp short 0x1872
00001815  BE8758            mov si,0x5887
00001818  E84C27            call 0x3f67
0000181B  57                push di
0000181C  E85527            call 0x3f74
0000181F  BE9F58            mov si,0x589f
00001822  E84227            call 0x3f67
00001825  5F                pop di
00001826  E84B27            call 0x3f74
00001829  8D36DF58          lea si,[0x58df]
0000182D  E83727            call 0x3f67
00001830  80FAFF            cmp dl,0xff
00001833  7407              jz 0x183c
00001835  33C0              xor ax,ax
00001837  8AC2              mov al,dl
00001839  E81D27            call 0x3f59
0000183C  EB34              jmp short 0x1872
0000183E  BE8657            mov si,0x5786
00001841  E82327            call 0x3f67
00001844  BE9E4D            mov si,0x4d9e
00001847  E808BE            call 0xd652
0000184A  DA55E8            ficom dword [di-0x18]
0000184D  1827              sbb [bx],ah
0000184F  EB21              jmp short 0x1872
00001851  74EA              jz 0x183d
00001853  55                push bp
00001854  E81027            call 0x3f67
00001857  BE9457            mov si,0x5794
0000185A  E80A27            call 0x3f67
0000185D  E81427            call 0x3f74
00001860  80FAFF            cmp dl,0xff
00001863  740D              jz 0x1872
00001865  BEB857            mov si,0x57b8
00001868  E8FC26            call 0x3f67
0000186B  33C0              xor ax,ax
0000186D  8AC2              mov al,dl
0000186F  E8E726            call 0x3f59
00001872  E82929            call 0x419e
00001875  BE4507            mov si,0x745
00001878  CD21              int 0x21
0000187A  72E7              jc 0x1863
0000187C  BFBF03            mov di,0x3bf
0000187F  87EB              xchg bp,bx
00001881  8594C745          test [si+0x45c7],dx
00001885  FE                db 0xfe
00001886  3312              xor dx,[bp+si]
00001888  5F                pop di
00001889  B8B1F3            mov ax,0xf3b1
0000188C  A4                movsb
0000188D  A4                movsb
0000188E  57                push di
0000188F  7507              jnz 0x1898
00001891  7A45              jpe 0x18d8
00001893  07                pop es
00001894  E823BE            call 0xd6ba
00001897  7A58              jpe 0x18f1
00001899  E8CB26            call 0x3f67
0000189C  E8D526            call 0x3f74
0000189F  72DD              jc 0x187e
000018A1  E80300            call 0x18a7
000018A4  43                inc bx
000018A5  72BE              jc 0x1865
000018A7  B357              mov bl,0x57
000018A9  7507              jnz 0x18b2
000018AB  7A45              jpe 0x18f2
000018AD  07                pop es
000018AE  E80F56            call 0x6ec0
000018B1  57                push di
000018B2  BEF658            mov si,0x58f6
000018B5  E86E2B            call 0x4426
000018B8  5F                pop di
000018B9  5E                pop si
000018BA  7455              jz 0x1911
000018BC  BE8758            mov si,0x5887
000018BF  E8A526            call 0x3f67
000018C2  C64510C7          mov byte [di+0x10],0xc7
000018C6  45                inc bp
000018C7  FE                db 0xfe
000018C8  AA                stosb
000018C9  265F              es pop di
000018CB  7507              jnz 0x18d4
000018CD  7A45              jpe 0x1914
000018CF  07                pop es
000018D0  E8328D            call 0xa605
000018D3  36C3              ss ret
000018D5  58                pop ax
000018D6  E88E26            call 0x3f67
000018D9  E89826            call 0x3f74
000018DC  8D36DA58          lea si,[0x58da]
000018E0  E88426            call 0x3f67
000018E3  41                inc cx
000018E4  04E8              add al,0xe8
000018E6  8157805FCD        adc word [bx-0x80],0xcd5f
000018EB  2172E7            and [bp+si-0x19],si
000018EE  BFBF03            mov di,0x3bf
000018F1  E8C711            call 0x2abb
000018F4  5F                pop di
000018F5  B8B1F3            mov ax,0xf3b1
000018F8  E87926            call 0x3f74
000018FB  8D36DF58          lea si,[0x58df]
000018FF  E86526            call 0x3f67
00001902  EB06              jmp short 0x190a
00001904  BEB857            mov si,0x57b8
00001907  E85D26            call 0x3f67
0000190A  8AC2              mov al,dl
0000190C  B400              mov ah,0x0
0000190E  E84826            call 0x3f59
00001911  E88A28            call 0x419e
00001914  43                inc bx
00001915  E962FF            jmp 0x187a
00001918  7507              jnz 0x1921
0000191A  7A45              jpe 0x1961
0000191C  07                pop es
0000191D  E823E9            call 0x243
00001920  D7                xlatb
00001921  0001              add [bx+di],al
00001923  750A              jnz 0x192f
00001925  B88D5F            mov ax,0x5f8d
00001928  CD21              int 0x21
0000192A  8AC2              mov al,dl
0000192C  EB0B              jmp short 0x1939
0000192E  90                nop
0000192F  B419              mov ah,0x19
00001931  CD21              int 0x21
00001933  8AD0              mov dl,al
00001935  B40E              mov ah,0xe
00001937  CD21              int 0x21
00001939  3C1A              cmp al,0x1a
0000193B  7602              jna 0x193f
0000193D  B01A              mov al,0x1a
0000193F  8AC8              mov cl,al
00001941  B500              mov ch,0x0
00001943  E83C5C            call 0x7582
00001946  74C8              jz 0x1910
00001948  33D2              xor dx,dx
0000194A  BDE8BF            mov bp,0xbfe8
0000194D  01750A            add [di+0xa],si
00001950  B88D5F            mov ax,0x5f8d
00001953  CD43              int 0x43
00001955  07                pop es
00001956  CD21              int 0x21
00001958  365B              ss pop bx
0000195A  E8235E            call 0x7780
0000195D  E0FB              loopne 0x195a
0000195F  59                pop cx
00001960  7236              jc 0x1998
00001962  45                inc bp
00001963  C606C50700        mov byte [0x7c5],0x0
00001968  8AC2              mov al,dl
0000196A  0441              add al,0x41
0000196C  A24508            mov [0x845],al
0000196F  C70646083A00      mov word [0x846],0x3a
00001975  BEE657            mov si,0x57e6
00001978  E8EC25            call 0x3f67
0000197B  35BE45            xor ax,0x45be
0000197E  07                pop es
0000197F  E625              out 0x25,al
00001981  BEEC57            mov si,0x57ec
00001984  E8E025            call 0x3f67
00001987  BEFE57            mov si,0x57fe
0000198A  E8DA25            call 0x3f67
0000198D  8BFD              mov di,bp
0000198F  0547B9            add ax,0xb947
00001992  10D2              adc dl,dl
00001994  25E806            and ax,0x6e8
00001997  2807              sub [bx],al
00001999  CD21              int 0x21
0000199B  365B              ss pop bx
0000199D  E8235E            call 0x77c3
000019A0  75FC              jnz 0x199e
000019A2  59                pop cx
000019A3  7251              jc 0x19f6
000019A5  C606C50700        mov byte [0x7c5],0x0
000019AA  83FD00            cmp bp,byte +0x0
000019AD  7538              jnz 0x19e7
000019AF  0547B9            add ax,0xb947
000019B2  83C606            add si,byte +0x6
000019B5  46                inc si
000019B6  803C00            cmp byte [si],0x0
000019B9  0910              or [bx+si],dx
000019BB  4E                dec si
000019BC  C6042A            mov byte [si],0x2a
000019BF  03EB              add bp,bx
000019C1  3490              xor al,0x90
000019C3  8AC2              mov al,dl
000019C5  0441              add al,0x41
000019C7  A24508            mov [0x845],al
000019CA  C70646083A00      mov word [0x846],0x3a
000019D0  BEE657            mov si,0x57e6
000019D3  E89125            call 0x3f67
000019D6  35BE45            xor ax,0x45be
000019D9  07                pop es
000019DA  8B25              mov sp,[di]
000019DC  BEEC57            mov si,0x57ec
000019DF  E88525            call 0x3f67
000019E2  EB09              jmp short 0x19ed
000019E4  E963FF            jmp 0x194a
000019E7  BE1058            mov si,0x5810
000019EA  E87A25            call 0x3f67
000019ED  0547B9            add ax,0xb947
000019F0  107425            adc [si+0x25],dh
000019F3  E8A827            call 0x419e
000019F6  42                inc dx
000019F7  E2EB              loop 0x19e4
000019F9  33ED              xor bp,bp
000019FB  8BDD              mov bx,bp
000019FD  04E8              add al,0xe8
000019FF  1AFF              sbb bh,bh
00001A01  C507              lds ax,[bx]
00001A03  B89800            mov ax,0x98
00001A06  017502            add [di+0x2],si
00001A09  B08A              mov al,0x8a
00001A0B  CD21              int 0x21
00001A0D  8BD3              mov dx,bx
00001A0F  5B                pop bx
00001A10  7231              jc 0x1a43
00001A12  7305              jnc 0x1a19
00001A14  F9                stc
00001A15  C3                ret
00001A16  51                push cx
00001A17  F37B04            rep jpo 0x1a1e
00001A1A  E81AFE            call 0x1837
00001A1D  41                inc cx
00001A1E  0477              add al,0x77
00001A20  83C606            add si,byte +0x6
00001A23  46                inc si
00001A24  803C00            cmp byte [si],0x0
00001A27  0910              or [bx+si],dx
00001A29  4E                dec si
00001A2A  C6042A            mov byte [si],0x2a
00001A2D  0345EB            add ax,[di-0x15]
00001A30  CABEE4            retf 0xe4be
00001A33  58                pop ax
00001A34  7507              jnz 0x1a3d
00001A36  7A45              jpe 0x1a7d
00001A38  07                pop es
00001A39  7408              jz 0x1a43
00001A3B  BEDD57            mov si,0x57dd
00001A3E  80FB03            cmp bl,0x3
00001A41  754D              jnz 0x1a90
00001A43  E82125            call 0x3f67
00001A46  0547B9            add ax,0xb947
00001A49  101C              adc [si],bl
00001A4B  FC                cld
00001A4C  E81825            call 0x3f67
00001A4F  BE8758            mov si,0x5887
00001A52  7507              jnz 0x1a5b
00001A54  7A45              jpe 0x1a9b
00001A56  07                pop es
00001A57  7403              jz 0x1a5c
00001A59  BEEC57            mov si,0x57ec
00001A5C  E80825            call 0x3f67
00001A5F  E81225            call 0x3f74
00001A62  01750A            add [di+0xa],si
00001A65  B88D5F            mov ax,0x5f8d
00001A68  CD23              int 0x23
00001A6A  7507              jnz 0x1a73
00001A6C  7A45              jpe 0x1ab3
00001A6E  07                pop es
00001A6F  741C              jz 0x1a8d
00001A71  B600              mov dh,0x0
00001A73  2A75EB            sub dh,[di-0x15]
00001A76  07                pop es
00001A77  4C                dec sp
00001A78  50                push ax
00001A79  7512              jnz 0x1a8d
00001A7B  8A364807          mov dh,[0x748]
00001A7F  80EE31            sub dh,0x31
00001A82  E839FB            call 0x15be
00001A85  7406              jz 0x1a8d
00001A87  BE4058            mov si,0x5840
00001A8A  E8DA24            call 0x3f67
00001A8D  E80E27            call 0x419e
00001A90  45                inc bp
00001A91  E967FF            jmp 0x19fb
00001A94  01750A            add [di+0xa],si
00001A97  B88D5F            mov ax,0x5f8d
00001A9A  CD47              int 0x47
00001A9C  7507              jnz 0x1aa5
00001A9E  7A45              jpe 0x1ae5
00001AA0  07                pop es
00001AA1  7440              jz 0x1ae3
00001AA3  B600              mov dh,0x0
00001AA5  B903C7            mov cx,0xc703
00001AA8  0F                db 0x0f
00001AA9  00BEE829          add [bp+0x29e8],bh
00001AAD  FB                sti
00001AAE  722F              jc 0x1adf
00001AB0  BEDD57            mov si,0x57dd
00001AB3  E8B124            call 0x3f67
00001AB6  BEC507            mov si,0x7c5
00001AB9  C7044C50          mov word [si],0x504c
00001ABD  7C12              jl 0x1ad1
00001ABF  B95433            mov cx,0x3354
00001AC2  C08AC60431        ror byte [bp+si+0x4c6],byte 0x31
00001AC7  894403            mov [si+0x3],ax
00001ACA  E89A24            call 0x3f67
00001ACD  BEEC57            mov si,0x57ec
00001AD0  E89424            call 0x3f67
00001AD3  BEFE57            mov si,0x57fe
00001AD6  E88E24            call 0x3f67
00001AD9  E89824            call 0x3f74
00001ADC  E8BF26            call 0x419e
00001ADF  FEC6              inc dh
00001AE1  E2C5              loop 0x1aa8
00001AE3  E8B826            call 0x419e
00001AE6  7507              jnz 0x1aef
00001AE8  7A45              jpe 0x1b2f
00001AEA  07                pop es
00001AEB  742E              jz 0x1b1b
00001AED  BE4507            mov si,0x745
00001AF0  CD21              int 0x21
00001AF2  7284              jc 0x1a78
00001AF4  E80300            call 0x1afa
00001AF7  43                inc bx
00001AF8  22BEC557          and bh,[bp+0x57c5]
00001AFC  E86824            call 0x3f67
00001AFF  E87224            call 0x3f74
00001B02  BECF57            mov si,0x57cf
00001B05  E85F24            call 0x3f67
00001B08  BEB857            mov si,0x57b8
00001B0B  E85924            call 0x3f67
00001B0E  8AC2              mov al,dl
00001B10  B400              mov ah,0x0
00001B12  E84424            call 0x3f59
00001B15  E88626            call 0x419e
00001B18  43                inc bx
00001B19  EBD7              jmp short 0x1af2
00001B1B  F8                clc
00001B1C  41                inc cx
00001B1D  0400              add al,0x0
00001B1F  7506              jnz 0x1b27
00001B21  C706C1042A00      mov word [0x4c1],0x2a
00001B27  8D3E4507          lea di,[0x745]
00001B2B  BE743C            mov si,0x3c74
00001B2E  BE0541            mov si,0x4105
00001B31  042A              add al,0x2a
00001B33  00803E05          add [bx+si+0x53e],al
00001B37  2A00              sub al,[bx+si]
00001B39  0100              add [bx+si],ax
00001B3B  C6440200          mov byte [si+0x2],0x0
00001B3F  8D8D7C02          lea cx,[di+0x27c]
00001B43  3EF3A6            ds repe cmpsb
00001B46  46                inc si
00001B47  46                inc si
00001B48  5C                pop sp
00001B49  5C                pop sp
00001B4A  75E8              jnz 0x1b34
00001B4C  7209              jc 0x1b57
00001B4E  5E                pop si
00001B4F  00B02056          add [bx+si+0x5620],dh
00001B53  007403            add [si+0x3],dh
00001B56  E8025C            call 0x775b
00001B59  7507              jnz 0x1b62
00001B5B  46                inc si
00001B5C  E8025C            call 0x7761
00001B5F  7501              jnz 0x1b62
00001B61  46                inc si
00001B62  5C                pop sp
00001B63  5C                pop sp
00001B64  75E8              jnz 0x1b4e
00001B66  58                pop ax
00001B67  095E00            or [bp+0x0],bx
00001B6A  B022              mov al,0x22
00001B6C  56                push si
00001B6D  007411            add [si+0x11],dh
00001B70  35BE41            xor ax,0x41be
00001B73  054A09            add ax,0x94a
00001B76  5E                pop si
00001B77  56                push si
00001B78  8D7C42            lea di,[si+0x42]
00001B7B  A4                movsb
00001B7C  C3                ret
00001B7D  F6B80D0A          idiv byte [bx+si+0xa0d]
00001B81  E8B228            call 0x4436
00001B84  5E                pop si
00001B85  C3                ret
00001B86  B89A5F            mov ax,0x5f9a
00001B89  33D2              xor dx,dx
00001B8B  BF4508            mov di,0x845
00001B8E  41                inc cx
00001B8F  03E8              add bp,ax
00001B91  0233              add dh,[bp+di]
00001B93  BE21E8            mov si,0xe821
00001B96  2B28              sub bp,[bx+si]
00001B98  B81200            mov ax,0x12
00001B9B  F718              neg word [bx+si]
00001B9D  7506              jnz 0x1ba5
00001B9F  C706C104FF75      mov word [0x4c1],0x75ff
00001BA5  0F7B4507          rsldt tword [di+0x7]
00001BA9  7419              jz 0x1bc4
00001BAB  7408              jz 0x1bb5
00001BAD  80CA80            or dl,0x80
00001BB0  B812E8            mov ax,0xe812
00001BB3  48                dec ax
00001BB4  0004              add [si],al
00001BB6  B85CE8            mov ax,0xe85c
00001BB9  42                inc dx
00001BBA  0073FB            add [bp+di-0x5],dh
00001BBD  3C57              cmp al,0x57
00001BBF  74F4              jz 0x1bb5
00001BC1  F9                stc
00001BC2  EBF1              jmp short 0x1bb5
00001BC4  8BFD              mov di,bp
00001BC6  0547B9            add ax,0xb947
00001BC9  B8A4E8            mov ax,0xe8a4
00001BCC  0300              add ax,[bx+si]
00001BCE  43                inc bx
00001BCF  2C33              sub al,0x33
00001BD1  C0                db 0xc0
00001BD2  7408              jz 0x1bdc
00001BD4  80CA80            or dl,0x80
00001BD7  B80140            mov ax,0x4001
00001BDA  A2E81A            mov [0x1ae8],al
00001BDD  FF4607            inc word [bp+0x7]
00001BE0  007403            add [si+0x3],dh
00001BE3  E80233            call 0x4ee8
00001BE6  BE09B9            mov si,0xb909
00001BE9  0C00              or al,0x0
00001BEB  E82728            call 0x4415
00001BEE  5B                pop bx
00001BEF  07                pop es
00001BF0  FF8BFD05          dec word [bp+di+0x5fd]
00001BF4  47                inc di
00001BF5  B94BB8            mov cx,0xb84b
00001BF8  A5                movsw
00001BF9  9A5F33D2D2        call 0xd2d2:0x335f
00001BFE  33DB              xor bx,bx
00001C00  BFFFC5            mov di,0xc5ff
00001C03  07                pop es
00001C04  F3AA              rep stosb
00001C06  B82814            mov ax,0x1428
00001C09  7229              jc 0x1c34
00001C0B  8BC3              mov ax,bx
00001C0D  FFC5              inc bp
00001C0F  07                pop es
00001C10  E81A23            call 0x3f2d
00001C13  B03A              mov al,0x3a
00001C15  AA                stosb
00001C16  8BFD              mov di,bp
00001C18  0547B9            add ax,0xb947
00001C1B  B8A4E8            mov ax,0xe8a4
00001C1E  0300              add ax,[bx+si]
00001C20  43                inc bx
00001C21  36BFC907          ss mov di,0x7c9
00001C25  8A14              mov dl,[si]
00001C27  8D7401            lea si,[si+0x1]
00001C2A  B90C00            mov cx,0xc
00001C2D  51                push cx
00001C2E  57                push di
00001C2F  05008B            add ax,0x8b00
00001C32  F75F59            neg word [bx+0x59]
00001C35  E8DD27            call 0x4415
00001C38  07                pop es
00001C39  81C72ED6          add di,0xd62e
00001C3D  07                pop es
00001C3E  740A              jz 0x1c4a
00001C40  BE80FA            mov si,0xfa80
00001C43  0004              add [si],al
00001C45  C10581            rol word [di],byte 0x81
00001C48  C7                db 0xc7
00001C49  B108              mov cl,0x8
00001C4B  E8C727            call 0x4415
00001C4E  BEC507            mov si,0x7c5
00001C51  E81323            call 0x3f67
00001C54  E84725            call 0x419e
00001C57  5B                pop bx
00001C58  58                pop ax
00001C59  C3                ret
00001C5A  BABFC3            mov dx,0xc3bf
00001C5D  FF                db 0xff
00001C5E  B8C35F            mov ax,0x5fc3
00001C61  EB27              jmp short 0x1c8a
00001C63  03F9              add di,cx
00001C65  F7D9              neg cx
00001C67  83C17F            add cx,byte +0x7f
00001C6A  17                pop ss
00001C6B  BE4105            mov si,0x541
00001C6E  A5                movsw
00001C6F  27                daa
00001C70  F6C606            test dh,0x6
00001C73  83E927            sub cx,byte +0x27
00001C76  8B1EB902          mov bx,[0x2b9]
00001C7A  85DB              test bx,bx
00001C7C  7501              jnz 0x1c7f
00001C7E  43                inc bx
00001C7F  7903              jns 0x1c84
00001C81  03D9              add bx,cx
00001C83  43                inc bx
00001C84  8BD1              mov dx,cx
00001C86  3BD3              cmp dx,bx
00001C88  7602              jna 0x1c8c
00001C8A  8BD3              mov dx,bx
00001C8C  8B1EBB02          mov bx,[0x2bb]
00001C90  85DB              test bx,bx
00001C92  7503              jnz 0x1c97
00001C94  BB0001            mov bx,0x100
00001C97  7903              jns 0x1c9c
00001C99  03D9              add bx,cx
00001C9B  43                inc bx
00001C9C  3BD9              cmp bx,cx
00001C9E  7602              jna 0x1ca2
00001CA0  8BD9              mov bx,cx
00001CA2  F6C606            test dh,0x6
00001CA5  C60000            mov byte [bx+si],0x0
00001CA8  03F2              add si,dx
00001CAA  4E                dec si
00001CAB  03BE4104          add di,[bp+0x441]
00001CAF  73FE              jnc 0x1caf
00001CB1  C10577            rol word [di],byte 0x77
00001CB4  8BEE              mov bp,si
00001CB6  318BD857          xor [bp+di+0x57d8],cx
00001CBA  E89127            call 0x444e
00001CBD  03F9              add di,cx
00001CBF  B03D              mov al,0x3d
00001CC1  AA                stosb
00001CC2  5F                pop di
00001CC3  8BD1              mov dx,cx
00001CC5  42                inc dx
00001CC6  2E8E06B20C        mov es,[cs:0xcb2]
00001CCB  26A11600          mov ax,[es:0x16]
00001CCF  8CC3              mov bx,es
00001CD1  3BC3              cmp ax,bx
00001CD3  8EC0              mov es,ax
00001CD5  75F4              jnz 0x1ccb
00001CD7  268E062C8A        mov es,[es:0x8a2c]
00001CDC  44                inc sp
00001CDD  FF                db 0xff
00001CDE  3CFF              cmp al,0xff
00001CE0  56                push si
00001CE1  57                push di
00001CE2  8BCA              mov cx,dx
00001CE4  06                push es
00001CE5  5B                pop bx
00001CE6  25325F            and ax,0x5f32
00001CE9  5E                pop si
00001CEA  47                inc di
00001CEB  FB                sti
00001CEC  007200            add [bp+si+0x0],dh
00001CEF  42                inc dx
00001CF0  2E813E3E1D030A    cmp word [cs:0x1d3e],0xa03
00001CF7  7507              jnz 0x1d00
00001CF9  83FFF0            cmp di,byte -0x10
00001CFC  7208              jc 0x1d06
00001CFE  EB13              jmp short 0x1d13
00001D00  26833D41          cmp word [es:di],byte +0x41
00001D04  4C                dec sp
00001D05  0D5657            or ax,0x5756
00001D08  8BCA              mov cx,dx
00001D0A  06                push es
00001D0B  5B                pop bx
00001D0C  250C5F            and ax,0x5f0c
00001D0F  5E                pop si
00001D10  47                inc di
00001D11  EBDD              jmp short 0x1cf0
00001D13  B88800            mov ax,0x88
00001D16  F9                stc
00001D17  0E                push cs
00001D18  07                pop es
00001D19  C3                ret
00001D1A  58                pop ax
00001D1B  58                pop ax
00001D1C  B400              mov ah,0x0
00001D1E  8BF5              mov si,bp
00001D20  268A05            mov al,[es:di]
00001D23  3AC4              cmp al,ah
00001D25  74F0              jz 0x1d17
00001D27  2A7504            sub dh,[di+0x4]
00001D2A  EC                in al,dx
00001D2B  4E                dec si
00001D2C  C6042A            mov byte [si],0x2a
00001D2F  04B0              add al,0xb0
00001D31  20EB              and bl,ch
00001D33  01ACAAEB          add [si-0x1456],bp
00001D37  E8B42A            call 0x47ee
00001D3A  CD21              int 0x21
00001D3C  0F                db 0x0f
00001D3D  00BEE8B1          add [bp-0x4e18],bh
00001D41  21F8              and ax,di
00001D43  CB                retf
00001D44  B42A              mov ah,0x2a
00001D46  CD21              int 0x21
00001D48  B400              mov ah,0x0
00001D4A  BE1259            mov si,0x5912
00001D4D  E86422            call 0x3fb4
00001D50  0F                db 0x0f
00001D51  00BEE8BF          add [bp-0x4018],bh
00001D55  2603BFC1F8        add di,[es:bx-0x73f]
00001D5A  CB                retf
00001D5B  0F                db 0x0f
00001D5C  00BED0B4          add [bp-0x4b30],bh
00001D60  0E                push cs
00001D61  CD04              int 0x4
00001D63  41                inc cx
00001D64  B43A              mov ah,0x3a
00001D66  AB                stosw
00001D67  00BE418B          add [bp-0x74bf],bh
00001D6B  F7B200B4          div word [bp+si-0x4c00]
00001D6F  47                inc di
00001D70  CD5F              int 0x5f
00001D72  CDCB              int 0xcb
00001D74  E84C26            call 0x43c3
00001D77  7305              jnc 0x1d7e
00001D79  0E                push cs
00001D7A  81FB02CB          cmp bx,0xcb02
00001D7E  83FB68            cmp bx,byte +0x68
00001D81  B806BF            mov ax,0xbf06
00001D84  0000              add [bx+si],al
00001D86  06                push es
00001D87  EB2A              jmp short 0x1db3
00001D89  81FB8000          cmp bx,0x80
00001D8D  7214              jc 0x1da3
00001D8F  81FB9300          cmp bx,0x93
00001D93  77E4              ja 0x1d79
00001D95  81EB258C          sub bx,0x8c25
00001D99  4D                dec bp
00001D9A  DB2E8BBF          fld tword [0xbf8b]
00001D9E  C7                db 0xc7
00001D9F  0B06EB10          or ax,[0x10eb]
00001DA3  2EF706B41C0800    test word [cs:0x1cb4],0x8
00001DAA  747C              jz 0x1e28
00001DAC  8BC3              mov ax,bx
00001DAE  B405              mov ah,0x5
00001DB0  06                push es
00001DB1  CD2F              int 0x2f
00001DB3  00B8805F          add [bx+si+0x5f80],bh
00001DB7  58                pop ax
00001DB8  5D                pop bp
00001DB9  5F                pop di
00001DBA  882607F8          mov [0xf807],ah
00001DBE  CB                retf
00001DBF  B42C              mov ah,0x2c
00001DC1  CD21              int 0x21
00001DC3  0F                db 0x0f
00001DC4  00BEE8BC          add [bp-0x4318],bh
00001DC8  26F8              es clc
00001DCA  CB                retf
00001DCB  0F                db 0x0f
00001DCC  00BEB8B7          add [bp-0x4848],bh
00001DD0  800E4BF8CB        or byte [0xf84b],0xcb
00001DD5  2EF706B41C0100    test word [cs:0x1cb4],0x1
00001DDC  F9                stc
00001DDD  C3                ret
00001DDE  BF82FB            mov di,0xfb82
00001DE1  02CB              add cl,bl
00001DE3  2EC606400C2A      mov byte [cs:0xc40],0x2a
00001DE9  2EC7063E0C3C00    mov word [cs:0xc3e],0x3c
00001DF0  2EC7063A0C760C    mov word [cs:0xc3a],0xc76
00001DF7  2E8C1E3C0C        mov [cs:0xc3c],ds
00001DFC  2EC6066683C3      mov byte [cs:0x8366],0xc3
00001E02  0F                db 0x0f
00001E03  360C26            ss or al,0x26
00001E06  C60733            mov byte [bx],0x33
00001E09  CD5C              int 0x5c
00001E0B  B90600            mov cx,0x6
00001E0E  BE760C            mov si,0xc76
00001E11  0F                db 0x0f
00001E12  00BEACE8          add [bp-0x1754],bh
00001E16  6D                insw
00001E17  23E2              and sp,dx
00001E19  FA                cli
00001E1A  03BFC1F8          add di,[bx-0x73f]
00001E1E  CB                retf
00001E1F  2EF706B41C0800    test word [cs:0x1cb4],0x8
00001E26  F9                stc
00001E27  C3                ret
00001E28  BF81FB            mov di,0xfb81
00001E2B  02CB              add cl,bl
00001E2D  BAC507            mov dx,0x7c5
00001E30  B8005E            mov ax,0x5e00
00001E33  9A00720C8B        call 0x8b0c:0x7200
00001E38  F2                repne
00001E39  0F                db 0x0f
00001E3A  00BEBABE          add [bp-0x4146],bh
00001E3E  41                inc cx
00001E3F  054522            add ax,0x2245
00001E42  F8                clc
00001E43  CB                retf
00001E44  0F                db 0x0f
00001E45  00BE385F          add [bp+0x5f38],bh
00001E49  57                push di
00001E4A  E81123            call 0x415e
00001E4D  F8                clc
00001E4E  CB                retf
00001E4F  2E8B1EB41C        mov bx,[cs:0x1cb4]
00001E54  0F                db 0x0f
00001E55  00BEB02D          add [bp+0x2db0],bh
00001E59  F6C301            test bl,0x1
00001E5C  7402              jz 0x1e60
00001E5E  B04E              mov al,0x4e
00001E60  AA                stosb
00001E61  B02D              mov al,0x2d
00001E63  F6C308            test bl,0x8
00001E66  7402              jz 0x1e6a
00001E68  B052              mov al,0x52
00001E6A  AA                stosb
00001E6B  B02D              mov al,0x2d
00001E6D  F6C340            test bl,0x40
00001E70  7402              jz 0x1e74
00001E72  B053              mov al,0x53
00001E74  AA                stosb
00001E75  B02D              mov al,0x2d
00001E77  F6C302            test bl,0x2
00001E7A  7402              jz 0x1e7e
00001E7C  B050              mov al,0x50
00001E7E  AA                stosb
00001E7F  03BFC1F8          add di,[bx-0x73f]
00001E83  CB                retf
00001E84  024646            add al,[bp+0x46]
00001E87  8B3E0146          mov di,[0x4601]
00001E8B  E8025C            call 0x7a90
00001E8E  7501              jnz 0x1e91
00001E90  46                inc si
00001E91  BE4507            mov si,0x745
00001E94  CD21              int 0x21
00001E96  8BEE              mov bp,si
00001E98  72E7              jc 0x1e81
00001E9A  BFBF03            mov di,0x3bf
00001E9D  B81103            mov ax,0x311
00001EA0  E9B9BB            jmp 0xda5c
00001EA3  FF065B07          inc word [0x75b]
00001EA7  BF573D            mov di,0x3d57
00001EAA  207608            and [bp+0x8],dh
00001EAD  43                inc bx
00001EAE  EBE8              jmp short 0x1e98
00001EB0  BE0C59            mov si,0x590c
00001EB3  EB03              jmp short 0x1eb8
00001EB5  BE0759            mov si,0x5907
00001EB8  BFB880            mov di,0x80b8
00001EBB  5F                pop di
00001EBC  CD21              int 0x21
00001EBE  E85425            call 0x4415
00001EC1  F8                clc
00001EC2  CB                retf
00001EC3  56                push si
00001EC4  9A6D392000        call 0x20:0x396d
00001EC9  5E                pop si
00001ECA  01750A            add [di+0xa],si
00001ECD  45                inc bp
00001ECE  07                pop es
00001ECF  46                inc si
00001ED0  7417              jz 0x1ee9
00001ED2  024646            add al,[bp+0x46]
00001ED5  8B7406            mov si,[si+0x6]
00001ED8  4E                dec si
00001ED9  4E                dec si
00001EDA  C7045C5C          mov word [si],0x5c5c
00001EDE  BFB880            mov di,0x80b8
00001EE1  87FE              xchg di,si
00001EE3  87F7              xchg si,di
00001EE5  46                inc si
00001EE6  46                inc si
00001EE7  E8F8CB            call 0xeae2
00001EEA  8BD6              mov dx,si
00001EEC  7274              jc 0x1f62
00001EEE  8BD8              mov bx,ax
00001EF0  BA4100            mov dx,0x41
00001EF3  7255              jc 0x1f4a
00001EF5  2EFF367C5C        push word [cs:0x5c7c]
00001EFA  2E8958C3          mov [cs:bx+si-0x3d],bx
00001EFE  BF0F00            mov di,0xf
00001F01  BE385F            mov si,0x5f38
00001F04  57                push di
00001F05  E83F22            call 0x4147
00001F08  2E8F067C5C        pop word [cs:0x5c7c]
00001F0D  4F                dec di
00001F0E  CD21              int 0x21
00001F10  72E8              jc 0x1efa
00001F12  3A25              cmp ah,[di]
00001F14  03F9              add di,cx
00001F16  E308              jcxz 0x1f20
00001F18  49                dec cx
00001F19  4F                dec di
00001F1A  57                push di
00001F1B  3D2072            cmp ax,0x7220
00001F1E  F74703BFC1        test word [bx+0x3],0xc1bf
00001F23  F8                clc
00001F24  CB                retf
00001F25  F9                stc
00001F26  BB030D            mov bx,0xd03
00001F29  B503              mov ch,0x3
00001F2B  E998C6            jmp 0xe5c6
00001F2E  B40D              mov ah,0xd
00001F30  CD21              int 0x21
00001F32  CD12              int 0x12
00001F34  8BE8              mov bp,ax
00001F36  2E8B1EB20C        mov bx,[cs:0xcb2]
00001F3B  4B                dec bx
00001F3C  8EC3              mov es,bx
00001F3E  267507            es jnz 0x1f48
00001F41  0000              add [bx+si],al
00001F43  5A                pop dx
00001F44  7405              jz 0x1f4b
00001F46  B80900            mov ax,0x9
00001F49  EBDA              jmp short 0x1f25
00001F4B  B4FF              mov ah,0xff
00001F4D  B200              mov dl,0x0
00001F4F  CD13              int 0x13
00001F51  7207              jc 0x1f5a
00001F53  80FAFF            cmp dl,0xff
00001F56  756D              jnz 0x1fc5
00001F58  EB0A              jmp short 0x1f64
00001F5A  80FC03            cmp ah,0x3
00001F5D  7566              jnz 0x1fc5
00001F5F  BE0800            mov si,0x8
00001F62  EBC1              jmp short 0x1f25
00001F64  CD12              int 0x12
00001F66  2BC5              sub ax,bp
00001F68  B106              mov cl,0x6
00001F6A  D3E0              shl ax,cl
00001F6C  26010603BF        add [es:0xbf03],ax
00001F71  01750A            add [di+0xa],si
00001F74  3E1D0572          ds sbb ax,0x7205
00001F78  40                inc ax
00001F79  8CC0              mov ax,es
00001F7B  26030603BF        add ax,[es:0xbf03]
00001F80  40                inc ax
00001F81  50                push ax
00001F82  B452              mov ah,0x52
00001F84  CD21              int 0x21
00001F86  58                pop ax
00001F87  26833E8C00FF      cmp word [es:0x8c],byte -0x1
00001F8D  742A              jz 0x1fb9
00001F8F  8BD0              mov dx,ax
00001F91  2687068C00        xchg ax,[es:0x8c]
00001F96  8EC0              mov es,ax
00001F98  26030603BF        add ax,[es:0xbf03]
00001F9D  2BC2              sub ax,dx
00001F9F  8EC2              mov es,dx
00001FA1  26C60600004D      mov byte [es:0x0],0x4d
00001FA7  26C70601000800    mov word [es:0x1],0x8
00001FAE  26A30300          mov [es:0x3],ax
00001FB2  26C70608005343    mov word [es:0x8],0x4353
00001FB9  33C0              xor ax,ax
00001FBB  0E                push cs
00001FBC  7E02              jng 0x1fc0
00001FBE  13B40DCD          adc si,[si-0x32f3]
00001FC2  21980001          and [bx+si+0x100],bx
00001FC6  F706B41C0100      test word [0x1cb4],0x1
00001FCC  F9                stc
00001FCD  06                push es
00001FCE  BF82FB            mov di,0xfb82
00001FD1  E951FF            jmp 0x1f25
00001FD4  2EC6066683C3      mov byte [cs:0x8366],0xc3
00001FDA  0F                db 0x0f
00001FDB  360C26            ss or al,0x26
00001FDE  C60770            mov byte [bx],0x70
00001FE1  CD5C              int 0x5c
00001FE3  EBDA              jmp short 0x1fbf
00001FE5  1E                push ds
00001FE6  0060CD            add [bx+si-0x33],ah
00001FE9  2135              and [di],si
00001FEB  BE4105            mov si,0x541
00001FEE  2300              and ax,[bx+si]
00001FF0  F718              neg word [bx+si]
00001FF2  33DB              xor bx,bx
00001FF4  2F                das
00001FF5  7248              jc 0x203f
00001FF7  832D00            sub word [di],byte +0x0
00001FFA  720B              jc 0x2007
00001FFC  53                push bx
00001FFD  7208              jc 0x2007
00001FFF  83FBFF            cmp bx,byte -0x1
00002002  5B                pop bx
00002003  720D              jc 0x2012
00002005  EBED              jmp short 0x1ff4
00002007  F8                clc
00002008  EB08              jmp short 0x2012
0000200A  60                pusha
0000200B  CD21              int 0x21
0000200D  BE049A            mov si,0x9a04
00002010  5F                pop di
00002011  33D2              xor dx,dx
00002013  56                push si
00002014  33D2              xor dx,dx
00002016  3C5C              cmp al,0x5c
00002018  75F7              jnz 0x2011
0000201A  07                pop es
0000201B  3C2A              cmp al,0x2a
0000201D  7404              jz 0x2023
0000201F  42                inc dx
00002020  E2F4              loop 0x2016
00002022  F9                stc
00002023  8BCA              mov cx,dx
00002025  5E                pop si
00002026  C3                ret
00002027  53                push bx
00002028  51                push cx
00002029  56                push si
0000202A  04E8              add al,0xe8
0000202C  1AFF              sbb bh,bh
0000202E  CD21              int 0x21
00002030  7202              jc 0x2034
00002032  EB38              jmp short 0x206c
00002034  8BF7              mov si,di
00002036  8B5EFF            mov bx,[bp-0x1]
00002039  5B                pop bx
0000203A  7211              jc 0x204d
0000203C  E3A6              jcxz 0x1fe4
0000203E  5E                pop si
0000203F  5F                pop di
00002040  59                pop cx
00002041  74CB              jz 0x200e
00002043  43                inc bx
00002044  EBEC              jmp short 0x2032
00002046  B90343            mov cx,0x4303
00002049  EBDC              jmp short 0x2027
0000204B  8BF7              mov si,di
0000204D  C3                ret
0000204E  805FCD80          sbb byte [bx-0x33],0x80
00002052  5F                pop di
00002053  CD21              int 0x21
00002055  217217            and [bp+si+0x17],si
00002058  51                push cx
00002059  56                push si
0000205A  57                push di
0000205B  4F                dec di
0000205C  1E                push ds
0000205D  5E                pop si
0000205E  5F                pop di
0000205F  59                pop cx
00002060  74CB              jz 0x202d
00002062  EF                out dx,ax
00002063  42                inc dx
00002064  EBD0              jmp short 0x2036
00002066  750C              jnz 0x2074
00002068  26807DFF00        cmp byte [es:di-0x1],0x0
0000206D  7405              jz 0x2074
0000206F  26807DFF20        cmp byte [es:di-0x1],0x20
00002074  43                inc bx
00002075  EBEC              jmp short 0x2063
00002077  75DC              jnz 0x2055
00002079  EB14              jmp short 0x208f
0000207B  57                push di
0000207C  04BF              add al,0xbf
0000207E  6700BE4133C0AB    add [esi-0x543fccbf],bh
00002085  5F                pop di
00002086  4F                dec di
00002087  4F                dec di
00002088  7316              jnc 0x20a0
0000208A  80B3FF5F33        xor byte [bp+di+0x5fff],0x33
0000208F  D201              rol byte [bx+di],cl
00002091  750A              jnz 0x209d
00002093  7702              ja 0x2097
00002095  33BE4105          xor di,[bp+0x541]
00002099  4A                dec dx
0000209A  FF01              inc word [bx+di]
0000209C  750A              jnz 0x20a8
0000209E  2E8A166541        mov dl,[cs:0x4165]
000020A3  72F6              jc 0x209b
000020A5  800E4B0737        or byte [0x74b],0x37
000020AA  80CA40            or dl,0x40
000020AD  B89E5F            mov ax,0x5f9e
000020B0  CD21              int 0x21
000020B2  9D                popf
000020B3  5F                pop di
000020B4  7406              jz 0x20bc
000020B6  E87228            call 0x492b
000020B9  C10577            rol word [di],byte 0x77
000020BC  BF41CE            mov di,0xce41
000020BF  30BE4657          xor [bp+0x5746],bh
000020C3  7604              jna 0x20c9
000020C5  3C5C              cmp al,0x5c
000020C7  5C                pop sp
000020C8  03AAE2F4          add bp,[bp+si-0xb1e]
000020CC  C60500            mov byte [di],0x0
000020CF  8B3E5EB8          mov di,[0xb85e]
000020D3  800091            add byte [bx+si],0x91
000020D6  2BC8              sub cx,ax
000020D8  41                inc cx
000020D9  4A                dec dx
000020DA  00A1E86F          add [bx+di+0x6fe8],ah
000020DE  FF7337            push word [bp+di+0x37]
000020E1  E9DF1C            jmp 0x3dc3
000020E4  3847B9            cmp [bx-0x47],al
000020E7  BF1772            mov di,0x7217
000020EA  30C6              xor dh,al
000020EC  05BF67            add ax,0x67bf
000020EF  07                pop es
000020F0  17                pop ss
000020F1  00E8              add al,ch
000020F3  DE07              fiadd word [bx]
000020F5  BF1772            mov di,0x7217
000020F8  3847B9            cmp [bx-0x47],al
000020FB  803E7E721E        cmp byte [0x727e],0x1e
00002100  803E8B87EB        cmp byte [0x878b],0xeb
00002105  858C00E8          test [si-0x1800],cx
00002109  FF07              inc word [bx]
0000210B  730B              jnc 0x2118
0000210D  3847B9            cmp [bx-0x47],al
00002110  BF1772            mov di,0x7217
00002113  30C6              xor dh,al
00002115  05BF67            add ax,0x67bf
00002118  07                pop es
00002119  BF03B3            mov di,0xb303
0000211C  0405              add al,0x5
0000211E  C744027401        mov word [si+0x2],0x174
00002123  4B                dec bx
00002124  5E                pop si
00002125  5F                pop di
00002126  59                pop cx
00002127  098BD7BE          or [bp+di-0x4129],cx
0000212B  41                inc cx
0000212C  0432              add al,0x32
0000212E  C0                db 0xc0
0000212F  F2AE              repne scasb
00002131  17                pop ss
00002132  BE41B8            mov si,0xb841
00002135  805F8B1E          sbb byte [bx-0x75],0x1e
00002139  AA                stosb
0000213A  43                inc bx
0000213B  EBEC              jmp short 0x2129
0000213D  01750A            add [di+0xa],si
00002140  B88D5F            mov ax,0x5f8d
00002143  CD39              int 0x39
00002145  80FB04            cmp bl,0x4
00002148  7516              jnz 0x2160
0000214A  0F                db 0x0f
0000214B  00BE8A14          add [bp+0x148a],bh
0000214F  80EA45            sub dl,0x45
00002152  098BD7E8          or [bp+di-0x1729],cx
00002156  E7F3              out 0xf3,ax
00002158  7224              jc 0x217e
0000215A  B88DFB            mov ax,0xfb8d
0000215D  022E63B6          add ch,[0xb663]
00002161  002A              add [bp+si],ch
00002163  3C50              cmp al,0x50
00002165  52                push dx
00002166  7411              jz 0x2179
00002168  813C4C50          cmp word [si],0x504c
0000216C  7510              jnz 0x217e
0000216E  028B0C80          add cl,[bp+di-0x7ff4]
00002172  EE                out dx,al
00002173  3180FE02          xor [bx+si+0x2fe],ax
00002177  7705              ja 0x217e
00002179  E842F4            call 0x15be
0000217C  75DC              jnz 0x215a
0000217E  33C9              xor cx,cx
00002180  5C                pop sp
00002181  AB                stosw
00002182  B88098            mov ax,0x9880
00002185  0001              add [bx+di],al
00002187  7502              jnz 0x218b
00002189  B08B              mov al,0x8b
0000218B  CD21              int 0x21
0000218D  59                pop cx
0000218E  5E                pop si
0000218F  7293              jc 0x2124
00002191  80732F9C          xor byte [bp+di+0x2f],0x9c
00002195  3DF7E8            cmp ax,0xe8f7
00002198  98                cbw
00002199  039DEB26          add bx,[di+0x26eb]
0000219D  9D                popf
0000219E  3847B9            cmp [bx-0x47],al
000021A1  BF6151            mov di,0x5161
000021A4  3D5F8B            cmp ax,0x8b5f
000021A7  AC                lodsb
000021A8  E2F4              loop 0x219e
000021AA  C60500            mov byte [di],0x0
000021AD  8BF8              mov di,ax
000021AF  BEE451            mov si,0x51e4
000021B2  B90C00            mov cx,0xc
000021B5  BF6707            mov di,0x767
000021B8  F1                int1
000021B9  4A                dec dx
000021BA  B91200            mov cx,0x12
000021BD  8B1E5B92          mov bx,[0x925b]
000021C1  00F9              add cl,bh
000021C3  9C                pushf
000021C4  50                push ax
000021C5  2E740A            cs jz 0x21d2
000021C8  2E8A166525        mov dl,[cs:0x2565]
000021CD  B89E5F            mov ax,0x5f9e
000021D0  CD21              int 0x21
000021D2  58                pop ax
000021D3  9D                popf
000021D4  C3                ret
000021D5  57                push di
000021D6  8BF7              mov si,di
000021D8  BF45E8            mov di,0xe845
000021DB  7CE0              jl 0x21bd
000021DD  E903C4            jmp 0xe5e3
000021E0  50                push ax
000021E1  53                push bx
000021E2  06                push es
000021E3  B85C35            mov ax,0x355c
000021E6  3ECD8C            ds int 0x8c
000021E9  C0073D            rol byte [bx],byte 0x3d
000021EC  00F0              add al,dh
000021EE  7311              jnc 0x2201
000021F0  2E7517            cs jnz 0x220a
000021F3  50                push ax
000021F4  53                push bx
000021F5  B405              mov ah,0x5
000021F7  053D60            add ax,0x603d
000021FA  75F7              jnz 0x21f3
000021FC  4E                dec si
000021FD  0BC3              or ax,bx
000021FF  B88700            mov ax,0x87
00002202  E80CB0            call 0xd211
00002205  00BBF60B          add [bp+di+0xbf6],bh
00002209  CD5C              int 0x5c
0000220B  2A7504            sub dh,[di+0x4]
0000220E  F2F8              repne clc
00002210  03B9272E          add di,[bx+di+0x2e27]
00002214  8C06B20C          mov [0xcb2],es
00002218  BF0200            mov di,0x2
0000221B  268B05            mov ax,[es:di]
0000221E  2EA3401D          mov [cs:0x1d40],ax
00002222  8CC8              mov ax,cs
00002224  8ED8              mov ds,ax
00002226  8EC0              mov es,ax
00002228  FC                cld
00002229  B430              mov ah,0x30
0000222B  652580A3          gs and ax,0xa380
0000222F  3E1D2EC7          ds sbb ax,0xc72e
00002233  06                push es
00002234  C05BB40C          rcr byte [bp+di-0x4c],byte 0xc
00002238  2EC706C25B0010    mov word [cs:0x5bc2],0x1000
0000223F  E89EFF            call 0x21e0
00002242  7206              jc 0x224a
00002244  2E830EB41C01      or word [cs:0x1cb4],byte +0x1
0000224A  B800B8            mov ax,0xb800
0000224D  CD2F              int 0x2f
0000224F  2A7504            sub dh,[di+0x4]
00002252  052E09            add ax,0x92e
00002255  1E                push ds
00002256  B41C              mov ah,0x1c
00002258  33DB              xor bx,bx
0000225A  2E803E00EE06      cmp byte [cs:0xee00],0x6
00002260  E87204            call 0x26d5
00002263  0BD9              or bx,cx
00002265  7521              jnz 0x2288
00002267  7251              jc 0x22ba
00002269  DC06E872          fadd qword [0x72e8]
0000226D  0AC3              or al,bl
0000226F  7402              jz 0x2273
00002271  EB2E              jmp short 0x22a1
00002273  C606B08BCD        mov byte [0x8bb0],0xcd
00002278  BFBD02            mov di,0x2bd
0000227B  E8A91E            call 0x4127
0000227E  BA8000            mov dx,0x80
00002281  BEBD02            mov si,0x2bd
00002284  0F                db 0x0f
00002285  00BEE8FD          add [bp-0x218],bh
00002289  1D803D            sbb ax,0x3d80
0000228C  2F                das
0000228D  7519              jnz 0x22a8
0000228F  56                push si
00002290  B9FF03            mov cx,0x3ff
00002293  B452              mov ah,0x52
00002295  33C9              xor cx,cx
00002297  E86120            call 0x42fb
0000229A  5E                pop si
0000229B  730E              jnc 0x22ab
0000229D  B087              mov al,0x87
0000229F  2EC606F50B01      mov byte [cs:0xbf5],0x1
000022A5  E98701            jmp 0x242f
000022A8  BEBD02            mov si,0x2bd
000022AB  2E7517            cs jnz 0x22c5
000022AE  F30B833289        rep or ax,[bp+di-0x76ce]
000022B3  BEC245            mov si,0x45c2
000022B6  E8AE1C            call 0x3f67
000022B9  BE0F46            mov si,0x460f
000022BC  E8A81C            call 0x3f67
000022BF  33C0              xor ax,ax
000022C1  E96B01            jmp 0x242f
000022C4  2E7517            cs jnz 0x22de
000022C7  F4                hlt
000022C8  0B07              or ax,[bx]
000022CA  E8062E            call 0x50d3
000022CD  C60610004D        mov byte [0x10],0x4d
000022D2  2E7517            cs jnz 0x22ec
000022D5  F20B833206        repne or ax,[bp+di+0x632]
000022DA  2EC606120053      mov byte [cs:0x12],0x53
000022E0  2E7517            cs jnz 0x22fa
000022E3  F1                int1
000022E4  0B07              or ax,[bx]
000022E6  E823BE            call 0xe10c
000022E9  8E46BF            mov es,[bp-0x41]
000022EC  C106E8961D        rol word [0x96e8],byte 0x1d
000022F1  56                push si
000022F2  B9FF03            mov cx,0x3ff
000022F5  3D03E8            cmp ax,0xe803
000022F8  D6                salc
000022F9  1C2E              sbb al,0x2e
000022FB  89364107          mov [0x741],si
000022FF  5E                pop si
00002300  033D              add di,[di]
00002302  03BE9E4D          add di,[bp+0x4d9e]
00002306  E80CBE            call 0xe115
00002309  6447              fs inc di
0000230B  C6044D            mov byte [si],0x4d
0000230E  B90400            mov cx,0x4
00002311  E82221            call 0x4436
00002314  56                push si
00002315  007532            add [di+0x32],dh
00002318  E86C1D            call 0x4087
0000231B  BF4104            mov di,0x441
0000231E  C6                db 0xc6
0000231F  215E31            and [bp+0x31],bx
00002322  8BD8              mov bx,ax
00002324  B83BDF            mov ax,0xdf3b
00002327  7220              jc 0x2349
00002329  FF                db 0xff
0000232A  B8C35F            mov ax,0x5fc3
0000232D  33DF              xor bx,di
0000232F  7218              jc 0x2349
00002331  07                pop es
00002332  E889E8            call 0xbbe
00002335  2BDF              sub bx,di
00002337  BE4607            mov si,0x746
0000233A  41                inc cx
0000233B  05E823            add ax,0x23e8
0000233E  DF7208            fbstp tword [bp+si+0x8]
00002341  4A                dec dx
00002342  00A1E81B          add [bx+di+0x1be8],ah
00002346  DF87EB85          fild word [bx-0x7a15]
0000234A  E300              jcxz 0x234c
0000234C  BE3D03            mov si,0x33d
0000234F  BF2650            mov di,0x5026
00002352  35BE41            xor ax,0x41be
00002355  05BD20            add ax,0x20bd
00002358  C7050D0A          mov word [di],0xa0d
0000235C  C6450200          mov byte [di+0x2],0x0
00002360  BE3D03            mov si,0x33d
00002363  BF8050            mov di,0x5080
00002366  B110              mov cl,0x10
00002368  E8AA20            call 0x4415
0000236B  C7050D0A          mov word [di],0xa0d
0000236F  C6450200          mov byte [di+0x2],0x0
00002373  BE3D03            mov si,0x33d
00002376  BFB050            mov di,0x50b0
00002379  B110              mov cl,0x10
0000237B  E89720            call 0x4415
0000237E  C7050D0A          mov word [di],0xa0d
00002382  C6450200          mov byte [di+0x2],0x0
00002386  BE2846            mov si,0x4628
00002389  033D              add di,[di]
0000238B  03E8              add bp,ax
0000238D  6920730C          imul sp,[bx+si],word 0xc73
00002391  B080              mov al,0x80
00002393  BED04E            mov si,0x4ed0
00002396  E8FB1B            call 0x3f94
00002399  B44C              mov ah,0x4c
0000239B  388BF7D8          cmp [bp+di-0x2709],cl
0000239F  F60740            test byte [bx],0x40
000023A2  740F              jz 0x23b3
000023A4  01F7              add di,si
000023A6  06                push es
000023A7  B41C              mov ah,0x1c
000023A9  0100              add [bx+si],ax
000023AB  F9                stc
000023AC  06                push es
000023AD  BF82FB            mov di,0xfb82
000023B0  EB7D              jmp short 0x242f
000023B2  90                nop
000023B3  F60780            test byte [bx],0x80
000023B6  742A              jz 0x23e2
000023B8  2EF706B41C0800    test word [cs:0x1cb4],0x8
000023BF  F9                stc
000023C0  217316            and [bp+di+0x16],si
000023C3  00EB              add bl,ch
000023C5  6990B809B8CD      imul dx,[bx+si+0x9b8],word 0xcdb8
000023CB  2F                das
000023CC  80FC06            cmp ah,0x6
000023CF  F9                stc
000023D0  EB0E              jmp short 0x23e0
000023D2  830045            add word [bx+si],byte +0x45
000023D5  07                pop es
000023D6  5C                pop sp
000023D7  E82901            call 0x2503
000023DA  7306              jnc 0x23e2
000023DC  B88C00            mov ax,0x8c
000023DF  EB4E              jmp short 0x242f
000023E1  90                nop
000023E2  07                pop es
000023E3  BF038A            mov di,0x8a03
000023E6  4F                dec di
000023E7  01B500E3          add [di-0x1d00],si
000023EB  124EC6            adc cl,[bp-0x3a]
000023EE  042A              add al,0x2a
000023F0  07                pop es
000023F1  B084              mov al,0x84
000023F3  BE0550            mov si,0x5005
000023F6  EB9E              jmp short 0x2396
000023F8  FE4104            inc byte [bx+di+0x4]
000023FB  77E2              ja 0x23df
000023FD  EE                out dx,al
000023FE  8B7F06            mov di,[bx+0x6]
00002401  2E8B364107        mov si,[cs:0x741]
00002406  E8F21E            call 0x42fb
00002409  87EB              xchg bp,bx
0000240B  858FFEBA          test [bx-0x4502],cx
0000240F  1A0B              sbb cl,[bp+di]
00002411  B41A              mov ah,0x1a
00002413  CD21              int 0x21
00002415  0F5C7502          subps xmm6,oword [di+0x2]
00002419  47                inc di
0000241A  47                inc di
0000241B  AC                lodsb
0000241C  015C74            add [si+0x74],bx
0000241F  024747            add al,[bx+0x47]
00002422  AC                lodsb
00002423  0101              add [bx+di],ax
00002425  4F                dec di
00002426  53                push bx
00002427  FF5704            call [bx+0x4]
0000242A  5E                pop si
0000242B  7202              jc 0x242f
0000242D  33C0              xor ax,ax
0000242F  E86400            call 0x2496
00002432  85C0              test ax,ax
00002434  745C              jz 0x2492
00002436  2E7517            cs jnz 0x2450
00002439  F5                cmc
0000243A  0B01              or ax,[bx+di]
0000243C  7454              jz 0x2492
0000243E  3D8000            cmp ax,0x80
00002441  7210              jc 0x2453
00002443  8BF8              mov di,ax
00002445  81EF258C          sub di,0x8c25
00002449  4D                dec bp
0000244A  FF2E8BB5          jmp far [0xb58b]
0000244E  C7                db 0xc7
0000244F  0BE9              or bp,cx
00002451  43                inc bx
00002452  FF1E06B4          call far [0xb406]
00002456  59                pop cx
00002457  CD21              int 0x21
00002459  07                pop es
0000245A  1F                pop ds
0000245B  E8E904            call 0x2947
0000245E  50                push ax
0000245F  8BD8              mov bx,ax
00002461  FF01              inc word [bx+di]
00002463  752F              jnz 0x2494
00002465  58                pop ax
00002466  8CC2              mov dx,es
00002468  8CC9              mov cx,cs
0000246A  3BCA              cmp cx,dx
0000246C  7509              jnz 0x2477
0000246E  BFCC4E            mov di,0x4ecc
00002471  E8111D            call 0x4185
00002474  BFBD4E            mov di,0x4ebd
00002477  E82A1B            call 0x3fa4
0000247A  0E                push cs
0000247B  07                pop es
0000247C  3D0800            cmp ax,0x8
0000247F  7411              jz 0x2492
00002481  8B7414            mov si,[si+0x14]
00002484  B90D00            mov cx,0xd
00002487  57                push di
00002488  09BFBA4E          or [bx+0x4eba],di
0000248C  E8181B            call 0x3fa7
0000248F  E8051B            call 0x3f97
00002492  B44C              mov ah,0x4c
00002494  388BB400          cmp [bp+di+0xb4],cl
00002498  8CCF              mov di,cs
0000249A  8EDF              mov ds,di
0000249C  8EC7              mov es,di
0000249E  07                pop es
0000249F  CD21              int 0x21
000024A1  8BEF              mov bp,di
000024A3  C7052020          mov word [di],0x2020
000024A7  C64502E3          mov byte [di+0x2],0xe3
000024AB  8BC8              mov cx,ax
000024AD  7E1A              jng 0x24c9
000024AF  BFAA54            mov di,0x54aa
000024B2  2EC606B35400      mov byte [cs:0x54b3],0x0
000024B8  50                push ax
000024B9  56                push si
000024BA  E8FCF7            call 0x1cb9
000024BD  5E                pop si
000024BE  B92757            mov cx,0x5727
000024C1  51                push cx
000024C2  57                push di
000024C3  5F                pop di
000024C4  CD21              int 0x21
000024C6  05008B            add ax,0x8b00
000024C9  F7C70433          test di,0x3304
000024CD  D2593C            rcr byte [bx+di+0x3c],cl
000024D0  2A7504            sub dh,[di+0x4]
000024D3  B000              mov al,0x0
000024D5  B101              mov cl,0x1
000024D7  AA                stosb
000024D8  E2F0              loop 0x24ca
000024DA  BF4104            mov di,0x441
000024DD  BE4558            mov si,0x5845
000024E0  C3                ret
000024E1  8922              mov [bp+si],sp
000024E3  B200              mov dl,0x0
000024E5  2200              and al,[bx+si]
000024E7  B057              mov al,0x57
000024E9  33D2              xor dx,dx
000024EB  3306B880          xor ax,[0x80b8]
000024EF  11CD              adc bp,cx
000024F1  2F                das
000024F2  B80004            mov ax,0x400
000024F5  262307            and ax,[es:bx]
000024F8  F8                clc
000024F9  752F              jnz 0x252a
000024FB  B80038            mov ax,0x3800
000024FE  BACA8B            mov dx,0x8bca
00002501  C8B483FB          enter 0x83b4,0xfb
00002505  80B81283FB        cmp byte [bx+si-0x7cee],0xfb
0000250A  02740D            add dh,[si+0xd]
0000250D  83FB31            cmp bx,byte +0x31
00002510  7403              jz 0x2515
00002512  E2F2              loop 0x2506
00002514  2C74              sub al,0x74
00002516  0383FB21          add ax,[bp+di+0x21fb]
0000251A  BB030B            mov bx,0xb03
0000251D  80ADCD2F3C        sub byte [di+0x2fcd],0x3c
00002522  FF7404            push word [si+0x4]
00002525  F8                clc
00002526  EB02              jmp short 0x252a
00002528  90                nop
00002529  F9                stc
0000252A  07                pop es
0000252B  BABF03            mov dx,0x3bf
0000252E  B927BE            mov cx,0xbe27
00002531  361DB8C0          ss sbb ax,0xc0b8
00002535  C3                ret
00002536  57                push di
00002537  8B87F746          mov ax,[bx+0x46f7]
0000253B  BEB61C            mov si,0x1cb6
0000253E  46                inc si
0000253F  E8A716            call 0x3be9
00002542  B95000            mov cx,0x50
00002545  2200              and al,[bx+si]
00002547  2EA12C1D          mov ax,[cs:0x1d2c]
0000254B  3D0000            cmp ax,0x0
0000254E  7417              jz 0x2567
00002550  2E3B06361D        cmp ax,[cs:0x1d36]
00002555  7710              ja 0x2567
00002557  2EA12E1D          mov ax,[cs:0x1d2e]
0000255B  2E3B06381D        cmp ax,[cs:0x1d38]
00002560  7705              ja 0x2567
00002562  B88E41            mov ax,0x418e
00002565  0483              add al,0x83
00002567  F8                clc
00002568  41                inc cx
00002569  0400              add al,0x0
0000256B  805FCD21          sbb byte [bx-0x33],0x21
0000256F  7217              jc 0x2588
00002571  51                push cx
00002572  56                push si
00002573  57                push di
00002574  4F                dec di
00002575  22B90000          and bh,[bx+di+0x0]
00002579  3EF3A6            ds repe cmpsb
0000257C  3C00              cmp al,0x0
0000257E  7403              jz 0x2583
00002580  AA                stosb
00002581  E2F4              loop 0x2577
00002583  C60541            mov byte [di],0x41
00002586  EBF4              jmp short 0x257c
00002588  5E                pop si
00002589  8BFD              mov di,bp
0000258B  59                pop cx
0000258C  74CB              jz 0x2559
0000258E  43                inc bx
0000258F  8BFD              mov di,bp
00002591  75DB              jnz 0x256e
00002593  72DD              jc 0x2572
00002595  E80300            call 0x259b
00002598  C3                ret
00002599  B100              mov cl,0x0
0000259B  B200              mov dl,0x0
0000259D  F3AA              rep stosb
0000259F  5F                pop di
000025A0  53                push bx
000025A1  52                push dx
000025A2  57                push di
000025A3  56                push si
000025A4  2E7517            cs jnz 0x25be
000025A7  9B1419            wait adc al,0x19
000025AA  C3                ret
000025AB  1D2E75            sbb ax,0x752e
000025AE  17                pop ss
000025AF  AA                stosb
000025B0  1419              adc al,0x19
000025B2  C3                ret
000025B3  1535BE            adc ax,0xbe35
000025B6  45                inc bp
000025B7  2E7517            cs jnz 0x25d1
000025BA  8C8A1665          mov [bp+si+0x6516],cs
000025BE  5B                pop bx
000025BF  E8B723            call 0x4979
000025C2  5E                pop si
000025C3  E001              loopne 0x25c6
000025C5  722B              jc 0x25f2
000025C7  EB0D              jmp short 0x25d6
000025C9  E8AD00            call 0x2679
000025CC  E86701            call 0x2736
000025CF  7221              jc 0x25f2
000025D1  E8DB00            call 0x26af
000025D4  721C              jc 0x25f2
000025D6  E89600            call 0x266f
000025D9  E88800            call 0x2664
000025DC  C3                ret
000025DD  B88712            mov ax,0x1287
000025E0  7715              ja 0x25f7
000025E2  3BDA              cmp bx,dx
000025E4  720C              jc 0x25f2
000025E6  770F              ja 0x25f7
000025E8  E8BA00            call 0x26a5
000025EB  E8AC00            call 0x269a
000025EE  C3                ret
000025EF  B87705            mov ax,0x577
000025F2  0E                push cs
000025F3  81FBEB23          cmp bx,0x23eb
000025F7  E87500            call 0x266f
000025FA  E86602            call 0x2863
000025FD  3ACB              cmp cl,bl
000025FF  72F1              jc 0x25f2
00002601  2EA3DF07          mov [cs:0x7df],ax
00002605  2E8958E1          mov [cs:bx+si-0x1f],bx
00002609  07                pop es
0000260A  E89800            call 0x26a5
0000260D  2EA3E307          mov [cs:0x7e3],ax
00002611  2E803E7C0204      cmp byte [cs:0x27c],0x4
00002617  B92600            mov cx,0x26
0000261A  5E                pop si
0000261B  5F                pop di
0000261C  5A                pop dx
0000261D  5B                pop bx
0000261E  C3                ret
0000261F  2EC606830201      mov byte [cs:0x283],0x1
00002625  2EBE4104          cs mov si,0x441
00002629  E887F6            call 0x1cb3
0000262C  C60683C7E1        mov byte [0xc783],0xe1
00002631  2EBE4104          cs mov si,0x441
00002635  E8002E            call 0x5438
00002638  C606830201        mov byte [0x283],0x1
0000263D  57                push di
0000263E  47                inc di
0000263F  47                inc di
00002640  098BD7B0          or [bp+di-0x4f29],cx
00002644  5C                pop sp
00002645  F2AE              repne scasb
00002647  4F                dec di
00002648  5F                pop di
00002649  B8B1F3            mov ax,0xf3b1
0000264C  A4                movsb
0000264D  9D                popf
0000264E  40                inc ax
0000264F  B8C0C3            mov ax,0xc3c0
00002652  57                push di
00002653  8BC3              mov ax,bx
00002655  B42A              mov ah,0x2a
00002657  CD21              int 0x21
00002659  2E890E9D40        mov [cs:0x409d],cx
0000265E  2E89169F40        mov [cs:0x409f],dx
00002663  C3                ret
00002664  2E8B0E9D40        mov cx,[cs:0x409d]
00002669  2E8B169F40        mov dx,[cs:0x409f]
0000266E  C3                ret
0000266F  2EA1A540          mov ax,[cs:0x40a5]
00002673  2E8B1EA740        mov bx,[cs:0x40a7]
00002678  C3                ret
00002679  E8A3FF            call 0x261f
0000267C  7311              jnc 0x268f
0000267E  B42C              mov ah,0x2c
00002680  CD21              int 0x21
00002682  2E890EA140        mov [cs:0x40a1],cx
00002687  2E8916A340        mov [cs:0x40a3],dx
0000268C  E8C6FF            call 0x2655
0000268F  A4                movsb
00002690  9D                popf
00002691  40                inc ax
00002692  BFA540            mov di,0x40a5
00002695  A5                movsw
00002696  A5                movsw
00002697  A5                movsw
00002698  A5                movsw
00002699  C3                ret
0000269A  2E8B0EA140        mov cx,[cs:0x40a1]
0000269F  2E8B16A340        mov dx,[cs:0x40a3]
000026A4  C3                ret
000026A5  2EA1A940          mov ax,[cs:0x40a9]
000026A9  2E8B1EAB40        mov bx,[cs:0x40ab]
000026AE  C3                ret
000026AF  2E7517            cs jnz 0x26c9
000026B2  AA                stosb
000026B3  1419              adc al,0x19
000026B5  747E              jz 0x2735
000026B7  BEAA02            mov si,0x2aa
000026BA  B02D              mov al,0x2d
000026BC  E87901            call 0x2838
000026BF  BEAA02            mov si,0x2aa
000026C2  E8DA1C            call 0x439f
000026C5  726E              jc 0x2735
000026C7  2E7517            cs jnz 0x26e1
000026CA  AD                lodsw
000026CB  0239              add bh,[bx+di]
000026CD  7636              jna 0x2705
000026CF  8BC3              mov ax,bx
000026D1  B320              mov bl,0x20
000026D3  F6F3              div bl
000026D5  2E8826A740        mov [cs:0x40a7],ah
000026DA  B300              mov bl,0x0
000026DC  BF5D59            mov di,0x595d
000026DF  BEAA02            mov si,0x2aa
000026E2  E86B01            call 0x2850
000026E5  B903C7            mov cx,0xc703
000026E8  FEC3              inc bl
000026EA  5E                pop si
000026EB  5F                pop di
000026EC  59                pop cx
000026ED  74CB              jz 0x26ba
000026EF  43                inc bx
000026F0  EBEC              jmp short 0x26de
000026F2  B90A03            mov cx,0x30a
000026F5  F9                stc
000026F6  80FB0C            cmp bl,0xc
000026F9  72ED              jc 0x26e8
000026FB  F9                stc
000026FC  EB37              jmp short 0x2735
000026FE  80CA1E            or dl,0x1e
00002701  A840              test al,0x40
00002703  EB23              jmp short 0x2728
00002705  8BC3              mov ax,bx
00002707  B30D              mov bl,0xd
00002709  F6F3              div bl
0000270B  2E8826A840        mov [cs:0x40a8],ah
00002710  BEAA02            mov si,0x2aa
00002713  E83A01            call 0x2850
00002716  56                push si
00002717  E8851C            call 0x439f
0000271A  5E                pop si
0000271B  7218              jc 0x2735
0000271D  8BC3              mov ax,bx
0000271F  B320              mov bl,0x20
00002721  F6F3              div bl
00002723  2E8826A740        mov [cs:0x40a7],ah
00002728  E82501            call 0x2850
0000272B  E8711C            call 0x439f
0000272E  7205              jc 0x2735
00002730  2E8958A5          mov [cs:bx+si-0x5b],bx
00002734  40                inc ax
00002735  C3                ret
00002736  2E7517            cs jnz 0x2750
00002739  9B1419            wait adc al,0x19
0000273C  7466              jz 0x27a4
0000273E  BE9B02            mov si,0x29b
00002741  B03A              mov al,0x3a
00002743  E8F200            call 0x2838
00002746  BE9B02            mov si,0x29b
00002749  E8531C            call 0x439f
0000274C  7256              jc 0x27a4
0000274E  8BC3              mov ax,bx
00002750  B318              mov bl,0x18
00002752  F6F3              div bl
00002754  2E8826AA40        mov [cs:0x40aa],ah
00002759  BE9B02            mov si,0x29b
0000275C  E8F100            call 0x2850
0000275F  8B5402            mov dx,[si+0x2]
00002762  7C12              jl 0x2776
00002764  B91052            mov cx,0x5210
00002767  E8351C            call 0x439f
0000276A  5A                pop dx
0000276B  7237              jc 0x27a4
0000276D  8BC3              mov ax,bx
0000276F  B33C              mov bl,0x3c
00002771  F6F3              div bl
00002773  2E8826A940        mov [cs:0x40a9],ah
00002778  9F                lahf
00002779  55                push bp
0000277A  E82781            call 0xa8a4
0000277D  FA                cli
0000277E  50                push ax
0000277F  4D                dec bp
00002780  7412              jz 0x2794
00002782  81FA414D          cmp dx,0x4d41
00002786  751B              jnz 0x27a3
00002788  B3F4              mov bl,0xf4
0000278A  2E7517            cs jnz 0x27a4
0000278D  AA                stosb
0000278E  40                inc ax
0000278F  0C74              or al,0x74
00002791  0CEB              or al,0xeb
00002793  0F2E7517          ucomiss xmm6,dword [di+0x17]
00002797  AA                stosb
00002798  40                inc ax
00002799  0C74              or al,0x74
0000279B  07                pop es
0000279C  B30C              mov bl,0xc
0000279E  2E001EAA40        add [cs:0x40aa],bl
000027A3  F8                clc
000027A4  C3                ret
000027A5  2E7517            cs jnz 0x27bf
000027A8  8C8A16E8          mov [bp+si-0x17ea],cs
000027AC  23E9              and bp,cx
000027AE  E8872F            call 0x5738
000027B1  8C02              mov [bp+si],es
000027B3  B03A              mov al,0x3a
000027B5  E88087            call 0xaf38
000027B8  2F                das
000027B9  8C02              mov [bp+si],es
000027BB  E89200            call 0x2850
000027BE  E8DE1B            call 0x439f
000027C1  41                inc cx
000027C2  04B8              add al,0xb8
000027C4  C3                ret
000027C5  B33C              mov bl,0x3c
000027C7  F6F3              div bl
000027C9  2E0026A940        add [cs:0x40a9],ah
000027CE  2E381EA940        cmp [cs:0x40a9],bl
000027D3  7207              jc 0x27dc
000027D5  2E281EA940        sub [cs:0x40a9],bl
000027DA  FEC0              inc al
000027DC  2E0006AA40        add [cs:0x40aa],al
000027E1  BE8C02            mov si,0x28c
000027E4  E8B81B            call 0x439f
000027E7  724E              jc 0x2837
000027E9  B8C3B3            mov ax,0xb3c3
000027EC  60                pusha
000027ED  F6F3              div bl
000027EF  8AC4              mov al,ah
000027F1  32E4              xor ah,ah
000027F3  B318              mov bl,0x18
000027F5  F6F3              div bl
000027F7  2E0026AA40        add [cs:0x40aa],ah
000027FC  2E381EAA40        cmp [cs:0x40aa],bl
00002801  7207              jc 0x280a
00002803  2E281EAA40        sub [cs:0x40aa],bl
00002808  FEC0              inc al
0000280A  2E0006A740        add [cs:0x40a7],al
0000280F  E85DFE            call 0x266f
00002812  E84E00            call 0x2863
00002815  3AD9              cmp bl,cl
00002817  761D              jna 0x2836
00002819  2E280EA740        sub [cs:0x40a7],cl
0000281E  2EFE06A840        inc byte [cs:0x40a8]
00002823  2E7517            cs jnz 0x283d
00002826  A840              test al,0x40
00002828  0D720B            or ax,0xb72
0000282B  2EC606A84001      mov byte [cs:0x40a8],0x1
00002831  2EFE06A540        inc byte [cs:0x40a5]
00002836  F8                clc
00002837  C3                ret
00002838  50                push ax
00002839  53                push bx
0000283A  56                push si
0000283B  8AD8              mov bl,al
0000283D  AC                lodsb
0000283E  3AC3              cmp al,bl
00002840  7506              jnz 0x2848
00002842  E8002B            call 0x5345
00002845  C7                db 0xc7
00002846  EBF5              jmp short 0x283d
00002848  C6042A            mov byte [si],0x2a
0000284B  F1                int1
0000284C  5E                pop si
0000284D  03B927AC          add di,[bx+di-0x53d9]
00002851  E2F4              loop 0x2847
00002853  75FB              jnz 0x2850
00002855  C3                ret
00002856  001F              add [bx],bl
00002858  1C1F              sbb al,0x1f
0000285A  1E                push ds
0000285B  1F                pop ds
0000285C  1E                push ds
0000285D  1F                pop ds
0000285E  1F                pop ds
0000285F  1E                push ds
00002860  1F                pop ds
00002861  1E                push ds
00002862  1F                pop ds
00002863  50                push ax
00002864  53                push bx
00002865  52                push dx
00002866  80FF02            cmp bh,0x2
00002869  7500              jnz 0x286b
0000286B  720A              jc 0x2877
0000286D  D1E8              shr ax,1
0000286F  D1E8              shr ax,1
00002871  D1E0              shl ax,1
00002873  D1E0              shl ax,1
00002875  3BC3              cmp ax,bx
00002877  7523              jnz 0x289c
00002879  8BC3              mov ax,bx
0000287B  B96400            mov cx,0x64
0000287E  33D2              xor dx,dx
00002880  F7F1              div cx
00002882  F7E1              mul cx
00002884  3BC3              cmp ax,bx
00002886  750F              jnz 0x2897
00002888  8BC3              mov ax,bx
0000288A  B99001            mov cx,0x190
0000288D  33D2              xor dx,dx
0000288F  F7F1              div cx
00002891  F7E1              mul cx
00002893  3BC3              cmp ax,bx
00002895  7505              jnz 0x289c
00002897  B91D00            mov cx,0x1d
0000289A  EB0F              jmp short 0x28ab
0000289C  B91C00            mov cx,0x1c
0000289F  EB0A              jmp short 0x28ab
000028A1  32DB              xor bl,bl
000028A3  86FB              xchg bh,bl
000028A5  8A8F6343          mov cl,[bx+0x4363]
000028A9  32ED              xor ch,ch
000028AB  5A                pop dx
000028AC  03B9272E          add di,[bx+di+0x2e27]
000028B0  C7061500D949      mov word [0x15],0x49d9
000028B6  E84000            call 0x28f9
000028B9  57                push di
000028BA  FD                std
000028BB  B05C              mov al,0x5c
000028BD  F2AE              repne scasb
000028BF  FC                cld
000028C0  47                inc di
000028C1  47                inc di
000028C2  803D40            cmp byte [di],0x40
000028C5  5F                pop di
000028C6  741D              jz 0x28e5
000028C8  2EC70615007408    mov word [cs:0x15],0x874
000028CF  E87DFF            call 0x284f
000028D2  5C                pop sp
000028D3  7509              jnz 0x28de
000028D5  2EC70615005C00    mov word [cs:0x15],0x5c
000028DC  EB03              jmp short 0x28e1
000028DE  00BE41B8          add [bp-0x47bf],bh
000028E2  3F                aas
000028E3  00ABC32E          add [bp+di+0x2ec3],ch
000028E7  833E1500D9        cmp word [0x15],byte -0x27
000028EC  740A              jz 0x28f8
000028EE  E80800            call 0x28f9
000028F1  4F                dec di
000028F2  4F                dec di
000028F3  2EA11500          mov ax,[cs:0x15]
000028F7  AB                stosw
000028F8  C3                ret
000028F9  8BFE              mov di,si
000028FB  32C0              xor al,al
000028FD  098BD7F2          or [bp+di-0xd29],cx
00002901  AE                scasb
00002902  4F                dec di
00002903  C3                ret
00002904  50                push ax
00002905  0C00              or al,0x0
00002907  FF5645            call [bp+0x45]
0000290A  4D                dec bp
0000290B  54                push sp
0000290C  53                push bx
0000290D  52                push dx
0000290E  000D              add [di],cl
00002910  8BC8              mov cx,ax
00002912  04C6              add al,0xc6
00002914  45                inc bp
00002915  BB2000            mov bx,0x20
00002918  8EDB              mov ds,bx
0000291A  BB1144            mov bx,0x4411
0000291D  B800AE            mov ax,0xae00
00002920  CD2F              int 0x2f
00002922  27                daa
00002923  57                push di
00002924  33D2              xor dx,dx
00002926  33DB              xor bx,bx
00002928  1E                push ds
00002929  BE0100            mov si,0x1
0000292C  E8E1FF            call 0x2910
0000292F  1F                pop ds
00002930  5E                pop si
00002931  BABF03            mov dx,0x3bf
00002934  B92757            mov cx,0x5727
00002937  33D2              xor dx,dx
00002939  33DB              xor bx,bx
0000293B  1E                push ds
0000293C  BE0200            mov si,0x2
0000293F  97                xchg ax,di
00002940  E8CDFF            call 0x2910
00002943  1F                pop ds
00002944  5E                pop si
00002945  BABF03            mov dx,0x3bf
00002948  B9278D            mov cx,0x8d27
0000294B  36E81AFF          ss call 0x2869
0000294F  2000              and [bx+si],al
00002951  8EC7              mov es,di
00002953  8D3E470B          lea di,[0xb47]
00002957  C64404FF          mov byte [si+0x4],0xff
0000295B  893C              mov [si],di
0000295D  8C4402            mov [si+0x2],es
00002960  C7440EFFFF        mov word [si+0xe],0xffff
00002965  C6440510          mov byte [si+0x5],0x10
00002969  33C0              xor ax,ax
0000296B  894408            mov [si+0x8],ax
0000296E  89440A            mov [si+0xa],ax
00002971  89440C            mov [si+0xc],ax
00002974  C744100000        mov word [si+0x10],0x0
00002979  C74412BC06        mov word [si+0x12],0x6bc
0000297E  56                push si
0000297F  8D36BF03          lea si,[0x3bf]
00002983  83C604            add si,byte +0x4
00002986  2A04              sub al,[si]
00002988  C74507BE5F        mov word [di+0x7],0x5fbe
0000298D  CD21              int 0x21
0000298F  E80AFB            call 0x249c
00002992  5E                pop si
00002993  B8FF07            mov ax,0x7ff
00002996  2E8B0E401D        mov cx,[cs:0x1d40]
0000299B  81E9BC06          sub cx,0x6bc
0000299F  81F90010          cmp cx,0x1000
000029A3  7310              jnc 0x29b5
000029A5  33D2              xor dx,dx
000029A7  B80400            mov ax,0x4
000029AA  91                xchg ax,cx
000029AB  D3E0              shl ax,cl
000029AD  89440E            mov [si+0xe],ax
000029B0  B92000            mov cx,0x20
000029B3  F7F1              div cx
000029B5  894406            mov [si+0x6],ax
000029B8  B8D6C3            mov ax,0xc3d6
000029BB  57                push di
000029BC  8BC5              mov ax,bp
000029BE  7410              jz 0x29d0
000029C0  87EB              xchg bp,bx
000029C2  858D08E8          test [di-0x17f8],cx
000029C6  6C                insb
000029C7  36B8F8FF          ss mov ax,0xfff8
000029CB  2000              and [bx+si],al
000029CD  8EC7              mov es,di
000029CF  8D3E8159          lea di,[0x5981]
000029D3  E8A417            call 0x417a
000029D6  E87715            call 0x3f50
000029D9  E89E17            call 0x417a
000029DC  E87408            call 0x3253
000029DF  E86CFF            call 0x294e
000029E2  7462              jz 0x2a46
000029E4  E86C36            call 0x6053
000029E7  B8698D            mov ax,0x8d69
000029EA  16                push ss
000029EB  CD21              int 0x21
000029ED  8BFA              mov di,dx
000029EF  B82814            mov ax,0x1428
000029F2  B82020            mov ax,0x2020
000029F5  F3AB              rep stosw
000029F7  8BFA              mov di,dx
000029F9  B80F00            mov ax,0xf
000029FC  8B1E8BFA          mov bx,[0xfa8b]
00002A00  81C71400          add di,0x14
00002A04  AC                lodsb
00002A05  32E4              xor ah,ah
00002A07  807C0C00          cmp byte [si+0xc],0x0
00002A0B  7539              jnz 0x2a46
00002A0D  E8F914            call 0x3f09
00002A10  8BFA              mov di,dx
00002A12  81C71D00          add di,0x1d
00002A16  AC                lodsb
00002A17  32E4              xor ah,ah
00002A19  E8ED14            call 0x3f09
00002A1C  B02E              mov al,0x2e
00002A1E  AA                stosb
00002A1F  AC                lodsb
00002A20  32E4              xor ah,ah
00002A22  E8E414            call 0x3f09
00002A25  8BFA              mov di,dx
00002A27  81C72677          add di,0x7726
00002A2B  83C608            add si,byte +0x8
00002A2E  AD                lodsw
00002A2F  46                inc si
00002A30  46                inc si
00002A31  D6                salc
00002A32  2033              and [bp+di],dh
00002A34  C0                db 0xc0
00002A35  F60440            test byte [si],0x40
00002A38  7403              jz 0x2a3d
00002A3A  B8FB00            mov ax,0xfb
00002A3D  AB                stosw
00002A3E  E88157            call 0x81c2
00002A41  80E80D            sub al,0xd
00002A44  15E834            adc ax,0x34e8
00002A47  17                pop ss
00002A48  8CD8              mov ax,ds
00002A4A  40                inc ax
00002A4B  40                inc ax
00002A4C  8ED8              mov ds,ax
00002A4E  8D360000          lea si,[0x0]
00002A52  EB8D              jmp short 0x29e1
00002A54  C3                ret
00002A55  56                push si
00002A56  1E                push ds
00002A57  06                push es
00002A58  8CDB              mov bx,ds
00002A5A  4B                dec bx
00002A5B  4B                dec bx
00002A5C  8EDB              mov ds,bx
00002A5E  8BDE              mov bx,si
00002A60  8CD8              mov ax,ds
00002A62  40                inc ax
00002A63  40                inc ax
00002A64  8ED8              mov ds,ax
00002A66  803FFF            cmp byte [bx],0xff
00002A69  74F5              jz 0x2a60
00002A6B  803F00            cmp byte [bx],0x0
00002A6E  7425              jz 0x2a95
00002A70  8EC0              mov es,ax
00002A72  8CC0              mov ax,es
00002A74  40                inc ax
00002A75  40                inc ax
00002A76  8EC0              mov es,ax
00002A78  26803FFF          cmp byte [es:bx],0xff
00002A7C  74F4              jz 0x2a72
00002A7E  26803F00          cmp byte [es:bx],0x0
00002A82  74DC              jz 0x2a60
00002A84  8BF3              mov si,bx
00002A86  8BFB              mov di,bx
00002A88  0520BE            add ax,0xbe20
00002A8B  F3A7              repe cmpsw
00002A8D  75E3              jnz 0x2a72
00002A8F  07                pop es
00002A90  70CD              jo 0x2a5f
00002A92  FF                db 0xff
00002A93  EBDD              jmp short 0x2a72
00002A95  07                pop es
00002A96  1F                pop ds
00002A97  5E                pop si
00002A98  C3                ret
00002A99  52                push dx
00002A9A  4F                dec di
00002A9B  47                inc di
00002A9C  8A05              mov al,[di]
00002A9E  B8698D            mov ax,0x8d69
00002AA1  133C              adc di,[si]
00002AA3  2075F5            and [di-0xb],dh
00002AA6  8BD7              mov dx,di
00002AA8  47                inc di
00002AA9  8A05              mov al,[di]
00002AAB  B82074            mov ax,0x7420
00002AAE  F9                stc
00002AAF  2A04              sub al,[si]
00002AB1  C7                db 0xc7
00002AB2  E88BFA            call 0x2540
00002AB5  5A                pop dx
00002AB6  C3                ret
00002AB7  4C                dec sp
00002AB8  41                inc cx
00002AB9  4E                dec si
00002ABA  7461              jz 0x2b1d
00002ABC  7374              jnc 0x2b32
00002ABE  6963202852        imul sp,[bp+di+0x20],word 0x5228
00002AC3  2920              sub [bx+si],sp
00002AC5  43                inc bx
00002AC6  6F                outsw
00002AC7  6E                outsb
00002AC8  6E                outsb
00002AC9  65637469          arpl [gs:si+0x69],si
00002ACD  6F                outsw
00002ACE  6E                outsb
00002ACF  204D61            and [di+0x61],cl
00002AD2  6E                outsb
00002AD3  61                popa
00002AD4  67657220          gs jc 0x2af8
00002AD8  56                push si
00002AD9  362E3030          xor [cs:bx+si],dh
00002ADD  202D              and [di],ch
00002ADF  2028              and [bx+si],ch
00002AE1  43                inc bx
00002AE2  2920              sub [bx+si],sp
00002AE4  43                inc bx
00002AE5  6F                outsw
00002AE6  7079              jo 0x2b61
00002AE8  7269              jc 0x2b53
00002AEA  67687420          push word 0x2074
00002AEE  3139              xor [bx+di],di
00002AF0  3934              cmp [si],si
00002AF2  204152            and [bx+di+0x52],al
00002AF5  54                push sp
00002AF6  49                dec cx
00002AF7  53                push bx
00002AF8  4F                dec di
00002AF9  46                inc si
00002AFA  54                push sp
00002AFB  20496E            and [bx+di+0x6e],cl
00002AFE  632E0D0A          arpl [0xa0d],bp
00002B02  001A              add [bp+si],bl
00002B04  2D2D2D            sub ax,0x2d2d
00002B07  204E45            and [bp+0x45],cl
00002B0A  54                push sp
00002B0B  205636            and [bp+0x36],dl
00002B0E  2E3030            xor [cs:bx+si],dh
00002B11  2E3237            xor dh,[cs:bx]
00002B14  202D              and [di],ch
00002B16  2D2D00            sub ax,0x2d
00002B19  0A0D              or cl,[di]
00002B1B  0A00              or al,[bx+si]
00002B1D  43                inc bx
00002B1E  014154            add [bx+di+0x54],ax
00002B21  54                push sp
00002B22  41                inc cx
00002B23  43                inc bx
00002B24  48                dec ax
00002B25  004B01            add [bp+di+0x1],cl
00002B28  41                inc cx
00002B29  55                push bp
00002B2A  44                inc sp
00002B2B  49                dec cx
00002B2C  54                push sp
00002B2D  005301            add [bp+di+0x1],dl
00002B30  43                inc bx
00002B31  48                dec ax
00002B32  41                inc cx
00002B33  54                push sp
00002B34  005B01            add [bp+di+0x1],bl
00002B37  43                inc bx
00002B38  48                dec ax
00002B39  41                inc cx
00002B3A  4E                dec si
00002B3B  47                inc di
00002B3C  45                inc bp
00002B3D  50                push ax
00002B3E  57                push di
00002B3F  006301            add [bp+di+0x1],ah
00002B42  43                inc bx
00002B43  4C                dec sp
00002B44  4F                dec di
00002B45  43                inc bx
00002B46  4B                dec bx
00002B47  006B01            add [bp+di+0x1],ch
00002B4A  43                inc bx
00002B4B  4F                dec di
00002B4C  50                push ax
00002B4D  59                pop cx
00002B4E  007301            add [bp+di+0x1],dh
00002B51  44                inc sp
00002B52  45                inc bp
00002B53  54                push sp
00002B54  41                inc cx
00002B55  43                inc bx
00002B56  48                dec ax
00002B57  007B01            add [bp+di+0x1],bh
00002B5A  44                inc sp
00002B5B  49                dec cx
00002B5C  52                push dx
00002B5D  00830144          add [bp+di+0x4401],al
00002B61  49                dec cx
00002B62  53                push bx
00002B63  41                inc cx
00002B64  42                inc dx
00002B65  4C                dec sp
00002B66  45                inc bp
00002B67  41                inc cx
00002B68  008B0145          add [bp+di+0x4501],cl
00002B6C  43                inc bx
00002B6D  48                dec ax
00002B6E  4F                dec di
00002B6F  00930145          add [bp+di+0x4501],dl
00002B73  58                pop ax
00002B74  50                push ax
00002B75  41                inc cx
00002B76  4E                dec si
00002B77  44                inc sp
00002B78  009B0146          add [bp+di+0x4601],bl
00002B7C  4C                dec sp
00002B7D  55                push bp
00002B7E  53                push bx
00002B7F  48                dec ax
00002B80  00A30148          add [bp+di+0x4801],ah
00002B84  45                inc bp
00002B85  4C                dec sp
00002B86  50                push ax
00002B87  00AB0149          add [bp+di+0x4901],ch
00002B8B  4E                dec si
00002B8C  44                inc sp
00002B8D  49                dec cx
00002B8E  52                push dx
00002B8F  45                inc bp
00002B90  43                inc bx
00002B91  54                push sp
00002B92  00B3014C          add [bp+di+0x4c01],dh
00002B96  4F                dec di
00002B97  47                inc di
00002B98  49                dec cx
00002B99  4E                dec si
00002B9A  00C3              add bl,al
00002B9C  014C4F            add [si+0x4f],cx
00002B9F  47                inc di
00002BA0  4F                dec di
00002BA1  55                push bp
00002BA2  54                push sp
00002BA3  00CB              add bl,cl
00002BA5  014C50            add [si+0x50],cx
00002BA8  54                push sp
00002BA9  00D3              add bl,dl
00002BAB  014D41            add [di+0x41],cx
00002BAE  49                dec cx
00002BAF  4C                dec sp
00002BB0  00DB              add bl,bl
00002BB2  014D45            add [di+0x45],cx
00002BB5  53                push bx
00002BB6  53                push bx
00002BB7  41                inc cx
00002BB8  47                inc di
00002BB9  45                inc bp
00002BBA  00E3              add bl,ah
00002BBC  015041            add [bx+si+0x41],dx
00002BBF  55                push bp
00002BC0  53                push bx
00002BC1  45                inc bp
00002BC2  00EB              add bl,ch
00002BC4  01504F            add [bx+si+0x4f],dx
00002BC7  53                push bx
00002BC8  54                push sp
00002BC9  42                inc dx
00002BCA  4F                dec di
00002BCB  58                pop ax
00002BCC  00F3              add bl,dh
00002BCE  015052            add [bx+si+0x52],dx
00002BD1  49                dec cx
00002BD2  4E                dec si
00002BD3  54                push sp
00002BD4  006302            add [bp+di+0x2],ah
00002BD7  50                push ax
00002BD8  49                dec cx
00002BD9  4E                dec si
00002BDA  47                inc di
00002BDB  00FB              add bl,bh
00002BDD  015155            add [bx+di+0x55],dx
00002BE0  45                inc bp
00002BE1  55                push bp
00002BE2  45                inc bp
00002BE3  0003              add [bp+di],al
00002BE5  025245            add dl,[bp+si+0x45]
00002BE8  43                inc bx
00002BE9  45                inc bp
00002BEA  49                dec cx
00002BEB  56                push si
00002BEC  45                inc bp
00002BED  000B              add [bp+di],cl
00002BEF  025255            add dl,[bp+si+0x55]
00002BF2  4E                dec si
00002BF3  0013              add [bp+di],dl
00002BF5  025348            add dl,[bp+di+0x48]
00002BF8  4F                dec di
00002BF9  57                push di
00002BFA  001B              add [bp+di],bl
00002BFC  025345            add dl,[bp+di+0x45]
00002BFF  4E                dec si
00002C00  44                inc sp
00002C01  0023              add [bp+di],ah
00002C03  025348            add dl,[bp+di+0x48]
00002C06  55                push bp
00002C07  54                push sp
00002C08  44                inc sp
00002C09  4F                dec di
00002C0A  57                push di
00002C0B  4E                dec si
00002C0C  00BB0153          add [bp+di+0x5301],bh
00002C10  4C                dec sp
00002C11  4F                dec di
00002C12  47                inc di
00002C13  49                dec cx
00002C14  4E                dec si
00002C15  53                push bx
00002C16  002B              add [bp+di],ch
00002C18  025354            add dl,[bp+di+0x54]
00002C1B  52                push dx
00002C1C  45                inc bp
00002C1D  41                inc cx
00002C1E  4D                dec bp
00002C1F  0033              add [bp+di],dh
00002C21  025354            add dl,[bp+di+0x54]
00002C24  52                push dx
00002C25  49                dec cx
00002C26  4E                dec si
00002C27  47                inc di
00002C28  003B              add [bp+di],bh
00002C2A  025445            add dl,[si+0x45]
00002C2D  52                push dx
00002C2E  4D                dec bp
00002C2F  49                dec cx
00002C30  4E                dec si
00002C31  41                inc cx
00002C32  54                push sp
00002C33  45                inc bp
00002C34  004302            add [bp+di+0x2],al
00002C37  55                push bp
00002C38  4E                dec si
00002C39  4C                dec sp
00002C3A  49                dec cx
00002C3B  4E                dec si
00002C3C  4B                dec bx
00002C3D  004B02            add [bp+di+0x2],cl
00002C40  55                push bp
00002C41  4E                dec si
00002C42  55                push bp
00002C43  53                push bx
00002C44  45                inc bp
00002C45  005302            add [bp+di+0x2],dl
00002C48  55                push bp
00002C49  53                push bx
00002C4A  45                inc bp
00002C4B  005B02            add [bp+di+0x2],bl
00002C4E  55                push bp
00002C4F  53                push bx
00002C50  45                inc bp
00002C51  52                push dx
00002C52  00A3013F          add [bp+di+0x3f01],ah
00002C56  006B02            add [bp+di+0x2],ch
00002C59  00454E            add [di+0x4e],al
00002C5C  55                push bp
00002C5D  0000              add [bx+si],al
00002C5F  0000              add [bx+si],al
00002C61  004154            add [bx+di+0x54],al
00002C64  54                push sp
00002C65  41                inc cx
00002C66  43                inc bx
00002C67  48                dec ax
00002C68  206861            and [bx+si+0x61],ch
00002C6B  7320              jnc 0x2c8d
00002C6D  6661              popad
00002C6F  696C65640D        imul bp,[si+0x65],word 0xd64
00002C74  0A00              or al,[bx+si]
00002C76  41                inc cx
00002C77  55                push bp
00002C78  44                inc sp
00002C79  49                dec cx
00002C7A  54                push sp
00002C7B  206861            and [bx+si+0x61],ch
00002C7E  7320              jnc 0x2ca0
00002C80  6661              popad
00002C82  696C65642E        imul bp,[si+0x65],word 0x2e64
00002C87  0D0A00            or ax,0xa
00002C8A  50                push ax
00002C8B  41                inc cx
00002C8C  53                push bx
00002C8D  53                push bx
00002C8E  57                push di
00002C8F  4F                dec di
00002C90  52                push dx
00002C91  44                inc sp
00002C92  204348            and [bp+di+0x48],al
00002C95  41                inc cx
00002C96  4E                dec si
00002C97  47                inc di
00002C98  45                inc bp
00002C99  206861            and [bx+si+0x61],ch
00002C9C  7320              jnc 0x2cbe
00002C9E  6661              popad
00002CA0  696C65642E        imul bp,[si+0x65],word 0x2e64
00002CA5  0D0A00            or ax,0xa
00002CA8  43                inc bx
00002CA9  61                popa
00002CAA  6E                outsb
00002CAB  27                daa
00002CAC  7420              jz 0x2cce
00002CAE  67657420          gs jz 0x2cd2
00002CB2  7365              jnc 0x2d19
00002CB4  7276              jc 0x2d2c
00002CB6  657227            gs jc 0x2ce0
00002CB9  7320              jnc 0x2cdb
00002CBB  7469              jz 0x2d26
00002CBD  6D                insw
00002CBE  652E0D0A00        cs or ax,0xa
00002CC3  43                inc bx
00002CC4  4F                dec di
00002CC5  50                push ax
00002CC6  59                pop cx
00002CC7  206F70            and [bx+0x70],ch
00002CCA  657261            gs jc 0x2d2e
00002CCD  7469              jz 0x2d38
00002CCF  6F                outsw
00002CD0  6E                outsb
00002CD1  206861            and [bx+si+0x61],ch
00002CD4  7320              jnc 0x2cf6
00002CD6  6661              popad
00002CD8  696C65642E        imul bp,[si+0x65],word 0x2e64
00002CDD  0D0A00            or ax,0xa
00002CE0  44                inc sp
00002CE1  45                inc bp
00002CE2  54                push sp
00002CE3  41                inc cx
00002CE4  43                inc bx
00002CE5  48                dec ax
00002CE6  206F70            and [bx+0x70],ch
00002CE9  657261            gs jc 0x2d4d
00002CEC  7469              jz 0x2d57
00002CEE  6F                outsw
00002CEF  6E                outsb
00002CF0  206861            and [bx+si+0x61],ch
00002CF3  7320              jnc 0x2d15
00002CF5  6661              popad
00002CF7  696C65642E        imul bp,[si+0x65],word 0x2e64
00002CFC  0D0A00            or ax,0xa
00002CFF  44                inc sp
00002D00  49                dec cx
00002D01  52                push dx
00002D02  206861            and [bx+si+0x61],ch
00002D05  7320              jnc 0x2d27
00002D07  6661              popad
00002D09  696C65642E        imul bp,[si+0x65],word 0x2e64
00002D0E  0D0A00            or ax,0xa
00002D11  41                inc cx
00002D12  43                inc bx
00002D13  43                inc bx
00002D14  4F                dec di
00002D15  55                push bp
00002D16  4E                dec si
00002D17  54                push sp
00002D18  204449            and [si+0x49],al
00002D1B  53                push bx
00002D1C  41                inc cx
00002D1D  42                inc dx
00002D1E  4C                dec sp
00002D1F  45                inc bp
00002D20  206861            and [bx+si+0x61],ch
00002D23  7320              jnc 0x2d45
00002D25  6661              popad
00002D27  696C65642E        imul bp,[si+0x65],word 0x2e64
00002D2C  0D0A00            or ax,0xa
00002D2F  45                inc bp
00002D30  58                pop ax
00002D31  50                push ax
00002D32  41                inc cx
00002D33  4E                dec si
00002D34  44                inc sp
00002D35  206F70            and [bx+0x70],ch
00002D38  657261            gs jc 0x2d9c
00002D3B  7469              jz 0x2da6
00002D3D  6F                outsw
00002D3E  6E                outsb
00002D3F  206861            and [bx+si+0x61],ch
00002D42  7320              jnc 0x2d64
00002D44  6661              popad
00002D46  696C65642E        imul bp,[si+0x65],word 0x2e64
00002D4B  0D0A00            or ax,0xa
00002D4E  43                inc bx
00002D4F  61                popa
00002D50  6E                outsb
00002D51  27                daa
00002D52  7420              jz 0x2d74
00002D54  666C              o32 insb
00002D56  7573              jnz 0x2dcb
00002D58  682073            push word 0x7320
00002D5B  657276            gs jc 0x2dd4
00002D5E  657227            gs jc 0x2d88
00002D61  7320              jnc 0x2d83
00002D63  636163            arpl [bx+di+0x63],sp
00002D66  686573            push word 0x7365
00002D69  2E0D0A00          cs or ax,0xa
00002D6D  63616E            arpl [bx+di+0x6e],sp
00002D70  27                daa
00002D71  7420              jz 0x2d93
00002D73  67657420          gs jz 0x2d97
00002D77  68656C            push word 0x6c65
00002D7A  702E              jo 0x2daa
00002D7C  0D0A00            or ax,0xa
00002D7F  49                dec cx
00002D80  4E                dec si
00002D81  44                inc sp
00002D82  49                dec cx
00002D83  52                push dx
00002D84  45                inc bp
00002D85  43                inc bx
00002D86  54                push sp
00002D87  206669            and [bp+0x69],ah
00002D8A  6C                insb
00002D8B  65206372          and [gs:bp+di+0x72],ah
00002D8F  6561              gs popa
00002D91  7465              jz 0x2df8
00002D93  206861            and [bx+si+0x61],ch
00002D96  7320              jnc 0x2db8
00002D98  6661              popad
00002D9A  696C65642E        imul bp,[si+0x65],word 0x2e64
00002D9F  0D0A00            or ax,0xa
00002DA2  4C                dec sp
00002DA3  4F                dec di
00002DA4  47                inc di
00002DA5  49                dec cx
00002DA6  4E                dec si
00002DA7  206861            and [bx+si+0x61],ch
00002DAA  7320              jnc 0x2dcc
00002DAC  6661              popad
00002DAE  696C65642E        imul bp,[si+0x65],word 0x2e64
00002DB3  0D0A00            or ax,0xa
00002DB6  53                push bx
00002DB7  4C                dec sp
00002DB8  4F                dec di
00002DB9  47                inc di
00002DBA  49                dec cx
00002DBB  4E                dec si
00002DBC  53                push bx
00002DBD  206861            and [bx+si+0x61],ch
00002DC0  7320              jnc 0x2de2
00002DC2  6661              popad
00002DC4  696C65642E        imul bp,[si+0x65],word 0x2e64
00002DC9  0D0A00            or ax,0xa
00002DCC  4C                dec sp
00002DCD  4F                dec di
00002DCE  47                inc di
00002DCF  4F                dec di
00002DD0  55                push bp
00002DD1  54                push sp
00002DD2  206861            and [bx+si+0x61],ch
00002DD5  7320              jnc 0x2df7
00002DD7  6661              popad
00002DD9  696C65642E        imul bp,[si+0x65],word 0x2e64
00002DDE  0D0A00            or ax,0xa
00002DE1  4C                dec sp
00002DE2  50                push ax
00002DE3  54                push sp
00002DE4  206F70            and [bx+0x70],ch
00002DE7  657261            gs jc 0x2e4b
00002DEA  7469              jz 0x2e55
00002DEC  6F                outsw
00002DED  6E                outsb
00002DEE  206861            and [bx+si+0x61],ch
00002DF1  7320              jnc 0x2e13
00002DF3  6661              popad
00002DF5  696C65642E        imul bp,[si+0x65],word 0x2e64
00002DFA  0D0A00            or ax,0xa
00002DFD  4D                dec bp
00002DFE  41                inc cx
00002DFF  49                dec cx
00002E00  4C                dec sp
00002E01  206F70            and [bx+0x70],ch
00002E04  657261            gs jc 0x2e68
00002E07  7469              jz 0x2e72
00002E09  6F                outsw
00002E0A  6E                outsb
00002E0B  206861            and [bx+si+0x61],ch
00002E0E  7320              jnc 0x2e30
00002E10  6661              popad
00002E12  696C65642E        imul bp,[si+0x65],word 0x2e64
00002E17  0D0A00            or ax,0xa
00002E1A  4D                dec bp
00002E1B  45                inc bp
00002E1C  53                push bx
00002E1D  53                push bx
00002E1E  41                inc cx
00002E1F  47                inc di
00002E20  45                inc bp
00002E21  206F70            and [bx+0x70],ch
00002E24  657261            gs jc 0x2e88
00002E27  7469              jz 0x2e92
00002E29  6F                outsw
00002E2A  6E                outsb
00002E2B  206861            and [bx+si+0x61],ch
00002E2E  7320              jnc 0x2e50
00002E30  6661              popad
00002E32  696C65642E        imul bp,[si+0x65],word 0x2e64
00002E37  0D0A00            or ax,0xa
00002E3A  50                push ax
00002E3B  41                inc cx
00002E3C  55                push bp
00002E3D  53                push bx
00002E3E  45                inc bp
00002E3F  206F70            and [bx+0x70],ch
00002E42  657261            gs jc 0x2ea6
00002E45  7469              jz 0x2eb0
00002E47  6F                outsw
00002E48  6E                outsb
00002E49  206861            and [bx+si+0x61],ch
00002E4C  7320              jnc 0x2e6e
00002E4E  6661              popad
00002E50  696C65642E        imul bp,[si+0x65],word 0x2e64
00002E55  0D0A00            or ax,0xa
00002E58  50                push ax
00002E59  49                dec cx
00002E5A  4E                dec si
00002E5B  47                inc di
00002E5C  206F70            and [bx+0x70],ch
00002E5F  657261            gs jc 0x2ec3
00002E62  7469              jz 0x2ecd
00002E64  6F                outsw
00002E65  6E                outsb
00002E66  206861            and [bx+si+0x61],ch
00002E69  7320              jnc 0x2e8b
00002E6B  6661              popad
00002E6D  696C65642E        imul bp,[si+0x65],word 0x2e64
00002E72  0D0A00            or ax,0xa
00002E75  50                push ax
00002E76  4F                dec di
00002E77  53                push bx
00002E78  54                push sp
00002E79  42                inc dx
00002E7A  4F                dec di
00002E7B  58                pop ax
00002E7C  206F70            and [bx+0x70],ch
00002E7F  657261            gs jc 0x2ee3
00002E82  7469              jz 0x2eed
00002E84  6F                outsw
00002E85  6E                outsb
00002E86  206861            and [bx+si+0x61],ch
00002E89  7320              jnc 0x2eab
00002E8B  6661              popad
00002E8D  696C65642E        imul bp,[si+0x65],word 0x2e64
00002E92  0D0A00            or ax,0xa
00002E95  50                push ax
00002E96  52                push dx
00002E97  49                dec cx
00002E98  4E                dec si
00002E99  54                push sp
00002E9A  206F70            and [bx+0x70],ch
00002E9D  657261            gs jc 0x2f01
00002EA0  7469              jz 0x2f0b
00002EA2  6F                outsw
00002EA3  6E                outsb
00002EA4  206861            and [bx+si+0x61],ch
00002EA7  7320              jnc 0x2ec9
00002EA9  6661              popad
00002EAB  696C65642E        imul bp,[si+0x65],word 0x2e64
00002EB0  0D0A00            or ax,0xa
00002EB3  51                push cx
00002EB4  55                push bp
00002EB5  45                inc bp
00002EB6  55                push bp
00002EB7  45                inc bp
00002EB8  206F70            and [bx+0x70],ch
00002EBB  657261            gs jc 0x2f1f
00002EBE  7469              jz 0x2f29
00002EC0  6F                outsw
00002EC1  6E                outsb
00002EC2  206861            and [bx+si+0x61],ch
00002EC5  7320              jnc 0x2ee7
00002EC7  6661              popad
00002EC9  696C65642E        imul bp,[si+0x65],word 0x2e64
00002ECE  0D0A00            or ax,0xa
00002ED1  52                push dx
00002ED2  45                inc bp
00002ED3  43                inc bx
00002ED4  45                inc bp
00002ED5  49                dec cx
00002ED6  56                push si
00002ED7  45                inc bp
00002ED8  206F70            and [bx+0x70],ch
00002EDB  657261            gs jc 0x2f3f
00002EDE  7469              jz 0x2f49
00002EE0  6F                outsw
00002EE1  6E                outsb
00002EE2  206861            and [bx+si+0x61],ch
00002EE5  7320              jnc 0x2f07
00002EE7  6661              popad
00002EE9  696C65642E        imul bp,[si+0x65],word 0x2e64
00002EEE  0D0A00            or ax,0xa
00002EF1  52                push dx
00002EF2  55                push bp
00002EF3  4E                dec si
00002EF4  207265            and [bp+si+0x65],dh
00002EF7  7175              jno 0x2f6e
00002EF9  657374            gs jnc 0x2f70
00002EFC  206E6F            and [bp+0x6f],ch
00002EFF  7420              jz 0x2f21
00002F01  7375              jnc 0x2f78
00002F03  626D69            bound bp,[di+0x69]
00002F06  7474              jz 0x2f7c
00002F08  65642E0D0A00      cs or ax,0xa
00002F0E  005345            add [bp+di+0x45],dl
00002F11  4E                dec si
00002F12  44                inc sp
00002F13  206F70            and [bx+0x70],ch
00002F16  657261            gs jc 0x2f7a
00002F19  7469              jz 0x2f84
00002F1B  6F                outsw
00002F1C  6E                outsb
00002F1D  206861            and [bx+si+0x61],ch
00002F20  7320              jnc 0x2f42
00002F22  6661              popad
00002F24  696C65642E        imul bp,[si+0x65],word 0x2e64
00002F29  0D0A00            or ax,0xa
00002F2C  0D0A20            or ax,0x200a
00002F2F  2020              and [bx+si],ah
00002F31  2020              and [bx+si],ah
00002F33  2020              and [bx+si],ah
00002F35  53                push bx
00002F36  657276            gs jc 0x2faf
00002F39  657220            gs jc 0x2f5c
00002F3C  53                push bx
00002F3D  48                dec ax
00002F3E  55                push bp
00002F3F  54                push sp
00002F40  44                inc sp
00002F41  4F                dec di
00002F42  57                push di
00002F43  4E                dec si
00002F44  206F70            and [bx+0x70],ch
00002F47  657261            gs jc 0x2fab
00002F4A  7469              jz 0x2fb5
00002F4C  6F                outsw
00002F4D  6E                outsb
00002F4E  206861            and [bx+si+0x61],ch
00002F51  7320              jnc 0x2f73
00002F53  6661              popad
00002F55  696C65642E        imul bp,[si+0x65],word 0x2e64
00002F5A  0D0A00            or ax,0xa
00002F5D  53                push bx
00002F5E  54                push sp
00002F5F  52                push dx
00002F60  45                inc bp
00002F61  41                inc cx
00002F62  4D                dec bp
00002F63  206F70            and [bx+0x70],ch
00002F66  657261            gs jc 0x2fca
00002F69  7469              jz 0x2fd4
00002F6B  6F                outsw
00002F6C  6E                outsb
00002F6D  206861            and [bx+si+0x61],ch
00002F70  7320              jnc 0x2f92
00002F72  6661              popad
00002F74  696C65642E        imul bp,[si+0x65],word 0x2e64
00002F79  0D0A00            or ax,0xa
00002F7C  53                push bx
00002F7D  54                push sp
00002F7E  52                push dx
00002F7F  49                dec cx
00002F80  4E                dec si
00002F81  47                inc di
00002F82  206F70            and [bx+0x70],ch
00002F85  657261            gs jc 0x2fe9
00002F88  7469              jz 0x2ff3
00002F8A  6F                outsw
00002F8B  6E                outsb
00002F8C  206861            and [bx+si+0x61],ch
00002F8F  7320              jnc 0x2fb1
00002F91  6661              popad
00002F93  696C65642E        imul bp,[si+0x65],word 0x2e64
00002F98  0D0A00            or ax,0xa
00002F9B  54                push sp
00002F9C  45                inc bp
00002F9D  52                push dx
00002F9E  4D                dec bp
00002F9F  49                dec cx
00002FA0  4E                dec si
00002FA1  41                inc cx
00002FA2  54                push sp
00002FA3  45                inc bp
00002FA4  206861            and [bx+si+0x61],ch
00002FA7  7320              jnc 0x2fc9
00002FA9  6661              popad
00002FAB  696C65642E        imul bp,[si+0x65],word 0x2e64
00002FB0  0D0A00            or ax,0xa
00002FB3  55                push bp
00002FB4  4E                dec si
00002FB5  4C                dec sp
00002FB6  49                dec cx
00002FB7  4E                dec si
00002FB8  4B                dec bx
00002FB9  206F70            and [bx+0x70],ch
00002FBC  657261            gs jc 0x3020
00002FBF  7469              jz 0x302a
00002FC1  6F                outsw
00002FC2  6E                outsb
00002FC3  206861            and [bx+si+0x61],ch
00002FC6  7320              jnc 0x2fe8
00002FC8  6661              popad
00002FCA  696C65642E        imul bp,[si+0x65],word 0x2e64
00002FCF  0D0A00            or ax,0xa
00002FD2  55                push bp
00002FD3  4E                dec si
00002FD4  55                push bp
00002FD5  53                push bx
00002FD6  45                inc bp
00002FD7  206861            and [bx+si+0x61],ch
00002FDA  7320              jnc 0x2ffc
00002FDC  6661              popad
00002FDE  696C65642E        imul bp,[si+0x65],word 0x2e64
00002FE3  0D0A00            or ax,0xa
00002FE6  55                push bp
00002FE7  53                push bx
00002FE8  45                inc bp
00002FE9  206861            and [bx+si+0x61],ch
00002FEC  7320              jnc 0x300e
00002FEE  6661              popad
00002FF0  696C65642E        imul bp,[si+0x65],word 0x2e64
00002FF5  0D0A00            or ax,0xa
00002FF8  7365              jnc 0x305f
00002FFA  7420              jz 0x301c
00002FFC  64656661          gs popad
00003000  756C              jnz 0x306e
00003002  7420              jz 0x3024
00003004  55                push bp
00003005  53                push bx
00003006  45                inc bp
00003007  52                push dx
00003008  206861            and [bx+si+0x61],ch
0000300B  7320              jnc 0x302d
0000300D  6661              popad
0000300F  696C65642E        imul bp,[si+0x65],word 0x2e64
00003014  0D0A00            or ax,0xa
00003017  63616E            arpl [bx+di+0x6e],sp
0000301A  27                daa
0000301B  7420              jz 0x303d
0000301D  7275              jc 0x3094
0000301F  6E                outsb
00003020  204E45            and [bp+0x45],cl
00003023  54                push sp
00003024  204D45            and [di+0x45],cl
00003027  4E                dec si
00003028  55                push bp
00003029  206D6F            and [di+0x6f],ch
0000302C  64756C            fs jnz 0x309b
0000302F  652E0D0A00        cs or ax,0xa
00003034  0001              add [bx+di],al
00003036  818BC87E7E7E      or word [bp+di+0x7ec8],0x7e7e
0000303C  7E7E              jng 0x30bc
0000303E  56                push si
0000303F  45                inc bp
00003040  52                push dx
00003041  42                inc dx
00003042  4F                dec di
00003043  53                push bx
00003044  45                inc bp
00003045  0000              add [bx+si],al
00003047  02B04EC8          add dh,[bx+si-0x37b2]
0000304B  7E7E              jng 0x30cb
0000304D  7E7E              jng 0x30cd
0000304F  7E41              jng 0x3092
00003051  4C                dec sp
00003052  4C                dec sp
00003053  0000              add [bx+si],al
00003055  02824EC8          add al,[bp+si-0x37b2]
00003059  7E7E              jng 0x30d9
0000305B  7E7E              jng 0x30db
0000305D  7E50              jng 0x30af
0000305F  48                dec ax
00003060  59                pop cx
00003061  53                push bx
00003062  49                dec cx
00003063  43                inc bx
00003064  41                inc cx
00003065  4C                dec sp
00003066  0001              add [bx+di],al
00003068  834EC87E          or word [bp-0x38],byte +0x7e
0000306C  7E7E              jng 0x30ec
0000306E  7E7E              jng 0x30ee
00003070  52                push dx
00003071  45                inc bp
00003072  43                inc bx
00003073  55                push bp
00003074  52                push dx
00003075  53                push bx
00003076  45                inc bp
00003077  0000              add [bx+si],al
00003079  02754E            add dh,[di+0x4e]
0000307C  C87E7E7E          enter 0x7e7e,0x7e
00003080  7E7E              jng 0x3100
00003082  57                push di
00003083  41                inc cx
00003084  49                dec cx
00003085  54                push sp
00003086  0001              add [bx+di],al
00003088  764E              jna 0x30d8
0000308A  C87E7E7E          enter 0x7e7e,0x7e
0000308E  7E7E              jng 0x310e
00003090  44                inc sp
00003091  45                inc bp
00003092  46                inc si
00003093  45                inc bp
00003094  52                push dx
00003095  52                push dx
00003096  45                inc bp
00003097  44                inc sp
00003098  0000              add [bx+si],al
0000309A  01764E            add [bp+0x4e],si
0000309D  C87E7E7E          enter 0x7e7e,0x7e
000030A1  7E7E              jng 0x3121
000030A3  44                inc sp
000030A4  45                inc bp
000030A5  46                inc si
000030A6  45                inc bp
000030A7  52                push dx
000030A8  52                push dx
000030A9  45                inc bp
000030AA  44                inc sp
000030AB  0001              add [bx+di],al
000030AD  774E              ja 0x30fd
000030AF  C87E7E7E          enter 0x7e7e,0x7e
000030B3  7E7E              jng 0x3133
000030B5  52                push dx
000030B6  45                inc bp
000030B7  50                push ax
000030B8  4C                dec sp
000030B9  41                inc cx
000030BA  43                inc bx
000030BB  45                inc bp
000030BC  0000              add [bx+si],al
000030BE  027B4E            add bh,[bp+di+0x4e]
000030C1  C87E7E7E          enter 0x7e7e,0x7e
000030C5  7E7E              jng 0x3145
000030C7  45                inc bp
000030C8  4E                dec si
000030C9  41                inc cx
000030CA  42                inc dx
000030CB  4C                dec sp
000030CC  45                inc bp
000030CD  0001              add [bx+di],al
000030CF  7E4E              jng 0x311f
000030D1  C87E7E7E          enter 0x7e7e,0x7e
000030D5  7E7E              jng 0x3155
000030D7  44                inc sp
000030D8  49                dec cx
000030D9  53                push bx
000030DA  41                inc cx
000030DB  42                inc dx
000030DC  4C                dec sp
000030DD  45                inc bp
000030DE  7E7E              jng 0x315e
000030E0  7E01              jng 0x30e3
000030E2  844EC8            test [bp-0x38],cl
000030E5  7E7E              jng 0x3165
000030E7  7E7E              jng 0x3167
000030E9  7E53              jng 0x313e
000030EB  49                dec cx
000030EC  4C                dec sp
000030ED  45                inc bp
000030EE  4E                dec si
000030EF  54                push sp
000030F0  0001              add [bx+di],al
000030F2  818BC87E7E7E      or word [bp+di+0x7ec8],0x7e7e
000030F8  7E7E              jng 0x3178
000030FA  56                push si
000030FB  45                inc bp
000030FC  52                push dx
000030FD  42                inc dx
000030FE  4F                dec di
000030FF  53                push bx
00003100  45                inc bp
00003101  0001              add [bx+di],al
00003103  788B              js 0x3090
00003105  C87E7E7E          enter 0x7e7e,0x7e
00003109  7E7E              jng 0x3189
0000310B  56                push si
0000310C  4F                dec di
0000310D  49                dec cx
0000310E  43                inc bx
0000310F  45                inc bp
00003110  0000              add [bx+si],al
00003112  02898BC8          add cl,[bx+di-0x3775]
00003116  7E7E              jng 0x3196
00003118  7E7E              jng 0x3198
0000311A  7E4E              jng 0x316a
0000311C  45                inc bp
0000311D  57                push di
0000311E  4C                dec sp
0000311F  49                dec cx
00003120  4E                dec si
00003121  45                inc bp
00003122  0000              add [bx+si],al
00003124  02888BC8          add cl,[bx+si-0x3775]
00003128  7E7E              jng 0x31a8
0000312A  7E7E              jng 0x31aa
0000312C  7E4E              jng 0x317c
0000312E  4F                dec di
0000312F  43                inc bx
00003130  52                push dx
00003131  0000              add [bx+si],al
00003133  027B4E            add bh,[bp+di+0x4e]
00003136  C87E7E7E          enter 0x7e7e,0x7e
0000313A  7E7E              jng 0x31ba
0000313C  45                inc bp
0000313D  4E                dec si
0000313E  41                inc cx
0000313F  42                inc dx
00003140  4C                dec sp
00003141  45                inc bp
00003142  0001              add [bx+di],al
00003144  7E4E              jng 0x3194
00003146  C87E7E7E          enter 0x7e7e,0x7e
0000314A  7E7E              jng 0x31ca
0000314C  44                inc sp
0000314D  49                dec cx
0000314E  53                push bx
0000314F  41                inc cx
00003150  42                inc dx
00003151  4C                dec sp
00003152  45                inc bp
00003153  7E7E              jng 0x31d3
00003155  01864EC8          add [bp-0x37b2],ax
00003159  7E7E              jng 0x31d9
0000315B  7E7E              jng 0x31db
0000315D  7E43              jng 0x31a2
0000315F  41                inc cx
00003160  4E                dec si
00003161  43                inc bx
00003162  45                inc bp
00003163  4C                dec sp
00003164  0001              add [bx+di],al
00003166  854EC8            test [bp-0x38],cx
00003169  7E7E              jng 0x31e9
0000316B  7E7E              jng 0x31eb
0000316D  7E48              jng 0x31b7
0000316F  41                inc cx
00003170  4C                dec sp
00003171  54                push sp
00003172  0001              add [bx+di],al
00003174  874EC8            xchg cx,[bp-0x38]
00003177  7E7E              jng 0x31f7
00003179  7E7E              jng 0x31f9
0000317B  7E52              jng 0x31cf
0000317D  45                inc bp
0000317E  42                inc dx
0000317F  4F                dec di
00003180  4F                dec di
00003181  54                push sp
00003182  7E01              jng 0x3185
00003184  844EC8            test [bp-0x38],cl
00003187  7E7E              jng 0x3207
00003189  7E7E              jng 0x3209
0000318B  7E53              jng 0x31e0
0000318D  49                dec cx
0000318E  4C                dec sp
0000318F  45                inc bp
00003190  4E                dec si
00003191  54                push sp
00003192  0000              add [bx+si],al
00003194  13B94EC8          adc di,[bx+di-0x37b2]
00003198  7E7E              jng 0x3218
0000319A  7E7E              jng 0x321a
0000319C  7E4C              jng 0x31ea
0000319E  45                inc bp
0000319F  46                inc si
000031A0  54                push sp
000031A1  0013              add [bp+di],dl
000031A3  BB4EC8            mov bx,0xc84e
000031A6  7E7E              jng 0x3226
000031A8  7E7E              jng 0x3228
000031AA  7E52              jng 0x31fe
000031AC  49                dec cx
000031AD  47                inc di
000031AE  48                dec ax
000031AF  54                push sp
000031B0  0000              add [bx+si],al
000031B2  01794E            add [bx+di+0x4e],di
000031B5  C87E7E7E          enter 0x7e7e,0x7e
000031B9  7E7E              jng 0x3239
000031BB  42                inc dx
000031BC  49                dec cx
000031BD  4E                dec si
000031BE  41                inc cx
000031BF  52                push dx
000031C0  59                pop cx
000031C1  0014              add [si],dl
000031C3  AA                stosb
000031C4  4E                dec si
000031C5  C87E7E7E          enter 0x7e7e,0x7e
000031C9  0F004441          sldt [si+0x41]
000031CD  54                push sp
000031CE  45                inc bp
000031CF  0014              add [si],dl
000031D1  8C4EC8            mov [bp-0x38],cs
000031D4  7E7E              jng 0x3254
000031D6  7E0F              jng 0x31e7
000031D8  004445            add [si+0x45],al
000031DB  4C                dec sp
000031DC  41                inc cx
000031DD  59                pop cx
000031DE  0001              add [bx+di],al
000031E0  7C4E              jl 0x3230
000031E2  C87E7E7E          enter 0x7e7e,0x7e
000031E6  7E7E              jng 0x3266
000031E8  44                inc sp
000031E9  45                inc bp
000031EA  4C                dec sp
000031EB  45                inc bp
000031EC  54                push sp
000031ED  45                inc bp
000031EE  0001              add [bx+di],al
000031F0  7D4E              jnl 0x3240
000031F2  C87E7E7E          enter 0x7e7e,0x7e
000031F6  7E7E              jng 0x3276
000031F8  44                inc sp
000031F9  49                dec cx
000031FA  52                push dx
000031FB  45                inc bp
000031FC  43                inc bx
000031FD  54                push sp
000031FE  0001              add [bx+di],al
00003200  7F8B              jg 0x318d
00003202  C87E7E7E          enter 0x7e7e,0x7e
00003206  7E7E              jng 0x3286
00003208  4E                dec si
00003209  4F                dec di
0000320A  54                push sp
0000320B  49                dec cx
0000320C  46                inc si
0000320D  59                pop cx
0000320E  0001              add [bx+di],al
00003210  808BC87E7E        or byte [bp+di+0x7ec8],0x7e
00003215  7E7E              jng 0x3295
00003217  7E4E              jng 0x3267
00003219  4F                dec di
0000321A  4E                dec si
0000321B  4F                dec di
0000321C  54                push sp
0000321D  49                dec cx
0000321E  46                inc si
0000321F  59                pop cx
00003220  0014              add [si],dl
00003222  9B4E              wait dec si
00003224  C87E7E7E          enter 0x7e7e,0x7e
00003228  0F005449          lldt [si+0x49]
0000322C  4D                dec bp
0000322D  45                inc bp
0000322E  0001              add [bx+di],al
00003230  818BC87E7E7E      or word [bp+di+0x7ec8],0x7e7e
00003236  7E7E              jng 0x32b6
00003238  56                push si
00003239  45                inc bp
0000323A  52                push dx
0000323B  42                inc dx
0000323C  4F                dec di
0000323D  53                push bx
0000323E  45                inc bp
0000323F  0000              add [bx+si],al
00003241  027A4E            add bh,[bp+si+0x4e]
00003244  C87E7E7E          enter 0x7e7e,0x7e
00003248  7E7E              jng 0x32c8
0000324A  42                inc dx
0000324B  41                inc cx
0000324C  54                push sp
0000324D  43                inc bx
0000324E  48                dec ax
0000324F  0001              add [bx+di],al
00003251  818BC87E7E7E      or word [bp+di+0x7ec8],0x7e7e
00003257  7E7E              jng 0x32d7
00003259  56                push si
0000325A  45                inc bp
0000325B  52                push dx
0000325C  42                inc dx
0000325D  4F                dec di
0000325E  53                push bx
0000325F  45                inc bp
00003260  0000              add [bx+si],al
00003262  84C1              test cl,al
00003264  8BC8              mov cx,ax
00003266  FD                std
00003267  017E0F            add [bp+0xf],di
0000326A  005345            add [bp+di+0x45],dl
0000326D  52                push dx
0000326E  56                push si
0000326F  45                inc bp
00003270  52                push dx
00003271  00844105          add [si+0x541],al
00003275  C8FD017E          enter 0x1fd,0x7e
00003279  1000              adc [bx+si],al
0000327B  55                push bp
0000327C  53                push bx
0000327D  45                inc bp
0000327E  52                push dx
0000327F  0000              add [bx+si],al
00003281  017E4E            add [bp+0x4e],di
00003284  C87E7E7E          enter 0x7e7e,0x7e
00003288  7E7E              jng 0x3308
0000328A  44                inc sp
0000328B  49                dec cx
0000328C  53                push bx
0000328D  41                inc cx
0000328E  42                inc dx
0000328F  4C                dec sp
00003290  45                inc bp
00003291  7E7E              jng 0x3311
00003293  0D0A48            or ax,0x480a
00003296  656C              gs insb
00003298  7020              jo 0x32ba
0000329A  6973206176        imul si,[bp+di+0x20],word 0x7661
0000329F  61                popa
000032A0  696C61626C        imul bp,[si+0x61],word 0x6c62
000032A5  6520666F          and [gs:bp+0x6f],ah
000032A9  7220              jc 0x32cb
000032AB  7468              jz 0x3315
000032AD  6520666F          and [gs:bp+0x6f],ah
000032B1  6C                insb
000032B2  6C                insb
000032B3  6F                outsw
000032B4  7769              ja 0x331f
000032B6  6E                outsb
000032B7  6720676C          and [edi+0x6c],ah
000032BB  6F                outsw
000032BC  62616C            bound sp,[bx+di+0x6c]
000032BF  207377            and [bp+di+0x77],dh
000032C2  6974636865        imul si,[si+0x63],word 0x6568
000032C7  733A              jnc 0x3303
000032C9  0D0A0D            or ax,0xd0a
000032CC  0A00              or al,[bx+si]
000032CE  0D0A48            or ax,0x480a
000032D1  656C              gs insb
000032D3  7020              jo 0x32f5
000032D5  6973206176        imul si,[bp+di+0x20],word 0x7661
000032DA  61                popa
000032DB  696C61626C        imul bp,[si+0x61],word 0x6c62
000032E0  6520666F          and [gs:bp+0x6f],ah
000032E4  7220              jc 0x3306
000032E6  7468              jz 0x3350
000032E8  6520666F          and [gs:bp+0x6f],ah
000032EC  6C                insb
000032ED  6C                insb
000032EE  6F                outsw
000032EF  7769              ja 0x335a
000032F1  6E                outsb
000032F2  6720636F          and [ebx+0x6f],ah
000032F6  6D                insw
000032F7  6D                insw
000032F8  61                popa
000032F9  6E                outsb
000032FA  64733A            fs jnc 0x3337
000032FD  0D0A0D            or ax,0xd0a
00003300  0A00              or al,[bx+si]
00003302  0D0A48            or ax,0x480a
00003305  656C              gs insb
00003307  7020              jo 0x3329
00003309  6973206176        imul si,[bp+di+0x20],word 0x7661
0000330E  61                popa
0000330F  696C61626C        imul bp,[si+0x61],word 0x6c62
00003314  6520666F          and [gs:bp+0x6f],ah
00003318  7220              jc 0x333a
0000331A  7468              jz 0x3384
0000331C  6520666F          and [gs:bp+0x6f],ah
00003320  6C                insb
00003321  6C                insb
00003322  6F                outsw
00003323  7769              ja 0x338e
00003325  6E                outsb
00003326  6720746F70        and [dword edi+ebp*2+0x70],dh
0000332B  6963733A0D        imul sp,[bp+di+0x73],word 0xd3a
00003330  0A0D              or cl,[di]
00003332  0A00              or al,[bx+si]
00003334  92                xchg ax,dx
00003335  0DB220            or ax,0x20b2
00003338  0800              or [bx+si],al
0000333A  B0AE              mov al,0xae
0000333C  43                inc bx
0000333D  61                popa
0000333E  6E                outsb
0000333F  27                daa
00003340  7420              jz 0x3362
00003342  61                popa
00003343  636365            arpl [bp+di+0x65],sp
00003346  7373              jnc 0x33bb
00003348  206865            and [bx+si+0x65],ch
0000334B  6C                insb
0000334C  7020              jo 0x336e
0000334E  66696C6520746F20  imul ebp,[si+0x65],dword 0x206f7420
00003356  646973706C61      imul si,[fs:bp+di+0x70],word 0x616c
0000335C  7920              jns 0x337e
0000335E  68656C            push word 0x6c65
00003361  7020              jo 0x3383
00003363  746F              jz 0x33d4
00003365  7069              jo 0x33d0
00003367  6373AF            arpl [bp+di-0x51],si
0000336A  0D0A00            or ax,0xa
0000336D  0D0A54            or ax,0x540a
00003370  7970              jns 0x33e2
00003372  652022            and [gs:bp+si],ah
00003375  4E                dec si
00003376  45                inc bp
00003377  54                push sp
00003378  204845            and [bx+si+0x45],cl
0000337B  4C                dec sp
0000337C  50                push ax
0000337D  206974            and [bx+di+0x74],ch
00003380  656D              gs insw
00003382  2D6E61            sub ax,0x616e
00003385  6D                insw
00003386  652220            and ah,[gs:bx+si]
00003389  746F              jz 0x33fa
0000338B  207365            and [bp+di+0x65],dh
0000338E  65206865          and [gs:bx+si+0x65],ch
00003392  6C                insb
00003393  7020              jo 0x33b5
00003395  6F                outsw
00003396  6E                outsb
00003397  20616E            and [bx+di+0x6e],ah
0000339A  20696E            and [bx+di+0x6e],ch
0000339D  646976696475      imul si,[fs:bp+0x69],word 0x7564
000033A3  61                popa
000033A4  6C                insb
000033A5  206974            and [bx+di+0x74],ch
000033A8  656D              gs insw
000033AA  2E0D0A00          cs or ax,0xa
000033AE  2C20              sub al,0x20
000033B0  00444F            add [si+0x4f],al
000033B3  53                push bx
000033B4  206572            and [di+0x72],ah
000033B7  726F              jc 0x3428
000033B9  7220              jc 0x33db
000033BB  636F64            arpl [bx+0x64],bp
000033BE  65206868          and [gs:bx+si+0x68],ch
000033C2  48                dec ax
000033C3  00496E            add [bx+di+0x6e],cl
000033C6  7661              jna 0x3429
000033C8  6C                insb
000033C9  696420636F        imul sp,[si+0x20],word 0x6f63
000033CE  6D                insw
000033CF  6D                insw
000033D0  61                popa
000033D1  6E                outsb
000033D2  642E2020          and [cs:bx+si],ah
000033D6  54                push sp
000033D7  7970              jns 0x3449
000033D9  65204E45          and [gs:bp+0x45],cl
000033DD  54                push sp
000033DE  204845            and [bx+si+0x45],cl
000033E1  4C                dec sp
000033E2  50                push ax
000033E3  20666F            and [bp+0x6f],ah
000033E6  7220              jc 0x3408
000033E8  68656C            push word 0x6c65
000033EB  700D              jo 0x33fa
000033ED  0A00              or al,[bx+si]
000033EF  4C                dec sp
000033F0  41                inc cx
000033F1  4E                dec si
000033F2  7461              jz 0x3455
000033F4  7374              jnc 0x346a
000033F6  6963202852        imul sp,[bp+di+0x20],word 0x5228
000033FB  2920              sub [bx+si],sp
000033FD  52                push dx
000033FE  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00003405  6F                outsw
00003406  7220              jc 0x3428
00003408  285245            sub [bp+si+0x45],dl
0000340B  44                inc sp
0000340C  49                dec cx
0000340D  52                push dx
0000340E  2920              sub [bx+si],sp
00003410  6D                insw
00003411  7573              jnz 0x3486
00003413  7420              jz 0x3435
00003415  626520            bound sp,[di+0x20]
00003418  696E737461        imul bp,[bp+0x73],word 0x6174
0000341D  6C                insb
0000341E  6C                insb
0000341F  65640D0A00        fs or ax,0xa
00003424  4D                dec bp
00003425  61                popa
00003426  636869            arpl [bx+si+0x69],bp
00003429  6E                outsb
0000342A  6520636F          and [gs:bp+di+0x6f],ah
0000342E  6E                outsb
0000342F  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
00003437  6F                outsw
00003438  6E                outsb
00003439  207265            and [bp+si+0x65],dh
0000343C  7175              jno 0x34b3
0000343E  6972657320        imul si,[bp+si+0x65],word 0x2073
00003443  696E746572        imul bp,[bp+0x74],word 0x7265
00003448  6E                outsb
00003449  61                popa
0000344A  7469              jz 0x34b5
0000344C  6F                outsw
0000344D  6E                outsb
0000344E  61                popa
0000344F  6C                insb
00003450  207665            and [bp+0x65],dh
00003453  7273              jc 0x34c8
00003455  696F6E206F        imul bp,[bx+0x6e],word 0x6f20
0000345A  66204C41          o32 and [si+0x41],cl
0000345E  4E                dec si
0000345F  7461              jz 0x34c2
00003461  7374              jnc 0x34d7
00003463  6963202852        imul sp,[bp+di+0x20],word 0x5228
00003468  290D              sub [di],cx
0000346A  0A00              or al,[bx+si]
0000346C  52                push dx
0000346D  65736F            gs jnc 0x34df
00003470  7572              jnz 0x34e4
00003472  636520            arpl [di+0x20],sp
00003475  61                popa
00003476  6C                insb
00003477  7265              jc 0x34de
00003479  61                popa
0000347A  647920            fs jns 0x349d
0000347D  696E207573        imul bp,[bp+0x20],word 0x7375
00003482  65206279          and [gs:bp+si+0x79],ah
00003486  204E45            and [bp+0x45],cl
00003489  54                push sp
0000348A  57                push di
0000348B  41                inc cx
0000348C  52                push dx
0000348D  45                inc bp
0000348E  0D0A00            or ax,0xa
00003491  50                push ax
00003492  61                popa
00003493  7373              jnc 0x3508
00003495  776F              ja 0x3506
00003497  7264              jc 0x34fd
00003499  206578            and [di+0x78],ah
0000349C  7069              jo 0x3507
0000349E  7265              jc 0x3505
000034A0  7320              jnc 0x34c2
000034A2  746F              jz 0x3513
000034A4  6461              fs popa
000034A6  792E              jns 0x34d6
000034A8  0D0A00            or ax,0xa
000034AB  4E                dec si
000034AC  45                inc bp
000034AD  54                push sp
000034AE  42                inc dx
000034AF  49                dec cx
000034B0  4F                dec di
000034B1  53                push bx
000034B2  206D75            and [di+0x75],ch
000034B5  7374              jnc 0x352b
000034B7  206265            and [bp+si+0x65],ah
000034BA  20696E            and [bx+di+0x6e],ch
000034BD  7374              jnc 0x3533
000034BF  61                popa
000034C0  6C                insb
000034C1  6C                insb
000034C2  65640D0A00        fs or ax,0xa
000034C7  57                push di
000034C8  726F              jc 0x3539
000034CA  6E                outsb
000034CB  67205245          and [edx+0x45],dl
000034CF  44                inc sp
000034D0  49                dec cx
000034D1  52                push dx
000034D2  207665            and [bp+0x65],dh
000034D5  7273              jc 0x354a
000034D7  696F6E2E20        imul bp,[bx+0x6e],word 0x202e
000034DC  204E45            and [bp+0x45],cl
000034DF  54                push sp
000034E0  207265            and [bp+si+0x65],dh
000034E3  7175              jno 0x355a
000034E5  6972657320        imul si,[bp+si+0x65],word 0x2073
000034EA  7665              jna 0x3551
000034EC  7273              jc 0x3561
000034EE  696F6E2036        imul bp,[bx+0x6e],word 0x3620
000034F3  2E7878            cs js 0x356e
000034F6  0D0A00            or ax,0xa
000034F9  4D                dec bp
000034FA  697373696E        imul si,[bp+di+0x73],word 0x6e69
000034FF  67206172          and [ecx+0x72],ah
00003503  67756D            jnz 0x3573
00003506  656E              gs outsb
00003508  742E              jz 0x3538
0000350A  2020              and [bx+si],ah
0000350C  54                push sp
0000350D  7970              jns 0x357f
0000350F  65204E45          and [gs:bp+0x45],cl
00003513  54                push sp
00003514  204845            and [bx+si+0x45],cl
00003517  4C                dec sp
00003518  50                push ax
00003519  2000              and [bx+si],al
0000351B  E001              loopne 0x351e
0000351D  B220              mov dl,0x20
0000351F  05008B            add ax,0x8b00
00003522  0D0A00            or ax,0xa
00003525  4E                dec si
00003526  6F                outsw
00003527  207375            and [bp+di+0x75],dh
0000352A  636820            arpl [bx+si+0x20],bp
0000352D  68656C            push word 0x6c65
00003530  7020              jo 0x3552
00003532  6974656D2E        imul si,[si+0x65],word 0x2e6d
00003537  2020              and [bx+si],ah
00003539  54                push sp
0000353A  7970              jns 0x35ac
0000353C  65204E45          and [gs:bp+0x45],cl
00003540  54                push sp
00003541  204845            and [bx+si+0x45],cl
00003544  4C                dec sp
00003545  50                push ax
00003546  0D0A00            or ax,0xa
00003549  55                push bp
0000354A  6E                outsb
0000354B  6B6E6F77          imul bp,[bp+0x6f],byte +0x77
0000354F  6E                outsb
00003550  207375            and [bp+di+0x75],dh
00003553  626675            bound sp,[bp+0x75]
00003556  6E                outsb
00003557  637469            arpl [si+0x69],si
0000355A  6F                outsw
0000355B  6E                outsb
0000355C  2C20              sub al,0x20
0000355E  54                push sp
0000355F  7970              jns 0x35d1
00003561  65204E45          and [gs:bp+0x45],cl
00003565  54                push sp
00003566  204845            and [bx+si+0x45],cl
00003569  4C                dec sp
0000356A  50                push ax
0000356B  2000              and [bx+si],al
0000356D  4B                dec bx
0000356E  00B22005          add [bp+si+0x520],dh
00003572  008B0D0A          add [bp+di+0xa0d],cl
00003576  004261            add [bp+si+0x61],al
00003579  64206172          and [fs:bx+di+0x72],ah
0000357D  67756D            jnz 0x35ed
00003580  656E              gs outsb
00003582  742E              jz 0x35b2
00003584  2020              and [bx+si],ah
00003586  54                push sp
00003587  7970              jns 0x35f9
00003589  65204E45          and [gs:bp+0x45],cl
0000358D  54                push sp
0000358E  204845            and [bx+si+0x45],cl
00003591  4C                dec sp
00003592  50                push ax
00003593  2000              and [bx+si],al
00003595  2100              and [bx+si],ax
00003597  B220              mov dl,0x20
00003599  05008B            add ax,0x8b00
0000359C  0D0A00            or ax,0xa
0000359F  43                inc bx
000035A0  61                popa
000035A1  6E                outsb
000035A2  27                daa
000035A3  7420              jz 0x35c5
000035A5  66696E6420656E76  imul ebp,[bp+0x64],dword 0x766e6520
000035AD  69726F6E6D        imul si,[bp+si+0x6f],word 0x6d6e
000035B2  656E              gs outsb
000035B4  7420              jz 0x35d6
000035B6  7661              jna 0x3619
000035B8  7269              jc 0x3623
000035BA  61                popa
000035BB  626C65            bound bp,[si+0x65]
000035BE  0D0A00            or ax,0xa
000035C1  4E                dec si
000035C2  6F                outsw
000035C3  206865            and [bx+si+0x65],ch
000035C6  6C                insb
000035C7  7020              jo 0x35e9
000035C9  696E666F72        imul bp,[bp+0x66],word 0x726f
000035CE  6D                insw
000035CF  61                popa
000035D0  7469              jz 0x363b
000035D2  6F                outsw
000035D3  6E                outsb
000035D4  206176            and [bx+di+0x76],ah
000035D7  61                popa
000035D8  696C61626C        imul bp,[si+0x61],word 0x6c62
000035DD  6520666F          and [gs:bp+0x6f],ah
000035E1  7220              jc 0x3603
000035E3  7468              jz 0x364d
000035E5  697320636F        imul si,[bp+di+0x20],word 0x6f63
000035EA  6D                insw
000035EB  6D                insw
000035EC  61                popa
000035ED  6E                outsb
000035EE  640D0A00          fs or ax,0xa
000035F2  55                push bp
000035F3  6E                outsb
000035F4  6B6E6F77          imul bp,[bp+0x6f],byte +0x77
000035F8  6E                outsb
000035F9  206D61            and [di+0x61],ch
000035FC  63726F            arpl [bp+si+0x6f],si
000035FF  206578            and [di+0x78],ah
00003602  7061              jo 0x3665
00003604  6E                outsb
00003605  7369              jnc 0x3670
00003607  6F                outsw
00003608  6E                outsb
00003609  202D              and [di],ch
0000360B  2000              and [bx+si],al
0000360D  7100              jno 0x360f
0000360F  B220              mov dl,0x20
00003611  1000              adc [bx+si],al
00003613  8B0D              mov cx,[di]
00003615  0A00              or al,[bx+si]
00003617  43                inc bx
00003618  61                popa
00003619  6E                outsb
0000361A  27                daa
0000361B  7420              jz 0x363d
0000361D  6C                insb
0000361E  6F                outsw
0000361F  636174            arpl [bx+di+0x74],sp
00003622  65204E45          and [gs:bp+0x45],cl
00003626  54                push sp
00003627  206D65            and [di+0x65],ch
0000362A  6E                outsb
0000362B  7520              jnz 0x364d
0000362D  6D                insw
0000362E  6F                outsw
0000362F  64756C            fs jnz 0x369e
00003632  652020            and [gs:bx+si],ah
00003635  00F3              add bl,dh
00003637  AA                stosb
00003638  83008B            add word [bx+si],byte -0x75
0000363B  F76E6F            imul word [bp+0x6f]
0000363E  7420              jz 0x3660
00003640  666F              outsd
00003642  756E              jnz 0x36b2
00003644  642C20            fs sub al,0x20
00003647  4E                dec si
00003648  6F                outsw
00003649  206D6F            and [di+0x6f],ch
0000364C  7265              jc 0x36b3
0000364E  207365            and [bp+di+0x65],dh
00003651  7276              jc 0x36c9
00003653  657273            gs jc 0x36c9
00003656  206176            and [bx+di+0x76],ah
00003659  61                popa
0000365A  696C61626C        imul bp,[si+0x61],word 0x6c62
0000365F  652E0D0A00        cs or ax,0xa
00003664  54                push sp
00003665  686520            push word 0x2065
00003668  66696C65206D7573  imul ebp,[si+0x65],dword 0x73756d20
00003670  7420              jz 0x3692
00003672  7265              jc 0x36d9
00003674  7369              jnc 0x36df
00003676  6465206F6E        and [gs:bx+0x6e],ch
0000367B  206120            and [bx+di+0x20],ah
0000367E  6E                outsb
0000367F  657477            gs jz 0x36f9
00003682  6F                outsw
00003683  726B              jc 0x36f0
00003685  206472            and [si+0x72],ah
00003688  6976652E0D        imul si,[bp+0x65],word 0xd2e
0000368D  0A00              or al,[bx+si]
0000368F  54                push sp
00003690  686520            push word 0x2065
00003693  66696C6520616E64  imul ebp,[si+0x65],dword 0x646e6120
0000369B  207468            and [si+0x68],dh
0000369E  65207072          and [gs:bx+si+0x72],dh
000036A2  696E746572        imul bp,[bp+0x74],word 0x7265
000036A7  20706F            and [bx+si+0x6f],dh
000036AA  7274              jc 0x3720
000036AC  206D75            and [di+0x75],ch
000036AF  7374              jnc 0x3725
000036B1  207265            and [bp+si+0x65],dh
000036B4  7369              jnc 0x371f
000036B6  6465206F6E        and [gs:bx+0x6e],ch
000036BB  207468            and [si+0x68],dh
000036BE  65207361          and [gs:bp+di+0x61],dh
000036C2  6D                insw
000036C3  65207365          and [gs:bp+di+0x65],dh
000036C7  7276              jc 0x373f
000036C9  65722E            gs jc 0x36fa
000036CC  0D0A00            or ax,0xa
000036CF  54                push sp
000036D0  686520            push word 0x2065
000036D3  7072              jo 0x3747
000036D5  696E746572        imul bp,[bp+0x74],word 0x7265
000036DA  20706F            and [bx+si+0x6f],dh
000036DD  7274              jc 0x3753
000036DF  206D75            and [di+0x75],ch
000036E2  7374              jnc 0x3758
000036E4  206265            and [bp+si+0x65],ah
000036E7  207265            and [bp+si+0x65],dh
000036EA  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
000036F0  656420746F        and [fs:si+0x6f],dh
000036F5  206120            and [bx+di+0x20],ah
000036F8  7365              jnc 0x375f
000036FA  7276              jc 0x3772
000036FC  65722E            gs jc 0x372d
000036FF  0D0A00            or ax,0xa
00003702  4E                dec si
00003703  6F                outsw
00003704  204572            and [di+0x72],al
00003707  726F              jc 0x3778
00003709  7200              jc 0x370b
0000370B  01F1              add cx,si
0000370D  0BC8              or cx,ax
0000370F  7E7E              jng 0x378f
00003711  7E7E              jng 0x3791
00003713  7E48              jng 0x375d
00003715  45                inc bp
00003716  4C                dec sp
00003717  50                push ax
00003718  0001              add [bx+di],al
0000371A  F1                int1
0000371B  0BC8              or cx,ax
0000371D  7E7E              jng 0x379d
0000371F  7E7E              jng 0x379f
00003721  7E3F              jng 0x3762
00003723  0001              add [bx+di],al
00003725  F4                hlt
00003726  0BC8              or cx,ax
00003728  7E7E              jng 0x37a8
0000372A  7E7E              jng 0x37aa
0000372C  7E4D              jng 0x377b
0000372E  4F                dec di
0000372F  4E                dec si
00003730  4F                dec di
00003731  0001              add [bx+di],al
00003733  F5                cmc
00003734  0BC8              or cx,ax
00003736  7E7E              jng 0x37b6
00003738  7E7E              jng 0x37b8
0000373A  7E4E              jng 0x378a
0000373C  4F                dec di
0000373D  45                inc bp
0000373E  52                push dx
0000373F  52                push dx
00003740  4F                dec di
00003741  52                push dx
00003742  0001              add [bx+di],al
00003744  F20BC8            repne or cx,ax
00003747  7E7E              jng 0x37c7
00003749  7E7E              jng 0x37c9
0000374B  7E53              jng 0x37a0
0000374D  43                inc bx
0000374E  52                push dx
0000374F  45                inc bp
00003750  45                inc bp
00003751  4E                dec si
00003752  5F                pop di
00003753  53                push bx
00003754  41                inc cx
00003755  56                push si
00003756  45                inc bp
00003757  52                push dx
00003758  0041F3            add [bx+di-0xd],al
0000375B  0BC8              or cx,ax
0000375D  7E7E              jng 0x37dd
0000375F  7E7E              jng 0x37df
00003761  7E44              jng 0x37a7
00003763  45                inc bp
00003764  53                push bx
00003765  43                inc bx
00003766  52                push dx
00003767  49                dec cx
00003768  42                inc dx
00003769  45                inc bp
0000376A  7E7E              jng 0x37ea
0000376C  7E00              jng 0x376e
0000376E  2F                das
0000376F  48                dec ax
00003770  45                inc bp
00003771  4C                dec sp
00003772  50                push ax
00003773  007E00            add [bp+0x0],bh
00003776  2F                das
00003777  3F                aas
00003778  007E00            add [bp+0x0],bh
0000377B  2F                das
0000377C  4D                dec bp
0000377D  4F                dec di
0000377E  4E                dec si
0000377F  4F                dec di
00003780  007E00            add [bp+0x0],bh
00003783  2F                das
00003784  4E                dec si
00003785  4F                dec di
00003786  45                inc bp
00003787  52                push dx
00003788  52                push dx
00003789  4F                dec di
0000378A  52                push dx
0000378B  007E00            add [bp+0x0],bh
0000378E  2F                das
0000378F  53                push bx
00003790  43                inc bx
00003791  52                push dx
00003792  45                inc bp
00003793  45                inc bp
00003794  4E                dec si
00003795  5F                pop di
00003796  53                push bx
00003797  41                inc cx
00003798  56                push si
00003799  45                inc bp
0000379A  52                push dx
0000379B  007E7E            add [bp+0x7e],bh
0000379E  7E7E              jng 0x381e
000037A0  42                inc dx
000037A1  2A414C            sub al,[bx+di+0x4c]
000037A4  4C                dec sp
000037A5  0017              add [bx],dl
000037A7  2A4245            sub al,[bp+si+0x45]
000037AA  45                inc bp
000037AB  50                push ax
000037AC  0028              add [bx+si],ch
000037AE  2A504F            sub dl,[bx+si+0x4f]
000037B1  50                push ax
000037B2  0035              add [di],dh
000037B4  2A5350            sub dl,[bp+di+0x50]
000037B7  45                inc bp
000037B8  41                inc cx
000037B9  4B                dec bx
000037BA  007E7E            add [bp+0x7e],bh
000037BD  7E7E              jng 0x383d
000037BF  6728434F          sub [ebx+0x4f],al
000037C3  4D                dec bp
000037C4  42                inc dx
000037C5  49                dec cx
000037C6  4E                dec si
000037C7  45                inc bp
000037C8  007428            add [si+0x28],dh
000037CB  46                inc si
000037CC  4C                dec sp
000037CD  55                push bp
000037CE  53                push bx
000037CF  48                dec ax
000037D0  008F284E          add [bx+0x4e28],cl
000037D4  4F                dec di
000037D5  54                push sp
000037D6  49                dec cx
000037D7  46                inc si
000037D8  59                pop cx
000037D9  007028            add [bx+si+0x28],dh
000037DC  53                push bx
000037DD  45                inc bp
000037DE  50                push ax
000037DF  41                inc cx
000037E0  52                push dx
000037E1  41                inc cx
000037E2  54                push sp
000037E3  45                inc bp
000037E4  007828            add [bx+si+0x28],bh
000037E7  54                push sp
000037E8  49                dec cx
000037E9  4D                dec bp
000037EA  45                inc bp
000037EB  4F                dec di
000037EC  55                push bp
000037ED  54                push sp
000037EE  0000              add [bx+si],al
000037F0  0000              add [bx+si],al
000037F2  0000              add [bx+si],al
000037F4  005354            add [bp+di+0x54],dl
000037F7  41                inc cx
000037F8  52                push dx
000037F9  54                push sp
000037FA  0002              add [bp+si],al
000037FC  005354            add [bp+di+0x54],dl
000037FF  4F                dec di
00003800  50                push ax
00003801  0001              add [bx+di],al
00003803  7E48              jng 0x384d
00003805  41                inc cx
00003806  4C                dec sp
00003807  54                push sp
00003808  0003              add [bp+di],al
0000380A  005041            add [bx+si+0x41],dl
0000380D  55                push bp
0000380E  53                push bx
0000380F  45                inc bp
00003810  0004              add [si],al
00003812  7E53              jng 0x3867
00003814  49                dec cx
00003815  4E                dec si
00003816  47                inc di
00003817  4C                dec sp
00003818  45                inc bp
00003819  7E05              jng 0x3820
0000381B  7E52              jng 0x386f
0000381D  45                inc bp
0000381E  53                push bx
0000381F  54                push sp
00003820  41                inc cx
00003821  52                push dx
00003822  54                push sp
00003823  0002              add [bp+si],al
00003825  2E53              cs push bx
00003827  54                push sp
00003828  41                inc cx
00003829  54                push sp
0000382A  55                push bp
0000382B  53                push bx
0000382C  0000              add [bx+si],al
0000382E  0000              add [bx+si],al
00003830  0007              add [bx],al
00003832  2138              and [bx+si],di
00003834  C87E7E7E          enter 0x7e7e,0x7e
00003838  7E7E              jng 0x38b8
0000383A  44                inc sp
0000383B  41                inc cx
0000383C  54                push sp
0000383D  45                inc bp
0000383E  0007              add [bx],al
00003840  2D38C8            sub ax,0xc838
00003843  7E7E              jng 0x38c3
00003845  7E7E              jng 0x38c5
00003847  7E44              jng 0x388d
00003849  41                inc cx
0000384A  59                pop cx
0000384B  0007              add [bx],al
0000384D  44                inc sp
0000384E  38C8              cmp al,cl
00003850  7E7E              jng 0x38d0
00003852  7E7E              jng 0x38d2
00003854  7E44              jng 0x389a
00003856  49                dec cx
00003857  52                push dx
00003858  45                inc bp
00003859  43                inc bx
0000385A  54                push sp
0000385B  4F                dec di
0000385C  52                push dx
0000385D  59                pop cx
0000385E  0007              add [bx],al
00003860  5D                pop bp
00003861  38C8              cmp al,cl
00003863  7E7E              jng 0x38e3
00003865  7E7E              jng 0x38e5
00003867  7E45              jng 0x38ae
00003869  54                push sp
0000386A  45                inc bp
0000386B  58                pop ax
0000386C  54                push sp
0000386D  0007              add [bx],al
0000386F  D339              sar word [bx+di],cl
00003871  C87E7E7E          enter 0x7e7e,0x7e
00003875  7E7E              jng 0x38f5
00003877  46                inc si
00003878  49                dec cx
00003879  4C                dec sp
0000387A  45                inc bp
0000387B  0007              add [bx],al
0000387D  3839              cmp [bx+di],bh
0000387F  C87E7E7E          enter 0x7e7e,0x7e
00003883  7E7E              jng 0x3903
00003885  49                dec cx
00003886  4E                dec si
00003887  53                push bx
00003888  54                push sp
00003889  41                inc cx
0000388A  4C                dec sp
0000388B  4C                dec sp
0000388C  45                inc bp
0000388D  44                inc sp
0000388E  0007              add [bx],al
00003890  6D                insw
00003891  39C8              cmp ax,cx
00003893  7E7E              jng 0x3913
00003895  7E7E              jng 0x3915
00003897  7E4C              jng 0x38e5
00003899  4F                dec di
0000389A  47                inc di
0000389B  49                dec cx
0000389C  4E                dec si
0000389D  0007              add [bx],al
0000389F  0839              or [bx+di],bh
000038A1  C87E7E7E          enter 0x7e7e,0x7e
000038A5  7E7E              jng 0x3925
000038A7  4D                dec bp
000038A8  41                inc cx
000038A9  43                inc bx
000038AA  48                dec ax
000038AB  49                dec cx
000038AC  4E                dec si
000038AD  45                inc bp
000038AE  49                dec cx
000038AF  44                inc sp
000038B0  0007              add [bx],al
000038B2  BE38C8            mov si,0xc838
000038B5  7E7E              jng 0x3935
000038B7  7E7E              jng 0x3937
000038B9  7E4E              jng 0x3909
000038BB  4F                dec di
000038BC  44                inc sp
000038BD  45                inc bp
000038BE  49                dec cx
000038BF  44                inc sp
000038C0  0007              add [bx],al
000038C2  2D39C8            sub ax,0xc839
000038C5  7E7E              jng 0x3945
000038C7  7E7E              jng 0x3947
000038C9  7E50              jng 0x391b
000038CB  52                push dx
000038CC  4F                dec di
000038CD  47                inc di
000038CE  52                push dx
000038CF  41                inc cx
000038D0  4D                dec bp
000038D1  0007              add [bx],al
000038D3  A838              test al,0x38
000038D5  C87E7E7E          enter 0x7e7e,0x7e
000038D9  7E7E              jng 0x3959
000038DB  54                push sp
000038DC  49                dec cx
000038DD  4D                dec bp
000038DE  45                inc bp
000038DF  0007              add [bx],al
000038E1  B438              mov ah,0x38
000038E3  C87E7E7E          enter 0x7e7e,0x7e
000038E7  7E7E              jng 0x3967
000038E9  55                push bp
000038EA  53                push bx
000038EB  45                inc bp
000038EC  52                push dx
000038ED  0007              add [bx],al
000038EF  AC                lodsb
000038F0  39C8              cmp ax,cx
000038F2  7E7E              jng 0x3972
000038F4  7E7E              jng 0x3974
000038F6  7E55              jng 0x394d
000038F8  53                push bx
000038F9  45                inc bp
000038FA  52                push dx
000038FB  49                dec cx
000038FC  44                inc sp
000038FD  0000              add [bx+si],al
000038FF  2000              and [bx+si],al
00003901  4E                dec si
00003902  45                inc bp
00003903  54                push sp
00003904  5F                pop di
00003905  45                inc bp
00003906  52                push dx
00003907  52                push dx
00003908  4F                dec di
00003909  52                push dx
0000390A  007E00            add [bp+0x0],bh
0000390D  7E7E              jng 0x398d
0000390F  41                inc cx
00003910  7474              jz 0x3986
00003912  61                popa
00003913  636869            arpl [bx+si+0x69],bp
00003916  6E                outsb
00003917  670D0A00          or ax,0xa
0000391B  2000              and [bx+si],al
0000391D  20746F            and [si+0x6f],dh
00003920  2000              and [bx+si],al
00003922  49                dec cx
00003923  41                inc cx
00003924  44                inc sp
00003925  56                push si
00003926  53                push bx
00003927  48                dec ax
00003928  52                push dx
00003929  EE                out dx,al
0000392A  02B22008          add dh,[bp+si+0x820]
0000392E  00B04469          add [bx+si+0x6944],dh
00003932  7265              jc 0x3999
00003934  63746F            arpl [si+0x6f],si
00003937  7279              jc 0x39b2
00003939  206F66            and [bx+0x66],ch
0000393C  2000              and [bx+si],al
0000393E  57                push di
0000393F  61                popa
00003940  6974696E67        imul si,[si+0x69],word 0x676e
00003945  20666F            and [bp+0x6f],ah
00003948  7220              jc 0x396a
0000394A  7365              jnc 0x39b1
0000394C  7276              jc 0x39c4
0000394E  657220            gs jc 0x3971
00003951  0020              add [bx+si],ah
00003953  746F              jz 0x39c4
00003955  20636F            and [bp+di+0x6f],ah
00003958  6D                insw
00003959  65206F6E          and [gs:bx+0x6e],ch
0000395D  6C                insb
0000395E  696E652E20        imul bp,[bp+0x65],word 0x202e
00003963  205072            and [bx+si+0x72],dl
00003966  657373            gs jnc 0x39dc
00003969  203C              and [si],bh
0000396B  45                inc bp
0000396C  7363              jnc 0x39d1
0000396E  3E20746F          and [ds:si+0x6f],dh
00003972  206162            and [bx+di+0x62],ah
00003975  6F                outsw
00003976  7274              jc 0x39ec
00003978  207265            and [bp+si+0x65],dh
0000397B  7472              jz 0x39ef
0000397D  6965732E0D        imul sp,[di+0x73],word 0xd2e
00003982  0A00              or al,[bx+si]
00003984  4C                dec sp
00003985  6F                outsw
00003986  67696E20746F      imul bp,[esi+0x20],word 0x6f74
0000398C  2000              and [bx+si],al
0000398E  207375            and [bp+di+0x75],dh
00003991  636365            arpl [bp+di+0x65],sp
00003994  656465642E0D0A00  cs or ax,0xa
0000399C  206661            and [bp+0x61],ah
0000399F  696C65642E        imul bp,[si+0x65],word 0x2e64
000039A4  0D0A00            or ax,0xa
000039A7  207375            and [bp+di+0x75],dh
000039AA  636365            arpl [bp+di+0x65],sp
000039AD  656465642028      and [fs:bx+si],ch
000039B3  7061              jo 0x3a16
000039B5  7373              jnc 0x3a2a
000039B7  776F              ja 0x3a28
000039B9  7264              jc 0x3a1f
000039BB  206578            and [di+0x78],ah
000039BE  7069              jo 0x3a29
000039C0  7265              jc 0x3a27
000039C2  7320              jnc 0x39e4
000039C4  746F              jz 0x3a35
000039C6  6461              fs popa
000039C8  7929              jns 0x39f3
000039CA  2E0D0A00          cs or ax,0xa
000039CE  5C                pop sp
000039CF  40                inc ax
000039D0  4D                dec bp
000039D1  41                inc cx
000039D2  49                dec cx
000039D3  4C                dec sp
000039D4  00596F            add [bx+di+0x6f],bl
000039D7  7520              jnz 0x39f9
000039D9  686176            push word 0x7661
000039DC  65206D61          and [gs:di+0x61],ch
000039E0  696C206F6E        imul bp,[si+0x20],word 0x6e6f
000039E5  207365            and [bp+di+0x65],dh
000039E8  7276              jc 0x3a60
000039EA  657220            gs jc 0x3a0d
000039ED  0020              add [bx+si],ah
000039EF  66726F            o32 jc 0x3a61
000039F2  6D                insw
000039F3  2000              and [bx+si],al
000039F5  59                pop cx
000039F6  6F                outsw
000039F7  7520              jnz 0x3a19
000039F9  686176            push word 0x7661
000039FC  652000            and [gs:bx+si],al
000039FF  206D61            and [di+0x61],ch
00003A02  696C206D65        imul bp,[si+0x20],word 0x656d
00003A07  7373              jnc 0x3a7c
00003A09  61                popa
00003A0A  67652000          and [gs:eax],al
00003A0E  206D61            and [di+0x61],ch
00003A11  696C206D65        imul bp,[si+0x20],word 0x656d
00003A16  7373              jnc 0x3a8b
00003A18  61                popa
00003A19  67657320          gs jnc 0x3a3d
00003A1D  006F6E            add [bx+0x6e],ch
00003A20  207365            and [bp+di+0x65],dh
00003A23  7276              jc 0x3a9b
00003A25  657220            gs jc 0x3a48
00003A28  005041            add [bx+si+0x41],dl
00003A2B  55                push bp
00003A2C  53                push bx
00003A2D  45                inc bp
00003A2E  44                inc sp
00003A2F  7E44              jng 0x3a75
00003A31  49                dec cx
00003A32  53                push bx
00003A33  41                inc cx
00003A34  42                inc dx
00003A35  4C                dec sp
00003A36  45                inc bp
00003A37  44                inc sp
00003A38  7E53              jng 0x3a8d
00003A3A  49                dec cx
00003A3B  4E                dec si
00003A3C  47                inc di
00003A3D  4C                dec sp
00003A3E  45                inc bp
00003A3F  7E45              jng 0x3a86
00003A41  4E                dec si
00003A42  41                inc cx
00003A43  42                inc dx
00003A44  4C                dec sp
00003A45  45                inc bp
00003A46  44                inc sp
00003A47  002D              add [di],ch
00003A49  2D204E            sub ax,0x4e20
00003A4C  6F                outsw
00003A4D  7420              jz 0x3a6f
00003A4F  44                inc sp
00003A50  657370            gs jnc 0x3ac3
00003A53  6F                outsw
00003A54  6F                outsw
00003A55  6C                insb
00003A56  696E67202D        imul bp,[bp+0x67],word 0x2d20
00003A5B  2D002D            sub ax,0x2d00
00003A5E  01B22012          add [bp+si+0x1220],si
00003A62  00B04350          add [bx+si+0x5043],dh
00003A66  53                push bx
00003A67  3A20              cmp ah,[bx+si]
00003A69  2020              and [bx+si],ah
00003A6B  2020              and [bx+si],ah
00003A6D  2020              and [bx+si],ah
00003A6F  52                push dx
00003A70  6561              gs popa
00003A72  643A10            cmp dl,[fs:bx+si]
00003A75  00B2200A          add [bp+si+0xa20],dh
00003A79  00B04F75          add [bx+si+0x754f],dh
00003A7D  7470              jz 0x3aef
00003A7F  7574              jnz 0x3af5
00003A81  3A07              cmp al,[bx]
00003A83  00B2200A          add [bp+si+0xa20],dh
00003A87  00B0436F          add [bx+si+0x6f43],dh
00003A8B  7069              jo 0x3af6
00003A8D  657320            gs jnc 0x3ab0
00003A90  6C                insb
00003A91  6566743A          gs o32 jz 0x3acf
00003A95  2020              and [bx+si],ah
00003A97  2020              and [bx+si],ah
00003A99  005365            add [bp+di+0x65],dl
00003A9C  7276              jc 0x3b14
00003A9E  657220            gs jc 0x3ac1
00003AA1  7769              ja 0x3b0c
00003AA3  6C                insb
00003AA4  6C                insb
00003AA5  207368            and [bp+di+0x68],dh
00003AA8  7574              jnz 0x3b1e
00003AAA  20646F            and [si+0x6f],ah
00003AAD  776E              ja 0x3b1d
00003AAF  20696E            and [bx+di+0x6e],ch
00003AB2  2023              and [bp+di],ah
00003AB4  206D69            and [di+0x69],ch
00003AB7  6E                outsb
00003AB8  7574              jnz 0x3b2e
00003ABA  652400            gs and al,0x0
00003ABD  53                push bx
00003ABE  657276            gs jc 0x3b37
00003AC1  657220            gs jc 0x3ae4
00003AC4  7368              jnc 0x3b2e
00003AC6  7574              jnz 0x3b3c
00003AC8  7469              jz 0x3b33
00003ACA  6E                outsb
00003ACB  6720646F77        and [dword edi+ebp*2+0x77],ah
00003AD0  6E                outsb
00003AD1  004D61            add [di+0x61],cl
00003AD4  636869            arpl [bx+si+0x69],bp
00003AD7  6E                outsb
00003AD8  652000            and [gs:bx+si],al
00003ADB  206973            and [bx+di+0x73],ch
00003ADE  206265            and [bp+si+0x65],ah
00003AE1  696E672075        imul bp,[bp+0x67],word 0x7520
00003AE6  7365              jnc 0x3b4d
00003AE8  64206173          and [fs:bx+di+0x73],ah
00003AEC  206120            and [bx+di+0x20],ah
00003AEF  52                push dx
00003AF0  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00003AF7  6F                outsw
00003AF8  7200              jc 0x3afa
00003AFA  20616E            and [bx+di+0x6e],ah
00003AFD  64206120          and [fs:bx+di+0x20],ah
00003B01  53                push bx
00003B02  657276            gs jc 0x3b7b
00003B05  657200            gs jc 0x3b08
00003B08  46                inc si
00003B09  696C652061        imul bp,[si+0x65],word 0x6120
00003B0E  6E                outsb
00003B0F  64207265          and [fs:bp+si+0x65],dh
00003B13  636F72            arpl [bx+0x72],bp
00003B16  64206C6F          and [fs:si+0x6f],ch
00003B1A  636B69            arpl [bp+di+0x69],bp
00003B1D  6E                outsb
00003B1E  67206973          and [ecx+0x73],ch
00003B22  206375            and [bp+di+0x75],ah
00003B25  7272              jc 0x3b99
00003B27  656E              gs outsb
00003B29  746C              jz 0x3b97
00003B2B  7920              jns 0x3b4d
00003B2D  00556E            add [di+0x6e],dl
00003B30  736F              jnc 0x3ba1
00003B32  6C                insb
00003B33  6963697465        imul sp,[bp+di+0x69],word 0x6574
00003B38  64206D65          and [fs:di+0x65],ch
00003B3C  7373              jnc 0x3bb1
00003B3E  61                popa
00003B3F  67657320          gs jnc 0x3b63
00003B43  7769              ja 0x3bae
00003B45  6C                insb
00003B46  6C                insb
00003B47  2000              and [bx+si],al
00003B49  4E                dec si
00003B4A  45                inc bp
00003B4B  54                push sp
00003B4C  204D45            and [di+0x45],cl
00003B4F  53                push bx
00003B50  53                push bx
00003B51  41                inc cx
00003B52  47                inc di
00003B53  45                inc bp
00003B54  004E4F            add [bp+0x4f],cl
00003B57  54                push sp
00003B58  2000              and [bx+si],al
00003B5A  42                inc dx
00003B5B  45                inc bp
00003B5C  45                inc bp
00003B5D  50                push ax
00003B5E  2C20              sub al,0x20
00003B60  00504F            add [bx+si+0x4f],dl
00003B63  50                push ax
00003B64  2D5550            sub ax,0x5055
00003B67  20616E            and [bx+di+0x6e],ah
00003B6A  642000            and [fs:bx+si],al
00003B6D  53                push bx
00003B6E  50                push ax
00003B6F  45                inc bp
00003B70  41                inc cx
00003B71  4B                dec bx
00003B72  0D0A00            or ax,0xa
00003B75  42                inc dx
00003B76  45                inc bp
00003B77  45                inc bp
00003B78  50                push ax
00003B79  0D0A00            or ax,0xa
00003B7C  50                push ax
00003B7D  4F                dec di
00003B7E  50                push ax
00003B7F  0D0A00            or ax,0xa
00003B82  53                push bx
00003B83  50                push ax
00003B84  45                inc bp
00003B85  41                inc cx
00003B86  4B                dec bx
00003B87  0D0A00            or ax,0xa
00003B8A  2F                das
00003B8B  45                inc bp
00003B8C  4E                dec si
00003B8D  41                inc cx
00003B8E  42                inc dx
00003B8F  4C                dec sp
00003B90  45                inc bp
00003B91  2000              and [bx+si],al
00003B93  2F                das
00003B94  44                inc sp
00003B95  49                dec cx
00003B96  53                push bx
00003B97  41                inc cx
00003B98  42                inc dx
00003B99  4C                dec sp
00003B9A  45                inc bp
00003B9B  2000              and [bx+si],al
00003B9D  4C                dec sp
00003B9E  50                push ax
00003B9F  54                push sp
00003BA0  206E6F            and [bp+0x6f],ch
00003BA3  7469              jz 0x3c0e
00003BA5  6669636174696F6E  imul esp,[bp+di+0x61],dword 0x6e6f6974
00003BAD  206973            and [bx+di+0x73],ch
00003BB0  2000              and [bx+si],al
00003BB2  4C                dec sp
00003BB3  50                push ax
00003BB4  54                push sp
00003BB5  207469            and [si+0x69],dh
00003BB8  6D                insw
00003BB9  656F              gs outsw
00003BBB  7574              jnz 0x3c31
00003BBD  20696E            and [bx+di+0x6e],ch
00003BC0  207365            and [bp+di+0x65],dh
00003BC3  636F6E            arpl [bx+0x6e],bp
00003BC6  64733A            fs jnc 0x3c03
00003BC9  2000              and [bx+si],al
00003BCB  41                inc cx
00003BCC  7574              jnz 0x3c42
00003BCE  6F                outsw
00003BCF  6C                insb
00003BD0  6F                outsw
00003BD1  67696E206973      imul bp,[esi+0x20],word 0x7369
00003BD7  2000              and [bx+si],al
00003BD9  207769            and [bx+0x69],dh
00003BDC  7468              jz 0x3c46
00003BDE  207573            and [di+0x73],dh
00003BE1  65726E            gs jc 0x3c52
00003BE4  61                popa
00003BE5  6D                insw
00003BE6  652000            and [gs:bx+si],al
00003BE9  4C                dec sp
00003BEA  6F                outsw
00003BEB  6767656420696E    and [fs:ecx+0x6e],ch
00003BF2  746F              jz 0x3c63
00003BF4  205C5C            and [si+0x5c],bl
00003BF7  0020              add [bx+si],ah
00003BF9  61                popa
00003BFA  7320              jnc 0x3c1c
00003BFC  0020              add [bx+si],ah
00003BFE  6F                outsw
00003BFF  6E                outsb
00003C00  206164            and [bx+di+0x64],ah
00003C03  61                popa
00003C04  7074              jo 0x3c7a
00003C06  657220            gs jc 0x3c29
00003C09  005365            add [bp+di+0x65],dl
00003C0C  7276              jc 0x3c84
00003C0E  657220            gs jc 0x3c31
00003C11  5C                pop sp
00003C12  5C                pop sp
00003C13  0020              add [bx+si],ah
00003C15  6973206176        imul si,[bp+di+0x20],word 0x7661
00003C1A  61                popa
00003C1B  696C61626C        imul bp,[si+0x61],word 0x6c62
00003C20  65005072          add [gs:bx+si+0x72],dl
00003C24  696E746572        imul bp,[bp+0x74],word 0x7265
00003C29  2000              and [bx+si],al
00003C2B  44                inc sp
00003C2C  69736B2000        imul si,[bp+di+0x6b],word 0x20
00003C31  206973            and [bx+di+0x73],ch
00003C34  20636F            and [bp+di+0x6f],ah
00003C37  6E                outsb
00003C38  6E                outsb
00003C39  65637465          arpl [gs:si+0x65],si
00003C3D  6420746F          and [fs:si+0x6f],dh
00003C41  2000              and [bx+si],al
00003C43  4E                dec si
00003C44  45                inc bp
00003C45  54                push sp
00003C46  57                push di
00003C47  41                inc cx
00003C48  52                push dx
00003C49  45                inc bp
00003C4A  207265            and [bp+si+0x65],dh
00003C4D  736F              jnc 0x3cbe
00003C4F  7572              jnz 0x3cc3
00003C51  636520            arpl [di+0x20],sp
00003C54  00CC              add ah,cl
00003C56  01B22008          add [bp+si+0x820],si
00003C5A  00B02A2A          add [bx+si+0x2a2a],dh
00003C5E  2A20              sub ah,[bx+si]
00003C60  4F                dec di
00003C61  7665              jna 0x3cc8
00003C63  7272              jc 0x3cd7
00003C65  6964657320        imul sp,[si+0x65],word 0x2073
00003C6A  4C                dec sp
00003C6B  41                inc cx
00003C6C  4E                dec si
00003C6D  7461              jz 0x3cd0
00003C6F  7374              jnc 0x3ce5
00003C71  6963207265        imul sp,[bp+di+0x20],word 0x6572
00003C76  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00003C7C  696F6E2074        imul bp,[bx+0x6e],word 0x7420
00003C81  6F                outsw
00003C82  2000              and [bx+si],al
00003C84  2028              and [bx+si],ch
00003C86  43                inc bx
00003C87  6F                outsw
00003C88  6E                outsb
00003C89  666C              o32 insb
00003C8B  6963747320        imul sp,[bp+di+0x74],word 0x2073
00003C90  7769              ja 0x3cfb
00003C92  7468              jz 0x3cfc
00003C94  204E45            and [bp+0x45],cl
00003C97  54                push sp
00003C98  57                push di
00003C99  41                inc cx
00003C9A  52                push dx
00003C9B  45                inc bp
00003C9C  2900              sub [bx+si],ax
00003C9E  4E                dec si
00003C9F  45                inc bp
00003CA0  54                push sp
00003CA1  204C50            and [si+0x50],cl
00003CA4  54                push sp
00003CA5  205449            and [si+0x49],dl
00003CA8  4D                dec bp
00003CA9  45                inc bp
00003CAA  4F                dec di
00003CAB  55                push bp
00003CAC  54                push sp
00003CAD  2000              and [bx+si],al
00003CAF  4E                dec si
00003CB0  45                inc bp
00003CB1  54                push sp
00003CB2  204C50            and [si+0x50],cl
00003CB5  54                push sp
00003CB6  7E4E              jng 0x3d06
00003CB8  4F                dec di
00003CB9  54                push sp
00003CBA  49                dec cx
00003CBB  46                inc si
00003CBC  59                pop cx
00003CBD  004E45            add [bp+0x45],cl
00003CC0  54                push sp
00003CC1  204C4F            and [si+0x4f],cl
00003CC4  47                inc di
00003CC5  49                dec cx
00003CC6  4E                dec si
00003CC7  205C5C            and [si+0x5c],bl
00003CCA  0020              add [bx+si],ah
00003CCC  0020              add [bx+si],ah
00003CCE  5E                pop si
00003CCF  22456E            and al,[di+0x6e]
00003CD2  7465              jz 0x3d39
00003CD4  7220              jc 0x3cf6
00003CD6  7061              jo 0x3d39
00003CD8  7373              jnc 0x3d4d
00003CDA  776F              ja 0x3d4b
00003CDC  7264              jc 0x3d42
00003CDE  3A20              cmp ah,[bx+si]
00003CE0  2220              and ah,[bx+si]
00003CE2  0020              add [bx+si],ah
00003CE4  5E                pop si
00003CE5  22456E            and al,[di+0x6e]
00003CE8  7465              jz 0x3d4f
00003CEA  7220              jc 0x3d0c
00003CEC  64656661          gs popad
00003CF0  756C              jnz 0x3d5e
00003CF2  7420              jz 0x3d14
00003CF4  7061              jo 0x3d57
00003CF6  7373              jnc 0x3d6b
00003CF8  776F              ja 0x3d69
00003CFA  7264              jc 0x3d60
00003CFC  20666F            and [bp+0x6f],ah
00003CFF  7220              jc 0x3d21
00003D01  7573              jnz 0x3d76
00003D03  657220            gs jc 0x3d26
00003D06  0020              add [bx+si],ah
00003D08  5E                pop si
00003D09  22456E            and al,[di+0x6e]
00003D0C  7465              jz 0x3d73
00003D0E  7220              jc 0x3d30
00003D10  7061              jo 0x3d73
00003D12  7373              jnc 0x3d87
00003D14  776F              ja 0x3d85
00003D16  7264              jc 0x3d7c
00003D18  20666F            and [bp+0x6f],ah
00003D1B  7220              jc 0x3d3d
00003D1D  0020              add [bx+si],ah
00003D1F  6F                outsw
00003D20  6E                outsb
00003D21  2000              and [bx+si],al
00003D23  3A20              cmp ah,[bx+si]
00003D25  2220              and ah,[bx+si]
00003D27  004E45            add [bp+0x45],cl
00003D2A  54                push sp
00003D2B  205553            and [di+0x53],dl
00003D2E  45                inc bp
00003D2F  2000              and [bx+si],al
00003D31  4E                dec si
00003D32  45                inc bp
00003D33  54                push sp
00003D34  205553            and [di+0x53],dl
00003D37  45                inc bp
00003D38  52                push dx
00003D39  DD00              fld qword [bx+si]
00003D3B  F3AA              rep stosb
00003D3D  1200              adc al,[bx+si]
00003D3F  B054              mov al,0x54
00003D41  52                push dx
00003D42  55                push bp
00003D43  45                inc bp
00003D44  004641            add [bp+0x41],al
00003D47  4C                dec sp
00003D48  53                push bx
00003D49  45                inc bp
00003D4A  0000              add [bx+si],al
00003D4C  005375            add [bp+di+0x75],dl
00003D4F  6E                outsb
00003D50  6461              fs popa
00003D52  7900              jns 0x3d54
00003D54  017E4D            add [bp+0x4d],di
00003D57  6F                outsw
00003D58  6E                outsb
00003D59  6461              fs popa
00003D5B  7900              jns 0x3d5d
00003D5D  0200              add al,[bx+si]
00003D5F  54                push sp
00003D60  7565              jnz 0x3dc7
00003D62  7364              jnc 0x3dc8
00003D64  61                popa
00003D65  7900              jns 0x3d67
00003D67  0300              add ax,[bx+si]
00003D69  57                push di
00003D6A  65646E            fs outsb
00003D6D  657364            gs jnc 0x3dd4
00003D70  61                popa
00003D71  7900              jns 0x3d73
00003D73  0400              add al,0x0
00003D75  54                push sp
00003D76  687572            push word 0x7275
00003D79  7364              jnc 0x3ddf
00003D7B  61                popa
00003D7C  7900              jns 0x3d7e
00003D7E  050046            add ax,0x4600
00003D81  7269              jc 0x3dec
00003D83  6461              fs popa
00003D85  7900              jns 0x3d87
00003D87  06                push es
00003D88  005361            add [bp+di+0x61],dl
00003D8B  7475              jz 0x3e02
00003D8D  7264              jc 0x3df3
00003D8F  61                popa
00003D90  7900              jns 0x3d92
00003D92  0000              add [bx+si],al
00003D94  0000              add [bx+si],al
00003D96  4A                dec dx
00003D97  41                inc cx
00003D98  4E                dec si
00003D99  46                inc si
00003D9A  45                inc bp
00003D9B  42                inc dx
00003D9C  4D                dec bp
00003D9D  41                inc cx
00003D9E  52                push dx
00003D9F  41                inc cx
00003DA0  50                push ax
00003DA1  52                push dx
00003DA2  4D                dec bp
00003DA3  41                inc cx
00003DA4  59                pop cx
00003DA5  4A                dec dx
00003DA6  55                push bp
00003DA7  4E                dec si
00003DA8  4A                dec dx
00003DA9  55                push bp
00003DAA  4C                dec sp
00003DAB  41                inc cx
00003DAC  55                push bp
00003DAD  47                inc di
00003DAE  53                push bx
00003DAF  45                inc bp
00003DB0  50                push ax
00003DB1  4F                dec di
00003DB2  43                inc bx
00003DB3  54                push sp
00003DB4  4E                dec si
00003DB5  4F                dec di
00003DB6  56                push si
00003DB7  44                inc sp
00003DB8  45                inc bp
00003DB9  43                inc bx
00003DBA  4D                dec bp
00003DBB  61                popa
00003DBC  636869            arpl [bx+si+0x69],bp
00003DBF  6E                outsb
00003DC0  65204E61          and [gs:bp+0x61],cl
00003DC4  6D                insw
00003DC5  652020            and [gs:bx+si],ah
00003DC8  2020              and [bx+si],ah
00003DCA  2020              and [bx+si],ah
00003DCC  41                inc cx
00003DCD  6461              fs popa
00003DCF  7074              jo 0x3e45
00003DD1  657220            gs jc 0x3df4
00003DD4  205665            and [bp+0x65],dl
00003DD7  7273              jc 0x3e4c
00003DD9  696F6E2020        imul bp,[bx+0x6e],word 0x2020
00003DDE  53                push bx
00003DDF  657276            gs jc 0x3e58
00003DE2  657200            gs jc 0x3de5
00003DE5  50                push ax
00003DE6  51                push cx
00003DE7  53                push bx
00003DE8  BB0080            mov bx,0x8000
00003DEB  AC                lodsb
00003DEC  85D3              test bx,dx
00003DEE  5E                pop si
00003DEF  7293              jc 0x3d84
00003DF1  2DAAD1            sub ax,0xd1aa
00003DF4  EBE2              jmp short 0x3dd8
00003DF6  F4                hlt
00003DF7  5B                pop bx
00003DF8  59                pop cx
00003DF9  57                push di
00003DFA  33D2              xor dx,dx
00003DFC  8AD0              mov dl,al
00003DFE  80E21F            and dl,0x1f
00003E01  B105              mov cl,0x5
00003E03  D3E8              shr ax,cl
00003E05  8AF0              mov dh,al
00003E07  80E60F            and dh,0xf
00003E0A  49                dec cx
00003E0B  D3E8              shr ax,cl
00003E0D  8BC8              mov cx,ax
00003E0F  81C1BC07          add cx,0x7bc
00003E13  57                push di
00003E14  33D2              xor dx,dx
00003E16  56                push si
00003E17  8AC2              mov al,dl
00003E19  B400              mov ah,0x0
00003E1B  04C6              add al,0xc6
00003E1D  21A3807D          and [bp+di+0x7d80],sp
00003E21  FF20              jmp [bx+si]
00003E23  FE                db 0xfe
00003E24  307505            xor [di+0x5],dh
00003E27  26C645FE20        mov byte [es:di-0x2],0x20
00003E2C  93                xchg ax,bx
00003E2D  2DAA8A            sub ax,0x8aaa
00003E30  C6                db 0xc6
00003E31  B400              mov ah,0x0
00003E33  BECC65            mov si,0x65cc
00003E36  E89D00            call 0x3ed6
00003E39  51                push cx
00003E3A  E84405            call 0x4381
00003E3D  F3A4              rep movsb
00003E3F  59                pop cx
00003E40  93                xchg ax,bx
00003E41  2DAA8B            sub ax,0x8baa
00003E44  C1E807            shr ax,byte 0x7
00003E47  005E58            add [bp+0x58],bl
00003E4A  26B1F3            es mov cl,0xf3
00003E4D  A4                movsb
00003E4E  C3                ret
00003E4F  52                push dx
00003E50  33D2              xor dx,dx
00003E52  E80200            call 0x3e57
00003E55  5A                pop dx
00003E56  33D2              xor dx,dx
00003E58  33DB              xor bx,bx
00003E5A  1E                push ds
00003E5B  B90A00            mov cx,0xa
00003E5E  E80500            call 0x3e66
00003E61  03B9278D          add di,[bx+di-0x72d9]
00003E65  36E89A06          ss call 0x4503
00003E69  53                push bx
00003E6A  8BD8              mov bx,ax
00003E6C  0BDA              or bx,dx
00003E6E  054AFF            add ax,0xff4a
00003E71  F3FF5B93          rep call far [bp+di-0x6d]
00003E75  0430              add al,0x30
00003E77  AA                stosb
00003E78  8BC3              mov ax,bx
00003E7A  C3                ret
00003E7B  57                push di
00003E7C  06                push es
00003E7D  0E                push cs
00003E7E  07                pop es
00003E7F  BFB965            mov di,0x65b9
00003E82  57                push di
00003E83  E8C9FF            call 0x3e4f
00003E86  E93A06            jmp 0x44c3
00003E89  367C5C            ss jl 0x3ee8
00003E8C  7E5C              jng 0x3eea
00003E8E  06                push es
00003E8F  7C5C              jl 0x3eed
00003E91  82                db 0x82
00003E92  5C                pop sp
00003E93  E93706            jmp 0x44cd
00003E96  367C5C            ss jl 0x3ef5
00003E99  7E5C              jng 0x3ef7
00003E9B  06                push es
00003E9C  7C5C              jl 0x3efa
00003E9E  82                db 0x82
00003E9F  5C                pop sp
00003EA0  E95406            jmp 0x44f7
00003EA3  56                push si
00003EA4  BE1866            mov si,0x6618
00003EA7  1E                push ds
00003EA8  0E                push cs
00003EA9  1F                pop ds
00003EAA  FB                sti
00003EAB  FF5B1F            call far [bp+di+0x1f]
00003EAE  5E                pop si
00003EAF  C3                ret
00003EB0  56                push si
00003EB1  BE2366            mov si,0x6623
00003EB4  EBF1              jmp short 0x3ea7
00003EB6  E8EAFF            call 0x3ea3
00003EB9  367C5C            ss jl 0x3f18
00003EBC  805C067C          sbb byte [si+0x6],0x7c
00003EC0  5C                pop sp
00003EC1  82                db 0x82
00003EC2  5C                pop sp
00003EC3  E90706            jmp 0x44cd
00003EC6  E8DAFF            call 0x3ea3
00003EC9  367C5C            ss jl 0x3f28
00003ECC  805C067C          sbb byte [si+0x6],0x7c
00003ED0  5C                pop sp
00003ED1  82                db 0x82
00003ED2  5C                pop sp
00003ED3  E92106            jmp 0x44f7
00003ED6  D2                db 0xd2
00003ED7  33DB              xor bx,bx
00003ED9  8BD8              mov bx,ax
00003EDB  AD                lodsw
00003EDC  36B8698D          ss mov ax,0x8d69
00003EE0  0C3B              or al,0x3b
00003EE2  D87408            fdiv dword [si+0x8]
00003EE5  E89904            call 0x4381
00003EE8  03F1              add si,cx
00003EEA  46                inc si
00003EEB  EBEE              jmp short 0x3edb
00003EED  B9278D            mov cx,0x8d27
00003EF0  36015280          add [ss:bp+si-0x80],dx
00003EF4  FF                db 0xff
00003EF5  B80037            mov ax,0x3700
00003EF8  CD21              int 0x21
00003EFA  8AFA              mov bh,dl
00003EFC  5A                pop dx
00003EFD  51                push cx
00003EFE  52                push dx
00003EFF  57                push di
00003F00  E87E04            call 0x4381
00003F03  E354              jcxz 0x3f59
00003F05  B320              mov bl,0x20
00003F07  383C              cmp [si],bh
00003F09  7404              jz 0x3f0f
00003F0B  381C              cmp [si],bl
00003F0D  7705              ja 0x3f14
00003F0F  46                inc si
00003F10  E2F5              loop 0x3f07
00003F12  EB45              jmp short 0x3f59
00003F14  803C3B            cmp byte [si],0x3b
00003F17  750F              jnz 0x3f28
00003F19  AC                lodsb
00003F1A  3C0D              cmp al,0xd
00003F1C  74E9              jz 0x3f07
00003F1E  3C0A              cmp al,0xa
00003F20  74E5              jz 0x3f07
00003F22  04B0              add al,0xb0
00003F24  003C              add [si],bh
00003F26  EBF1              jmp short 0x3f19
00003F28  8A04              mov al,[si]
00003F2A  3AC7              cmp al,bh
00003F2C  742B              jz 0x3f59
00003F2E  3AC3              cmp al,bl
00003F30  7627              jna 0x3f59
00003F32  80FB69            cmp bl,0x69
00003F35  8D13              lea dx,[bp+di]
00003F37  3C2C              cmp al,0x2c
00003F39  7503              jnz 0x3f3e
00003F3B  46                inc si
00003F3C  EB1B              jmp short 0x3f59
00003F3E  3C22              cmp al,0x22
00003F40  7404              jz 0x3f46
00003F42  3C27              cmp al,0x27
00003F44  7504              jnz 0x3f4a
00003F46  B300              mov bl,0x0
00003F48  8AF8              mov bh,al
00003F4A  80FB69            cmp bl,0x69
00003F4D  8D03              lea ax,[bp+di]
00003F4F  E8960A            call 0x49e8
00003F52  AA                stosb
00003F53  46                inc si
00003F54  4A                dec dx
00003F55  7445              jz 0x3f9c
00003F57  E2CF              loop 0x3f28
00003F59  3C22              cmp al,0x22
00003F5B  7404              jz 0x3f61
00003F5D  3C27              cmp al,0x27
00003F5F  7501              jnz 0x3f62
00003F61  A4                movsb
00003F62  26B1F3            es mov cl,0xf3
00003F65  A4                movsb
00003F66  5F                pop di
00003F67  56                push si
00003F68  57                push di
00003F69  5E                pop si
00003F6A  17                pop ss
00003F6B  A840              test al,0x40
00003F6D  B85A01            mov ax,0x15a
00003F70  7508              jnz 0x3f7a
00003F72  E8AF04            call 0x4424
00003F75  7203              jc 0x3f7a
00003F77  E88E04            call 0x4408
00003F7A  8BF7              mov si,di
00003F7C  AC                lodsb
00003F7D  3C22              cmp al,0x22
00003F7F  7404              jz 0x3f85
00003F81  3C27              cmp al,0x27
00003F83  7511              jnz 0x3f96
00003F85  8AE0              mov ah,al
00003F87  59                pop cx
00003F88  51                push cx
00003F89  E8AB03            call 0x4337
00003F8C  263865FF          cmp [es:di-0x1],ah
00003F90  7504              jnz 0x3f96
00003F92  4F                dec di
00003F93  33D2              xor dx,dx
00003F95  59                pop cx
00003F96  BF03B9            mov di,0xb903
00003F99  27                daa
00003F9A  8D36381C          lea si,[0x1c38]
00003F9E  76B9              jna 0x3f59
00003FA0  383C              cmp [si],bh
00003FA2  74B5              jz 0x3f59
00003FA4  46                inc si
00003FA5  E2F5              loop 0x3f9c
00003FA7  EBB0              jmp short 0x3f59
00003FA9  53                push bx
00003FAA  B32C              mov bl,0x2c
00003FAC  B720              mov bh,0x20
00003FAE  50                push ax
00003FAF  51                push cx
00003FB0  52                push dx
00003FB1  57                push di
00003FB2  E8CC03            call 0x4381
00003FB5  E326              jcxz 0x3fdd
00003FB7  383C              cmp [si],bh
00003FB9  7405              jz 0x3fc0
00003FBB  803C20            cmp byte [si],0x20
00003FBE  7705              ja 0x3fc5
00003FC0  46                inc si
00003FC1  E2F4              loop 0x3fb7
00003FC3  EB18              jmp short 0x3fdd
00003FC5  8A04              mov al,[si]
00003FC7  3AC3              cmp al,bl
00003FC9  7503              jnz 0x3fce
00003FCB  46                inc si
00003FCC  EB0F              jmp short 0x3fdd
00003FCE  3AC7              cmp al,bh
00003FD0  740B              jz 0x3fdd
00003FD2  3C20              cmp al,0x20
00003FD4  7607              jna 0x3fdd
00003FD6  AA                stosb
00003FD7  46                inc si
00003FD8  4A                dec dx
00003FD9  740C              jz 0x3fe7
00003FDB  E2E8              loop 0x3fc5
00003FDD  26B1F3            es mov cl,0xf3
00003FE0  A4                movsb
00003FE1  5F                pop di
00003FE2  5A                pop dx
00003FE3  59                pop cx
00003FE4  58                pop ax
00003FE5  5B                pop bx
00003FE6  C3                ret
00003FE7  803C20            cmp byte [si],0x20
00003FEA  76F1              jna 0x3fdd
00003FEC  381C              cmp [si],bl
00003FEE  76ED              jna 0x3fdd
00003FF0  383C              cmp [si],bh
00003FF2  74E9              jz 0x3fdd
00003FF4  46                inc si
00003FF5  E2F0              loop 0x3fe7
00003FF7  EBE4              jmp short 0x3fdd
00003FF9  B902B2            mov cx,0xb202
00003FFC  000A              add [bp+si],cl
00003FFE  00B033DB          add [bx+si-0x24cd],dh
00004002  1E                push ds
00004003  16                push ss
00004004  A340C0            mov [0xc040],ax
00004007  5B                pop bx
00004008  16                push ss
00004009  A340C4            mov [0xc440],ax
0000400C  5B                pop bx
0000400D  1E                push ds
0000400E  AB                stosw
0000400F  40                inc ax
00004010  7C5C              jl 0x406e
00004012  B43F              mov ah,0x3f
00004014  0E                push cs
00004015  40                inc ax
00004016  1DC25B            sbb ax,0x5bc2
00004019  80A33E1DC6        and byte [bp+di+0x1d3e],0xc6
0000401E  5B                pop bx
0000401F  85C0              test ax,ax
00004021  7501              jnz 0x4024
00004023  F9                stc
00004024  03B92783          add di,[bx+di-0x7cd9]
00004028  3E1500C6          ds adc ax,0xc600
0000402C  5B                pop bx
0000402D  007505            add [di+0x5],dh
00004030  FF1F              call far [bx]
00004032  5E                pop si
00004033  7210              jc 0x4045
00004035  3641              ss inc cx
00004037  07                pop es
00004038  C45BAC            les bx,[bp+di-0x54]
0000403B  3641              ss inc cx
0000403D  07                pop es
0000403E  C45B1E            les bx,[bp+di+0x1e]
00004041  FF0EC65B          dec word [0x5bc6]
00004045  33D2              xor dx,dx
00004047  33DB              xor bx,bx
00004049  56                push si
0000404A  57                push di
0000404B  1E                push ds
0000404C  B462              mov ah,0x62
0000404E  CD21              int 0x21
00004050  8EDB              mov ds,bx
00004052  BE8000            mov si,0x80
00004055  AC                lodsb
00004056  8AC8              mov cl,al
00004058  B51E              mov ch,0x1e
0000405A  8BFA              mov di,dx
0000405C  26880D            mov [es:di],cl
0000405F  1F                pop ds
00004060  5F                pop di
00004061  5E                pop si
00004062  B9278D            mov cx,0x8d27
00004065  36DB5657          fist dword [ss:bp+0x57]
00004069  49                dec cx
0000406A  E8BBFF            call 0x4028
0000406D  7207              jc 0x4076
0000406F  AA                stosb
00004070  3C0A              cmp al,0xa
00004072  7402              jz 0x4076
00004074  E2F4              loop 0x406a
00004076  33D2              xor dx,dx
00004078  59                pop cx
00004079  3C5E              cmp al,0x5e
0000407B  59                pop cx
0000407C  33D2              xor dx,dx
0000407E  33B462CD          xor si,[si-0x329e]
00004082  21E8              and ax,bp
00004084  0300              add ax,[bx+si]
00004086  27                daa
00004087  8D36561E          lea si,[0x1e56]
0000408B  8EDB              mov ds,bx
0000408D  8E1E2C00          mov ds,[0x2c]
00004091  33F6              xor si,si
00004093  83C605            add si,byte +0x5
00004096  41                inc cx
00004097  EB46              jmp short 0x40df
00004099  EBF8              jmp short 0x4093
0000409B  83C604            add si,byte +0x4
0000409E  E8B402            call 0x4355
000040A1  1F                pop ds
000040A2  5E                pop si
000040A3  C3                ret
000040A4  50                push ax
000040A5  51                push cx
000040A6  B104              mov cl,0x4
000040A8  D2E8              shr al,cl
000040AA  59                pop cx
000040AB  E85F04            call 0x450d
000040AE  58                pop ax
000040AF  E95B04            jmp 0x450d
000040B2  0000              add [bx+si],al
000040B4  0100              add [bx+si],ax
000040B6  0200              add al,[bx+si]
000040B8  0100              add [bx+si],ax
000040BA  0D0A00            or ax,0xa
000040BD  56                push si
000040BE  1E                push ds
000040BF  0E                push cs
000040C0  1F                pop ds
000040C1  BE845C            mov si,0x5c84
000040C4  E8BFFD            call 0x3e86
000040C7  1F                pop ds
000040C8  5E                pop si
000040C9  C3                ret
000040CA  CA00F3            retf 0xf300
000040CD  AA                stosb
000040CE  0001              add [bx+di],al
000040D0  B036              mov al,0x36
000040D2  7C5C              jl 0x4130
000040D4  7E5C              jng 0x4132
000040D6  06                push es
000040D7  7C5C              jl 0x4135
000040D9  805C067C          sbb byte [si+0x6],0x7c
000040DD  5C                pop sp
000040DE  7E5C              jng 0x413c
000040E0  33DB              xor bx,bx
000040E2  1E                push ds
000040E3  BE0200            mov si,0x2
000040E6  94                xchg ax,sp
000040E7  5C                pop sp
000040E8  8BDF              mov bx,di
000040EA  8CC2              mov dx,es
000040EC  0E                push cs
000040ED  07                pop es
000040EE  BF945C            mov di,0x5c94
000040F1  E859FE            call 0x3f4d
000040F4  0E                push cs
000040F5  1F                pop ds
000040F6  2EA0B85A          mov al,[cs:0x5ab8]
000040FA  06                push es
000040FB  A840              test al,0x40
000040FD  B85A00            mov ax,0x5a
00004100  E309              jcxz 0x410b
00004102  BF145D            mov di,0x5d14
00004105  E8EEFC            call 0x3df6
00004108  49                dec cx
00004109  EBF5              jmp short 0x4100
0000410B  2EA2B85A          mov [cs:0x5ab8],al
0000410F  8BFB              mov di,bx
00004111  8EC2              mov es,dx
00004113  E81C04            call 0x4532
00004116  BABF03            mov dx,0x3bf
00004119  B92706            mov cx,0x627
0000411C  7C5C              jl 0x417a
0000411E  7E5C              jng 0x417c
00004120  C3                ret
00004121  367C5C            ss jl 0x4180
00004124  7E5C              jng 0x4182
00004126  06                push es
00004127  7C5C              jl 0x4185
00004129  805C067C          sbb byte [si+0x6],0x7c
0000412D  5C                pop sp
0000412E  7E5C              jng 0x418c
00004130  33DB              xor bx,bx
00004132  1E                push ds
00004133  BE02EB            mov si,0xeb02
00004136  B100              mov cl,0x0
00004138  0000              add [bx+si],al
0000413A  002E893E          add [0x3e89],ch
0000413E  FA                cli
0000413F  5D                pop bp
00004140  06                push es
00004141  B20C              mov dl,0xc
00004143  FC                cld
00004144  5D                pop bp
00004145  33DB              xor bx,bx
00004147  1E                push ds
00004148  55                push bp
00004149  8BEF              mov bp,di
0000414B  264D              es dec bp
0000414D  E80C74            call 0xb55c
00004150  198BD6E8          sbb [bp+di-0x172a],cx
00004154  EB05              jmp short 0x415b
00004156  7366              jnc 0x41be
00004158  007417            add [si+0x17],dh
0000415B  7560              jnz 0x41bd
0000415D  8BF2              mov si,dx
0000415F  8D7D09            lea di,[di+0x9]
00004162  E80F01            call 0x4274
00004165  03F9              add di,cx
00004167  47                inc di
00004168  EBE1              jmp short 0x414b
0000416A  8BFD              mov di,bp
0000416C  2E803E005675      cmp byte [cs:0x5600],0x75
00004172  04B0              add al,0xb0
00004174  00B1013D          add [bx+di+0x3d01],dh
00004178  E2F4              loop 0x416e
0000417A  C6                db 0xc6
0000417B  3A41EB            cmp al,[bx+di-0x15]
0000417E  F4                hlt
0000417F  5E                pop si
00004180  F05E              lock pop si
00004182  264D              es dec bp
00004184  E80C74            call 0xb593
00004187  1DDB56            sbb ax,0x56db
0000418A  57                push di
0000418B  8D7D09            lea di,[di+0x9]
0000418E  F3A6              repe cmpsb
00004190  3C5E              cmp al,0x5e
00004192  59                pop cx
00004193  7503              jnz 0x4198
00004195  8BEF              mov bp,di
00004197  43                inc bx
00004198  8D7D09            lea di,[di+0x9]
0000419B  51                push cx
0000419C  E8D500            call 0x4274
0000419F  03F9              add di,cx
000041A1  59                pop cx
000041A2  47                inc di
000041A3  EBDD              jmp short 0x4182
000041A5  85DB              test bx,bx
000041A7  7411              jz 0x41ba
000041A9  4B                dec bx
000041AA  7509              jnz 0x41b5
000041AC  8BFD              mov di,bp
000041AE  03F1              add si,cx
000041B0  E8A105            call 0x4754
000041B3  EB09              jmp short 0x41be
000041B5  B80703            mov ax,0x307
000041B8  00BEB800          add [bp+0xb8],bh
000041BC  00F9              add cl,bh
000041BE  5D                pop bp
000041BF  03B92783          add di,[bx+di-0x7cd9]
000041C3  50                push ax
000041C4  53                push bx
000041C5  8BD9              mov bx,cx
000041C7  4B                dec bx
000041C8  03F3              add si,bx
000041CA  51                push cx
000041CB  56                push si
000041CC  803C20            cmp byte [si],0x20
000041CF  7711              ja 0x41e2
000041D1  8BCB              mov cx,bx
000041D3  8A44FF            mov al,[si-0x1]
000041D6  8804              mov [si],al
000041D8  4E                dec si
000041D9  E2F8              loop 0x41d3
000041DB  C60420            mov byte [si],0x20
000041DE  5E                pop si
000041DF  59                pop cx
000041E0  E2E8              loop 0x41ca
000041E2  59                pop cx
000041E3  B927AC            mov cx,0xac27
000041E6  E20A              loop 0x41f2
000041E8  005051            add [bx+si+0x51],dl
000041EB  C9                leave
000041EC  E86133            call 0x7550
000041EF  DB04              fild dword [si]
000041F1  2A07              sub al,[bx]
000041F3  B00B              mov al,0xb
000041F5  F9                stc
000041F6  E304              jcxz 0x41fc
000041F8  9C                pushf
000041F9  F7DB              neg bx
000041FB  9D                popf
000041FC  5A                pop dx
000041FD  59                pop cx
000041FE  58                pop ax
000041FF  C3                ret
00004200  803C2D            cmp byte [si],0x2d
00004203  7406              jz 0x420b
00004205  803C2B            cmp byte [si],0x2b
00004208  7503              jnz 0x420d
0000420A  49                dec cx
0000420B  46                inc si
0000420C  41                inc cx
0000420D  E8CC06            call 0x48dc
00004210  76E4              jna 0x41f6
00004212  93                xchg ax,bx
00004213  2EF726AA5E        mul word [cs:0x5eaa]
00004218  70DC              jo 0x41f6
0000421A  03D8              add bx,ax
0000421C  EBEF              jmp short 0x420d
0000421E  51                push cx
0000421F  AD                lodsw
00004220  36B869F9          ss mov ax,0xf969
00004224  7413              jz 0x4239
00004226  E85C00            call 0x4285
00004229  41                inc cx
0000422A  DB5657            fist dword [bp+0x57]
0000422D  F3A6              repe cmpsb
0000422F  3C5E              cmp al,0x5e
00004231  59                pop cx
00004232  F8                clc
00004233  7404              jz 0x4239
00004235  03F1              add si,cx
00004237  EBE6              jmp short 0x421f
00004239  59                pop cx
0000423A  33D2              xor dx,dx
0000423C  E308              jcxz 0x4246
0000423E  7504              jnz 0x4244
00004240  B000              mov al,0x0
00004242  03AAE2F8          add bp,[bp+si-0x71e]
00004246  26B1F3            es mov cl,0xf3
00004249  A4                movsb
0000424A  57                push di
0000424B  33D2              xor dx,dx
0000424D  56                push si
0000424E  57                push di
0000424F  A6                cmpsb
00004250  7506              jnz 0x4258
00004252  807CFF00          cmp byte [si-0x1],0x0
00004256  75F7              jnz 0x424f
00004258  5F                pop di
00004259  27                daa
0000425A  57                push di
0000425B  51                push cx
0000425C  51                push cx
0000425D  1E                push ds
0000425E  56                push si
0000425F  06                push es
00004260  57                push di
00004261  E8D7FF            call 0x423b
00004264  5F                pop di
00004265  07                pop es
00004266  5E                pop si
00004267  1F                pop ds
00004268  59                pop cx
00004269  C3                ret
0000426A  E89506            call 0x4902
0000426D  E8ECFF            call 0x425c
00004270  E88F06            call 0x4902
00004273  C3                ret
00004274  50                push ax
00004275  57                push di
00004276  06                push es
00004277  B9FFFF            mov cx,0xffff
0000427A  32C0              xor al,al
0000427C  F2AE              repne scasb
0000427E  F7D1              not cx
00004280  49                dec cx
00004281  07                pop es
00004282  5F                pop di
00004283  58                pop ax
00004284  C3                ret
00004285  06                push es
00004286  57                push di
00004287  1E                push ds
00004288  07                pop es
00004289  8BFE              mov di,si
0000428B  E8E6FF            call 0x4274
0000428E  5F                pop di
0000428F  07                pop es
00004290  33D2              xor dx,dx
00004292  8AF0              mov dh,al
00004294  80E61F            and dh,0x1f
00004297  D0E6              shl dh,1
00004299  B105              mov cl,0x5
0000429B  D3E8              shr ax,cl
0000429D  8AD0              mov dl,al
0000429F  80E23F            and dl,0x3f
000042A2  41                inc cx
000042A3  D3E8              shr ax,cl
000042A5  8AE8              mov ch,al
000042A7  8ACA              mov cl,dl
000042A9  57                push di
000042AA  33D2              xor dx,dx
000042AC  8AC5              mov al,ch
000042AE  E81600            call 0x42c7
000042B1  B03A              mov al,0x3a
000042B3  AA                stosb
000042B4  8AC1              mov al,cl
000042B6  E80E00            call 0x42c7
000042B9  B03A              mov al,0x3a
000042BB  AA                stosb
000042BC  8AC6              mov al,dh
000042BE  E80600            call 0x42c7
000042C1  58                pop ax
000042C2  26B1F3            es mov cl,0xf3
000042C5  A4                movsb
000042C6  C3                ret
000042C7  3C09              cmp al,0x9
000042C9  7705              ja 0x42d0
000042CB  26C60530          mov byte [es:di],0x30
000042CF  47                inc di
000042D0  B47E              mov ah,0x7e
000042D2  1ABFFAC3          sbb bh,[bx-0x3c06]
000042D6  7E7E              jng 0x4356
000042D8  7E7E              jng 0x4358
000042DA  50                push ax
000042DB  06                push es
000042DC  33C0              xor ax,ax
000042DE  8EC0              mov es,ax
000042E0  26A16C04          mov ax,[es:0x46c]
000042E4  263B066C04        cmp ax,[es:0x46c]
000042E9  74F9              jz 0x42e4
000042EB  26C4066C04        les ax,[es:0x46c]
000042F0  2EA3995F          mov [cs:0x5f99],ax
000042F4  06                push es
000042F5  B20C              mov dl,0xc
000042F7  9B5F              wait pop di
000042F9  07                pop es
000042FA  57                push di
000042FB  330633C0          xor ax,[0xc033]
000042FF  8EC0              mov es,ax
00004301  26A16C04          mov ax,[es:0x46c]
00004305  2E2B06995F        sub ax,[cs:0x5f99]
0000430A  07                pop es
0000430B  33D2              xor dx,dx
0000430D  DB5657            fist dword [bp+0x57]
00004310  E872FF            call 0x4285
00004313  41                inc cx
00004314  AC                lodsb
00004315  E8D405            call 0x48ec
00004318  AA                stosb
00004319  E2F9              loop 0x4314
0000431B  3C5E              cmp al,0x5e
0000431D  59                pop cx
0000431E  58                pop ax
0000431F  C3                ret
00004320  7E7E              jng 0x43a0
00004322  0400              add al,0x0
00004324  0820              or [bx+si],ah
00004326  0800              or [bx+si],al
00004328  D2                db 0xd2
00004329  33DB              xor bx,bx
0000432B  1E                push ds
0000432C  BE5755            mov si,0x5557
0000432F  8BEF              mov bp,di
00004331  AC                lodsb
00004332  3C3F              cmp al,0x3f
00004334  7435              jz 0x436b
00004336  3C5E              cmp al,0x5e
00004338  F9                stc
00004339  7557              jnz 0x4392
0000433B  E85C00            call 0x439a
0000433E  7252              jc 0x4392
00004340  B408              mov ah,0x8
00004342  CD21              int 0x21
00004344  3C08              cmp al,0x8
00004346  750F              jnz 0x4357
00004348  3BEF              cmp bp,di
0000434A  74F4              jz 0x4340
0000434C  4F                dec di
0000434D  56                push si
0000434E  BEE75F            mov si,0x5fe7
00004351  E87D00            call 0x43d1
00004354  5E                pop si
00004355  EBE9              jmp short 0x4340
00004357  3C0D              cmp al,0xd
00004359  7505              jnz 0x4360
0000435B  FF66FC            jmp [bp-0x4]
0000435E  EB2E              jmp short 0x438e
00004360  AA                stosb
00004361  56                push si
00004362  BEE55F            mov si,0x5fe5
00004365  E86900            call 0x43d1
00004368  5E                pop si
00004369  EBD5              jmp short 0x4340
0000436B  E82C00            call 0x439a
0000436E  B90000            mov cx,0x0
00004371  80008B            add byte [bx+si],0x8b
00004374  D7                xlatb
00004375  1E                push ds
00004376  AB                stosw
00004377  40                inc ax
00004378  7C5C              jl 0x43d6
0000437A  B43F              mov ah,0x3f
0000437C  CD21              int 0x21
0000437E  03F8              add di,ax
00004380  FF5C75            call far [si+0x75]
00004383  0A7508            or dh,[di+0x8]
00004386  4F                dec di
00004387  FF5C75            call far [si+0x75]
0000438A  0D7501            or ax,0x175
0000438D  4F                dec di
0000438E  33D2              xor dx,dx
00004390  59                pop cx
00004391  F8                clc
00004392  5D                pop bp
00004393  5F                pop di
00004394  BF03B9            mov di,0xb903
00004397  27                daa
00004398  8D36AC3C          lea si,[0x3cac]
0000439C  227405            and dh,[si+0x5]
0000439F  3C27              cmp al,0x27
000043A1  F9                stc
000043A2  7517              jnz 0x43bb
000043A4  8AE0              mov ah,al
000043A6  7504              jnz 0x43ac
000043A8  B000              mov al,0x0
000043AA  103A              adc [bp+si],bh
000043AC  C4740C            les si,[si+0xc]
000043AF  56                push si
000043B0  BEE35F            mov si,0x5fe3
000043B3  8804              mov [si],al
000043B5  E81900            call 0x43d1
000043B8  5E                pop si
000043B9  EBEB              jmp short 0x43a6
000043BB  C3                ret
000043BC  57                push di
000043BD  06                push es
000043BE  0E                push cs
000043BF  07                pop es
000043C0  BFB965            mov di,0x65b9
000043C3  57                push di
000043C4  E894F9            call 0x3d5b
000043C7  33D2              xor dx,dx
000043C9  59                pop cx
000043CA  3CE8              cmp al,0xe8
000043CC  CC                int3
000043CD  F9                stc
000043CE  07                pop es
000043CF  5F                pop di
000043D0  33D2              xor dx,dx
000043D2  33DB              xor bx,bx
000043D4  E8AEFE            call 0x4285
000043D7  E31E              jcxz 0x43f7
000043D9  1E                push ds
000043DA  AB                stosw
000043DB  40                inc ax
000043DC  82                db 0x82
000043DD  5C                pop sp
000043DE  83FBFF            cmp bx,byte -0x1
000043E1  750C              jnz 0x43ef
000043E3  56                push si
000043E4  43                inc bx
000043E5  AC                lodsb
000043E6  B40E              mov ah,0xe
000043E8  CD10              int 0x10
000043EA  E2F9              loop 0x43e5
000043EC  5E                pop si
000043ED  EB08              jmp short 0x43f7
000043EF  52                push dx
000043F0  8BD6              mov dx,si
000043F2  B440              mov ah,0x40
000043F4  CD21              int 0x21
000043F6  03B9278D          add di,[bx+di-0x72d9]
000043FA  361E              ss push ds
000043FC  06                push es
000043FD  1F                pop ds
000043FE  87F7              xchg si,di
00004400  E8CEFF            call 0x43d1
00004403  87F7              xchg si,di
00004405  1F                pop ds
00004406  C3                ret
00004407  92                xchg ax,dx
00004408  8BDA              mov bx,dx
0000440A  F7F1              div cx
0000440C  F7E1              mul cx
0000440E  93                xchg ax,bx
0000440F  F7F1              div cx
00004411  87DA              xchg bx,dx
00004413  C3                ret
00004414  50                push ax
00004415  240F              and al,0xf
00004417  0430              add al,0x30
00004419  3C39              cmp al,0x39
0000441B  7602              jna 0x441f
0000441D  0407              add al,0x7
0000441F  AA                stosb
00004420  57                push di
00004421  51                push cx
00004422  51                push cx
00004423  03F3              add si,bx
00004425  AA                stosb
00004426  5F                pop di
00004427  01B0367C          add [bx+si+0x7c36],si
0000442B  5C                pop sp
0000442C  7E5C              jng 0x448a
0000442E  06                push es
0000442F  7C5C              jl 0x448d
00004431  805C067C          sbb byte [si+0x6],0x7c
00004435  5C                pop sp
00004436  7E5C              jng 0x4494
00004438  33DB              xor bx,bx
0000443A  1E                push ds
0000443B  BE028B            mov si,0x8b02
0000443E  DF8CC28B          fisttp word [si-0x743e]
00004442  CE                into
00004443  8BF1              mov si,cx
00004445  0E                push cs
00004446  07                pop es
00004447  BF6561            mov di,0x6165
0000444A  52                push dx
0000444B  BA8000            mov dx,0x80
0000444E  E89CF8            call 0x3ced
00004451  5A                pop dx
00004452  8BFB              mov di,bx
00004454  8BCE              mov cx,si
00004456  BE6561            mov si,0x6165
00004459  2636B8698E        ss mov ax,0x8e69
0000445E  C2740B            ret 0xb74
00004461  1E                push ds
00004462  0E                push cs
00004463  1F                pop ds
00004464  FB                sti
00004465  CB                retf
00004466  FB                sti
00004467  1F                pop ds
00004468  7205              jc 0x446f
0000446A  EBD7              jmp short 0x4443
0000446C  EB6A              jmp short 0x44d8
0000446E  90                nop
0000446F  53                push bx
00004470  52                push dx
00004471  007411            add [si+0x11],dh
00004474  8B5F87            mov bx,[bx-0x79]
00004477  2F                das
00004478  8C268B55          mov [0x558b],fs
0000447C  05268B            add ax,0x8b26
0000447F  5D                pop bp
00004480  8958E1            mov [bx+si-0x1f],bx
00004483  3EF1              ds int1
00004485  61                popa
00004486  E83B07            call 0x4bc4
00004489  E835F8            call 0x3cc1
0000448C  0E                push cs
0000448D  1F                pop ds
0000448E  BEA866            mov si,0x66a8
00004491  E820F8            call 0x3cb4
00004494  BE6561            mov si,0x6165
00004497  E81AF8            call 0x3cb4
0000449A  E81EFA            call 0x3ebb
0000449D  3DE823            cmp ax,0x23e8
000044A0  E933E8            jmp 0x2cd6
000044A3  06                push es
000044A4  F8                clc
000044A5  BEAC66            mov si,0x66ac
000044A8  E809F8            call 0x3cb4
000044AB  80F906            cmp cl,0x6
000044AE  7437              jz 0x44e7
000044B0  BEBC66            mov si,0x66bc
000044B3  8BC2              mov ax,dx
000044B5  80F90D            cmp cl,0xd
000044B8  83FBE8            cmp bx,byte -0x18
000044BB  B9F7E8            mov cx,0xe8f7
000044BE  F4                hlt
000044BF  F7                db 0xf7
000044C0  8BC3              mov ax,bx
000044C2  E8B1F7            call 0x3c76
000044C5  EB0B              jmp short 0x44d2
000044C7  E83B00            call 0x4505
000044CA  E8E7F7            call 0x3cb4
000044CD  8BC3              mov ax,bx
000044CF  E83300            call 0x4505
000044D2  E8E6F9            call 0x3ebb
000044D5  5A                pop dx
000044D6  5B                pop bx
000044D7  F9                stc
000044D8  8BFB              mov di,bx
000044DA  8EC2              mov es,dx
000044DC  BABF03            mov dx,0x3bf
000044DF  B92706            mov cx,0x627
000044E2  7C5C              jl 0x4540
000044E4  7E5C              jng 0x4542
000044E6  C3                ret
000044E7  BFC166            mov di,0x66c1
000044EA  E8D7F7            call 0x3cc4
000044ED  07                pop es
000044EE  06                push es
000044EF  2E8B3EF161        mov di,[cs:0x61f1]
000044F4  E81C04            call 0x4913
000044F7  EBD9              jmp short 0x44d2
000044F9  268A0D            mov cl,[es:di]
000044FC  8AE9              mov ch,cl
000044FE  80E10F            and cl,0xf
00004501  80E530            and ch,0x30
00004504  C3                ret
00004505  80FD23            cmp ch,0x23
00004508  E9E887            jmp 0xccf3
0000450B  4E                dec si
0000450C  04E9              add al,0xe9
0000450E  59                pop cx
0000450F  04E7              add al,0xe7
00004511  00F3              add bl,dh
00004513  AA                stosb
00004514  1400              adc al,0x0
00004516  B001              mov al,0x1
00004518  0133              add [bp+di],si
0000451A  DB5657            fist dword [bp+0x57]
0000451D  1E                push ds
0000451E  06                push es
0000451F  8CC8              mov ax,cs
00004521  8ED8              mov ds,ax
00004523  8EC0              mov es,ax
00004525  BF8E67            mov di,0x678e
00004528  B95000            mov cx,0x50
0000452B  E840F9            call 0x3e6e
0000452E  E82DFC            call 0x415e
00004531  03F9              add di,cx
00004533  81FF8E67          cmp di,0x678e
00004537  7616              jna 0x454f
00004539  803D2E            cmp byte [di],0x2e
0000453C  7503              jnz 0x4541
0000453E  B1F3              mov cl,0xf3
00004540  A4                movsb
00004541  8A45FF            mov al,[di-0x1]
00004544  3C5C              cmp al,0x5c
00004546  E2F4              loop 0x453c
00004548  C6                db 0xc6
00004549  3A41EB            cmp al,[bx+di-0x15]
0000454C  4F                dec di
0000454D  EBE4              jmp short 0x4533
0000454F  8BF7              mov si,di
00004551  BFDC62            mov di,0x62dc
00004554  0520BE            add ax,0xbe20
00004557  FB                sti
00004558  CB                retf
00004559  FB                sti
0000455A  06                push es
0000455B  A840              test al,0x40
0000455D  E462              in al,0x62
0000455F  0007              add [bx],al
00004561  1F                pop ds
00004562  5F                pop di
00004563  5E                pop si
00004564  B92757            mov cx,0x5727
00004567  06                push es
00004568  268B4D07          mov cx,[es:di+0x7]
0000456C  26C47D01          les di,[es:di+0x1]
00004570  06                push es
00004571  A840              test al,0x40
00004573  F1                int1
00004574  6201              bound ax,[bx+di]
00004576  06                push es
00004577  A840              test al,0x40
00004579  F06201            lock bound ax,[bx+di]
0000457C  E88051            call 0x96ff
0000457F  2004              and [si],al
00004581  4C                dec sp
00004582  DE10              ficom word [bx+si]
00004584  1E                push ds
00004585  10E9              adc cl,ch
00004587  847436            test [si+0x36],dh
0000458A  7472              jz 0x45fe
0000458C  3A6874            cmp ch,[bx+si+0x74]
0000458F  90                nop
00004590  E562              in ax,0x62
00004592  8BFE              mov di,si
00004594  D2E8              shr al,cl
00004596  0200              add al,[bx+si]
00004598  69007213          imul ax,[bx+si],word 0x1372
0000459C  3C5D              cmp al,0x5d
0000459E  740F              jz 0x45af
000045A0  133C              adc di,[si]
000045A2  200B              and [bp+di],cl
000045A4  E2F5              loop 0x459b
000045A6  EB07              jmp short 0x45af
000045A8  DB5657            fist dword [bp+0x57]
000045AB  E659              out 0x59,al
000045AD  33E8              xor bp,ax
000045AF  33C0              xor ax,ax
000045B1  AA                stosb
000045B2  D14907            ror word [bx+di+0x7],1
000045B5  35FCF4            xor ax,0xf4fc
000045B8  C6                db 0xc6
000045B9  3AE8              cmp ch,al
000045BB  6F                outsw
000045BC  FB                sti
000045BD  BEFBCB            mov si,0xcbfb
000045C0  FB                sti
000045C1  06                push es
000045C2  A8B0              test al,0xb0
000045C4  0D26C4            or ax,0xc426
000045C7  7D01              jnl 0x45ca
000045C9  06                push es
000045CA  007506            add [di+0x6],dh
000045CD  26C47D01          les di,[es:di+0x1]
000045D1  06                push es
000045D2  A857              test al,0x57
000045D4  06                push es
000045D5  268B4D07          mov cx,[es:di+0x7]
000045D9  E2F5              loop 0x45d0
000045DB  EB0A              jmp short 0x45e7
000045DD  DB5657            fist dword [bp+0x57]
000045E0  06                push es
000045E1  57                push di
000045E2  06                push es
000045E3  268B4D00          mov cx,[es:di+0x0]
000045E7  A840              test al,0x40
000045E9  F00106A875        lock add [0x75a8],ax
000045EE  04AA              add al,0xaa
000045F0  49                dec cx
000045F1  E303              jcxz 0x45f6
000045F3  E97CFF            jmp 0x4572
000045F6  33C0              xor ax,ax
000045F8  AA                stosb
000045F9  07                pop es
000045FA  5F                pop di
000045FB  262B4D07          sub cx,[es:di+0x7]
000045FF  F7D9              neg cx
00004601  C3                ret
00004602  005152            add [bx+di+0x52],dl
00004605  1E                push ds
00004606  BAE563            mov dx,0x63e5
00004609  0E                push cs
0000460A  1F                pop ds
0000460B  B90100            mov cx,0x1
0000460E  0080008B          add [bx+si-0x7500],al
00004612  7209              jc 0x461d
00004614  3D0100            cmp ax,0x1
00004617  7204              jc 0x461d
00004619  2EA0E563          mov al,[cs:0x63e5]
0000461D  1F                pop ds
0000461E  5A                pop dx
0000461F  59                pop cx
00004620  02E8              add ch,al
00004622  6B0573            imul ax,[di],byte +0x73
00004625  66002B            o32 add [bp+di],ch
00004628  FB                sti
00004629  F9                stc
0000462A  7413              jz 0x463f
0000462C  59                pop cx
0000462D  7405              jz 0x4634
0000462F  E8A105            call 0x4bd3
00004632  EBC3              jmp short 0x45f7
00004634  53                push bx
00004635  52                push dx
00004636  268A15            mov dl,[es:di]
00004639  8AF2              mov dh,dl
0000463B  D080E28A          rol byte [bx+si-0x751e],1
0000463F  041E              add al,0x1e
00004641  8EDB              mov ds,bx
00004643  12AC2E80          adc ch,[si-0x7fd2]
00004647  3E0DB1F3          ds or ax,0xf3b1
0000464B  A4                movsb
0000464C  0980FE05          or [bx+si+0x5fe],ax
00004650  742C              jz 0x467e
00004652  5A                pop dx
00004653  5B                pop bx
00004654  EBD9              jmp short 0x462f
00004656  80FE07            cmp dh,0x7
00004659  7565              jnz 0x46c0
0000465B  51                push cx
0000465C  57                push di
0000465D  06                push es
0000465E  55                push bp
0000465F  F3AA              rep stosb
00004661  5F                pop di
00004662  FC                cld
00004663  5D                pop bp
00004664  F3AA              rep stosb
00004666  5F                pop di
00004667  FA                cli
00004668  5D                pop bp
00004669  26FF5D01          call far [es:di+0x1]
0000466D  367C5C            ss jl 0x46cc
00004670  02EB              add ch,bl
00004672  B18F              mov cl,0x8f
00004674  0000              add [bx+si],al
00004676  005D07            add [di+0x7],bl
00004679  5F                pop di
0000467A  59                pop cx
0000467B  5A                pop dx
0000467C  5B                pop bx
0000467D  C3                ret
0000467E  B1F3              mov cl,0xf3
00004680  A4                movsb
00004681  052E80            add ax,0x802e
00004684  3E014E8B          add [ds:bp-0x75],cx
00004688  D6                salc
00004689  B8003D            mov ax,0x3d00
0000468C  CD21              int 0x21
0000468E  8BD8              mov bx,ax
00004690  B8053F            mov ax,0x3f05
00004693  7435              jz 0x46ca
00004695  51                push cx
00004696  E876FE            call 0x450f
00004699  B43E              mov ah,0x3e
0000469B  CD21              int 0x21
0000469D  59                pop cx
0000469E  56                push si
0000469F  1E                push ds
000046A0  40                inc ax
000046A1  E462              in al,0x62
000046A3  C57501            lds si,[di+0x1]
000046A6  2EC4BE02EB        les di,[cs:bp-0x14fe]
000046AB  E864FD            call 0x4412
000046AE  07                pop es
000046AF  5F                pop di
000046B0  1F                pop ds
000046B1  5E                pop si
000046B2  B80800            mov ax,0x8
000046B5  7230              jc 0x46e7
000046B7  51                push cx
000046B8  E8AAFA            call 0x4165
000046BB  03F1              add si,cx
000046BD  59                pop cx
000046BE  EBBB              jmp short 0x467b
000046C0  80FE08            cmp dh,0x8
000046C3  51                push cx
000046C4  52                push dx
000046C5  57                push di
000046C6  FE01              inc byte [bx+di]
000046C8  7512              jnz 0x46dc
000046CA  84C0              test al,al
000046CC  BB0100            mov bx,0x1
000046CF  7581              jnz 0x4652
000046D1  80FE08            cmp dh,0x8
000046D4  7503              jnz 0x46d9
000046D6  BB0000            mov bx,0x0
000046D9  E9B000            jmp 0x478c
000046DC  2E803E0AB1F3      cmp byte [cs:0xb10a],0xf3
000046E2  A4                movsb
000046E3  06                push es
000046E4  B80100            mov ax,0x1
000046E7  F9                stc
000046E8  EB91              jmp short 0x467b
000046EA  80FE04            cmp dh,0x4
000046ED  7533              jnz 0x4722
000046EF  51                push cx
000046F0  06                push es
000046F1  57                push di
000046F2  6200              bound ax,[bx+si]
000046F4  07                pop es
000046F5  1F                pop ds
000046F6  5F                pop di
000046F7  5E                pop si
000046F8  B927E3            mov cx,0xe327
000046FB  1580F8            adc ax,0xf880
000046FE  5D                pop bp
000046FF  5F                pop di
00004700  BF80E8            mov di,0xe880
00004703  8E04              mov es,[si]
00004705  10ACAC3C          adc [si+0x3cac],ch
00004709  22F9              and bh,cl
0000470B  7517              jnz 0x4724
0000470D  E659              out 0x59,al
0000470F  33D2              xor dx,dx
00004711  06                push es
00004712  0E                push cs
00004713  07                pop es
00004714  EB05              jmp short 0x471b
00004716  8BD1              mov dx,cx
00004718  E8BBF5            call 0x3cd6
0000471B  5F                pop di
0000471C  07                pop es
0000471D  59                pop cx
0000471E  F8                clc
0000471F  E959FF            jmp 0x467b
00004722  80FE06            cmp dh,0x6
00004725  7543              jnz 0x476a
00004727  7E7E              jng 0x47a7
00004729  0400              add al,0x0
0000472B  1E                push ds
0000472C  06                push es
0000472D  5F                pop di
0000472E  8804              mov [si],al
00004730  E8198E            call 0xd54c
00004733  67BAFF8B          mov dx,0x8bff
00004737  F1                int1
00004738  0E                push cs
00004739  F5                cmc
0000473A  07                pop es
0000473B  5F                pop di
0000473C  26C57505          lds si,[es:di+0x5]
00004740  04E8              add al,0xe8
00004742  198E6782          sbb [bp-0x7d99],cx
00004746  5C                pop sp
00004747  E92106            jmp 0x4d6b
0000474A  0DE8DE            or ax,0xdee8
0000474D  F9                stc
0000474E  7410              jz 0x4760
00004750  E812FA            call 0x4165
00004753  698D0C3BEDBE      imul cx,[di+0x3b0c],word 0xbeed
00004759  FB                sti
0000475A  CB                retf
0000475B  FB                sti
0000475C  5A                pop dx
0000475D  59                pop cx
0000475E  EB37              jmp short 0x4797
00004760  BEFBCB            mov si,0xcbfb
00004763  FB                sti
00004764  5A                pop dx
00004765  59                pop cx
00004766  8BD8              mov bx,ax
00004768  EB39              jmp short 0x47a3
0000476A  80FE02            cmp dh,0x2
0000476D  740B              jz 0x477a
0000476F  80FE03            cmp dh,0x3
00004772  7411              jz 0x4785
00004774  81F900E9          cmp cx,0xe900
00004778  6D                insw
00004779  FF                db 0xff
0000477A  E81402            call 0x4991
0000477D  730D              jnc 0x478c
0000477F  B80300            mov ax,0x3
00004782  E962FF            jmp 0x46e7
00004785  E841F9            call 0x40c9
00004788  700D              jo 0x4797
0000478A  72F3              jc 0x477f
0000478C  F6C280            test dl,0x80
0000478F  7412              jz 0x47a3
00004791  263B5D05          cmp bx,[es:di+0x5]
00004795  7306              jnc 0x479d
00004797  B80200            mov ax,0x2
0000479A  E94AFF            jmp 0x46e7
0000479D  263B5D07          cmp bx,[es:di+0x7]
000047A1  77F4              ja 0x4797
000047A3  80E230            and dl,0x30
000047A6  56                push si
000047A7  1E                push ds
000047A8  62                db 0x62
000047A9  C57501            lds si,[di+0x1]
000047AC  881C              mov [si],bl
000047AE  80FA10            cmp dl,0x10
000047B1  7503              jnz 0x47b6
000047B3  887C01            mov [si+0x1],bh
000047B6  1F                pop ds
000047B7  5E                pop si
000047B8  F8                clc
000047B9  E9BFFE            jmp 0x467b
000047BC  E8A101            call 0x4960
000047BF  7607              jna 0x47c8
000047C1  3D0900            cmp ax,0x9
000047C4  7703              ja 0x47c9
000047C6  0BF6              or si,si
000047C8  C3                ret
000047C9  4E                dec si
000047CA  F9                stc
000047CB  C3                ret
000047CC  50                push ax
000047CD  B81312            mov ax,0x1213
000047D0  CD2F              int 0x2f
000047D2  83C402            add sp,byte +0x2
000047D5  C3                ret
000047D6  C9                leave
000047D7  383C              cmp [si],bh
000047D9  740C              jz 0x47e7
000047DB  00B0D6B4          add [bx+si-0x4b2a],dh
000047DF  40                inc ax
000047E0  07                pop es
000047E1  87FE              xchg di,si
000047E3  C3                ret
000047E4  0100              add [bx+si],ax
000047E6  4A                dec dx
000047E7  61                popa
000047E8  6E                outsb
000047E9  E85F04            call 0x4c4b
000047EC  46                inc si
000047ED  656200            bound ax,[gs:bx+si]
000047F0  0200              add al,[bx+si]
000047F2  4D                dec bp
000047F3  61                popa
000047F4  7205              jc 0x47fb
000047F6  AA                stosb
000047F7  E241              loop 0x483a
000047F9  7072              jo 0x486d
000047FB  0400              add al,0x0
000047FD  54                push sp
000047FE  4D                dec bp
000047FF  6461              fs popa
00004801  7900              jns 0x4803
00004803  054A75            add ax,0x754a
00004806  6E                outsb
00004807  0007              add [bx],al
00004809  054A75            add ax,0x754a
0000480C  6C                insb
0000480D  0008              add [bx+si],cl
0000480F  207365            and [bp+di+0x65],dh
00004812  670009            add [ecx],cl
00004815  6E                outsb
00004816  206170            and [bx+di+0x70],ah
00004819  74E9              jz 0x4804
0000481B  46                inc si
0000481C  4F                dec di
0000481D  637400            arpl [si+0x0],si
00004820  0B20              or sp,[bx+si]
00004822  7365              jnc 0x4889
00004824  7674              jna 0x489a
00004826  0C00              or al,0x0
00004828  44                inc sp
00004829  6563060053        arpl [gs:0x5300],ax
0000482E  61                popa
0000482F  740D              jz 0x483e
00004831  0A4944            or cl,[bx+di+0x44]
00004834  0000              add [bx+si],al
00004836  203A              and [bp+si],bh
00004838  2007              and [bx],al
0000483A  0001              add [bx+di],al
0000483C  B220              mov dl,0x20
0000483E  1200              adc al,[bx+si]
00004840  B043              mov al,0x43
00004842  0001              add [bx+di],al
00004844  B220              mov dl,0x20
00004846  1200              adc al,[bx+si]
00004848  3D0020            cmp ax,0x2000
0000484B  52                push dx
0000484C  61                popa
0000484D  6E                outsb
0000484E  6D                insw
0000484F  61                popa
00004850  696C206465        imul bp,[si+0x20],word 0x6564
00004855  63696D            arpl [bx+di+0x6d],bp
00004858  6E                outsb
00004859  7465              jz 0x48c0
0000485B  006961            add [bx+di+0x61],ch
0000485E  627865            bound di,[bx+si+0x65]
00004861  006963            add [bx+di+0x63],ch
00004864  686172            push word 0x7261
00004867  61                popa
00004868  0000              add [bx+si],al
0000486A  0000              add [bx+si],al
0000486C  0000              add [bx+si],al
0000486E  0000              add [bx+si],al
00004870  0000              add [bx+si],al
00004872  0000              add [bx+si],al
00004874  0000              add [bx+si],al
00004876  0000              add [bx+si],al
00004878  0000              add [bx+si],al
0000487A  0000              add [bx+si],al
0000487C  0000              add [bx+si],al
0000487E  0000              add [bx+si],al
00004880  0002              add [bp+si],al
00004882  0000              add [bx+si],al
00004884  0000              add [bx+si],al
00004886  0000              add [bx+si],al
00004888  0200              add al,[bx+si]
0000488A  0002              add [bp+si],al
0000488C  0000              add [bx+si],al
0000488E  0000              add [bx+si],al
00004890  0000              add [bx+si],al
00004892  0000              add [bx+si],al
00004894  0002              add [bp+si],al
00004896  0000              add [bx+si],al
00004898  0000              add [bx+si],al
0000489A  0000              add [bx+si],al
0000489C  0000              add [bx+si],al
0000489E  0000              add [bx+si],al
000048A0  0000              add [bx+si],al
000048A2  0000              add [bx+si],al
000048A4  0000              add [bx+si],al
000048A6  0000              add [bx+si],al
000048A8  0002              add [bp+si],al
000048AA  0200              add al,[bx+si]
000048AC  0000              add [bx+si],al
000048AE  0200              add al,[bx+si]
000048B0  0000              add [bx+si],al
000048B2  0000              add [bx+si],al
000048B4  0200              add al,[bx+si]
000048B6  0000              add [bx+si],al
000048B8  0000              add [bx+si],al
000048BA  0200              add al,[bx+si]
000048BC  0000              add [bx+si],al
000048BE  0200              add al,[bx+si]
000048C0  0000              add [bx+si],al
000048C2  0000              add [bx+si],al
000048C4  0002              add [bp+si],al
000048C6  0000              add [bx+si],al
000048C8  0000              add [bx+si],al
000048CA  0000              add [bx+si],al
000048CC  0200              add al,[bx+si]
000048CE  0000              add [bx+si],al
000048D0  0000              add [bx+si],al
000048D2  0000              add [bx+si],al
000048D4  0000              add [bx+si],al
000048D6  0000              add [bx+si],al
000048D8  0000              add [bx+si],al
000048DA  0000              add [bx+si],al
000048DC  0002              add [bp+si],al
000048DE  0000              add [bx+si],al
000048E0  0000              add [bx+si],al
000048E2  0000              add [bx+si],al
000048E4  0202              add al,[bp+si]
000048E6  0000              add [bx+si],al
000048E8  0000              add [bx+si],al
000048EA  0000              add [bx+si],al
000048EC  0000              add [bx+si],al
000048EE  0000              add [bx+si],al
000048F0  0000              add [bx+si],al
000048F2  0000              add [bx+si],al
000048F4  0000              add [bx+si],al
000048F6  0000              add [bx+si],al
000048F8  0000              add [bx+si],al
000048FA  0000              add [bx+si],al
000048FC  0000              add [bx+si],al
000048FE  0000              add [bx+si],al
00004900  0000              add [bx+si],al
00004902  0000              add [bx+si],al
00004904  0000              add [bx+si],al
00004906  0000              add [bx+si],al
00004908  0200              add al,[bx+si]
0000490A  0002              add [bp+si],al
0000490C  0000              add [bx+si],al
0000490E  0002              add [bp+si],al
00004910  0002              add [bp+si],al
00004912  0000              add [bx+si],al
00004914  0000              add [bx+si],al
00004916  0000              add [bx+si],al
00004918  0000              add [bx+si],al
0000491A  0000              add [bx+si],al
0000491C  0000              add [bx+si],al
0000491E  0000              add [bx+si],al
00004920  0000              add [bx+si],al
00004922  0000              add [bx+si],al
00004924  0000              add [bx+si],al
00004926  0000              add [bx+si],al
00004928  0000              add [bx+si],al
0000492A  0000              add [bx+si],al
0000492C  0000              add [bx+si],al
0000492E  0000              add [bx+si],al
00004930  0000              add [bx+si],al
00004932  0000              add [bx+si],al
00004934  0000              add [bx+si],al
00004936  0000              add [bx+si],al
00004938  0000              add [bx+si],al
0000493A  0000              add [bx+si],al
0000493C  0002              add [bp+si],al
0000493E  0000              add [bx+si],al
00004940  0000              add [bx+si],al
00004942  0200              add al,[bx+si]
00004944  0000              add [bx+si],al
00004946  0002              add [bp+si],al
00004948  0200              add al,[bx+si]
0000494A  0002              add [bp+si],al
0000494C  0000              add [bx+si],al
0000494E  0000              add [bx+si],al
00004950  0000              add [bx+si],al
00004952  0000              add [bx+si],al
00004954  0000              add [bx+si],al
00004956  0000              add [bx+si],al
00004958  0200              add al,[bx+si]
0000495A  0000              add [bx+si],al
0000495C  0000              add [bx+si],al
0000495E  0002              add [bp+si],al
00004960  0000              add [bx+si],al
00004962  0002              add [bp+si],al
00004964  0000              add [bx+si],al
00004966  0000              add [bx+si],al
00004968  0000              add [bx+si],al
0000496A  0000              add [bx+si],al
0000496C  0000              add [bx+si],al
0000496E  0000              add [bx+si],al
00004970  0000              add [bx+si],al
00004972  0000              add [bx+si],al
00004974  0000              add [bx+si],al
00004976  0002              add [bp+si],al
00004978  0000              add [bx+si],al
0000497A  0000              add [bx+si],al
0000497C  0000              add [bx+si],al
0000497E  0000              add [bx+si],al
00004980  0000              add [bx+si],al
00004982  0000              add [bx+si],al
00004984  0200              add al,[bx+si]
00004986  0000              add [bx+si],al
00004988  0000              add [bx+si],al
0000498A  0000              add [bx+si],al
0000498C  0000              add [bx+si],al
0000498E  0000              add [bx+si],al
00004990  0000              add [bx+si],al
00004992  0000              add [bx+si],al
00004994  0000              add [bx+si],al
00004996  0000              add [bx+si],al
00004998  0000              add [bx+si],al
0000499A  0000              add [bx+si],al
0000499C  0000              add [bx+si],al
0000499E  0000              add [bx+si],al
000049A0  0000              add [bx+si],al
000049A2  0002              add [bp+si],al
000049A4  0000              add [bx+si],al
000049A6  0000              add [bx+si],al
000049A8  0000              add [bx+si],al
000049AA  0000              add [bx+si],al
000049AC  0000              add [bx+si],al
000049AE  0000              add [bx+si],al
000049B0  0000              add [bx+si],al
000049B2  0000              add [bx+si],al
000049B4  0000              add [bx+si],al
000049B6  0000              add [bx+si],al
000049B8  0000              add [bx+si],al
000049BA  0000              add [bx+si],al
000049BC  0000              add [bx+si],al
000049BE  0000              add [bx+si],al
000049C0  0000              add [bx+si],al
000049C2  0200              add al,[bx+si]
000049C4  0000              add [bx+si],al
000049C6  0002              add [bp+si],al
000049C8  0000              add [bx+si],al
000049CA  0000              add [bx+si],al
000049CC  0000              add [bx+si],al
000049CE  0000              add [bx+si],al
000049D0  0200              add al,[bx+si]
000049D2  0000              add [bx+si],al
000049D4  0000              add [bx+si],al
000049D6  0000              add [bx+si],al
000049D8  0000              add [bx+si],al
000049DA  0000              add [bx+si],al
000049DC  0000              add [bx+si],al
000049DE  0000              add [bx+si],al
000049E0  0200              add al,[bx+si]
000049E2  0000              add [bx+si],al
000049E4  0000              add [bx+si],al
000049E6  0000              add [bx+si],al
000049E8  0000              add [bx+si],al
000049EA  0000              add [bx+si],al
000049EC  0000              add [bx+si],al
000049EE  0000              add [bx+si],al
000049F0  0000              add [bx+si],al
000049F2  0000              add [bx+si],al
000049F4  0000              add [bx+si],al
000049F6  0000              add [bx+si],al
000049F8  0200              add al,[bx+si]
000049FA  0000              add [bx+si],al
000049FC  0000              add [bx+si],al
000049FE  0000              add [bx+si],al
00004A00  0000              add [bx+si],al
00004A02  0000              add [bx+si],al
00004A04  0000              add [bx+si],al
00004A06  0000              add [bx+si],al
00004A08  0200              add al,[bx+si]
00004A0A  0000              add [bx+si],al
00004A0C  0000              add [bx+si],al
00004A0E  0000              add [bx+si],al
00004A10  0000              add [bx+si],al
00004A12  0000              add [bx+si],al
00004A14  0000              add [bx+si],al
00004A16  0000              add [bx+si],al
00004A18  0000              add [bx+si],al
00004A1A  0002              add [bp+si],al
00004A1C  0000              add [bx+si],al
00004A1E  0000              add [bx+si],al
00004A20  0202              add al,[bp+si]
00004A22  0202              add al,[bp+si]
00004A24  0202              add al,[bp+si]
00004A26  0202              add al,[bp+si]
00004A28  0202              add al,[bp+si]
00004A2A  0202              add al,[bp+si]
00004A2C  0202              add al,[bp+si]
00004A2E  0202              add al,[bp+si]
00004A30  0202              add al,[bp+si]
00004A32  0202              add al,[bp+si]
00004A34  0202              add al,[bp+si]
00004A36  0202              add al,[bp+si]
00004A38  0202              add al,[bp+si]
00004A3A  0202              add al,[bp+si]
00004A3C  0202              add al,[bp+si]
00004A3E  0202              add al,[bp+si]
00004A40  0202              add al,[bp+si]
00004A42  0202              add al,[bp+si]
00004A44  0202              add al,[bp+si]
00004A46  0202              add al,[bp+si]
00004A48  0202              add al,[bp+si]
00004A4A  0202              add al,[bp+si]
00004A4C  0202              add al,[bp+si]
00004A4E  0202              add al,[bp+si]
00004A50  0202              add al,[bp+si]
00004A52  0202              add al,[bp+si]
00004A54  0202              add al,[bp+si]
00004A56  0202              add al,[bp+si]
00004A58  0202              add al,[bp+si]
00004A5A  0202              add al,[bp+si]
00004A5C  0202              add al,[bp+si]
00004A5E  0202              add al,[bp+si]
00004A60  0202              add al,[bp+si]
00004A62  0202              add al,[bp+si]
00004A64  0202              add al,[bp+si]
00004A66  0202              add al,[bp+si]
00004A68  0202              add al,[bp+si]
00004A6A  0202              add al,[bp+si]
00004A6C  0202              add al,[bp+si]
00004A6E  0202              add al,[bp+si]
00004A70  0202              add al,[bp+si]
00004A72  0202              add al,[bp+si]
00004A74  0202              add al,[bp+si]
00004A76  0202              add al,[bp+si]
00004A78  0202              add al,[bp+si]
00004A7A  0202              add al,[bp+si]
00004A7C  0202              add al,[bp+si]
00004A7E  0202              add al,[bp+si]
00004A80  0202              add al,[bp+si]
00004A82  0202              add al,[bp+si]
00004A84  0202              add al,[bp+si]
00004A86  0202              add al,[bp+si]
00004A88  0202              add al,[bp+si]
00004A8A  0202              add al,[bp+si]
00004A8C  0202              add al,[bp+si]
00004A8E  0202              add al,[bp+si]
00004A90  0202              add al,[bp+si]
00004A92  0202              add al,[bp+si]
00004A94  0202              add al,[bp+si]
00004A96  0202              add al,[bp+si]
00004A98  0202              add al,[bp+si]
00004A9A  0202              add al,[bp+si]
00004A9C  0202              add al,[bp+si]
00004A9E  0202              add al,[bp+si]
00004AA0  0202              add al,[bp+si]
00004AA2  0202              add al,[bp+si]
00004AA4  0202              add al,[bp+si]
00004AA6  0202              add al,[bp+si]
00004AA8  0202              add al,[bp+si]
00004AAA  0202              add al,[bp+si]
00004AAC  0202              add al,[bp+si]
00004AAE  0202              add al,[bp+si]
00004AB0  0202              add al,[bp+si]
00004AB2  0202              add al,[bp+si]
00004AB4  0202              add al,[bp+si]
00004AB6  0202              add al,[bp+si]
00004AB8  0202              add al,[bp+si]
00004ABA  0202              add al,[bp+si]
00004ABC  0202              add al,[bp+si]
00004ABE  0202              add al,[bp+si]
00004AC0  0202              add al,[bp+si]
00004AC2  0202              add al,[bp+si]
00004AC4  0202              add al,[bp+si]
00004AC6  0202              add al,[bp+si]
00004AC8  0202              add al,[bp+si]
00004ACA  0202              add al,[bp+si]
00004ACC  0202              add al,[bp+si]
00004ACE  0202              add al,[bp+si]
00004AD0  0202              add al,[bp+si]
00004AD2  0202              add al,[bp+si]
00004AD4  0202              add al,[bp+si]
00004AD6  0202              add al,[bp+si]
00004AD8  0202              add al,[bp+si]
00004ADA  0202              add al,[bp+si]
00004ADC  0202              add al,[bp+si]
00004ADE  0202              add al,[bp+si]
00004AE0  0202              add al,[bp+si]
00004AE2  0202              add al,[bp+si]
00004AE4  0202              add al,[bp+si]
00004AE6  0202              add al,[bp+si]
00004AE8  0202              add al,[bp+si]
00004AEA  0202              add al,[bp+si]
00004AEC  0202              add al,[bp+si]
00004AEE  0202              add al,[bp+si]
00004AF0  0202              add al,[bp+si]
00004AF2  0202              add al,[bp+si]
00004AF4  0202              add al,[bp+si]
00004AF6  0202              add al,[bp+si]
00004AF8  0202              add al,[bp+si]
00004AFA  0202              add al,[bp+si]
00004AFC  0202              add al,[bp+si]
00004AFE  0202              add al,[bp+si]
00004B00  0202              add al,[bp+si]
00004B02  0202              add al,[bp+si]
00004B04  0202              add al,[bp+si]
00004B06  0202              add al,[bp+si]
00004B08  0202              add al,[bp+si]
00004B0A  0202              add al,[bp+si]
00004B0C  0202              add al,[bp+si]
00004B0E  0202              add al,[bp+si]
00004B10  0202              add al,[bp+si]
00004B12  0202              add al,[bp+si]
00004B14  0202              add al,[bp+si]
00004B16  0202              add al,[bp+si]
00004B18  0202              add al,[bp+si]
00004B1A  0202              add al,[bp+si]
00004B1C  0202              add al,[bp+si]
00004B1E  0202              add al,[bp+si]
00004B20  0202              add al,[bp+si]
00004B22  0202              add al,[bp+si]
00004B24  0202              add al,[bp+si]
00004B26  0202              add al,[bp+si]
00004B28  0202              add al,[bp+si]
00004B2A  0202              add al,[bp+si]
00004B2C  0202              add al,[bp+si]
00004B2E  0202              add al,[bp+si]
00004B30  0202              add al,[bp+si]
00004B32  0202              add al,[bp+si]
00004B34  0202              add al,[bp+si]
00004B36  0202              add al,[bp+si]
00004B38  0202              add al,[bp+si]
00004B3A  0202              add al,[bp+si]
00004B3C  0202              add al,[bp+si]
00004B3E  0202              add al,[bp+si]
00004B40  0202              add al,[bp+si]
00004B42  0202              add al,[bp+si]
00004B44  0202              add al,[bp+si]
00004B46  0202              add al,[bp+si]
00004B48  0202              add al,[bp+si]
00004B4A  0202              add al,[bp+si]
00004B4C  0202              add al,[bp+si]
00004B4E  0202              add al,[bp+si]
00004B50  0202              add al,[bp+si]
00004B52  0202              add al,[bp+si]
00004B54  0202              add al,[bp+si]
00004B56  0202              add al,[bp+si]
00004B58  0202              add al,[bp+si]
00004B5A  0202              add al,[bp+si]
00004B5C  0202              add al,[bp+si]
00004B5E  0202              add al,[bp+si]
00004B60  0202              add al,[bp+si]
00004B62  0202              add al,[bp+si]
00004B64  0202              add al,[bp+si]
00004B66  0202              add al,[bp+si]
00004B68  0202              add al,[bp+si]
00004B6A  0202              add al,[bp+si]
00004B6C  0202              add al,[bp+si]
00004B6E  0202              add al,[bp+si]
00004B70  0202              add al,[bp+si]
00004B72  0202              add al,[bp+si]
00004B74  0202              add al,[bp+si]
00004B76  0202              add al,[bp+si]
00004B78  0202              add al,[bp+si]
00004B7A  0202              add al,[bp+si]
00004B7C  0202              add al,[bp+si]
00004B7E  0202              add al,[bp+si]
00004B80  0202              add al,[bp+si]
00004B82  0202              add al,[bp+si]
00004B84  0202              add al,[bp+si]
00004B86  0202              add al,[bp+si]
00004B88  0202              add al,[bp+si]
00004B8A  0202              add al,[bp+si]
00004B8C  0202              add al,[bp+si]
00004B8E  0202              add al,[bp+si]
00004B90  0202              add al,[bp+si]
00004B92  0202              add al,[bp+si]
00004B94  0202              add al,[bp+si]
00004B96  0202              add al,[bp+si]
00004B98  0202              add al,[bp+si]
00004B9A  0202              add al,[bp+si]
00004B9C  0202              add al,[bp+si]
00004B9E  0202              add al,[bp+si]
00004BA0  0202              add al,[bp+si]
00004BA2  0202              add al,[bp+si]
00004BA4  0202              add al,[bp+si]
00004BA6  0202              add al,[bp+si]
00004BA8  0202              add al,[bp+si]
00004BAA  0202              add al,[bp+si]
00004BAC  0202              add al,[bp+si]
00004BAE  0202              add al,[bp+si]
00004BB0  0202              add al,[bp+si]
00004BB2  0202              add al,[bp+si]
00004BB4  0202              add al,[bp+si]
00004BB6  0202              add al,[bp+si]
00004BB8  0202              add al,[bp+si]
00004BBA  0202              add al,[bp+si]
00004BBC  0202              add al,[bp+si]
00004BBE  0202              add al,[bp+si]
00004BC0  0202              add al,[bp+si]
00004BC2  0202              add al,[bp+si]
00004BC4  0202              add al,[bp+si]
00004BC6  0202              add al,[bp+si]
00004BC8  0202              add al,[bp+si]
00004BCA  0202              add al,[bp+si]
00004BCC  0202              add al,[bp+si]
00004BCE  0202              add al,[bp+si]
00004BD0  0202              add al,[bp+si]
00004BD2  0202              add al,[bp+si]
00004BD4  0202              add al,[bp+si]
00004BD6  0202              add al,[bp+si]
00004BD8  0202              add al,[bp+si]
00004BDA  0202              add al,[bp+si]
00004BDC  0202              add al,[bp+si]
00004BDE  0202              add al,[bp+si]
00004BE0  0202              add al,[bp+si]
00004BE2  0202              add al,[bp+si]
00004BE4  0202              add al,[bp+si]
00004BE6  0202              add al,[bp+si]
00004BE8  0202              add al,[bp+si]
00004BEA  0202              add al,[bp+si]
00004BEC  0202              add al,[bp+si]
00004BEE  0202              add al,[bp+si]
00004BF0  0202              add al,[bp+si]
00004BF2  0202              add al,[bp+si]
00004BF4  0202              add al,[bp+si]
00004BF6  0202              add al,[bp+si]
00004BF8  0202              add al,[bp+si]
00004BFA  0202              add al,[bp+si]
00004BFC  0202              add al,[bp+si]
00004BFE  0202              add al,[bp+si]
00004C00  0202              add al,[bp+si]
00004C02  0202              add al,[bp+si]
00004C04  0202              add al,[bp+si]
00004C06  0202              add al,[bp+si]
00004C08  0202              add al,[bp+si]
00004C0A  0202              add al,[bp+si]
00004C0C  0202              add al,[bp+si]
00004C0E  0202              add al,[bp+si]
00004C10  0202              add al,[bp+si]
00004C12  0202              add al,[bp+si]
00004C14  0202              add al,[bp+si]
00004C16  0202              add al,[bp+si]
00004C18  0202              add al,[bp+si]
00004C1A  0202              add al,[bp+si]
00004C1C  0202              add al,[bp+si]
00004C1E  0202              add al,[bp+si]
00004C20  0202              add al,[bp+si]
00004C22  0202              add al,[bp+si]
00004C24  0202              add al,[bp+si]
00004C26  0202              add al,[bp+si]
00004C28  0202              add al,[bp+si]
00004C2A  0202              add al,[bp+si]
00004C2C  0202              add al,[bp+si]
00004C2E  0202              add al,[bp+si]
00004C30  0202              add al,[bp+si]
00004C32  0202              add al,[bp+si]
00004C34  0202              add al,[bp+si]
00004C36  0202              add al,[bp+si]
00004C38  0202              add al,[bp+si]
00004C3A  0202              add al,[bp+si]
00004C3C  0202              add al,[bp+si]
00004C3E  0202              add al,[bp+si]
00004C40  0202              add al,[bp+si]
00004C42  0202              add al,[bp+si]
00004C44  0202              add al,[bp+si]
00004C46  0202              add al,[bp+si]
00004C48  0202              add al,[bp+si]
00004C4A  0202              add al,[bp+si]
00004C4C  0202              add al,[bp+si]
00004C4E  0202              add al,[bp+si]
00004C50  0202              add al,[bp+si]
00004C52  0202              add al,[bp+si]
00004C54  0202              add al,[bp+si]
00004C56  0202              add al,[bp+si]
00004C58  0202              add al,[bp+si]
00004C5A  0202              add al,[bp+si]
00004C5C  0202              add al,[bp+si]
00004C5E  0202              add al,[bp+si]
00004C60  0202              add al,[bp+si]
00004C62  0202              add al,[bp+si]
00004C64  0202              add al,[bp+si]
00004C66  0202              add al,[bp+si]
00004C68  0202              add al,[bp+si]
00004C6A  0202              add al,[bp+si]
00004C6C  0202              add al,[bp+si]
00004C6E  0202              add al,[bp+si]
00004C70  0202              add al,[bp+si]
00004C72  0202              add al,[bp+si]
00004C74  0202              add al,[bp+si]
00004C76  0202              add al,[bp+si]
00004C78  0202              add al,[bp+si]
00004C7A  0202              add al,[bp+si]
00004C7C  0202              add al,[bp+si]
00004C7E  0202              add al,[bp+si]
00004C80  0202              add al,[bp+si]
00004C82  0202              add al,[bp+si]
00004C84  0202              add al,[bp+si]
00004C86  0202              add al,[bp+si]
00004C88  0202              add al,[bp+si]
00004C8A  0202              add al,[bp+si]
00004C8C  0202              add al,[bp+si]
00004C8E  0202              add al,[bp+si]
00004C90  0202              add al,[bp+si]
00004C92  0202              add al,[bp+si]
00004C94  0202              add al,[bp+si]
00004C96  0202              add al,[bp+si]
00004C98  0202              add al,[bp+si]
00004C9A  0202              add al,[bp+si]
00004C9C  0202              add al,[bp+si]
00004C9E  0202              add al,[bp+si]
00004CA0  0202              add al,[bp+si]
00004CA2  0202              add al,[bp+si]
00004CA4  0202              add al,[bp+si]
00004CA6  0202              add al,[bp+si]
00004CA8  0202              add al,[bp+si]
00004CAA  0202              add al,[bp+si]
00004CAC  0202              add al,[bp+si]
00004CAE  0202              add al,[bp+si]
00004CB0  0202              add al,[bp+si]
00004CB2  0202              add al,[bp+si]
00004CB4  02                db 0x02
