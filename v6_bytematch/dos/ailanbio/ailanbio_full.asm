00000000  41                inc cx
00000001  49                dec cx
00000002  2D4C41            sub ax,0x414c
00000005  4E                dec si
00000006  42                inc dx
00000007  49                dec cx
00000008  4F                dec di
00000009  53                push bx
0000000A  2028              and [bx+si],ch
0000000C  43                inc bx
0000000D  2920              sub [bx+si],sp
0000000F  43                inc bx
00000010  6F                outsw
00000011  7079              jo 0x8c
00000013  7269              jc 0x7e
00000015  67687420          push word 0x2074
00000019  3139              xor [bx+di],di
0000001B  3930              cmp [bx+si],si
0000001D  204152            and [bx+di+0x52],al
00000020  54                push sp
00000021  49                dec cx
00000022  53                push bx
00000023  4F                dec di
00000024  46                inc si
00000025  54                push sp
00000026  20496E            and [bx+di+0x6e],cl
00000029  630D              arpl [di],cx
0000002B  0A00              or al,[bx+si]
0000002D  1A04              sbb al,[si]
0000002F  06                push es
00000030  0A00              or al,[bx+si]
00000032  0000              add [bx+si],al
00000034  0000              add [bx+si],al
00000036  0000              add [bx+si],al
00000038  0000              add [bx+si],al
0000003A  0000              add [bx+si],al
0000003C  0101              add [bx+di],ax
0000003E  EF                out dx,ax
0000003F  06                push es
00000040  2F                das
00000041  00C0              add al,al
00000043  16                push ss
00000044  2F                das
00000045  0000              add [bx+si],al
00000047  0000              add [bx+si],al
00000049  001E2E8E          add [0x8e2e],bl
0000004D  1E                push ds
0000004E  3300              xor ax,[bx+si]
00000050  26803F03          cmp byte [es:bx],0x3
00000054  7634              jna 0x8a
00000056  A0D200            mov al,[0xd2]
00000059  263A4730          cmp al,[es:bx+0x30]
0000005D  7505              jnz 0x64
0000005F  2EFF2E4200        jmp far [cs:0x42]
00000064  B023              mov al,0x23
00000066  2E833E460000      cmp word [cs:0x46],byte +0x0
0000006C  7514              jnz 0x82
0000006E  2E833E480000      cmp word [cs:0x48],byte +0x0
00000074  750C              jnz 0x82
00000076  26884731          mov [es:bx+0x31],al
0000007A  26884701          mov [es:bx+0x1],al
0000007E  8AE0              mov ah,al
00000080  1F                pop ds
00000081  CF                iret
00000082  8AE0              mov ah,al
00000084  1F                pop ds
00000085  2EFF2E4600        jmp far [cs:0x46]
0000008A  B01D              mov al,0x1d
0000008C  2E833E460000      cmp word [cs:0x46],byte +0x0
00000092  75EE              jnz 0x82
00000094  2E833E480000      cmp word [cs:0x48],byte +0x0
0000009A  75E6              jnz 0x82
0000009C  26884702          mov [es:bx+0x2],al
000000A0  EBDC              jmp short 0x7e
000000A2  1E                push ds
000000A3  2E8E1E3300        mov ds,[cs:0x33]
000000A8  C606070601        mov byte [0x607],0x1
000000AD  FF067A03          inc word [0x37a]
000000B1  1F                pop ds
000000B2  CB                retf
000000B3  1E                push ds
000000B4  2E8E1E3300        mov ds,[cs:0x33]
000000B9  26834F1001        or word [es:bx+0x10],byte +0x1
000000BE  EBED              jmp short 0xad
000000C0  1E                push ds
000000C1  2E8E1E3300        mov ds,[cs:0x33]
000000C6  FF067A03          inc word [0x37a]
000000CA  FE060806          inc byte [0x608]
000000CE  7505              jnz 0xd5
000000D0  2EFF1E3E00        call far [cs:0x3e]
000000D5  C6060806FF        mov byte [0x608],0xff
000000DA  1F                pop ds
000000DB  CB                retf
000000DC  0BF6              or si,si
000000DE  7410              jz 0xf0
000000E0  268B440C          mov ax,[es:si+0xc]
000000E4  86C4              xchg al,ah
000000E6  3DDC05            cmp ax,0x5dc
000000E9  7605              jna 0xf0
000000EB  3DD781            cmp ax,0x81d7
000000EE  7542              jnz 0x132
000000F0  1E                push ds
000000F1  2E8E1E3300        mov ds,[cs:0x33]
000000F6  803E880301        cmp byte [0x388],0x1
000000FB  1F                pop ds
000000FC  741E              jz 0x11c
000000FE  26813D4E52        cmp word [es:di],0x524e
00000103  752D              jnz 0x132
00000105  26807D1814        cmp byte [es:di+0x18],0x14
0000010A  7726              ja 0x132
0000010C  26837D1000        cmp word [es:di+0x10],byte +0x0
00000111  7450              jz 0x163
00000113  26837D10FF        cmp word [es:di+0x10],byte -0x1
00000118  7449              jz 0x163
0000011A  EB16              jmp short 0x132
0000011C  26833DFF          cmp word [es:di],byte -0x1
00000120  7510              jnz 0x132
00000122  26817D100537      cmp word [es:di+0x10],0x3705
00000128  7508              jnz 0x132
0000012A  26817D1C0537      cmp word [es:di+0x1c],0x3705
00000130  7431              jz 0x163
00000132  0BF6              or si,si
00000134  7434              jz 0x16a
00000136  53                push bx
00000137  55                push bp
00000138  1E                push ds
00000139  06                push es
0000013A  8CC0              mov ax,es
0000013C  8ED8              mov ds,ax
0000013E  2E8E063300        mov es,[cs:0x33]
00000143  268B1EEB02        mov bx,[es:0x2eb]
00000148  26833F00          cmp word [es:bx],byte +0x0
0000014C  7418              jz 0x166
0000014E  06                push es
0000014F  26C46F0A          les bp,[es:bx+0xa]
00000153  26FF5E10          call far [es:bp+0x10]
00000157  07                pop es
00000158  7405              jz 0x15f
0000015A  268B1F            mov bx,[es:bx]
0000015D  EBE9              jmp short 0x148
0000015F  07                pop es
00000160  1F                pop ds
00000161  5D                pop bp
00000162  5B                pop bx
00000163  33C0              xor ax,ax
00000165  CB                retf
00000166  07                pop es
00000167  1F                pop ds
00000168  5D                pop bp
00000169  5B                pop bx
0000016A  0D0100            or ax,0x1
0000016D  CB                retf
0000016E  16                push ss
0000016F  2C2F              sub al,0x2f
00000171  0000              add [bx+si],al
00000173  0000              add [bx+si],al
00000175  009C2EFF          add [si-0xd2],bl
00000179  1E                push ds
0000017A  7201              jc 0x17d
0000017C  2E803E3C0001      cmp byte [cs:0x3c],0x1
00000182  7409              jz 0x18d
00000184  2E803EB50101      cmp byte [cs:0x1b5],0x1
0000018A  7501              jnz 0x18d
0000018C  CF                iret
0000018D  1E                push ds
0000018E  2E8E1E3300        mov ds,[cs:0x33]
00000193  9C                pushf
00000194  FA                cli
00000195  FF1EA000          call far [0xa0]
00000199  2EFF1E6E01        call far [cs:0x16e]
0000019E  1F                pop ds
0000019F  CF                iret
000001A0  018D0100          add [di+0x1],cx
000001A4  0000              add [bx+si],al
000001A6  0000              add [bx+si],al
000001A8  009C2EFF          add [si-0xd2],bl
000001AC  1E                push ds
000001AD  A5                movsw
000001AE  01EA              add dx,bp
000001B0  8D01              lea ax,[bx+di]
000001B2  0000              add [bx+si],al
000001B4  CF                iret
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  005502            add [di+0x2],dl
000001BC  0000              add [bx+si],al
000001BE  0000              add [bx+si],al
000001C0  0000              add [bx+si],al
000001C2  80FC16            cmp ah,0x16
000001C5  7403              jz 0x1ca
000001C7  E98600            jmp 0x250
000001CA  3C08              cmp al,0x8
000001CC  7566              jnz 0x234
000001CE  50                push ax
000001CF  53                push bx
000001D0  52                push dx
000001D1  57                push di
000001D2  06                push es
000001D3  33FF              xor di,di
000001D5  8EC7              mov es,di
000001D7  B88416            mov ax,0x1684
000001DA  BB1A00            mov bx,0x1a
000001DD  CD2F              int 0x2f
000001DF  8CC0              mov ax,es
000001E1  0BC7              or ax,di
000001E3  7430              jz 0x215
000001E5  2E893EBA01        mov [cs:0x1ba],di
000001EA  2E8C06BC01        mov [cs:0x1bc],es
000001EF  BA0800            mov dx,0x8
000001F2  2EFF1EBA01        call far [cs:0x1ba]
000001F7  2EA3A501          mov [cs:0x1a5],ax
000001FB  2E891EA701        mov [cs:0x1a7],bx
00000200  8CCB              mov bx,cs
00000202  B8A901            mov ax,0x1a9
00000205  BA0900            mov dx,0x9
00000208  2EFF1EBA01        call far [cs:0x1ba]
0000020D  2EC6063C0000      mov byte [cs:0x3c],0x0
00000213  EB06              jmp short 0x21b
00000215  2EC6063C0001      mov byte [cs:0x3c],0x1
0000021B  07                pop es
0000021C  5F                pop di
0000021D  5A                pop dx
0000021E  5B                pop bx
0000021F  58                pop ax
00000220  1E                push ds
00000221  2E8E1E3300        mov ds,[cs:0x33]
00000226  C606450601        mov byte [0x645],0x1
0000022B  1F                pop ds
0000022C  2EC606B50101      mov byte [cs:0x1b5],0x1
00000232  EB1C              jmp short 0x250
00000234  3C09              cmp al,0x9
00000236  7518              jnz 0x250
00000238  1E                push ds
00000239  2E8E1E3300        mov ds,[cs:0x33]
0000023E  C606450600        mov byte [0x645],0x0
00000243  1F                pop ds
00000244  2EC606B50100      mov byte [cs:0x1b5],0x0
0000024A  2EC6063C0001      mov byte [cs:0x3c],0x1
00000250  2EFF2EBE01        jmp far [cs:0x1be]
00000255  CB                retf
00000256  2E803EA00100      cmp byte [cs:0x1a0],0x0
0000025C  7420              jz 0x27e
0000025E  06                push es
0000025F  53                push bx
00000260  2EC41EB601        les bx,[cs:0x1b6]
00000265  26FE07            inc byte [es:bx]
00000268  2E803EB50101      cmp byte [cs:0x1b5],0x1
0000026E  750C              jnz 0x27c
00000270  50                push ax
00000271  52                push dx
00000272  BA0700            mov dx,0x7
00000275  2EFF1EBA01        call far [cs:0x1ba]
0000027A  5A                pop dx
0000027B  58                pop ax
0000027C  5B                pop bx
0000027D  07                pop es
0000027E  CB                retf
0000027F  2E803EA00100      cmp byte [cs:0x1a0],0x0
00000285  7420              jz 0x2a7
00000287  06                push es
00000288  53                push bx
00000289  2E803EB50101      cmp byte [cs:0x1b5],0x1
0000028F  750C              jnz 0x29d
00000291  50                push ax
00000292  52                push dx
00000293  BA0600            mov dx,0x6
00000296  2EFF1EBA01        call far [cs:0x1ba]
0000029B  5A                pop dx
0000029C  58                pop ax
0000029D  2EC41EB601        les bx,[cs:0x1b6]
000002A2  26FE0F            dec byte [es:bx]
000002A5  5B                pop bx
000002A6  07                pop es
000002A7  CB                retf
000002A8  2E803EA00100      cmp byte [cs:0x1a0],0x0
000002AE  740C              jz 0x2bc
000002B0  06                push es
000002B1  53                push bx
000002B2  2EC41EB601        les bx,[cs:0x1b6]
000002B7  26FE07            inc byte [es:bx]
000002BA  5B                pop bx
000002BB  07                pop es
000002BC  CB                retf
000002BD  2E803EA00100      cmp byte [cs:0x1a0],0x0
000002C3  740C              jz 0x2d1
000002C5  06                push es
000002C6  53                push bx
000002C7  2EC41EB601        les bx,[cs:0x1b6]
000002CC  26FE0F            dec byte [es:bx]
000002CF  5B                pop bx
000002D0  07                pop es
000002D1  CB                retf
000002D2  0000              add [bx+si],al
000002D4  0000              add [bx+si],al
000002D6  0000              add [bx+si],al
000002D8  0000              add [bx+si],al
000002DA  0000              add [bx+si],al
000002DC  0000              add [bx+si],al
000002DE  0000              add [bx+si],al
000002E0  0000              add [bx+si],al
000002E2  0000              add [bx+si],al
000002E4  0000              add [bx+si],al
000002E6  0000              add [bx+si],al
000002E8  0000              add [bx+si],al
000002EA  0000              add [bx+si],al
000002EC  0000              add [bx+si],al
000002EE  0000              add [bx+si],al
000002F0  E8C501            call 0x4b8
000002F3  56                push si
000002F4  53                push bx
000002F5  E84D1D            call 0x2045
000002F8  8BF3              mov si,bx
000002FA  720E              jc 0x30a
000002FC  5B                pop bx
000002FD  5E                pop si
000002FE  E8EE1D            call 0x20ef
00000301  26886603          mov [es:bp+0x3],ah
00000305  B00D              mov al,0xd
00000307  E90B1C            jmp 0x1f15
0000030A  8B1E5903          mov bx,[0x359]
0000030E  E88A1A            call 0x1d9b
00000311  5B                pop bx
00000312  7305              jnc 0x319
00000314  B00E              mov al,0xe
00000316  5E                pop si
00000317  EBEE              jmp short 0x307
00000319  FF06EA00          inc word [0xea]
0000031D  8B3E5B03          mov di,[0x35b]
00000321  E89F1A            call 0x1dc3
00000324  8D7C04            lea di,[si+0x4]
00000327  56                push si
00000328  57                push di
00000329  06                push es
0000032A  1E                push ds
0000032B  1E                push ds
0000032C  06                push es
0000032D  1F                pop ds
0000032E  07                pop es
0000032F  8D761A            lea si,[bp+0x1a]
00000332  B90800            mov cx,0x8
00000335  F3A5              rep movsw
00000337  1F                pop ds
00000338  07                pop es
00000339  5F                pop di
0000033A  5E                pop si
0000033B  C6441500          mov byte [si+0x15],0x0
0000033F  884C16            mov [si+0x16],cl
00000342  884C14            mov [si+0x14],cl
00000345  A00C02            mov al,[0x20c]
00000348  53                push bx
00000349  FEC0              inc al
0000034B  3C02              cmp al,0x2
0000034D  72FA              jc 0x349
0000034F  3CFE              cmp al,0xfe
00000351  77F6              ja 0x349
00000353  E8951B            call 0x1eeb
00000356  73F1              jnc 0x349
00000358  5B                pop bx
00000359  A20C02            mov [0x20c],al
0000035C  884414            mov [si+0x14],al
0000035F  B405              mov ah,0x5
00000361  E8F31A            call 0x1e57
00000364  3C36              cmp al,0x36
00000366  7506              jnz 0x36e
00000368  804C1580          or byte [si+0x15],0x80
0000036C  B404              mov ah,0x4
0000036E  886722            mov [bx+0x22],ah
00000371  26897638          mov [es:bp+0x38],si
00000375  5E                pop si
00000376  C7471E8000        mov word [bx+0x1e],0x80
0000037B  C747201000        mov word [bx+0x20],0x10
00000380  26C746341C01      mov word [es:bp+0x34],0x11c
00000386  A0D400            mov al,[0xd4]
00000389  26884636          mov [es:bp+0x36],al
0000038D  8D461A            lea ax,[bp+0x1a]
00000390  89473B            mov [bx+0x3b],ax
00000393  8C473D            mov [bx+0x3d],es
00000396  B81000            mov ax,0x10
00000399  894720            mov [bx+0x20],ax
0000039C  894739            mov [bx+0x39],ax
0000039F  C7471E8000        mov word [bx+0x1e],0x80
000003A4  C7471C0000        mov word [bx+0x1c],0x0
000003A9  C747370000        mov word [bx+0x37],0x0
000003AE  26807E1A00        cmp byte [es:bp+0x1a],0x0
000003B3  750A              jnz 0x3bf
000003B5  26F6462401        test byte [es:bp+0x24],0x1
000003BA  7403              jz 0x3bf
000003BC  EB4E              jmp short 0x40c
000003BE  90                nop
000003BF  E8EE1F            call 0x23b0
000003C2  730A              jnc 0x3ce
000003C4  E8B41A            call 0x1e7b
000003C7  F7471E0200        test word [bx+0x1e],0x2
000003CC  74F1              jz 0x3bf
000003CE  F7471E0200        test word [bx+0x1e],0x2
000003D3  750C              jnz 0x3e1
000003D5  F7471E0100        test word [bx+0x1e],0x1
000003DA  7505              jnz 0x3e1
000003DC  E89C1A            call 0x1e7b
000003DF  EBED              jmp short 0x3ce
000003E1  A0D500            mov al,[0xd5]
000003E4  3C01              cmp al,0x1
000003E6  7302              jnc 0x3ea
000003E8  B001              mov al,0x1
000003EA  E87D1A            call 0x1e6a
000003ED  268B7E38          mov di,[es:bp+0x38]
000003F1  F6451502          test byte [di+0x15],0x2
000003F5  74C8              jz 0x3bf
000003F7  56                push si
000003F8  268B7638          mov si,[es:bp+0x38]
000003FC  8A4414            mov al,[si+0x14]
000003FF  26884603          mov [es:bp+0x3],al
00000403  E8D71A            call 0x1edd
00000406  B016              mov al,0x16
00000408  5E                pop si
00000409  E9091B            jmp 0x1f15
0000040C  56                push si
0000040D  268B7638          mov si,[es:bp+0x38]
00000411  804C1504          or byte [si+0x15],0x4
00000415  B000              mov al,0x0
00000417  8A6414            mov ah,[si+0x14]
0000041A  26886603          mov [es:bp+0x3],ah
0000041E  F6441502          test byte [si+0x15],0x2
00000422  7402              jz 0x426
00000424  B019              mov al,0x19
00000426  5E                pop si
00000427  E9EB1A            jmp 0x1f15
0000042A  E88B00            call 0x4b8
0000042D  56                push si
0000042E  53                push bx
0000042F  E8131C            call 0x2045
00000432  8BF3              mov si,bx
00000434  5B                pop bx
00000435  B015              mov al,0x15
00000437  72ED              jc 0x426
00000439  804C1501          or byte [si+0x15],0x1
0000043D  8A7414            mov dh,[si+0x14]
00000440  B217              mov dl,0x17
00000442  53                push bx
00000443  06                push es
00000444  55                push bp
00000445  8B1E5503          mov bx,[0x355]
00000449  BD9601            mov bp,0x196
0000044C  E8BA19            call 0x1e09
0000044F  BE1502            mov si,0x215
00000452  8D5C2E            lea bx,[si+0x2e]
00000455  BDAB01            mov bp,0x1ab
00000458  E8AE19            call 0x1e09
0000045B  BE6902            mov si,0x269
0000045E  8D5C2E            lea bx,[si+0x2e]
00000461  BDB601            mov bp,0x1b6
00000464  E8A219            call 0x1e09
00000467  5D                pop bp
00000468  07                pop es
00000469  5B                pop bx
0000046A  53                push bx
0000046B  E8D71B            call 0x2045
0000046E  8BFB              mov di,bx
00000470  5B                pop bx
00000471  720D              jc 0x480
00000473  807D1600          cmp byte [di+0x16],0x0
00000477  B00F              mov al,0xf
00000479  7507              jnz 0x482
0000047B  8BF7              mov si,di
0000047D  E85D1A            call 0x1edd
00000480  B000              mov al,0x0
00000482  5E                pop si
00000483  E98F1A            jmp 0x1f15
00000486  387707            cmp [bx+0x7],dh
00000489  752B              jnz 0x4b6
0000048B  807F0401          cmp byte [bx+0x4],0x1
0000048F  7525              jnz 0x4b6
00000491  8BF3              mov si,bx
00000493  52                push dx
00000494  8AC2              mov al,dl
00000496  E8C41A            call 0x1f5d
00000499  5A                pop dx
0000049A  C3                ret
0000049B  E8B919            call 0x1e57
0000049E  3C21              cmp al,0x21
000004A0  7404              jz 0x4a6
000004A2  3C23              cmp al,0x23
000004A4  7510              jnz 0x4b6
000004A6  C47F0A            les di,[bx+0xa]
000004A9  26387503          cmp [es:di+0x3],dh
000004AD  7507              jnz 0x4b6
000004AF  52                push dx
000004B0  8AC2              mov al,dl
000004B2  E8601A            call 0x1f15
000004B5  5A                pop dx
000004B6  F9                stc
000004B7  C3                ret
000004B8  268A461A          mov al,[es:bp+0x1a]
000004BC  3C2A              cmp al,0x2a
000004BE  7453              jz 0x513
000004C0  84C0              test al,al
000004C2  740A              jz 0x4ce
000004C4  57                push di
000004C5  06                push es
000004C6  8D7E1A            lea di,[bp+0x1a]
000004C9  E84D00            call 0x519
000004CC  EB0C              jmp short 0x4da
000004CE  26F6462401        test byte [es:bp+0x24],0x1
000004D3  743E              jz 0x513
000004D5  57                push di
000004D6  06                push es
000004D7  8D7E24            lea di,[bp+0x24]
000004DA  E87A19            call 0x1e57
000004DD  3C31              cmp al,0x31
000004DF  742B              jz 0x50c
000004E1  FF1EA400          call far [0xa4]
000004E5  56                push si
000004E6  8BF7              mov si,di
000004E8  8D7F2F            lea di,[bx+0x2f]
000004EB  1E                push ds
000004EC  06                push es
000004ED  1E                push ds
000004EE  06                push es
000004EF  1F                pop ds
000004F0  07                pop es
000004F1  B90300            mov cx,0x3
000004F4  F3A5              rep movsw
000004F6  07                pop es
000004F7  1F                pop ds
000004F8  06                push es
000004F9  8CD8              mov ax,ds
000004FB  8EC0              mov es,ax
000004FD  8D7F14            lea di,[bx+0x14]
00000500  8D772F            lea si,[bx+0x2f]
00000503  B90600            mov cx,0x6
00000506  F3A5              rep movsw
00000508  07                pop es
00000509  5E                pop si
0000050A  EB04              jmp short 0x510
0000050C  FF1EA800          call far [0xa8]
00000510  07                pop es
00000511  5F                pop di
00000512  C3                ret
00000513  58                pop ax
00000514  B015              mov al,0x15
00000516  E9FC19            jmp 0x1f15
00000519  53                push bx
0000051A  51                push cx
0000051B  52                push dx
0000051C  56                push si
0000051D  1E                push ds
0000051E  1E                push ds
0000051F  06                push es
00000520  1F                pop ds
00000521  07                pop es
00000522  8BF7              mov si,di
00000524  FC                cld
00000525  33DB              xor bx,bx
00000527  33D2              xor dx,dx
00000529  BF0000            mov di,0x0
0000052C  26C60501          mov byte [es:di],0x1
00000530  47                inc di
00000531  B90200            mov cx,0x2
00000534  AC                lodsb
00000535  8AE0              mov ah,al
00000537  AC                lodsb
00000538  32E0              xor ah,al
0000053A  32FC              xor bh,ah
0000053C  E2F6              loop 0x534
0000053E  8AC7              mov al,bh
00000540  AA                stosb
00000541  B90200            mov cx,0x2
00000544  AC                lodsb
00000545  8AE0              mov ah,al
00000547  AC                lodsb
00000548  32E0              xor ah,al
0000054A  32DC              xor bl,ah
0000054C  E2F6              loop 0x544
0000054E  8AC3              mov al,bl
00000550  AA                stosb
00000551  B90200            mov cx,0x2
00000554  AC                lodsb
00000555  8AE0              mov ah,al
00000557  AC                lodsb
00000558  32E0              xor ah,al
0000055A  32F4              xor dh,ah
0000055C  E2F6              loop 0x554
0000055E  8AC6              mov al,dh
00000560  AA                stosb
00000561  B90200            mov cx,0x2
00000564  AC                lodsb
00000565  8AE0              mov ah,al
00000567  AC                lodsb
00000568  32E0              xor ah,al
0000056A  32D4              xor dl,ah
0000056C  E2F6              loop 0x564
0000056E  8AC2              mov al,dl
00000570  AA                stosb
00000571  26C605FF          mov byte [es:di],0xff
00000575  BF0000            mov di,0x0
00000578  1F                pop ds
00000579  5E                pop si
0000057A  5A                pop dx
0000057B  59                pop cx
0000057C  5B                pop bx
0000057D  C3                ret
0000057E  FF                db 0xff
0000057F  FF00              inc word [bx+si]
00000581  00E8              add al,ch
00000583  61                popa
00000584  18CB              sbb bl,cl
00000586  50                push ax
00000587  E80918            call 0x1d93
0000058A  58                pop ax
0000058B  CB                retf
0000058C  51                push cx
0000058D  52                push dx
0000058E  E81418            call 0x1da5
00000591  5A                pop dx
00000592  59                pop cx
00000593  CB                retf
00000594  50                push ax
00000595  51                push cx
00000596  52                push dx
00000597  E82618            call 0x1dc0
0000059A  5A                pop dx
0000059B  59                pop cx
0000059C  58                pop ax
0000059D  CB                retf
0000059E  50                push ax
0000059F  E82118            call 0x1dc3
000005A2  58                pop ax
000005A3  CB                retf
000005A4  50                push ax
000005A5  E82C18            call 0x1dd4
000005A8  58                pop ax
000005A9  CB                retf
000005AA  50                push ax
000005AB  51                push cx
000005AC  52                push dx
000005AD  E8EB17            call 0x1d9b
000005B0  5A                pop dx
000005B1  59                pop cx
000005B2  58                pop ax
000005B3  CB                retf
000005B4  E8381B            call 0x20ef
000005B7  886407            mov [si+0x7],ah
000005BA  E84502            call 0x802
000005BD  E8971A            call 0x2057
000005C0  FEC0              inc al
000005C2  7505              jnz 0x5c9
000005C4  B015              mov al,0x15
000005C6  E94C19            jmp 0x1f15
000005C9  C6440402          mov byte [si+0x4],0x2
000005CD  E82302            call 0x7f3
000005D0  26C746345104      mov word [es:bp+0x34],0x451
000005D6  A0D400            mov al,[0xd4]
000005D9  26884636          mov [es:bp+0x36],al
000005DD  06                push es
000005DE  1E                push ds
000005DF  07                pop es
000005E0  8D7C08            lea di,[si+0x8]
000005E3  E8A618            call 0x1e8c
000005E6  07                pop es
000005E7  B007              mov al,0x7
000005E9  E8301B            call 0x211c
000005EC  56                push si
000005ED  06                push es
000005EE  1E                push ds
000005EF  07                pop es
000005F0  B90300            mov cx,0x3
000005F3  8D772F            lea si,[bx+0x2f]
000005F6  8D7F14            lea di,[bx+0x14]
000005F9  F3A5              rep movsw
000005FB  07                pop es
000005FC  5E                pop si
000005FD  C7471C0000        mov word [bx+0x1c],0x0
00000602  C747370000        mov word [bx+0x37],0x0
00000607  E82703            call 0x931
0000060A  A0D500            mov al,[0xd5]
0000060D  3A06D600          cmp al,[0xd6]
00000611  7303              jnc 0x616
00000613  A0D600            mov al,[0xd6]
00000616  884440            mov [si+0x40],al
00000619  884441            mov [si+0x41],al
0000061C  814F1E8000        or word [bx+0x1e],0x80
00000621  884728            mov [bx+0x28],al
00000624  C6472A00          mov byte [bx+0x2a],0x0
00000628  2E803E900201      cmp byte [cs:0x290],0x1
0000062E  7505              jnz 0x635
00000630  814F1E0004        or word [bx+0x1e],0x400
00000635  E8781D            call 0x23b0
00000638  730A              jnc 0x644
0000063A  E83E18            call 0x1e7b
0000063D  F7471E0200        test word [bx+0x1e],0x2
00000642  74F1              jz 0x635
00000644  F7471E0200        test word [bx+0x1e],0x2
00000649  751F              jnz 0x66a
0000064B  F7471E0100        test word [bx+0x1e],0x1
00000650  7505              jnz 0x657
00000652  E82618            call 0x1e7b
00000655  EBED              jmp short 0x644
00000657  8A4440            mov al,[si+0x40]
0000065A  3C01              cmp al,0x1
0000065C  7302              jnc 0x660
0000065E  B001              mov al,0x1
00000660  E80718            call 0x1e6a
00000663  F7471E0200        test word [bx+0x1e],0x2
00000668  74CB              jz 0x635
0000066A  807F2208          cmp byte [bx+0x22],0x8
0000066E  7403              jz 0x673
00000670  E96AFF            jmp 0x5dd
00000673  837F2400          cmp word [bx+0x24],byte +0x0
00000677  B012              mov al,0x12
00000679  7503              jnz 0x67e
0000067B  E9C500            jmp 0x743
0000067E  E89101            call 0x812
00000681  F7471E0004        test word [bx+0x1e],0x400
00000686  7404              jz 0x68c
00000688  804C0601          or byte [si+0x6],0x1
0000068C  8A4728            mov al,[bx+0x28]
0000068F  384441            cmp [si+0x41],al
00000692  7303              jnc 0x697
00000694  884441            mov [si+0x41],al
00000697  384440            cmp [si+0x40],al
0000069A  7303              jnc 0x69f
0000069C  884440            mov [si+0x40],al
0000069F  C744230000        mov word [si+0x23],0x0
000006A4  C6442600          mov byte [si+0x26],0x0
000006A8  804C0510          or byte [si+0x5],0x10
000006AC  C6440403          mov byte [si+0x4],0x3
000006B0  B011              mov al,0x11
000006B2  E8671A            call 0x211c
000006B5  A1E800            mov ax,[0xe8]
000006B8  894448            mov [si+0x48],ax
000006BB  814F1E0001        or word [bx+0x1e],0x100
000006C0  894728            mov [bx+0x28],ax
000006C3  E88B1A            call 0x2151
000006C6  E8E71C            call 0x23b0
000006C9  730A              jnc 0x6d5
000006CB  E8AD17            call 0x1e7b
000006CE  F7471E0200        test word [bx+0x1e],0x2
000006D3  74F1              jz 0x6c6
000006D5  F7471E0200        test word [bx+0x1e],0x2
000006DA  751F              jnz 0x6fb
000006DC  F7471E0100        test word [bx+0x1e],0x1
000006E1  7505              jnz 0x6e8
000006E3  E89517            call 0x1e7b
000006E6  EBED              jmp short 0x6d5
000006E8  8A4440            mov al,[si+0x40]
000006EB  3C01              cmp al,0x1
000006ED  7302              jnc 0x6f1
000006EF  B001              mov al,0x1
000006F1  E87617            call 0x1e6a
000006F4  F7471E0200        test word [bx+0x1e],0x2
000006F9  74C8              jz 0x6c3
000006FB  807F2212          cmp byte [bx+0x22],0x12
000006FF  75AF              jnz 0x6b0
00000701  F7471E0001        test word [bx+0x1e],0x100
00000706  740B              jz 0x713
00000708  8B4728            mov ax,[bx+0x28]
0000070B  394448            cmp [si+0x48],ax
0000070E  7603              jna 0x713
00000710  894448            mov [si+0x48],ax
00000713  806405EF          and byte [si+0x5],0xef
00000717  E83D17            call 0x1e57
0000071A  3C11              cmp al,0x11
0000071C  7520              jnz 0x73e
0000071E  803E060600        cmp byte [0x606],0x0
00000723  7419              jz 0x73e
00000725  53                push bx
00000726  56                push si
00000727  57                push di
00000728  55                push bp
00000729  06                push es
0000072A  8B5C3E            mov bx,[si+0x3e]
0000072D  C606060600        mov byte [0x606],0x0
00000732  8CD8              mov ax,ds
00000734  8EC0              mov es,ax
00000736  E80007            call 0xe39
00000739  07                pop es
0000073A  5D                pop bp
0000073B  5F                pop di
0000073C  5E                pop si
0000073D  5B                pop bx
0000073E  E9D217            jmp 0x1f13
00000741  B014              mov al,0x14
00000743  C64404FF          mov byte [si+0x4],0xff
00000747  E9CB17            jmp 0x1f15
0000074A  E8A219            call 0x20ef
0000074D  886407            mov [si+0x7],ah
00000750  E8AF00            call 0x802
00000753  E80119            call 0x2057
00000756  C6440401          mov byte [si+0x4],0x1
0000075A  E89600            call 0x7f3
0000075D  26C6463600        mov byte [es:bp+0x36],0x0
00000762  A0D500            mov al,[0xd5]
00000765  3A06D600          cmp al,[0xd6]
00000769  7303              jnc 0x76e
0000076B  A0D600            mov al,[0xd6]
0000076E  884440            mov [si+0x40],al
00000771  884441            mov [si+0x41],al
00000774  E8EC16            call 0x1e63
00000777  26C74634FA04      mov word [es:bp+0x34],0x4fa
0000077D  A0D400            mov al,[0xd4]
00000780  26884636          mov [es:bp+0x36],al
00000784  F7471E0004        test word [bx+0x1e],0x400
00000789  7404              jz 0x78f
0000078B  804C0601          or byte [si+0x6],0x1
0000078F  8A4728            mov al,[bx+0x28]
00000792  384441            cmp [si+0x41],al
00000795  7303              jnc 0x79a
00000797  884441            mov [si+0x41],al
0000079A  384440            cmp [si+0x40],al
0000079D  7303              jnc 0x7a2
0000079F  884440            mov [si+0x40],al
000007A2  E86D00            call 0x812
000007A5  B008              mov al,0x8
000007A7  E87219            call 0x211c
000007AA  E88401            call 0x931
000007AD  814F1E0004        or word [bx+0x1e],0x400
000007B2  2E803E900201      cmp byte [cs:0x290],0x1
000007B8  7405              jz 0x7bf
000007BA  81671EFFFB        and word [bx+0x1e],0xfbff
000007BF  8A4441            mov al,[si+0x41]
000007C2  884728            mov [bx+0x28],al
000007C5  E8E81B            call 0x23b0
000007C8  730A              jnc 0x7d4
000007CA  E8AE16            call 0x1e7b
000007CD  F7471E0200        test word [bx+0x1e],0x2
000007D2  74F1              jz 0x7c5
000007D4  F7471E0200        test word [bx+0x1e],0x2
000007D9  75CA              jnz 0x7a5
000007DB  F7471E0100        test word [bx+0x1e],0x1
000007E0  7505              jnz 0x7e7
000007E2  E89616            call 0x1e7b
000007E5  EBED              jmp short 0x7d4
000007E7  E9B5FE            jmp 0x69f
000007EA  C64404FF          mov byte [si+0x4],0xff
000007EE  B018              mov al,0x18
000007F0  E92217            jmp 0x1f15
000007F3  268A462A          mov al,[es:bp+0x2a]
000007F7  884421            mov [si+0x21],al
000007FA  268A462B          mov al,[es:bp+0x2b]
000007FE  884422            mov [si+0x22],al
00000801  C3                ret
00000802  53                push bx
00000803  8A4407            mov al,[si+0x7]
00000806  E8E216            call 0x1eeb
00000809  FE4716            inc byte [bx+0x16]
0000080C  5B                pop bx
0000080D  FE063E03          inc byte [0x33e]
00000811  C3                ret
00000812  8B4724            mov ax,[bx+0x24]
00000815  89441E            mov [si+0x1e],ax
00000818  8B471A            mov ax,[bx+0x1a]
0000081B  89444A            mov [si+0x4a],ax
0000081E  8B4735            mov ax,[bx+0x35]
00000821  89444C            mov [si+0x4c],ax
00000824  06                push es
00000825  1E                push ds
00000826  07                pop es
00000827  56                push si
00000828  8D7C4E            lea di,[si+0x4e]
0000082B  8D770E            lea si,[bx+0xe]
0000082E  A5                movsw
0000082F  A5                movsw
00000830  A5                movsw
00000831  5E                pop si
00000832  56                push si
00000833  8D7C08            lea di,[si+0x8]
00000836  8D772F            lea si,[bx+0x2f]
00000839  A5                movsw
0000083A  A5                movsw
0000083B  A5                movsw
0000083C  5E                pop si
0000083D  07                pop es
0000083E  C3                ret
0000083F  C6440404          mov byte [si+0x4],0x4
00000843  26C746343606      mov word [es:bp+0x34],0x636
00000849  26C6463628        mov byte [es:bp+0x36],0x28
0000084E  06                push es
0000084F  55                push bp
00000850  53                push bx
00000851  56                push si
00000852  BD2806            mov bp,0x628
00000855  E8B115            call 0x1e09
00000858  5E                pop si
00000859  5B                pop bx
0000085A  5D                pop bp
0000085B  07                pop es
0000085C  53                push bx
0000085D  8D5C36            lea bx,[si+0x36]
00000860  E83015            call 0x1d93
00000863  5B                pop bx
00000864  740A              jz 0x870
00000866  26C6463701        mov byte [es:bp+0x37],0x1
0000086B  E80016            call 0x1e6e
0000086E  EBEC              jmp short 0x85c
00000870  BA000A            mov dx,0xa00
00000873  C6440404          mov byte [si+0x4],0x4
00000877  26895638          mov [es:bp+0x38],dx
0000087B  26C746343C06      mov word [es:bp+0x34],0x63c
00000881  A0D400            mov al,[0xd4]
00000884  26884636          mov [es:bp+0x36],al
00000888  807C2619          cmp byte [si+0x26],0x19
0000088C  762A              jna 0x8b8
0000088E  C6472201          mov byte [bx+0x22],0x1
00000892  C747200000        mov word [bx+0x20],0x0
00000897  C7471E0000        mov word [bx+0x1e],0x0
0000089C  8B4429            mov ax,[si+0x29]
0000089F  894728            mov [bx+0x28],ax
000008A2  8A442B            mov al,[si+0x2b]
000008A5  88472A            mov [bx+0x2a],al
000008A8  834F1E10          or word [bx+0x1e],byte +0x10
000008AC  8A4427            mov al,[si+0x27]
000008AF  884723            mov [bx+0x23],al
000008B2  E89C18            call 0x2151
000008B5  E8F81A            call 0x23b0
000008B8  B00A              mov al,0xa
000008BA  E85F18            call 0x211c
000008BD  268A4639          mov al,[es:bp+0x39]
000008C1  884723            mov [bx+0x23],al
000008C4  E8E91A            call 0x23b0
000008C7  730A              jnc 0x8d3
000008C9  E8AF15            call 0x1e7b
000008CC  F7471E0200        test word [bx+0x1e],0x2
000008D1  74F1              jz 0x8c4
000008D3  F7471E0200        test word [bx+0x1e],0x2
000008D8  75AE              jnz 0x888
000008DA  F7471E0100        test word [bx+0x1e],0x1
000008DF  7505              jnz 0x8e6
000008E1  E89715            call 0x1e7b
000008E4  EBED              jmp short 0x8d3
000008E6  E87E15            call 0x1e67
000008E9  F6440540          test byte [si+0x5],0x40
000008ED  74C9              jz 0x8b8
000008EF  C6440406          mov byte [si+0x4],0x6
000008F3  56                push si
000008F4  8BF3              mov si,bx
000008F6  E8AC14            call 0x1da5
000008F9  5E                pop si
000008FA  268A4639          mov al,[es:bp+0x39]
000008FE  53                push bx
000008FF  E85B16            call 0x1f5d
00000902  5B                pop bx
00000903  84D2              test dl,dl
00000905  750A              jnz 0x911
00000907  E84D15            call 0x1e57
0000090A  3C12              cmp al,0x12
0000090C  7503              jnz 0x911
0000090E  E8E823            call 0x2cf9
00000911  268A4638          mov al,[es:bp+0x38]
00000915  E9DE12            jmp 0x1bf6
00000918  E83C15            call 0x1e57
0000091B  3C16              cmp al,0x16
0000091D  7405              jz 0x924
0000091F  B00A              mov al,0xa
00000921  E9F115            jmp 0x1f15
00000924  F9                stc
00000925  C3                ret
00000926  BA0518            mov dx,0x1805
00000929  E947FF            jmp 0x873
0000092C  B018              mov al,0x18
0000092E  E92C16            jmp 0x1f5d
00000931  8D460A            lea ax,[bp+0xa]
00000934  89473B            mov [bx+0x3b],ax
00000937  8C473D            mov [bx+0x3d],es
0000093A  B82000            mov ax,0x20
0000093D  894720            mov [bx+0x20],ax
00000940  894739            mov [bx+0x39],ax
00000943  C3                ret
00000944  53                push bx
00000945  26C44E04          les cx,[es:bp+0x4]
00000949  8CC0              mov ax,es
0000094B  8B1E5503          mov bx,[0x355]
0000094F  BDCD06            mov bp,0x6cd
00000952  E8B414            call 0x1e09
00000955  731B              jnc 0x972
00000957  BB6902            mov bx,0x269
0000095A  E86000            call 0x9bd
0000095D  B024              mov al,0x24
0000095F  7258              jc 0x9b9
00000961  803E060600        cmp byte [0x606],0x0
00000966  740A              jz 0x972
00000968  3B543E            cmp dx,[si+0x3e]
0000096B  7505              jnz 0x972
0000096D  C606060600        mov byte [0x606],0x0
00000972  8BDA              mov bx,dx
00000974  E8E014            call 0x1e57
00000977  33C9              xor cx,cx
00000979  3C14              cmp al,0x14
0000097B  7420              jz 0x99d
0000097D  3C17              cmp al,0x17
0000097F  741C              jz 0x99d
00000981  3C71              cmp al,0x71
00000983  7418              jz 0x99d
00000985  3C72              cmp al,0x72
00000987  7414              jz 0x99d
00000989  3C12              cmp al,0x12
0000098B  7410              jz 0x99d
0000098D  41                inc cx
0000098E  3C11              cmp al,0x11
00000990  740B              jz 0x99d
00000992  3C10              cmp al,0x10
00000994  7407              jz 0x99d
00000996  B00B              mov al,0xb
00000998  E87A15            call 0x1f15
0000099B  EB1A              jmp short 0x9b7
0000099D  E304              jcxz 0x9a3
0000099F  C64404FF          mov byte [si+0x4],0xff
000009A3  B00B              mov al,0xb
000009A5  E86D15            call 0x1f15
000009A8  807C0400          cmp byte [si+0x4],0x0
000009AC  7409              jz 0x9b7
000009AE  C6440406          mov byte [si+0x4],0x6
000009B2  B018              mov al,0x18
000009B4  E8A615            call 0x1f5d
000009B7  B000              mov al,0x0
000009B9  5B                pop bx
000009BA  E93912            jmp 0x1bf6
000009BD  8BF3              mov si,bx
000009BF  8D5C2E            lea bx,[si+0x2e]
000009C2  BDE106            mov bp,0x6e1
000009C5  E84114            call 0x1e09
000009C8  7306              jnc 0x9d0
000009CA  8D5C36            lea bx,[si+0x36]
000009CD  E83914            call 0x1e09
000009D0  C3                ret
000009D1  8BD3              mov dx,bx
000009D3  394F0A            cmp [bx+0xa],cx
000009D6  7505              jnz 0x9dd
000009D8  39470C            cmp [bx+0xc],ax
000009DB  7401              jz 0x9de
000009DD  F9                stc
000009DE  C3                ret
000009DF  803E7C03FF        cmp byte [0x37c],0xff
000009E4  7407              jz 0x9ed
000009E6  FF067A03          inc word [0x37a]
000009EA  E93B01            jmp 0xb28
000009ED  FA                cli
000009EE  50                push ax
000009EF  A08A03            mov al,[0x38a]
000009F2  38067900          cmp [0x79],al
000009F6  7504              jnz 0x9fc
000009F8  FF1E3D06          call far [0x63d]
000009FC  58                pop ax
000009FD  FE067900          inc byte [0x79]
00000A01  7519              jnz 0xa1c
00000A03  89267200          mov [0x72],sp
00000A07  8C167400          mov [0x74],ss
00000A0B  8C1E7600          mov [0x76],ds
00000A0F  8E167600          mov ss,[0x76]
00000A13  BC4609            mov sp,0x946
00000A16  C70661030000      mov word [0x361],0x0
00000A1C  FB                sti
00000A1D  50                push ax
00000A1E  53                push bx
00000A1F  51                push cx
00000A20  52                push dx
00000A21  56                push si
00000A22  57                push di
00000A23  55                push bp
00000A24  06                push es
00000A25  FC                cld
00000A26  C7067A030000      mov word [0x37a],0x0
00000A2C  FF1E3D06          call far [0x63d]
00000A30  FE067C03          inc byte [0x37c]
00000A34  803E450601        cmp byte [0x645],0x1
00000A39  7507              jnz 0xa42
00000A3B  BA0A00            mov dx,0xa
00000A3E  FF1E3106          call far [0x631]
00000A42  E8830D            call 0x17c8
00000A45  E84011            call 0x1b88
00000A48  73FB              jnc 0xa45
00000A4A  C6067E0300        mov byte [0x37e],0x0
00000A4F  803E660300        cmp byte [0x366],0x0
00000A54  741B              jz 0xa71
00000A56  33C0              xor ax,ax
00000A58  86066603          xchg al,[0x366]
00000A5C  A26803            mov [0x368],al
00000A5F  86266703          xchg ah,[0x367]
00000A63  88266903          mov [0x369],ah
00000A67  8B1E5503          mov bx,[0x355]
00000A6B  BD3908            mov bp,0x839
00000A6E  E89813            call 0x1e09
00000A71  BB4303            mov bx,0x343
00000A74  871E3F03          xchg bx,[0x33f]
00000A78  891E4703          mov [0x347],bx
00000A7C  C747024703        mov word [bx+0x2],0x347
00000A81  BB3F03            mov bx,0x33f
00000A84  871E4503          xchg bx,[0x345]
00000A88  891E4D03          mov [0x34d],bx
00000A8C  C7074B03          mov word [bx],0x34b
00000A90  8B1E4703          mov bx,[0x347]
00000A94  833F00            cmp word [bx],byte +0x0
00000A97  7423              jz 0xabc
00000A99  33ED              xor bp,bp
00000A9B  872F              xchg bp,[bx]
00000A9D  33FF              xor di,di
00000A9F  877F02            xchg di,[bx+0x2]
00000AA2  3E897E02          mov [ds:bp+0x2],di
00000AA6  892D              mov [di],bp
00000AA8  83EB04            sub bx,byte +0x4
00000AAB  8B7708            mov si,[bx+0x8]
00000AAE  C46F0A            les bp,[bx+0xa]
00000AB1  26C6463700        mov byte [es:bp+0x37],0x0
00000AB6  26FF5632          call [es:bp+0x32]
00000ABA  EBD4              jmp short 0xa90
00000ABC  FE0E7C03          dec byte [0x37c]
00000AC0  FF1E4106          call far [0x641]
00000AC4  A08A03            mov al,[0x38a]
00000AC7  38067900          cmp [0x79],al
00000ACB  772F              ja 0xafc
00000ACD  BF7203            mov di,0x372
00000AD0  E84C19            call 0x241f
00000AD3  721D              jc 0xaf2
00000AD5  8BDD              mov bx,bp
00000AD7  268A4701          mov al,[es:bx+0x1]
00000ADB  1E                push ds
00000ADC  9C                pushf
00000ADD  FA                cli
00000ADE  26884731          mov [es:bx+0x31],al
00000AE2  26FF5F2C          call far [es:bx+0x2c]
00000AE6  1F                pop ds
00000AE7  A0D300            mov al,[0xd3]
00000AEA  32E4              xor ah,ah
00000AEC  39066103          cmp [0x361],ax
00000AF0  72DB              jc 0xacd
00000AF2  833E7A0300        cmp word [0x37a],byte +0x0
00000AF7  7403              jz 0xafc
00000AF9  E92AFF            jmp 0xa26
00000AFC  07                pop es
00000AFD  5D                pop bp
00000AFE  5F                pop di
00000AFF  5E                pop si
00000B00  5A                pop dx
00000B01  59                pop cx
00000B02  5B                pop bx
00000B03  58                pop ax
00000B04  FA                cli
00000B05  803E790000        cmp byte [0x79],0x0
00000B0A  7508              jnz 0xb14
00000B0C  8E167400          mov ss,[0x74]
00000B10  8B267200          mov sp,[0x72]
00000B14  FB                sti
00000B15  FE0E7900          dec byte [0x79]
00000B19  50                push ax
00000B1A  A08A03            mov al,[0x38a]
00000B1D  38067900          cmp [0x79],al
00000B21  58                pop ax
00000B22  7504              jnz 0xb28
00000B24  FF1E4106          call far [0x641]
00000B28  CB                retf
00000B29  8BF3              mov si,bx
00000B2B  F6440501          test byte [si+0x5],0x1
00000B2F  752B              jnz 0xb5c
00000B31  E86B00            call 0xb9f
00000B34  721D              jc 0xb53
00000B36  8D4432            lea ax,[si+0x32]
00000B39  8B5C2E            mov bx,[si+0x2e]
00000B3C  3BC3              cmp ax,bx
00000B3E  7407              jz 0xb47
00000B40  56                push si
00000B41  53                push bx
00000B42  E82200            call 0xb67
00000B45  5B                pop bx
00000B46  5E                pop si
00000B47  8D443A            lea ax,[si+0x3a]
00000B4A  8B5C36            mov bx,[si+0x36]
00000B4D  3BC3              cmp ax,bx
00000B4F  7516              jnz 0xb67
00000B51  F9                stc
00000B52  C3                ret
00000B53  C6440406          mov byte [si+0x4],0x6
00000B57  B018              mov al,0x18
00000B59  E90114            jmp 0x1f5d
00000B5C  8D5C2E            lea bx,[si+0x2e]
00000B5F  BD7708            mov bp,0x877
00000B62  E8A412            call 0x1e09
00000B65  EBEA              jmp short 0xb51
00000B67  C46F0A            les bp,[bx+0xa]
00000B6A  803E690300        cmp byte [0x369],0x0
00000B6F  7517              jnz 0xb88
00000B71  268A4637          mov al,[es:bp+0x37]
00000B75  84C0              test al,al
00000B77  74D8              jz 0xb51
00000B79  FEC0              inc al
00000B7B  74D4              jz 0xb51
00000B7D  26FE4E37          dec byte [es:bp+0x37]
00000B81  75CE              jnz 0xb51
00000B83  E81A16            call 0x21a0
00000B86  EBC9              jmp short 0xb51
00000B88  26807E3600        cmp byte [es:bp+0x36],0x0
00000B8D  74C2              jz 0xb51
00000B8F  26FE4E36          dec byte [es:bp+0x36]
00000B93  75DC              jnz 0xb71
00000B95  268B4634          mov ax,[es:bp+0x34]
00000B99  26894632          mov [es:bp+0x32],ax
00000B9D  EBE4              jmp short 0xb83
00000B9F  807C0403          cmp byte [si+0x4],0x3
00000BA3  755E              jnz 0xc03
00000BA5  33C0              xor ax,ax
00000BA7  A06903            mov al,[0x369]
00000BAA  014423            add [si+0x23],ax
00000BAD  8B4423            mov ax,[si+0x23]
00000BB0  807C2500          cmp byte [si+0x25],0x0
00000BB4  7403              jz 0xbb9
00000BB6  FE4C25            dec byte [si+0x25]
00000BB9  833EAC0000        cmp word [0xac],byte +0x0
00000BBE  7409              jz 0xbc9
00000BC0  3B06AC00          cmp ax,[0xac]
00000BC4  7203              jc 0xbc9
00000BC6  E99400            jmp 0xc5d
00000BC9  F6440520          test byte [si+0x5],0x20
00000BCD  7410              jz 0xbdf
00000BCF  E88D00            call 0xc5f
00000BD2  BB3D00            mov bx,0x3d
00000BD5  E82D00            call 0xc05
00000BD8  7229              jc 0xc03
00000BDA  806405DF          and byte [si+0x5],0xdf
00000BDE  C3                ret
00000BDF  3B06AE00          cmp ax,[0xae]
00000BE3  721E              jc 0xc03
00000BE5  833EAE0000        cmp word [0xae],byte +0x0
00000BEA  7417              jz 0xc03
00000BEC  E87000            call 0xc5f
00000BEF  807C2500          cmp byte [si+0x25],0x0
00000BF3  750E              jnz 0xc03
00000BF5  BB0800            mov bx,0x8
00000BF8  E80A00            call 0xc05
00000BFB  7206              jc 0xc03
00000BFD  8A4440            mov al,[si+0x40]
00000C00  884425            mov [si+0x25],al
00000C03  F8                clc
00000C04  C3                ret
00000C05  C6442600          mov byte [si+0x26],0x0
00000C09  803E7E0301        cmp byte [0x37e],0x1
00000C0E  743E              jz 0xc4e
00000C10  1E                push ds
00000C11  07                pop es
00000C12  56                push si
00000C13  8D7408            lea si,[si+0x8]
00000C16  8D7F21            lea di,[bx+0x21]
00000C19  A5                movsw
00000C1A  A5                movsw
00000C1B  A5                movsw
00000C1C  5E                pop si
00000C1D  56                push si
00000C1E  8D744E            lea si,[si+0x4e]
00000C21  8D7F06            lea di,[bx+0x6]
00000C24  A5                movsw
00000C25  A5                movsw
00000C26  A5                movsw
00000C27  5E                pop si
00000C28  8B441E            mov ax,[si+0x1e]
00000C2B  894716            mov [bx+0x16],ax
00000C2E  8A4420            mov al,[si+0x20]
00000C31  32E4              xor ah,ah
00000C33  894718            mov [bx+0x18],ax
00000C36  8B444A            mov ax,[si+0x4a]
00000C39  89470E            mov [bx+0xe],ax
00000C3C  8B444C            mov ax,[si+0x4c]
00000C3F  894729            mov [bx+0x29],ax
00000C42  56                push si
00000C43  E89B15            call 0x21e1
00000C46  5E                pop si
00000C47  7315              jnc 0xc5e
00000C49  C6067E0301        mov byte [0x37e],0x1
00000C4E  8B7C02            mov di,[si+0x2]
00000C51  837D0200          cmp word [di+0x2],byte +0x0
00000C55  7406              jz 0xc5d
00000C57  E84B11            call 0x1da5
00000C5A  E87711            call 0x1dd4
00000C5D  F9                stc
00000C5E  C3                ret
00000C5F  8D443A            lea ax,[si+0x3a]
00000C62  8B5C36            mov bx,[si+0x36]
00000C65  3BC3              cmp ax,bx
00000C67  740F              jz 0xc78
00000C69  C46F0A            les bp,[bx+0xa]
00000C6C  26807E3700        cmp byte [es:bp+0x37],0x0
00000C71  7505              jnz 0xc78
00000C73  26C6463701        mov byte [es:bp+0x37],0x1
00000C78  C3                ret
00000C79  B02A              mov al,0x2a
00000C7B  2686460A          xchg al,[es:bp+0xa]
00000C7F  EB04              jmp short 0xc85
00000C81  268A460A          mov al,[es:bp+0xa]
00000C85  26884638          mov [es:bp+0x38],al
00000C89  A1E800            mov ax,[0xe8]
00000C8C  2D2000            sub ax,0x20
00000C8F  26394608          cmp [es:bp+0x8],ax
00000C93  B001              mov al,0x1
00000C95  771E              ja 0xcb5
00000C97  53                push bx
00000C98  268A4603          mov al,[es:bp+0x3]
00000C9C  E84C12            call 0x1eeb
00000C9F  8A6715            mov ah,[bx+0x15]
00000CA2  8D7F04            lea di,[bx+0x4]
00000CA5  26897E3A          mov [es:bp+0x3a],di
00000CA9  5B                pop bx
00000CAA  B013              mov al,0x13
00000CAC  7207              jc 0xcb5
00000CAE  F6C402            test ah,0x2
00000CB1  740D              jz 0xcc0
00000CB3  B00D              mov al,0xd
00000CB5  268A6638          mov ah,[es:bp+0x38]
00000CB9  2688660A          mov [es:bp+0xa],ah
00000CBD  E95512            jmp 0x1f15
00000CC0  26C6463901        mov byte [es:bp+0x39],0x1
00000CC5  E88F13            call 0x2057
00000CC8  7218              jc 0xce2
00000CCA  F6C280            test dl,0x80
00000CCD  7413              jz 0xce2
00000CCF  26FE4639          inc byte [es:bp+0x39]
00000CD3  26807E0A2A        cmp byte [es:bp+0xa],0x2a
00000CD8  7405              jz 0xcdf
00000CDA  E88713            call 0x2064
00000CDD  EB03              jmp short 0xce2
00000CDF  E8AA13            call 0x208c
00000CE2  C647220E          mov byte [bx+0x22],0xe
00000CE6  C7471EC000        mov word [bx+0x1e],0xc0
00000CEB  B82000            mov ax,0x20
00000CEE  894739            mov [bx+0x39],ax
00000CF1  26034608          add ax,[es:bp+0x8]
00000CF5  894720            mov [bx+0x20],ax
00000CF8  C7473BAC05        mov word [bx+0x3b],0x5ac
00000CFD  8C5F3D            mov [bx+0x3d],ds
00000D00  06                push es
00000D01  26C44604          les ax,[es:bp+0x4]
00000D05  89473F            mov [bx+0x3f],ax
00000D08  8C4741            mov [bx+0x41],es
00000D0B  1E                push ds
00000D0C  07                pop es
00000D0D  8D7F2F            lea di,[bx+0x2f]
00000D10  E87911            call 0x1e8c
00000D13  07                pop es
00000D14  56                push si
00000D15  06                push es
00000D16  8D760A            lea si,[bp+0xa]
00000D19  1E                push ds
00000D1A  06                push es
00000D1B  1F                pop ds
00000D1C  07                pop es
00000D1D  BFAC05            mov di,0x5ac
00000D20  B90800            mov cx,0x8
00000D23  51                push cx
00000D24  F3A5              rep movsw
00000D26  59                pop cx
00000D27  3E8B763A          mov si,[ds:bp+0x3a]
00000D2B  06                push es
00000D2C  1F                pop ds
00000D2D  F3A5              rep movsw
00000D2F  07                pop es
00000D30  5E                pop si
00000D31  C7471C0000        mov word [bx+0x1c],0x0
00000D36  C747370000        mov word [bx+0x37],0x0
00000D3B  E87216            call 0x23b0
00000D3E  F7471E0100        test word [bx+0x1e],0x1
00000D43  7505              jnz 0xd4a
00000D45  E83311            call 0x1e7b
00000D48  EBF4              jmp short 0xd3e
00000D4A  B000              mov al,0x0
00000D4C  26FE4E39          dec byte [es:bp+0x39]
00000D50  7503              jnz 0xd55
00000D52  E960FF            jmp 0xcb5
00000D55  56                push si
00000D56  BEB000            mov si,0xb0
00000D59  E82411            call 0x1e80
00000D5C  5E                pop si
00000D5D  EB83              jmp short 0xce2
00000D5F  268B460A          mov ax,[es:bp+0xa]
00000D63  26034608          add ax,[es:bp+0x8]
00000D67  8B0EE800          mov cx,[0xe8]
00000D6B  83C143            add cx,byte +0x43
00000D6E  3BC1              cmp ax,cx
00000D70  B001              mov al,0x1
00000D72  7703              ja 0xd77
00000D74  EB04              jmp short 0xd7a
00000D76  90                nop
00000D77  E99B11            jmp 0x1f15
00000D7A  C64722FF          mov byte [bx+0x22],0xff
00000D7E  C7471EC400        mov word [bx+0x1e],0xc4
00000D83  268B4608          mov ax,[es:bp+0x8]
00000D87  894739            mov [bx+0x39],ax
00000D8A  2603460A          add ax,[es:bp+0xa]
00000D8E  894720            mov [bx+0x20],ax
00000D91  06                push es
00000D92  26C44604          les ax,[es:bp+0x4]
00000D96  89473B            mov [bx+0x3b],ax
00000D99  8C473D            mov [bx+0x3d],es
00000D9C  26C4460C          les ax,[es:bp+0xc]
00000DA0  89473F            mov [bx+0x3f],ax
00000DA3  8C4741            mov [bx+0x41],es
00000DA6  1E                push ds
00000DA7  07                pop es
00000DA8  8D7F2F            lea di,[bx+0x2f]
00000DAB  33C0              xor ax,ax
00000DAD  B90300            mov cx,0x3
00000DB0  F3AB              rep stosw
00000DB2  07                pop es
00000DB3  E8FA15            call 0x23b0
00000DB6  F7471E0100        test word [bx+0x1e],0x1
00000DBB  7505              jnz 0xdc2
00000DBD  E8BB10            call 0x1e7b
00000DC0  EBF4              jmp short 0xdb6
00000DC2  B000              mov al,0x0
00000DC4  EBB1              jmp short 0xd77
00000DC6  EBB2              jmp short 0xd7a
00000DC8  268A4603          mov al,[es:bp+0x3]
00000DCC  EB08              jmp short 0xdd6
00000DCE  268A4603          mov al,[es:bp+0x3]
00000DD2  3CFF              cmp al,0xff
00000DD4  741E              jz 0xdf4
00000DD6  8BCB              mov cx,bx
00000DD8  E81011            call 0x1eeb
00000DDB  B013              mov al,0x13
00000DDD  7206              jc 0xde5
00000DDF  F6471501          test byte [bx+0x15],0x1
00000DE3  7405              jz 0xdea
00000DE5  8BD9              mov bx,cx
00000DE7  E92B11            jmp 0x1f15
00000DEA  B013              mov al,0x13
00000DEC  F6471504          test byte [bx+0x15],0x4
00000DF0  8BD9              mov bx,cx
00000DF2  74F3              jz 0xde7
00000DF4  F7471E0200        test word [bx+0x1e],0x2
00000DF9  7503              jnz 0xdfe
00000DFB  E86510            call 0x1e63
00000DFE  E91D12            jmp 0x201e
00000E01  F7471E0200        test word [bx+0x1e],0x2
00000E06  7503              jnz 0xe0b
00000E08  E85810            call 0x1e63
00000E0B  E91012            jmp 0x201e
00000E0E  C3                ret
00000E0F  AF                scasw
00000E10  10EF              adc bh,ch
00000E12  10B00B59          adc [bx+si+0x590b],dh
00000E16  0CBD              or al,0xbd
00000E18  0CB1              or al,0xb1
00000E1A  0CCD              or al,0xcd
00000E1C  0CD7              or al,0xd7
00000E1E  0CDD              or al,0xdd
00000E20  0DEA11            or ax,0x11ea
00000E23  F8                clc
00000E24  11F5              adc bp,si
00000E26  0D2C11            or ax,0x112c
00000E29  60                pusha
00000E2A  118C129F          adc [si-0x60ee],cx
00000E2E  13B013B6          adc si,[bx+si-0x49ed]
00000E32  13DC              adc bx,sp
00000E34  1312              adc dx,[bp+si]
00000E36  0C7B              or al,0x7b
00000E38  0C89              or al,0x89
00000E3A  1E                push ds
00000E3B  02068C1E          add al,[0x1e8c]
00000E3F  0406              add al,0x6
00000E41  8CDA              mov dx,ds
00000E43  8EC2              mov es,dx
00000E45  8BF3              mov si,bx
00000E47  BFCC05            mov di,0x5cc
00000E4A  B91A00            mov cx,0x1a
00000E4D  F3A5              rep movsw
00000E4F  A4                movsb
00000E50  A1E205            mov ax,[0x5e2]
00000E53  8B16E405          mov dx,[0x5e4]
00000E57  8916E205          mov [0x5e2],dx
00000E5B  A3E405            mov [0x5e4],ax
00000E5E  A1D805            mov ax,[0x5d8]
00000E61  A3DA05            mov [0x5da],ax
00000E64  A1F305            mov ax,[0x5f3]
00000E67  A3F505            mov [0x5f5],ax
00000E6A  56                push si
00000E6B  BECC05            mov si,0x5cc
00000E6E  BFD205            mov di,0x5d2
00000E71  B90300            mov cx,0x3
00000E74  F3A5              rep movsw
00000E76  5E                pop si
00000E77  C43EF905          les di,[0x5f9]
00000E7B  8306C80001        add word [0xc8],byte +0x1
00000E80  8316CA0000        adc word [0xca],byte +0x0
00000E85  8A1EE005          mov bl,[0x5e0]
00000E89  80FB14            cmp bl,0x14
00000E8C  7608              jna 0xe96
00000E8E  80FBFF            cmp bl,0xff
00000E91  750C              jnz 0xe9f
00000E93  E98E07            jmp 0x1624
00000E96  32FF              xor bh,bh
00000E98  D1E3              shl bx,1
00000E9A  2EFFA71F0B        jmp [cs:bx+0xb1f]
00000E9F  C3                ret
00000EA0  E8F50F            call 0x1e98
00000EA3  76FA              jna 0xe9f
00000EA5  C706DE053C00      mov word [0x5de],0x3c
00000EAB  1E                push ds
00000EAC  07                pop es
00000EAD  BFEC00            mov di,0xec
00000EB0  B010              mov al,0x10
00000EB2  8B1E5B03          mov bx,[0x35b]
00000EB6  BDF90B            mov bp,0xbf9
00000EB9  E84D0F            call 0x1e09
00000EBC  C606E00503        mov byte [0x5e0],0x3
00000EC1  810EDC058000      or word [0x5dc],0x80
00000EC7  8B0EE605          mov cx,[0x5e6]
00000ECB  C706F905B000      mov word [0x5f9],0xb0
00000ED1  8C1EFB05          mov [0x5fb],ds
00000ED5  A1DE05            mov ax,[0x5de]
00000ED8  3BC8              cmp cx,ax
00000EDA  7602              jna 0xede
00000EDC  8BC8              mov cx,ax
00000EDE  890EDE05          mov [0x5de],cx
00000EE2  890EF705          mov [0x5f7],cx
00000EE6  E9C008            jmp 0x17a9
00000EE9  84C0              test al,al
00000EEB  7414              jz 0xf01
00000EED  B91200            mov cx,0x12
00000EF0  010EDE05          add [0x5de],cx
00000EF4  8D7704            lea si,[bx+0x4]
00000EF7  D1E9              shr cx,1
00000EF9  F3A5              rep movsw
00000EFB  7301              jnc 0xefe
00000EFD  A4                movsb
00000EFE  FEC8              dec al
00000F00  F9                stc
00000F01  C3                ret
00000F02  E8930F            call 0x1e98
00000F05  76FA              jna 0xf01
00000F07  803E7F0301        cmp byte [0x37f],0x1
00000F0C  7413              jz 0xf21
00000F0E  C606E10503        mov byte [0x5e1],0x3
00000F13  C706DE050000      mov word [0x5de],0x0
00000F19  C706F7050000      mov word [0x5f7],0x0
00000F1F  EB1A              jmp short 0xf3b
00000F21  A18003            mov ax,[0x380]
00000F24  A3DE05            mov [0x5de],ax
00000F27  A18203            mov ax,[0x382]
00000F2A  A3F905            mov [0x5f9],ax
00000F2D  A18403            mov ax,[0x384]
00000F30  A3FB05            mov [0x5fb],ax
00000F33  8B0EDE05          mov cx,[0x5de]
00000F37  890EF705          mov [0x5f7],cx
00000F3B  C606E00514        mov byte [0x5e0],0x14
00000F40  810EDC058000      or word [0x5dc],0x80
00000F46  E96008            jmp 0x17a9
00000F49  BE1502            mov si,0x215
00000F4C  8D5C2E            lea bx,[si+0x2e]
00000F4F  BD660C            mov bp,0xc66
00000F52  E8B40E            call 0x1e09
00000F55  C3                ret
00000F56  E8FE0E            call 0x1e57
00000F59  3C33              cmp al,0x33
00000F5B  75F8              jnz 0xf55
00000F5D  A1E405            mov ax,[0x5e4]
00000F60  394726            cmp [bx+0x26],ax
00000F63  75F0              jnz 0xf55
00000F65  C46F0A            les bp,[bx+0xa]
00000F68  E97906            jmp 0x15e4
00000F6B  BE1502            mov si,0x215
00000F6E  8D5C2E            lea bx,[si+0x2e]
00000F71  BD880C            mov bp,0xc88
00000F74  E8920E            call 0x1e09
00000F77  C3                ret
00000F78  E8DC0E            call 0x1e57
00000F7B  3C24              cmp al,0x24
00000F7D  7404              jz 0xf83
00000F7F  3C33              cmp al,0x33
00000F81  75F4              jnz 0xf77
00000F83  807F2300          cmp byte [bx+0x23],0x0
00000F87  74EE              jz 0xf77
00000F89  A1E405            mov ax,[0x5e4]
00000F8C  394726            cmp [bx+0x26],ax
00000F8F  75E6              jnz 0xf77
00000F91  C46F0A            les bp,[bx+0xa]
00000F94  803EE10503        cmp byte [0x5e1],0x3
00000F99  7503              jnz 0xf9e
00000F9B  E94007            jmp 0x16de
00000F9E  E94306            jmp 0x15e4
00000FA1  E8F40E            call 0x1e98
00000FA4  72AF              jc 0xf55
00000FA6  FE06E005          inc byte [0x5e0]
00000FAA  E9FC07            jmp 0x17a9
00000FAD  E8E80E            call 0x1e98
00000FB0  720A              jc 0xfbc
00000FB2  FE06E005          inc byte [0x5e0]
00000FB6  F6471580          test byte [bx+0x15],0x80
00000FBA  74EA              jz 0xfa6
00000FBC  C3                ret
00000FBD  E8D80E            call 0x1e98
00000FC0  7204              jc 0xfc6
00000FC2  804F1502          or byte [bx+0x15],0x2
00000FC6  C3                ret
00000FC7  E8CE0E            call 0x1e98
00000FCA  7250              jc 0x101c
00000FCC  8AD0              mov dl,al
00000FCE  32F6              xor dh,dh
00000FD0  8B1E5503          mov bx,[0x355]
00000FD4  BD430D            mov bp,0xd43
00000FD7  E82F0E            call 0x1e09
00000FDA  7241              jc 0x101d
00000FDC  FEC5              inc ch
00000FDE  753C              jnz 0x101c
00000FE0  F6440510          test byte [si+0x5],0x10
00000FE4  7503              jnz 0xfe9
00000FE6  E92804            jmp 0x1411
00000FE9  32ED              xor ch,ch
00000FEB  890EE405          mov [0x5e4],cx
00000FEF  C706DE052000      mov word [0x5de],0x20
00000FF5  C706F7051000      mov word [0x5f7],0x10
00000FFB  8D440E            lea ax,[si+0xe]
00000FFE  A3F905            mov [0x5f9],ax
00001001  8C1EFB05          mov [0x5fb],ds
00001005  8AC2              mov al,dl
00001007  E8E10E            call 0x1eeb
0000100A  8D4704            lea ax,[bx+0x4]
0000100D  A3FD05            mov [0x5fd],ax
00001010  8C1EFF05          mov [0x5ff],ds
00001014  C606E00508        mov byte [0x5e0],0x8
00001019  E98D07            jmp 0x17a9
0000101C  C3                ret
0000101D  FEC6              inc dh
0000101F  8B1E5503          mov bx,[0x355]
00001023  E8E30D            call 0x1e09
00001026  73F4              jnc 0x101c
00001028  C706E4050000      mov word [0x5e4],0x0
0000102E  B008              mov al,0x8
00001030  E96D07            jmp 0x17a0
00001033  8A4704            mov al,[bx+0x4]
00001036  3C03              cmp al,0x3
00001038  752D              jnz 0x1067
0000103A  56                push si
0000103B  8D774E            lea si,[bx+0x4e]
0000103E  E87607            call 0x17b7
00001041  5E                pop si
00001042  7403              jz 0x1047
00001044  E98400            jmp 0x10cb
00001047  A1E205            mov ax,[0x5e2]
0000104A  39471E            cmp [bx+0x1e],ax
0000104D  757C              jnz 0x10cb
0000104F  8BF3              mov si,bx
00001051  A1D805            mov ax,[0x5d8]
00001054  39444A            cmp [si+0x4a],ax
00001057  7572              jnz 0x10cb
00001059  A1F305            mov ax,[0x5f3]
0000105C  39444C            cmp [si+0x4c],ax
0000105F  756A              jnz 0x10cb
00001061  B5FF              mov ch,0xff
00001063  8A4F20            mov cl,[bx+0x20]
00001066  C3                ret
00001067  3C01              cmp al,0x1
00001069  7560              jnz 0x10cb
0000106B  385707            cmp [bx+0x7],dl
0000106E  755B              jnz 0x10cb
00001070  8BF3              mov si,bx
00001072  E80F07            call 0x1784
00001075  72EF              jc 0x1066
00001077  84F6              test dh,dh
00001079  7549              jnz 0x10c4
0000107B  1E                push ds
0000107C  56                push si
0000107D  57                push di
0000107E  8D7D0A            lea di,[di+0xa]
00001081  C536F905          lds si,[0x5f9]
00001085  8D7410            lea si,[si+0x10]
00001088  E8420E            call 0x1ecd
0000108B  5F                pop di
0000108C  5E                pop si
0000108D  1F                pop ds
0000108E  72D6              jc 0x1066
00001090  1E                push ds
00001091  06                push es
00001092  57                push di
00001093  8CD9              mov cx,ds
00001095  8EC1              mov es,cx
00001097  8D7C0E            lea di,[si+0xe]
0000109A  833EF70510        cmp word [0x5f7],byte +0x10
0000109F  7609              jna 0x10aa
000010A1  C536F905          lds si,[0x5f9]
000010A5  8D7410            lea si,[si+0x10]
000010A8  EB04              jmp short 0x10ae
000010AA  C536FD05          lds si,[0x5fd]
000010AE  B90800            mov cx,0x8
000010B1  1E                push ds
000010B2  56                push si
000010B3  51                push cx
000010B4  F3A5              rep movsw
000010B6  59                pop cx
000010B7  5E                pop si
000010B8  1F                pop ds
000010B9  5F                pop di
000010BA  07                pop es
000010BB  8D7D0A            lea di,[di+0xa]
000010BE  F3A5              rep movsw
000010C0  1F                pop ds
000010C1  E91A06            jmp 0x16de
000010C4  26807D0A2A        cmp byte [es:di+0xa],0x2a
000010C9  74C5              jz 0x1090
000010CB  F9                stc
000010CC  C3                ret
000010CD  E8A204            call 0x1572
000010D0  807C0402          cmp byte [si+0x4],0x2
000010D4  75F6              jnz 0x10cc
000010D6  E8AB06            call 0x1784
000010D9  72F1              jc 0x10cc
000010DB  833EE20500        cmp word [0x5e2],byte +0x0
000010E0  75AE              jnz 0x1090
000010E2  E9F905            jmp 0x16de
000010E5  E85604            call 0x153e
000010E8  7303              jnc 0x10ed
000010EA  E91A03            jmp 0x1407
000010ED  F706DC050800      test word [0x5dc],0x8
000010F3  7417              jz 0x110c
000010F5  E88802            call 0x1380
000010F8  C606E00501        mov byte [0x5e0],0x1
000010FD  53                push bx
000010FE  56                push si
000010FF  E8E202            call 0x13e4
00001102  5E                pop si
00001103  5B                pop bx
00001104  C606E0050B        mov byte [0x5e0],0xb
00001109  E87402            call 0x1380
0000110C  8A7427            mov dh,[si+0x27]
0000110F  8A16E105          mov dl,[0x5e1]
00001113  FEC6              inc dh
00001115  3AD6              cmp dl,dh
00001117  7440              jz 0x1159
00001119  80FAF0            cmp dl,0xf0
0000111C  770C              ja 0x112a
0000111E  80FA0F            cmp dl,0xf
00001121  770C              ja 0x112f
00001123  80FEF0            cmp dh,0xf0
00001126  7719              ja 0x1141
00001128  EB05              jmp short 0x112f
0000112A  80FE0F            cmp dh,0xf
0000112D  721F              jc 0x114e
0000112F  F706DC050002      test word [0x5dc],0x200
00001135  7406              jz 0x113d
00001137  3AD6              cmp dl,dh
00001139  724D              jc 0x1188
0000113B  EB04              jmp short 0x1141
0000113D  3AD6              cmp dl,dh
0000113F  7215              jc 0x1156
00001141  FECA              dec dl
00001143  885427            mov [si+0x27],dl
00001146  EB11              jmp short 0x1159
00001148  804C0604          or byte [si+0x6],0x4
0000114C  EB3A              jmp short 0x1188
0000114E  F706DC050002      test word [0x5dc],0x200
00001154  7532              jnz 0x1188
00001156  E96C02            jmp 0x13c5
00001159  E82806            call 0x1784
0000115C  7207              jc 0x1165
0000115E  3C15              cmp al,0x15
00001160  7503              jnz 0x1165
00001162  E98A00            jmp 0x11ef
00001165  BB9702            mov bx,0x297
00001168  BD990E            mov bp,0xe99
0000116B  E89B0C            call 0x1e09
0000116E  7318              jnc 0x1188
00001170  BB9702            mov bx,0x297
00001173  BDA50F            mov bp,0xfa5
00001176  E8900C            call 0x1e09
00001179  730D              jnc 0x1188
0000117B  F706DC050002      test word [0x5dc],0x200
00001181  75C5              jnz 0x1148
00001183  33ED              xor bp,bp
00001185  E91B01            jmp 0x12a3
00001188  C3                ret
00001189  C47F0A            les di,[bx+0xa]
0000118C  8A4407            mov al,[si+0x7]
0000118F  26384503          cmp [es:di+0x3],al
00001193  F9                stc
00001194  75F2              jnz 0x1188
00001196  26884503          mov [es:di+0x3],al
0000119A  8A4420            mov al,[si+0x20]
0000119D  26884502          mov [es:di+0x2],al
000011A1  8BEE              mov bp,si
000011A3  F6440510          test byte [si+0x5],0x10
000011A7  7412              jz 0x11bb
000011A9  F706DC050002      test word [0x5dc],0x200
000011AF  7597              jnz 0x1148
000011B1  C606060601        mov byte [0x606],0x1
000011B6  33ED              xor bp,bp
000011B8  E9E800            jmp 0x12a3
000011BB  8BF3              mov si,bx
000011BD  E8E50B            call 0x1da5
000011C0  8BF5              mov si,bp
000011C2  57                push di
000011C3  8D7C2E            lea di,[si+0x2e]
000011C6  E8660B            call 0x1d2f
000011C9  8BF5              mov si,bp
000011CB  741D              jz 0x11ea
000011CD  53                push bx
000011CE  8D5C2E            lea bx,[si+0x2e]
000011D1  8B1F              mov bx,[bx]
000011D3  E8810C            call 0x1e57
000011D6  8B1F              mov bx,[bx]
000011D8  3C11              cmp al,0x11
000011DA  750D              jnz 0x11e9
000011DC  8B1F              mov bx,[bx]
000011DE  833F00            cmp word [bx],byte +0x0
000011E1  7506              jnz 0x11e9
000011E3  5B                pop bx
000011E4  E8AA0F            call 0x2191
000011E7  EB01              jmp short 0x11ea
000011E9  5B                pop bx
000011EA  5F                pop di
000011EB  804C0602          or byte [si+0x6],0x2
000011EF  33C9              xor cx,cx
000011F1  F706DC050002      test word [0x5dc],0x200
000011F7  7418              jz 0x1211
000011F9  806406FB          and byte [si+0x6],0xfb
000011FD  B001              mov al,0x1
000011FF  2686453E          xchg al,[es:di+0x3e]
00001203  3C01              cmp al,0x1
00001205  7524              jnz 0x122b
00001207  51                push cx
00001208  E8B602            call 0x14c1
0000120B  59                pop cx
0000120C  FE4427            inc byte [si+0x27]
0000120F  EB27              jmp short 0x1238
00001211  26807D3E01        cmp byte [es:di+0x3e],0x1
00001216  7504              jnz 0x121c
00001218  F9                stc
00001219  E96CFF            jmp 0x1188
0000121C  F6440580          test byte [si+0x5],0x80
00001220  7405              jz 0x1227
00001222  33ED              xor bp,bp
00001224  EB7D              jmp short 0x12a3
00001226  90                nop
00001227  804C0580          or byte [si+0x5],0x80
0000122B  FE4427            inc byte [si+0x27]
0000122E  894C29            mov [si+0x29],cx
00001231  884C2B            mov [si+0x2b],cl
00001234  26894D3A          mov [es:di+0x3a],cx
00001238  26874D08          xchg cx,[es:di+0x8]
0000123C  26894D38          mov [es:di+0x38],cx
00001240  A1DE05            mov ax,[0x5de]
00001243  3BC1              cmp ax,cx
00001245  763F              jna 0x1286
00001247  F706DC050002      test word [0x5dc],0x200
0000124D  7407              jz 0x1256
0000124F  E86602            call 0x14b8
00001252  F9                stc
00001253  E932FF            jmp 0x1188
00001256  8126DC057FFF      and word [0x5dc],0xff7f
0000125C  51                push cx
0000125D  53                push bx
0000125E  56                push si
0000125F  8BE9              mov bp,cx
00001261  E83F00            call 0x12a3
00001264  5E                pop si
00001265  5B                pop bx
00001266  58                pop ax
00001267  721D              jc 0x1286
00001269  8B7C3E            mov di,[si+0x3e]
0000126C  806405FD          and byte [si+0x5],0xfd
00001270  F745108000        test word [di+0x10],0x80
00001275  7404              jz 0x127b
00001277  804C0502          or byte [si+0x5],0x2
0000127B  C645140D          mov byte [di+0x14],0xd
0000127F  89451A            mov [di+0x1a],ax
00001282  C6451C00          mov byte [di+0x1c],0x0
00001286  A3DE05            mov [0x5de],ax
00001289  3906F705          cmp [0x5f7],ax
0000128D  7603              jna 0x1292
0000128F  A3F705            mov [0x5f7],ax
00001292  E97204            jmp 0x1707
00001295  C47F0A            les di,[bx+0xa]
00001298  8A4407            mov al,[si+0x7]
0000129B  26807D03FF        cmp byte [es:di+0x3],0xff
000012A0  E9F0FE            jmp 0x1193
000012A3  8B5C3E            mov bx,[si+0x3e]
000012A6  85DB              test bx,bx
000012A8  741C              jz 0x12c6
000012AA  8A7715            mov dh,[bx+0x15]
000012AD  8A16E105          mov dl,[0x5e1]
000012B1  3AF2              cmp dh,dl
000012B3  7504              jnz 0x12b9
000012B5  F9                stc
000012B6  E9C600            jmp 0x137f
000012B9  FEC6              inc dh
000012BB  3AD6              cmp dl,dh
000012BD  7404              jz 0x12c3
000012BF  F9                stc
000012C0  E9BC00            jmp 0x137f
000012C3  E8450D            call 0x200b
000012C6  56                push si
000012C7  8B1E4F03          mov bx,[0x34f]
000012CB  E8CD0A            call 0x1d9b
000012CE  8BDE              mov bx,si
000012D0  5E                pop si
000012D1  7303              jnc 0x12d6
000012D3  E9A900            jmp 0x137f
000012D6  895C3E            mov [si+0x3e],bx
000012D9  8BFB              mov di,bx
000012DB  8CD8              mov ax,ds
000012DD  8EC0              mov es,ax
000012DF  8CDA              mov dx,ds
000012E1  C5360206          lds si,[0x602]
000012E5  B93500            mov cx,0x35
000012E8  D1E9              shr cx,1
000012EA  F3A5              rep movsw
000012EC  7301              jnc 0x12ef
000012EE  A4                movsb
000012EF  8EDA              mov ds,dx
000012F1  296F12            sub [bx+0x12],bp
000012F4  016F2D            add [bx+0x2d],bp
000012F7  296F2B            sub [bx+0x2b],bp
000012FA  7308              jnc 0x1304
000012FC  33C0              xor ax,ax
000012FE  87472B            xchg ax,[bx+0x2b]
00001301  294731            sub [bx+0x31],ax
00001304  A11102            mov ax,[0x211]
00001307  394712            cmp [bx+0x12],ax
0000130A  7610              jna 0x131c
0000130C  894712            mov [bx+0x12],ax
0000130F  39472B            cmp [bx+0x2b],ax
00001312  7603              jna 0x1317
00001314  89472B            mov [bx+0x2b],ax
00001317  8167107FFF        and word [bx+0x10],0xff7f
0000131C  8B4712            mov ax,[bx+0x12]
0000131F  894735            mov [bx+0x35],ax
00001322  8B4712            mov ax,[bx+0x12]
00001325  8BC8              mov cx,ax
00001327  874F2B            xchg cx,[bx+0x2b]
0000132A  2BC1              sub ax,cx
0000132C  8D7F37            lea di,[bx+0x37]
0000132F  8BD7              mov dx,di
00001331  8CDD              mov bp,ds
00001333  C5772D            lds si,[bx+0x2d]
00001336  D1E9              shr cx,1
00001338  F3A5              rep movsw
0000133A  7301              jnc 0x133d
0000133C  A4                movsb
0000133D  8EDD              mov ds,bp
0000133F  89572D            mov [bx+0x2d],dx
00001342  8C472F            mov [bx+0x2f],es
00001345  8BC8              mov cx,ax
00001347  E335              jcxz 0x137e
00001349  1E                push ds
0000134A  837F3300          cmp word [bx+0x33],byte +0x0
0000134E  740C              jz 0x135c
00001350  C57731            lds si,[bx+0x31]
00001353  D1E9              shr cx,1
00001355  F3A5              rep movsw
00001357  7301              jnc 0x135a
00001359  A4                movsb
0000135A  EB21              jmp short 0x137d
0000135C  8B7731            mov si,[bx+0x31]
0000135F  53                push bx
00001360  06                push es
00001361  8D1E8B03          lea bx,[0x38b]
00001365  890F              mov [bx],cx
00001367  897F02            mov [bx+0x2],di
0000136A  8C4704            mov [bx+0x4],es
0000136D  C747060000        mov word [bx+0x6],0x0
00001372  8CD8              mov ax,ds
00001374  8EC0              mov es,ax
00001376  FF1E8C00          call far [0x8c]
0000137A  07                pop es
0000137B  5B                pop bx
0000137C  FC                cld
0000137D  1F                pop ds
0000137E  F8                clc
0000137F  C3                ret
00001380  A0E905            mov al,[0x5e9]
00001383  8606E105          xchg al,[0x5e1]
00001387  A2E905            mov [0x5e9],al
0000138A  A1EA05            mov ax,[0x5ea]
0000138D  8706E605          xchg ax,[0x5e6]
00001391  A3EA05            mov [0x5ea],ax
00001394  A0EC05            mov al,[0x5ec]
00001397  8606E805          xchg al,[0x5e8]
0000139B  A2EC05            mov [0x5ec],al
0000139E  C3                ret
0000139F  833EDE0500        cmp word [0x5de],byte +0x0
000013A4  7538              jnz 0x13de
000013A6  E89501            call 0x153e
000013A9  7309              jnc 0x13b4
000013AB  807C0404          cmp byte [si+0x4],0x4
000013AF  7403              jz 0x13b4
000013B1  EB54              jmp short 0x1407
000013B3  90                nop
000013B4  8A16E105          mov dl,[0x5e1]
000013B8  8A7427            mov dh,[si+0x27]
000013BB  3AD6              cmp dl,dh
000013BD  7406              jz 0x13c5
000013BF  FECE              dec dh
000013C1  3AD6              cmp dl,dh
000013C3  7519              jnz 0x13de
000013C5  C6442600          mov byte [si+0x26],0x0
000013C9  8B4429            mov ax,[si+0x29]
000013CC  A3E605            mov [0x5e6],ax
000013CF  8A442B            mov al,[si+0x2b]
000013D2  A2E805            mov [0x5e8],al
000013D5  8816E105          mov [0x5e1],dl
000013D9  B001              mov al,0x1
000013DB  E9C203            jmp 0x17a0
000013DE  C3                ret
000013DF  E85C01            call 0x153e
000013E2  7222              jc 0x1406
000013E4  A0E105            mov al,[0x5e1]
000013E7  3A4428            cmp al,[si+0x28]
000013EA  751A              jnz 0x1406
000013EC  E8AC03            call 0x179b
000013EF  7215              jc 0x1406
000013F1  837F0400          cmp word [bx+0x4],byte +0x0
000013F5  7506              jnz 0x13fd
000013F7  837F0600          cmp word [bx+0x6],byte +0x0
000013FB  7406              jz 0x1403
000013FD  807F220C          cmp byte [bx+0x22],0xc
00001401  7403              jz 0x1406
00001403  E9D802            jmp 0x16de
00001406  C3                ret
00001407  C606E10518        mov byte [0x5e1],0x18
0000140C  B00A              mov al,0xa
0000140E  E98F03            jmp 0x17a0
00001411  B018              mov al,0x18
00001413  C6440406          mov byte [si+0x4],0x6
00001417  E8430B            call 0x1f5d
0000141A  EBEB              jmp short 0x1407
0000141C  A0E405            mov al,[0x5e4]
0000141F  E83518            call 0x2c57
00001422  72E3              jc 0x1407
00001424  8A440C            mov al,[si+0xc]
00001427  80FA0B            cmp dl,0xb
0000142A  EBEB              jmp short 0x1417
0000142C  FF00              inc word [bx+si]
0000142E  018E06E8          add [bp-0x17fa],cx
00001432  43                inc bx
00001433  0BEB              or bp,bx
00001435  3E8064003C        and byte [ds:si+0x0],0x3c
0000143A  E9DC05            jmp 0x1a19
0000143D  358A54            xor ax,0x548a
00001440  28FE              sub dh,bh
00001442  C23AE9            ret 0xe93a
00001445  C20375            ret 0x7503
00001448  0BE8              or bp,ax
0000144A  54                push sp
0000144B  037206            add si,[bp+si+0x6]
0000144E  FE4428            inc byte [si+0x28]
00001451  E98F72            jmp 0x86e3
00001454  50                push ax
00001455  8AEB              mov ch,bl
00001457  0072B2            add [bp+si-0x4e],dh
0000145A  027406            add dh,[si+0x6]
0000145D  3AD6              cmp dl,dh
0000145F  724D              jc 0x14ae
00001461  EBF6              jmp short 0x1459
00001463  44                inc sp
00001464  06                push es
00001465  0475              add al,0x75
00001467  7628              jna 0x1491
00001469  751A              jnz 0x1485
0000146B  E8AC27            call 0x3c1a
0000146E  7545              jnz 0x14b5
00001470  E81603            call 0x1789
00001473  7269              jc 0x14de
00001475  3C15              cmp al,0x15
00001477  018E0616          add [bp+0x1606],cx
0000147B  7561              jnz 0x14de
0000147D  058A44            add ax,0x448a
00001480  8A542B            mov dl,[si+0x2b]
00001483  3816E805          cmp [0x5e8],dl
00001487  7255              jc 0x14de
00001489  771C              ja 0x14a7
0000148B  3905              cmp [di],ax
0000148D  A0EC72            mov al,[0x72ec]
00001490  4D                dec bp
00001491  7714              ja 0x14a7
00001493  027406            add dh,[si+0x6]
00001496  3AD6              cmp dl,dh
00001498  724D              jc 0x14e7
0000149A  09763F            or [bp+0x3f],si
0000149D  F7263945          mul word [0x4539]
000014A1  387219            cmp [bp+si+0x19],dh
000014A4  E96502            jmp 0x170c
000014A7  027597            add dh,[di-0x69]
000014AA  C60606060E        mov byte [0x606],0xe
000014AF  8A5427            mov dl,[si+0x27]
000014B2  E915FF            jmp 0x13ca
000014B5  027406            add dh,[si+0x6]
000014B8  3AD6              cmp dl,dh
000014BA  724D              jc 0x1509
000014BC  213A              and [bp+si],di
000014BE  F706DC26C645      test word [0x26dc],0x45c6
000014C4  3E0033            add [ds:bp+di],dh
000014C7  C9                leave
000014C8  2B26894D          sub sp,[0x4d89]
000014CC  3A26874D          cmp ah,[0x4d87]
000014D0  0826898B          or [0x8b89],ah
000014D4  38A1DE03          cmp [bx+di+0x3de],ah
000014D8  4D                dec bp
000014D9  38874D08          cmp [bx+0x84d],al
000014DD  08C3              or bl,al
000014DF  E89500            call 0x1577
000014E2  03EB              add bp,bx
000014E4  54                push sp
000014E5  90                nop
000014E6  75C6              jnz 0x14ae
000014E8  45                inc bp
000014E9  140D              adc al,0xd
000014EB  40                inc ax
000014EC  C3                ret
000014ED  1872E3            sbb [bp+si-0x1d],dh
000014F0  8A6917            mov ch,[bx+di+0x17]
000014F3  7249              jc 0x153e
000014F5  E8A802            call 0x17a0
000014F8  7226              jc 0x1520
000014FA  37                aaa
000014FB  7431              jz 0x152e
000014FD  320D              xor cl,[di]
000014FF  234E52            and cx,[bp+0x52]
00001502  752D              jnz 0x1531
00001504  7D32              jnl 0x1538
00001506  07                pop es
00001507  237416            and si,[si+0x16]
0000150A  752D              jnz 0x1539
0000150C  7D32              jnl 0x1540
0000150E  0023              add [bp+di],ah
00001510  740E              jz 0x1520
00001512  752D              jnz 0x1541
00001514  7D32              jnl 0x1548
00001516  F5                cmc
00001517  220C              and cl,[si]
00001519  7403              jz 0x151e
0000151B  E9D801            jmp 0x16f6
0000151E  74CC              jz 0x14ec
00001520  32FF              xor bh,bh
00001522  8172081074        xor word [bp+si+0x8],0x7410
00001527  07                pop es
00001528  C3                ret
00001529  0BE8              or bp,ax
0000152B  7ABF              jpe 0x14ec
0000152D  B405              mov ah,0x5
0000152F  28751A            sub [di+0x1a],dh
00001532  3C0A              cmp al,0xa
00001534  7402              jz 0x1538
00001536  B406              mov ah,0x6
00001538  886404            mov [si+0x4],ah
0000153B  E8240A            call 0x1f62
0000153E  B009              mov al,0x9
00001540  E96202            jmp 0x17a5
00001543  E83100            call 0x1577
00001546  3CE9              cmp al,0xe9
00001548  DC05              fadd qword [di]
0000154A  355E33            xor ax,0x335e
0000154D  C0A069248B        shl byte [bx+si+0x2469],byte 0x8b
00001552  D6                salc
00001553  06                push es
00001554  A5                movsw
00001555  A5                movsw
00001556  E86302            call 0x17bc
00001559  8BF2              mov si,dx
0000155B  7518              jnz 0x1575
0000155D  4A                dec dx
0000155E  7572              jnz 0x15d2
00001560  A1F305            mov ax,[0x5f3]
00001563  3910              cmp [bx+si],dx
00001565  4C                dec sp
00001566  756A              jnz 0x15d2
00001568  B5FF              mov ch,0xff
0000156A  8A4F08            mov cl,[bx+0x8]
0000156D  1E                push ds
0000156E  757C              jnz 0x15ec
00001570  8B441E            mov ax,[si+0x1e]
00001573  3E7C03            ds jl 0x1579
00001576  FF18              call far [bx+si]
00001578  72E3              jc 0x155d
0000157A  8ADF              mov bl,bh
0000157C  16                push ss
0000157D  7301              jnc 0x1580
0000157F  58                pop ax
00001580  C3                ret
00001581  E81909            call 0x1e9d
00001584  7621              jna 0x15a7
00001586  8AD0              mov dl,al
00001588  8AF2              mov dh,dl
0000158A  2EBD880C          cs mov bp,0xc88
0000158E  E892CB            call 0xe123
00001591  E81015            call 0x2aa4
00001594  BDBB12            mov bp,0x12bb
00001597  E87408            call 0x1e0e
0000159A  730B              jnc 0x15a7
0000159C  0CE8              or al,0xe8
0000159E  92                xchg ax,dx
0000159F  B2FF              mov dl,0xff
000015A1  BDBB12            mov bp,0x12bb
000015A4  E86708            call 0x1e0e
000015A7  F9                stc
000015A8  C3                ret
000015A9  BD2D13            mov bp,0x132d
000015AC  E85F08            call 0x1e0e
000015AF  C3                ret
000015B0  E8A908            call 0x1e5c
000015B3  3C21              cmp al,0x21
000015B5  E97906            jmp 0x1c31
000015B8  BE1526            mov si,0x2615
000015BB  385603            cmp [bp+0x3],dl
000015BE  06                push es
000015BF  BE1575            mov si,0x7515
000015C2  E426              in al,0x26
000015C4  887603            mov [bp+0x3],dh
000015C7  8D7E0A            lea di,[bp+0xa]
000015CA  1E                push ds
000015CB  56                push si
000015CC  7410              jz 0x15de
000015CE  EB04              jmp short 0x15d4
000015D0  C536FD1F          lds si,[0x1ffd]
000015D4  07                pop es
000015D5  5F                pop di
000015D6  5E                pop si
000015D7  C6                db 0xc6
000015D8  5E                pop si
000015D9  1F                pop ds
000015DA  39260329          cmp [0x2903],sp
000015DE  C706F729A3F7      mov word [0x29f7],0xf7a3
000015E4  05018C            add ax,0x8c01
000015E7  1E                push ds
000015E8  FB                sti
000015E9  763F              jna 0x162a
000015EB  F7262B46          mul word [0x462b]
000015EF  087616            or [bp+0x16],dh
000015F2  FF5153            call [bx+di+0x53]
000015F5  56                push si
000015F6  8BE9              mov bp,cx
000015F8  29C7              sub di,ax
000015FA  06                push es
000015FB  F7A10576          mul word [bx+di+0x7605]
000015FF  03A3F705          add sp,[bp+di+0x5f7]
00001603  E97204            jmp 0x1a78
00001606  C47F33            les di,[bx+0x33]
00001609  C0E480            shl ah,byte 0x80
0000160C  7C26              jl 0x1634
0000160E  894D46            mov [di+0x46],cx
00001611  A1DE05            mov ax,[0x5de]
00001614  46                inc si
00001615  388BC68B          cmp [bp+di-0x743a],cl
00001619  F5                cmc
0000161A  57                push di
0000161B  8D07              lea ax,[bx]
0000161D  8BF0              mov si,ax
0000161F  E9EA00            jmp 0x170c
00001622  E83708            call 0x1e5c
00001625  3C23              cmp al,0x23
00001627  EB95              jmp short 0x15be
00001629  BEBD88            mov si,0x88bd
0000162C  0CE8              or al,0xe8
0000162E  92                xchg ax,dx
0000162F  0E                push cs
00001630  44                inc sp
00001631  13E8              adc bp,ax
00001633  D907              fld dword [bx]
00001635  7300              jnc 0x1637
00001637  F9                stc
00001638  C3                ret
00001639  06                push es
0000163A  BE1526            mov si,0x2615
0000163D  385603            cmp [bp+0x3],dl
00001640  763F              jna 0x1681
00001642  F7262B46          mul word [0x462b]
00001646  087616            or [bp+0x16],dh
00001649  FF5153            call [bx+di+0x53]
0000164C  56                push si
0000164D  8BE9              mov bp,cx
0000164F  29C7              sub di,ax
00001651  06                push es
00001652  F7A10576          mul word [bx+di+0x7605]
00001656  03A3F705          add sp,[bp+di+0x5f7]
0000165A  E97204            jmp 0x1acf
0000165D  C47F26            les di,[bx+0x26]
00001660  837E1200          cmp word [bp+0x12],byte +0x0
00001664  7414              jz 0x167a
00001666  51                push cx
00001667  56                push si
00001668  1E                push ds
00001669  8BE0              mov sp,ax
0000166B  051474            add ax,0x7414
0000166E  10EB              adc bl,ch
00001670  0474              add al,0x74
00001672  05268B            add ax,0x8b26
00001675  1F                pop ds
00001676  5E                pop si
00001677  59                pop cx
00001678  75BD              jnz 0x1637
0000167A  33C0              xor ax,ax
0000167C  E480              in al,0x80
0000167E  7C26              jl 0x16a6
00001680  894D46            mov [di+0x46],cx
00001683  A1DE05            mov ax,[0x5de]
00001686  46                inc si
00001687  388BC68B          cmp [bp+di-0x743a],cl
0000168B  F5                cmc
0000168C  57                push di
0000168D  1B07              sbb ax,[bx]
0000168F  8BF0              mov si,ax
00001691  EB79              jmp short 0x170c
00001693  90                nop
00001694  E8ACFE            call 0x1543
00001697  895C3E            mov [si+0x3e],bx
0000169A  70FD              jo 0x1699
0000169C  45                inc bp
0000169D  140D              adc al,0xd
0000169F  204429            and [si+0x29],al
000016A2  A3E6C3            mov [0xc3e6],ax
000016A5  E89BFE            call 0x1543
000016A8  72EF              jc 0x1699
000016AA  C3                ret
000016AB  E8C9FE            call 0x1577
000016AE  3CE9              cmp al,0xe9
000016B0  DC05              fadd qword [di]
000016B2  355E33            xor ax,0x335e
000016B5  C0A072F1E8        shl byte [bx+si-0xe8e],byte 0xe8
000016BA  95                xchg ax,bp
000016BB  FE                db 0xfe
000016BC  72EC              jc 0x16aa
000016BE  027406            add dh,[si+0x6]
000016C1  3AD6              cmp dl,dh
000016C3  017406            add [si+0x6],si
000016C6  0026392B          add [0x2b39],ah
000016CA  A2E8B0            mov [0xb0e8],al
000016CD  12E9              adc ch,cl
000016CF  D400              aam 0x0
000016D1  E86FFE            call 0x1543
000016D4  72D4              jc 0x16aa
000016D6  E8B000            call 0x1789
000016D9  72CF              jc 0x16aa
000016DB  0BE8              or bp,ax
000016DD  7A04              jpe 0x16e3
000016DF  1F                pop ds
000016E0  833FC7            cmp word [bx],byte -0x39
000016E3  8B571E            mov dx,[bx+0x1e]
000016E6  7F14              jg 0x16fc
000016E8  8D772F            lea si,[bx+0x2f]
000016EB  B90E05            mov cx,0x50e
000016EE  B903B9            mov cx,0xb903
000016F1  15E205            adc ax,0x5e2
000016F4  8B1683E2          mov dx,[0xe283]
000016F8  11A1DC05          adc [bx+di+0x5dc],sp
000016FC  25EEFF            and ax,0xffee
000016FF  0BD0              or dx,ax
00001701  83CA02            or dx,byte +0x2
00001704  89571E            mov [bx+0x1e],dx
00001707  E8750A            call 0x217f
0000170A  F8                clc
0000170B  C3                ret
0000170C  8BEE              mov bp,si
0000170E  E8D2FF            call 0x16e3
00001711  8BF5              mov si,bp
00001713  06                push es
00001714  BE1576            mov si,0x7615
00001717  3F                aas
00001718  F7260146          mul word [0x4601]
0000171C  A1DE29            mov ax,[0x29de]
0000171F  46                inc si
00001720  38268B56          cmp [0x568b],ah
00001724  3A260146          cmp ah,[0x4601]
00001728  3A01              cmp al,[bx+di]
0000172A  44                inc sp
0000172B  2980542B          sub [bx+si+0x2b54],ax
0000172F  008BE005          add [bp+di+0x5e0],cl
00001733  142B              adc al,0x2b
00001735  C126C47E04        shl word [0x7ec4],byte 0x4
0000173A  03FA              add di,dx
0000173C  06                push es
0000173D  B93500            mov cx,0x35
00001740  F9                stc
00001741  0501A4            add ax,0xa401
00001744  8EDA              mov ds,dx
00001746  296F12            sub [bx+0x12],bp
00001749  016F83            add [bx-0x7d],bp
0000174C  7F33              jg 0x1781
0000174E  3800              cmp [bx+si],al
00001750  7417              jz 0x1769
00001752  FF05              inc word [di]
00001754  00740D            add [si+0xd],dh
00001757  0800              or [bx+si],al
00001759  1E                push ds
0000175A  56                push si
0000175B  01A4EB21          add [si+0x21eb],sp
0000175F  8B7731            mov si,[bx+0x31]
00001762  53                push bx
00001763  228B001E          and cl,[bp+di+0x1e00]
00001767  56                push si
00001768  03890F89          add cx,[bx+di-0x76f1]
0000176C  7F02              jg 0x1770
0000176E  8C4704            mov [bx+0x4],es
00001771  C747060000        mov word [bx+0x6],0x0
00001776  8CD8              mov ax,ds
00001778  8EC0              mov es,ax
0000177A  FF1E8C00          call far [0x8c]
0000177E  07                pop es
0000177F  5B                pop bx
00001780  FC                cld
00001781  1F                pop ds
00001782  F8                clc
00001783  C3                ret
00001784  A0E905            mov al,[0x5e9]
00001787  86060CE8          xchg al,[0xe80c]
0000178B  92                xchg ax,dx
0000178C  058C1E            add ax,0x1e8c
0000178F  8B1F              mov bx,[bx]
00001791  6F                outsw
00001792  0A260975          or ah,[0x7509]
00001796  037507            add si,[di+0x7]
00001799  8A05              mov al,[di]
0000179B  247F              and al,0x7f
0000179D  C3                ret
0000179E  8B5C36            mov bx,[si+0x36]
000017A1  5C                pop sp
000017A2  36EBE7            ss jmp short 0x178c
000017A5  A2E005            mov [0x5e0],al
000017A8  00C7              add bh,al
000017AA  06                push es
000017AB  F705001E          test word [di],0x1e00
000017AF  8C00              mov [bx+si],es
000017B1  07                pop es
000017B2  BBCC05            mov bx,0x5cc
000017B5  ED                in ax,dx
000017B6  1E                push ds
000017B7  2E10E9            cs adc cl,ch
000017BA  2A0A              sub cl,[bp+si]
000017BC  C18D7C8C00        ror word [di-0x7384],byte 0x0
000017C1  07                pop es
000017C2  00F3              add bl,dh
000017C4  A5                movsw
000017C5  A4                movsb
000017C6  C43EF9A7          les di,[0xa7f9]
000017CA  5F                pop di
000017CB  07                pop es
000017CC  C3                ret
000017CD  B000              mov al,0x0
000017CF  86067A03          xchg al,[0x37a]
000017D3  3C90              cmp al,0x90
000017D5  E8EEE9            call 0x1c6
000017D8  52                push dx
000017D9  010F              add [bx],cx
000017DB  897F02            mov [bx+0x2],di
000017DE  C7070200          mov word [bx],0x2
000017E2  8B4402            mov ax,[si+0x2]
000017E5  C2048C            ret 0x8c04
000017E8  5F                pop di
000017E9  008CD88E          add [si-0x7128],cl
000017ED  0E                push cs
000017EE  001E8C00          add [0x8c],bl
000017F2  07                pop es
000017F3  33F6              xor si,si
000017F5  1E                push ds
000017F6  06                push es
000017F7  5B                pop bx
000017F8  FC                cld
000017F9  1F                pop ds
000017FA  F8                clc
000017FB  C3                ret
000017FC  1F                pop ds
000017FD  8B0EC204          mov cx,[0x4c2]
00001801  A1D004            mov ax,[0x4d0]
00001804  86C4              xchg al,ah
00001806  3BC8              cmp cx,ax
00001808  740E              jz 0x1818
0000180A  1E                push ds
0000180B  2E8E7409          mov segr6,[cs:si+0x9]
0000180F  3DD781            cmp ax,0x81d7
00001812  7716              ja 0x182a
00001814  F9                stc
00001815  E90301            jmp 0x191b
00001818  BFD804            mov di,0x4d8
0000181B  1F                pop ds
0000181C  741E              jz 0x183c
0000181E  26817503BFD2      xor word [es:di+0x3],0xd2bf
00001824  04E8              add al,0xe8
00001826  2101              and [bx+di],ax
00001828  7452              jz 0x187c
0000182A  8D368B03          lea si,[0x38b]
0000182E  BF2D05            mov di,0x52d
00001831  B90F00            mov cx,0xf
00001834  E8F600            call 0x192d
00001837  BF5804            mov di,0x458
0000183A  BECA04            mov si,0x4ca
0000183D  5E                pop si
0000183E  C43EF905          les di,[0x5f9]
00001842  A1C204            mov ax,[0x4c2]
00001845  050E00            add ax,0xe
00001848  A34904            mov [0x449],ax
0000184B  B95500            mov cx,0x55
0000184E  81E90601          sub cx,0x106
00001852  1F                pop ds
00001853  741E              jz 0x1873
00001855  26817507B959      xor word [es:di+0x7],0x59b9
0000185B  0081C120          add [bx+di+0x20c1],al
0000185F  0006DC05          add [0x5dc],al
00001863  028BC1A3          add cl,[bp+di-0x5c3f]
00001867  6204              bound ax,[si]
00001869  C70664042F05      mov word [0x464],0x52f
0000186F  83C102            add cx,byte +0x2
00001872  890E6804          mov [0x468],cx
00001876  BB3704            mov bx,0x437
00001879  E99501            jmp 0x1a11
0000187C  1F                pop ds
0000187D  741E              jz 0x189d
0000187F  2681754EA192      xor word [es:di+0x4e],0x92a1
00001885  04A3              add al,0xa3
00001887  0105              add [di],ax
00001889  A19404            mov ax,[0x494]
0000188C  A3FF04            mov [0x4ff],ax
0000188F  FC                cld
00001890  BF7004            mov di,0x470
00001893  8D36E204          lea si,[0x4e2]
00001897  5E                pop si
00001898  C43EF905          les di,[0x5f9]
0000189C  8D36D804          lea si,[0x4d8]
000018A0  8D3EE604          lea di,[0x4e6]
000018A4  B9013E            mov cx,0x3e01
000018A7  F9                stc
000018A8  058D36            add ax,0x368d
000018AB  E004              loopne 0x18b1
000018AD  8D3EE404          lea di,[0x4e4]
000018B1  B9013E            mov cx,0x3e01
000018B4  F9                stc
000018B5  05FD8D            add ax,0x8dfd
000018B8  36DE04            fiadd word [ss:si]
000018BB  8D3EE204          lea di,[0x4e2]
000018BF  5E                pop si
000018C0  C43EF905          les di,[0x5f9]
000018C4  FC                cld
000018C5  BE7004            mov si,0x470
000018C8  8D3ED804          lea di,[0x4d8]
000018CC  5E                pop si
000018CD  C43EF905          les di,[0x5f9]
000018D1  BECA04            mov si,0x4ca
000018D4  8D3EF904          lea di,[0x4f9]
000018D8  5E                pop si
000018D9  C43EF905          les di,[0x5f9]
000018DD  BBD804            mov bx,0x4d8
000018E0  F706E8042000      test word [0x4e8],0x20
000018E6  7531              jnz 0x1919
000018E8  A1EA04            mov ax,[0x4ea]
000018EB  3D2000            cmp ax,0x20
000018EE  7603              jna 0x18f3
000018F0  392603A3          cmp [0xa303],sp
000018F4  0305              add ax,[di]
000018F6  C7472D0D05        mov word [bx+0x2d],0x50d
000018FB  C747315501        mov word [bx+0x31],0x155
00001900  1F                pop ds
00001901  741E              jz 0x1921
00001903  2681750AC747      xor word [es:di+0xa],0x47c7
00001909  315F00            xor [bx+0x0],bx
0000190C  8147312000        add word [bx+0x31],0x20
00001911  8C5F2F            mov [bx+0x2f],ds
00001914  C747330000        mov word [bx+0x33],0x0
00001919  FC                cld
0000191A  F8                clc
0000191B  739B              jnc 0x18b8
0000191D  11C6              adc si,ax
0000191F  47                inc di
00001920  E81BF5            call 0xe3e
00001923  1E                push ds
00001924  FF1E9000          call far [0x90]
00001928  1F                pop ds
00001929  E9A1FE            jmp 0x17cd
0000192C  C3                ret
0000192D  51                push cx
0000192E  8B0C              mov cx,[si]
00001930  E315              jcxz 0x1947
00001932  8BC6              mov ax,si
00001934  8B7402            mov si,[si+0x2]
00001937  01A4EB21          add [si+0x21eb],sp
0000193B  8B7731            mov si,[bx+0x31]
0000193E  8BF0              mov si,ax
00001940  59                pop cx
00001941  83C606            add si,byte +0x6
00001944  E2E7              loop 0x192d
00001946  C3                ret
00001947  59                pop cx
00001948  C3                ret
00001949  1F                pop ds
0000194A  741E              jz 0x196a
0000194C  2681741D813E      xor word [es:si+0x1d],0x3e81
00001952  90                nop
00001953  0480              add al,0x80
00001955  7D18              jnl 0x196f
00001957  29E9              sub cx,bp
00001959  F0                lock
0000195A  FE                db 0xfe
0000195B  1414              adc al,0x14
0000195D  7722              ja 0x1981
0000195F  7449              jz 0x19aa
00001961  EB0E              jmp short 0x1971
00001963  86066674          xchg al,[0x7466]
00001967  49                dec cx
00001968  EB0E              jmp short 0x1978
0000196A  FF                db 0xff
0000196B  EB14              jmp short 0x1981
0000196D  1026817D          adc [0x7d81],ah
00001971  100E813E          adc [0x3e81],cl
00001975  6E                outsb
00001976  0481              add al,0x81
00001978  7D1C              jnl 0x1996
0000197A  06                push es
0000197B  813E6C04817D      cmp word [0x46c],0x7d81
00001981  C3                ret
00001982  B000              mov al,0x0
00001984  EB20              jmp short 0x19a6
00001986  55                push bp
00001987  06                push es
00001988  FC                cld
00001989  C7067A03E8B7      mov word [0x37a],0xb7e8
0000198F  0A595B            or bl,[bx+di+0x5b]
00001992  58                pop ax
00001993  FA                cli
00001994  803E799CFA        cmp byte [0x9c79],0xfa
00001999  2631E9            es xor cx,bp
0000199C  82                db 0x82
0000199D  00B022EB          add [bx+si-0x14de],dh
000019A1  04B0              add al,0xb0
000019A3  21EB              and bx,bp
000019A5  00884701          add [bx+si+0x147],cl
000019A9  8AE0              mov ah,al
000019AB  1F                pop ds
000019AC  CF                iret
000019AD  8AEB              mov ch,bl
000019AF  7090              jo 0x1941
000019B1  B003              mov al,0x3
000019B3  EBF1              jmp short 0x19a6
000019B5  26C64701FF        mov byte [es:bx+0x1],0xff
000019BA  26C64731FF        mov byte [es:bx+0x31],0xff
000019BF  FB                sti
000019C0  FC                cld
000019C1  268A07            mov al,[es:bx]
000019C4  8AE0              mov ah,al
000019C6  247F              and al,0x7f
000019C8  3C70              cmp al,0x70
000019CA  74B6              jz 0x1982
000019CC  3C32              cmp al,0x32
000019CE  74B6              jz 0x1986
000019D0  3C72              cmp al,0x72
000019D2  77DD              ja 0x19b1
000019D4  3C35              cmp al,0x35
000019D6  7407              jz 0x19df
000019D8  833ED87000        cmp word [0x70d8],byte +0x0
000019DD  80BFF6C480        cmp byte [bx-0x3b0a],0x80
000019E2  750E              jnz 0x19f2
000019E4  7407              jz 0x19ed
000019E6  FF067A75          inc word [0x757a]
000019EA  B780              mov bh,0x80
000019EC  3EFE8B5C75        dec byte [ds:bp+di+0x755c]
000019F1  B056              mov al,0x56
000019F3  57                push di
000019F4  BF6A03            mov di,0x36a
000019F7  E8F709            call 0x23f1
000019FA  5F                pop di
000019FB  5E                pop si
000019FC  0E                push cs
000019FD  E8E4EF            call 0x9e4
00001A00  B000              mov al,0x0
00001A02  F6C480            test ah,0x80
00001A05  7519              jnz 0x1a20
00001A07  017405            add [si+0x5],si
00001A0A  91                xchg ax,cx
00001A0B  671E              push ds
00001A0D  FF                db 0xff
00001A0E  FB                sti
00001A0F  B88090            mov ax,0x9080
00001A12  CD15              int 0x15
00001A14  FB                sti
00001A15  26807F31FF        cmp byte [es:bx+0x31],0xff
00001A1A  74F9              jz 0x1a15
00001A1C  9C                pushf
00001A1D  FA                cli
00001A1E  2631E0            es xor ax,sp
00001A21  1F                pop ds
00001A22  2EFF04            inc word [cs:si]
00001A25  19751A            sbb [di+0x1a],si
00001A28  52                push dx
00001A29  1A11              sbb dl,[bx+di]
00001A2B  191B              sbb [bp+di],bx
00001A2D  1A3E197F          sbb bh,[0x7f19]
00001A31  1AE0              sbb ah,al
00001A33  1900              sbb [bx+si],ax
00001A35  06                push es
00001A36  050006            add ax,0x600
00001A39  050006            add ax,0x600
00001A3C  050006            add ax,0x600
00001A3F  050006            add ax,0x600
00001A42  050006            add ax,0x600
00001A45  050006            add ax,0x600
00001A48  050006            add ax,0x600
00001A4B  050006            add ax,0x600
00001A4E  050006            add ax,0x600
00001A51  050006            add ax,0x600
00001A54  050006            add ax,0x600
00001A57  050006            add ax,0x600
00001A5A  050006            add ax,0x600
00001A5D  050006            add ax,0x600
00001A60  050006            add ax,0x600
00001A63  0502C4            add ax,0xc402
00001A66  0202              add al,[bp+si]
00001A68  5A                pop dx
00001A69  0404              add al,0x4
00001A6B  4F                dec di
00001A6C  08BE1500          or [bp+0x15],bh
00001A70  06                push es
00001A71  0D2306            or ax,0x623
00001A74  80270A            and byte [bx],0xa
00001A77  832706            and word [bx],byte +0x6
00001A7A  07                pop es
00001A7B  2300              and ax,[bx+si]
00001A7D  06                push es
00001A7E  050006            add ax,0x600
00001A81  050006            add ax,0x600
00001A84  050006            add ax,0x600
00001A87  050006            add ax,0x600
00001A8A  050006            add ax,0x600
00001A8D  050006            add ax,0x600
00001A90  050006            add ax,0x600
00001A93  058891            add ax,0x9188
00001A96  0908              or [bx+si],cx
00001A98  DE0A              fimul word [bp+si]
00001A9A  88890908          mov [bx+di+0x809],cl
00001A9E  D80A              fmul dword [bp+si]
00001AA0  0E                push cs
00001AA1  110B              adc [bp+di],cx
00001AA3  00060500          add [0x5],al
00001AA7  06                push es
00001AA8  050006            add ax,0x600
00001AAB  050006            add ax,0x600
00001AAE  050006            add ax,0x600
00001AB1  050006            add ax,0x600
00001AB4  050006            add ax,0x600
00001AB7  050006            add ax,0x600
00001ABA  050006            add ax,0x600
00001ABD  050006            add ax,0x600
00001AC0  050006            add ax,0x600
00001AC3  058806            add ax,0x688
00001AC6  05883A            add ax,0x3a88
00001AC9  0100              add [bx+si],ax
00001ACB  06                push es
00001ACC  058864            add ax,0x6488
00001ACF  2B884E2A          sub cx,[bx+si+0x2a4e]
00001AD3  0C54              or al,0x54
00001AD5  06                push es
00001AD6  88060500          mov [0x5],al
00001ADA  06                push es
00001ADB  050006            add ax,0x600
00001ADE  050006            add ax,0x600
00001AE1  050006            add ax,0x600
00001AE4  050006            add ax,0x600
00001AE7  050006            add ax,0x600
00001AEA  050006            add ax,0x600
00001AED  050006            add ax,0x600
00001AF0  050006            add ax,0x600
00001AF3  050006            add ax,0x600
00001AF6  050006            add ax,0x600
00001AF9  050006            add ax,0x600
00001AFC  050006            add ax,0x600
00001AFF  050006            add ax,0x600
00001B02  050006            add ax,0x600
00001B05  050006            add ax,0x600
00001B08  050006            add ax,0x600
00001B0B  050006            add ax,0x600
00001B0E  050006            add ax,0x600
00001B11  050006            add ax,0x600
00001B14  050006            add ax,0x600
00001B17  050006            add ax,0x600
00001B1A  050006            add ax,0x600
00001B1D  050006            add ax,0x600
00001B20  050006            add ax,0x600
00001B23  050006            add ax,0x600
00001B26  050006            add ax,0x600
00001B29  050006            add ax,0x600
00001B2C  050006            add ax,0x600
00001B2F  050006            add ax,0x600
00001B32  050006            add ax,0x600
00001B35  050006            add ax,0x600
00001B38  050006            add ax,0x600
00001B3B  050006            add ax,0x600
00001B3E  050006            add ax,0x600
00001B41  050006            add ax,0x600
00001B44  050006            add ax,0x600
00001B47  050006            add ax,0x600
00001B4A  050006            add ax,0x600
00001B4D  050006            add ax,0x600
00001B50  050006            add ax,0x600
00001B53  050006            add ax,0x600
00001B56  050006            add ax,0x600
00001B59  050006            add ax,0x600
00001B5C  050006            add ax,0x600
00001B5F  050006            add ax,0x600
00001B62  050006            add ax,0x600
00001B65  050006            add ax,0x600
00001B68  050006            add ax,0x600
00001B6B  050006            add ax,0x600
00001B6E  050006            add ax,0x600
00001B71  050006            add ax,0x600
00001B74  050006            add ax,0x600
00001B77  050006            add ax,0x600
00001B7A  050006            add ax,0x600
00001B7D  050006            add ax,0x600
00001B80  050006            add ax,0x600
00001B83  050006            add ax,0x600
00001B86  050600            add ax,0x6
00001B89  2306F522          and ax,[0x22f5]
00001B8D  BF6A03            mov di,0x36a
00001B90  E89108            call 0x2424
00001B93  725C              jc 0x1bf1
00001B95  8B1E5103          mov bx,[0x351]
00001B99  E80402            call 0x1da0
00001B9C  7254              jc 0x1bf2
00001B9E  8BDE              mov bx,si
00001BA0  FF0ED800          dec word [0xd8]
00001BA4  896F0A            mov [bx+0xa],bp
00001BA7  8C470C            mov [bx+0xc],es
00001BAA  45                inc bp
00001BAB  150200            adc ax,0x2
00001BAE  83E77F            and di,byte +0x7f
00001BB1  8BC7              mov ax,di
00001BB3  03FF              add di,di
00001BB5  03F8              add di,ax
00001BB7  81C73F17          add di,0x173f
00001BBB  C705E8BB          mov word [di],0xbbe8
00001BBF  10C7              adc bh,al
00001BC1  47                inc di
00001BC2  0400              add al,0x0
00001BC4  008B448E          add [bp+di-0x71bc],cl
00001BC8  C0FF2E            sar bh,byte 0x2e
00001BCB  8B4501            mov ax,[di+0x1]
00001BCE  E480              in al,0x80
00001BD0  7C04              jl 0x1bd6
00001BD2  06                push es
00001BD3  A0D400            mov al,[0xd4]
00001BD6  4A                dec dx
00001BD7  1D32C0            sbb ax,0xc032
00001BDA  7C26              jl 0x1c02
00001BDC  19767C            sbb [bp+0x7c],si
00001BDF  261937            sbb [es:bx],si
00001BE2  47                inc di
00001BE3  1E                push ds
00001BE4  C415              les dx,[di]
00001BE6  2E8B3D            mov di,[cs:di]
00001BE9  83E77F            and di,byte +0x7f
00001BEC  2EFFA52F17        jmp [cs:di+0x172f]
00001BF1  C3                ret
00001BF2  B022              mov al,0x22
00001BF4  E82A02            call 0x1e21
00001BF7  F8                clc
00001BF8  C3                ret
00001BF9  B003              mov al,0x3
00001BFB  06                push es
00001BFC  BE15E8            mov si,0xe815
00001BFF  2002              and [bp+si],al
00001C01  E8FC03            call 0x2000
00001C04  F8                clc
00001C05  3C2A              cmp al,0x2a
00001C07  7453              jz 0x1c5c
00001C09  02E8              add ch,al
00001C0B  4F                dec di
00001C0C  107220            adc [bp+si+0x20],dh
00001C0F  0BEB              or bp,bx
00001C11  EBFF              jmp short 0x1c12
00001C13  00BB9702          add [bp+di+0x297],bh
00001C17  0201              add al,[bx+di]
00001C19  B40A              mov ah,0xa
00001C1B  3C05              cmp al,0x5
00001C1D  7406              jz 0x1c25
00001C1F  B418              mov ah,0x18
00001C21  3C06              cmp al,0x6
00001C23  750A              jnz 0x1c2f
00001C25  8AC4              mov al,ah
00001C27  E8D1FF            call 0x1bfb
00001C2A  E8D110            call 0x2cfe
00001C2D  F8                clc
00001C2E  C3                ret
00001C2F  B008              mov al,0x8
00001C31  EBC8              jmp short 0x1bfb
00001C33  FF741E            push word [si+0x1e]
00001C36  8B8AD053          mov cx,[bp+si+0x53d0]
00001C3A  55                push bp
00001C3B  E8B202            call 0x1ef0
00001C3E  5D                pop bp
00001C3F  F6C402            test ah,0x2
00001C42  74B7              jz 0x1bfb
00001C44  53                push bx
00001C45  BD9601            mov bp,0x196
00001C48  E8BA19            call 0x3605
00001C4B  C019E8            rcr byte [bx+di],byte 0xe8
00001C4E  BE015D            mov si,0x5d01
00001C51  5B                pop bx
00001C52  7350              jnc 0x1ca4
00001C54  2EBDB601          cs mov bp,0x1b6
00001C58  7C32              jl 0x1c8c
00001C5A  8BF5              mov si,bp
00001C5C  57                push di
00001C5D  7A01              jpe 0x1c60
00001C5F  53                push bx
00001C60  BD9601            mov bp,0x196
00001C63  E8BA19            call 0x3620
00001C66  7A19              jpe 0x1c81
00001C68  E8A301            call 0x1e0e
00001C6B  5D                pop bp
00001C6C  5B                pop bx
00001C6D  EB31              jmp short 0x1ca0
00001C6F  837F3E00          cmp word [bx+0x3e],byte +0x0
00001C73  742D              jz 0x1ca2
00001C75  8BF3              mov si,bx
00001C77  05FDF7            add ax,0xf7fd
00001C7A  45                inc bp
00001C7B  7D14              jnl 0x1c91
00001C7D  0D7422            or ax,0x2274
00001C80  BF9702            mov di,0x297
00001C83  8B3D              mov di,[di]
00001C85  8B5C3E            mov bx,[si+0x3e]
00001C88  C606060600        mov byte [0x606],0x0
00001C8D  0007              add [bx],al
00001C8F  07                pop es
00001C90  5D                pop bp
00001C91  5F                pop di
00001C92  AA                stosb
00001C93  F1                int1
00001C94  E9D217            jmp 0x3469
00001C97  B014              mov al,0x14
00001C99  BE9702            mov si,0x297
00001C9C  3B3C              cmp di,[si]
00001C9E  7402              jz 0x1ca2
00001CA0  F8                clc
00001CA1  C3                ret
00001CA2  F9                stc
00001CA3  C3                ret
00001CA4  45                inc bp
00001CA5  028BEEF6          add cl,[bp+di-0x912]
00001CA9  46                inc si
00001CAA  027D03            add bh,[di+0x3]
00001CAD  FF                db 0xff
00001CAE  E91AB0            jmp 0xcccb
00001CB1  16                push ss
00001CB2  E95AFF            jmp 0x1c0f
00001CB5  752D              jnz 0x1ce4
00001CB7  56                push si
00001CB8  8D067A04          lea ax,[0x47a]
00001CBC  1F                pop ds
00001CBD  05750D            add ax,0xd75
00001CC0  80FAFF            cmp dl,0xff
00001CC3  7405              jz 0x1cca
00001CC5  3AF3              cmp dh,bl
00001CC7  E80F03            call 0x1fd9
00001CCA  8BF3              mov si,bx
00001CCC  C3                ret
00001CCD  F9                stc
00001CCE  C3                ret
00001CCF  0B1A              or bx,[bp+si]
00001CD1  F9                stc
00001CD2  1914              sbb [si],dx
00001CD4  1A7405            sbb dh,[si+0x5]
00001CD7  E82A02            call 0x1f04
00001CDA  7606              jna 0x1ce2
00001CDC  DC05              fadd qword [di]
00001CDE  FF33              push word [bp+di]
00001CE0  C0E421            shl ah,byte 0x21
00001CE3  268A02            mov al,[es:bp+si]
00001CE6  C08BF82EFF        ror byte [bp+di+0x2ef8],byte 0xff
00001CEB  A5                movsw
00001CEC  DA19              ficomp dword [bx+di]
00001CEE  B8110B            mov ax,0xb11
00001CF1  E480              in al,0x80
00001CF3  7C04              jl 0x1cf9
00001CF5  BEBD88            mov si,0x88bd
00001CF8  E89B04            call 0x2196
00001CFB  017C32            add [si+0x32],di
00001CFE  EB40              jmp short 0x1d40
00001D00  B8BE15            mov ax,0x15be
00001D03  26807C0403        cmp byte [es:si+0x4],0x3
00001D08  07                pop es
00001D09  B8642B            mov ax,0x2b64
00001D0C  E480              in al,0x80
00001D0E  7C04              jl 0x1d14
00001D10  BE1502            mov si,0x215
00001D13  E88004            call 0x2196
00001D16  017C32            add [si+0x32],di
00001D19  EB25              jmp short 0x1d40
00001D1B  E83E01            call 0x1e5c
00001D1E  8D7C36            lea di,[si+0x36]
00001D21  17                pop ss
00001D22  741C              jz 0x1d40
00001D24  0F                db 0x0f
00001D25  7174              jno 0x1d9b
00001D27  180B              sbb [bp+di],cl
00001D29  7274              jc 0x1d9f
00001D2B  1407              adc al,0x7
00001D2D  127410            adc dh,[si+0x10]
00001D30  030B              add cx,[bp+di]
00001D32  8BF5              mov si,bp
00001D34  8D4504            lea ax,[di+0x4]
00001D37  50                push ax
00001D38  3B05              cmp ax,[di]
00001D3A  E91012            jmp 0x2f4d
00001D3D  57                push di
00001D3E  045F              add al,0x5f
00001D40  8BF5              mov si,bp
00001D42  57                push di
00001D43  94                xchg ax,sp
00001D44  00F8              add al,bh
00001D46  3C2A              cmp al,0x2a
00001D48  7453              jz 0x1d9d
00001D4A  02E8              add ch,al
00001D4C  0E                push cs
00001D4D  0F895C3E          jns near 0x5bad
00001D51  DCFE              fdiv to st6
00001D53  0BEB              or bp,bx
00001D55  EBFF              jmp short 0x1d56
00001D57  0001              add [bx+di],al
00001D59  03E9              add bp,cx
00001D5B  BCFEE8            mov sp,0xe8fe
00001D5E  360401            ss add al,0x1
00001D61  7C2E              jl 0x1d91
00001D63  8BF5              mov si,bp
00001D65  57                push di
00001D66  60                pusha
00001D67  00F8              add al,bh
00001D69  3CE8              cmp al,0xe8
00001D6B  0D0F73            or ax,0x730f
00001D6E  AC                lodsb
00001D6F  B011              mov al,0x11
00001D71  E987FE            jmp 0x1bfb
00001D74  1E                push ds
00001D75  26C57604          lds si,[es:bp+0x4]
00001D79  8A04              mov al,[si]
00001D7B  1F                pop ds
00001D7C  247F              and al,0x7f
00001D7E  3C72              cmp al,0x72
00001D80  7711              ja 0x1d93
00001D82  B403              mov ah,0x3
00001D84  F6E4              mul ah
00001D86  8BF0              mov si,ax
00001D88  2EF6843F1780      test byte [cs:si+0x173f],0x80
00001D8E  BB9702            mov bx,0x297
00001D91  B6EB              mov dh,0xeb
00001D93  B026              mov al,0x26
00001D95  E963FE            jmp 0x1bfb
00001D98  058C1E            add ax,0x1e8c
00001D9B  3B07              cmp ax,[bx]
00001D9D  C3                ret
00001D9E  8B5C36            mov bx,[si+0x36]
00001DA1  8C1E3B07          mov [0x73b],ds
00001DA5  74F7              jz 0x1d9e
00001DA7  8B7706            mov si,[bx+0x6]
00001DAA  8BCB              mov cx,bx
00001DAC  8BD7              mov dx,di
00001DAE  33DB              xor bx,bx
00001DB0  871C              xchg bx,[si]
00001DB2  3E897E7C          mov [ds:bp+0x7c],di
00001DB6  0285FF74          add al,[di+0x74ff]
00001DBA  0504C7            add ax,0xc704
00001DBD  47                inc di
00001DBE  891D              mov [di],bx
00001DC0  8BFA              mov di,dx
00001DC2  8BD9              mov bx,cx
00001DC4  C3                ret
00001DC5  E8E2FF            call 0x1daa
00001DC8  8BC3              mov ax,bx
00001DCA  8B1D              mov bx,[di]
00001DCC  891C              mov [si],bx
00001DCE  897C02            mov [si+0x2],di
00001DD1  8935              mov [di],si
00001DD3  897702            mov [bx+0x2],si
00001DD6  8BD8              mov bx,ax
00001DD8  C3                ret
00001DD9  8BC3              mov ax,bx
00001DDB  8B5D02            mov bx,[di+0x2]
00001DDE  893C              mov [si],di
00001DE0  895C02            mov [si+0x2],bx
00001DE3  897502            mov [di+0x2],si
00001DE6  8937              mov [bx],si
00001DE8  8BD8              mov bx,ax
00001DEA  C3                ret
00001DEB  8D4504            lea ax,[di+0x4]
00001DEE  8905              mov [di],ax
00001DF0  8D05              lea ax,[di]
00001DF2  894506            mov [di+0x6],ax
00001DF5  33C0              xor ax,ax
00001DF7  894502            mov [di+0x2],ax
00001DFA  894504            mov [di+0x4],ax
00001DFD  8BF7              mov si,di
00001DFF  83C608            add si,byte +0x8
00001E02  E307              jcxz 0x1e0b
00001E04  E8C1FF            call 0x1dc8
00001E07  03F2              add si,dx
00001E09  E2F9              loop 0x1e04
00001E0B  8BFE              mov di,si
00001E0D  C3                ret
00001E0E  7506              jnz 0x1e16
00001E10  5B                pop bx
00001E11  E8AA74            call 0x92be
00001E14  0A55FF            or dl,[di-0x1]
00001E17  37                aaa
00001E18  FFD5              call bp
00001E1A  5B                pop bx
00001E1B  5D                pop bp
00001E1C  72F2              jc 0x1e10
00001E1E  C3                ret
00001E1F  8B5CE9            mov bx,[si-0x17]
00001E22  1AB00174          sbb dh,[bx+si+0x7401]
00001E26  3E57              ds push di
00001E28  00807512          add [bx+si+0x1275],al
00001E2C  E91AB0            jmp 0xce49
00001E2F  3101              xor [bx+di],ax
00001E31  7405              jz 0x1e38
00001E33  91                xchg ax,cx
00001E34  671E              push ds
00001E36  FF                db 0xff
00001E37  FB                sti
00001E38  B88091            mov ax,0x9180
00001E3B  CD15              int 0x15
00001E3D  C3                ret
00001E3E  45                inc bp
00001E3F  15022C            adc ax,0x2c02
00001E42  260B7E2E          or di,[es:bp+0x2e]
00001E46  37                aaa
00001E47  01C3              add bx,ax
00001E49  1AB031C3          sbb dh,[bx+si-0x3ccf]
00001E4D  8BC6              mov ax,si
00001E4F  87DD              xchg bx,bp
00001E51  19721D            sbb [bp+si+0x1d],si
00001E54  8B9A0587          mov bx,[bp+si-0x78fb]
00001E58  DD8BF0C3          fisttp qword [bp+di-0x3c10]
00001E5C  56                push si
00001E5D  1E                push ds
00001E5E  C5770A            lds si,[bx+0xa]
00001E61  8A04              mov al,[si]
00001E63  247F              and al,0x7f
00001E65  1F                pop ds
00001E66  5E                pop si
00001E67  C3                ret
00001E68  B0FF              mov al,0xff
00001E6A  EB88              jmp short 0x1df4
00001E6C  45                inc bp
00001E6D  02407C            add al,[bx+si+0x7c]
00001E70  261937            sbb [es:bx],si
00001E73  7505              jnz 0x1e7a
00001E75  26C6467406        mov byte [es:bp+0x74],0x6
00001E7A  268F4632          pop word [es:bp+0x32]
00001E7E  807C0422          cmp byte [si+0x4],0x22
00001E82  03EB              add bp,bx
00001E84  F5                cmc
00001E85  06                push es
00001E86  57                push di
00001E87  C43E8000          les di,[0x80]
00001E8B  44                inc sp
00001E8C  1E                push ds
00001E8D  895F07            mov [bx+0x7],bx
00001E90  C3                ret
00001E91  1E                push ds
00001E92  56                push si
00001E93  7410              jz 0x1ea5
00001E95  800044            add byte [bx+si],0x44
00001E98  1E                push ds
00001E99  895E1F            mov [bp+0x1f],bx
00001E9C  C3                ret
00001E9D  BB2803            mov bx,0x328
00001EA0  26803D2A          cmp byte [es:di],0x2a
00001EA4  741F              jz 0x1ec5
00001EA6  BB1103            mov bx,0x311
00001EA9  7607              jna 0x1eb2
00001EAB  5E                pop si
00001EAC  048D              add al,0x8d
00001EAE  44                inc sp
00001EAF  3A5E73            cmp bl,[bp+0x73]
00001EB2  12F9              adc bh,cl
00001EB4  0BE8              or bp,ax
00001EB6  4D                dec bp
00001EB7  55                push bp
00001EB8  56                push si
00001EB9  BDD81B            mov bp,0x1bd8
00001EBC  E84FFF            call 0x1e0e
00001EBF  5E                pop si
00001EC0  5D                pop bp
00001EC1  7209              jc 0x1ecc
00001EC3  8BDA              mov bx,dx
00001EC5  8A4714            mov al,[bx+0x14]
00001EC8  D974F3            fnstenv [si-0xd]
00001ECB  F7                db 0xf7
00001ECC  0A7505            or dh,[di+0x5]
00001ECF  07                pop es
00001ED0  5E                pop si
00001ED1  04F8              add al,0xf8
00001ED3  51                push cx
00001ED4  56                push si
00001ED5  57                push di
00001ED6  1F                pop ds
00001ED7  07                pop es
00001ED8  5F                pop di
00001ED9  5E                pop si
00001EDA  A7                cmpsw
00001EDB  5F                pop di
00001EDC  5E                pop si
00001EDD  59                pop cx
00001EDE  3E7C03            ds jl 0x1ee4
00001EE1  FF578B            call [bx-0x75]
00001EE4  3E5B              ds pop bx
00001EE6  7305              jnc 0x1eed
00001EE8  DB                db 0xdb
00001EE9  FE                db 0xfe
00001EEA  5F                pop di
00001EEB  FF0EEA00          dec word [0xea]
00001EEF  C3                ret
00001EF0  BB1103            mov bx,0x311
00001EF3  3C90              cmp al,0x90
00001EF5  E817BB            call 0xda0f
00001EF8  2803              sub [bp+di],al
00001EFA  CB                retf
00001EFB  E810BD            call 0xdc0e
00001EFE  F9                stc
00001EFF  0BE8              or bp,ax
00001F01  4D                dec bp
00001F02  55                push bp
00001F03  52                push dx
00001F04  BD1A1C            mov bp,0x1c1a
00001F07  E804FF            call 0x1e0e
00001F0A  8BDA              mov bx,dx
00001F0C  5A                pop dx
00001F0D  5D                pop bp
00001F0E  0A7505            or dh,[di+0x5]
00001F11  3A4714            cmp al,[bx+0x14]
00001F14  74F8              jz 0x1f0e
00001F16  F9                stc
00001F17  C3                ret
00001F18  B000              mov al,0x0
00001F1A  7505              jnz 0x1f21
00001F1C  E8BB10            call 0x2fda
00001F1F  EB15              jmp short 0x1f36
00001F21  50                push ax
00001F22  53                push bx
00001F23  07                pop es
00001F24  8BF7              mov si,di
00001F26  07                pop es
00001F27  8D5F0E            lea bx,[bx+0xe]
00001F2A  ED                in ax,dx
00001F2B  1E                push ds
00001F2C  2E10FF            cs adc bh,bh
00001F2F  1E                push ds
00001F30  885BC3            mov [bp+di-0x3d],bl
00001F33  FF5B58            call far [bp+di+0x58]
00001F36  06                push es
00001F37  BE1526            mov si,0x2615
00001F3A  C746326108        mov word [bp+0x32],0x861
00001F3F  E8DFFE            call 0x1e21
00001F42  2BE8              sub bp,ax
00001F44  6B0072            imul ax,[bx+si],byte +0x72
00001F47  0C53              or al,0x53
00001F49  7506              jnz 0x1f51
00001F4B  5B                pop bx
00001F4C  E8AA74            call 0x93f9
00001F4F  03E8              add bp,ax
00001F51  43                inc bx
00001F52  025BE8            add bl,[bp+di-0x18]
00001F55  7E35              jng 0x1f8c
00001F57  5E                pop si
00001F58  33C0              xor ax,ax
00001F5A  FF                db 0xff
00001F5B  E91012            jmp 0x316e
00001F5E  9E                sahf
00001F5F  0DF9C3            or ax,0xc3f9
00001F62  06                push es
00001F63  55                push bp
00001F64  8AE8              mov ch,al
00001F66  33D2              xor dx,dx
00001F68  0CE8              or al,0xe8
00001F6A  92                xchg ax,dx
00001F6B  0E                push cs
00001F6C  A91CE8            test ax,0xe81c
00001F6F  9D                popf
00001F70  FE                db 0xfe
00001F71  14C3              adc al,0xc3
00001F73  8BD3              mov dx,bx
00001F75  97                xchg ax,di
00001F76  FE                db 0xfe
00001F77  56                push si
00001F78  57                push di
00001F79  8D18              lea bx,[bx+si]
00001F7B  8A4C07            mov cl,[si+0x7]
00001F7E  8AF1              mov dh,cl
00001F80  0FE8900CBE        psubsb mm2,[bx+si-0x41f4]
00001F85  1CE8              sbb al,0xe8
00001F87  85FE              test si,di
00001F89  7308              jnc 0x1f93
00001F8B  B1FF              mov cl,0xff
00001F8D  0FE890E87B        psubsb mm2,[bx+si+0x7be8]
00001F92  FE84D274          inc byte [si+0x74d2]
00001F96  03E8              add bp,ax
00001F98  640D5D07          fs or ax,0x75d
00001F9C  807C04BB          cmp byte [si+0x4],0xbb
00001FA0  FE061675          inc byte [0x7516]
00001FA4  02FE              add bh,dh
00001FA6  C6                db 0xc6
00001FA7  8AC5              mov al,ch
00001FA9  5A                pop dx
00001FAA  59                pop cx
00001FAB  58                pop ax
00001FAC  6C                insb
00001FAD  FF5A59            call far [bp+si+0x59]
00001FB0  FEC2              inc dl
00001FB2  C3                ret
00001FB3  06                push es
00001FB4  BE1526            mov si,0x2615
00001FB7  384E88            cmp [bp-0x78],cl
00001FBA  45                inc bp
00001FBB  0317              add dx,[bx]
00001FBD  45                inc bp
00001FBE  028BEEF6          add cl,[bp+di-0x912]
00001FC2  46                inc si
00001FC3  02268876          add ah,[0x7688]
00001FC7  038AC55A          add cx,[bp+si+0x5ac5]
00001FCB  59                pop cx
00001FCC  58                pop ax
00001FCD  4B                dec bx
00001FCE  FF5A59            call far [bp+si+0x59]
00001FD1  FEC2              inc dl
00001FD3  F8                clc
00001FD4  C3                ret
00001FD5  06                push es
00001FD6  837F0600          cmp word [bx+0x6],byte +0x0
00001FDA  7406              jz 0x1fe2
00001FDC  807F220C          cmp byte [bx+0x22],0xc
00001FE0  1F                pop ds
00001FE1  7607              jna 0x1fea
00001FE3  5E                pop si
00001FE4  048B              add al,0x8b
00001FE6  CB                retf
00001FE7  8BD7              mov dx,di
00001FE9  33DB              xor bx,bx
00001FEB  871C              xchg bx,[si]
00001FED  3E897E7C          mov [ds:bp+0x7c],di
00001FF1  0285FF74          add al,[di+0x74ff]
00001FF5  0504C7            add ax,0xc704
00001FF8  47                inc di
00001FF9  891D              mov [di],bx
00001FFB  8BFA              mov di,dx
00001FFD  8BD9              mov bx,cx
00001FFF  5E                pop si
00002000  87DE              xchg bx,si
00002002  8B3E5103          mov di,[0x351]
00002006  E8BCFD            call 0x1dc5
00002009  8BF3              mov si,bx
0000200B  FF06D800          inc word [0xd8]
0000200F  C3                ret
00002010  33C9              xor cx,cx
00002012  874C3E            xchg cx,[si+0x3e]
00002015  E30B              jcxz 0x2022
00002017  56                push si
00002018  8BF1              mov si,cx
0000201A  8B3E8BDE          mov di,[0xde8b]
0000201E  5E                pop si
0000201F  A7                cmpsw
00002020  FD                std
00002021  5E                pop si
00002022  C3                ret
00002023  F7471C0000        test word [bx+0x1c],0x0
00002028  4C                dec sp
00002029  19C6              sbb si,ax
0000202B  06                push es
0000202C  E9EBFE            jmp 0x1f1a
0000202F  E9E6FE            jmp 0x1f18
00002032  26394E08          cmp [es:bp+0x8],cx
00002036  7306              jnc 0x203e
00002038  58                pop ax
00002039  C3                ret
0000203A  E85CDC            call 0xfc99
0000203D  FEC3              inc bl
0000203F  B005              mov al,0x5
00002041  E9D6FE            jmp 0x1f1a
00002044  8D7E0A            lea di,[bp+0xa]
00002047  E969FE            jmp 0x1eb3
0000204A  8D7E1A            lea di,[bp+0x1a]
0000204D  E963FE            jmp 0x1eb3
00002050  057E0A            add ax,0xa7e
00002053  E947FE            jmp 0x1e9d
00002056  8D7E1A            lea di,[bp+0x1a]
00002059  E941FE            jmp 0x1e9d
0000205C  53                push bx
0000205D  E8F0FF            call 0x2050
00002060  8A5715            mov dl,[bx+0x15]
00002063  5B                pop bx
00002064  7203              jc 0x2069
00002066  EB77              jmp short 0x20df
00002068  90                nop
00002069  7405              jz 0x2070
0000206B  E88700            call 0x20f5
0000206E  754C              jnz 0x20bc
00002070  56                push si
00002071  52                push dx
00002072  1E                push ds
00002073  8D7614            lea si,[bp+0x14]
00002076  8CC2              mov dx,es
00002078  7C0E              jl 0x2088
0000207A  833E8EDA5E        cmp word [0xda8e],byte +0x5e
0000207F  C43EBF7A          les di,[0x7abf]
00002083  3EF9              ds stc
00002085  058EC2            add ax,0xc28e
00002088  1F                pop ds
00002089  5A                pop dx
0000208A  5E                pop si
0000208B  E8B200            call 0x2140
0000208E  F9                stc
0000208F  EB4D              jmp short 0x20de
00002091  B9FFFF            mov cx,0xffff
00002094  890E7A00          mov [0x7a],cx
00002098  890E7C00          mov [0x7c],cx
0000209C  890E7E00          mov [0x7e],cx
000020A0  C747370000        mov word [bx+0x37],0x0
000020A5  26807E1A00        cmp byte [es:bp+0x1a],0x0
000020AA  C74714FF00        mov word [bx+0x14],0xff
000020AF  268B16FF00        mov dx,[es:0xff]
000020B4  268B18            mov bx,[es:bx+si]
000020B7  FF                db 0xff
000020B8  FF                db 0xff
000020B9  F9                stc
000020BA  EB22              jmp short 0x20de
000020BC  56                push si
000020BD  52                push dx
000020BE  1E                push ds
000020BF  8D7E0A            lea di,[bp+0xa]
000020C2  8CC2              mov dx,es
000020C4  E857E4            call 0x51e
000020C7  F7FC              idiv sp
000020C9  33DB              xor bx,bx
000020CB  33D2              xor dx,dx
000020CD  07                pop es
000020CE  5E                pop si
000020CF  EBBF              jmp short 0x2090
000020D1  7A3E              jpe 0x2111
000020D3  F9                stc
000020D4  A4                movsb
000020D5  8EC2              mov es,dx
000020D7  1F                pop ds
000020D8  5A                pop dx
000020D9  5E                pop si
000020DA  E86300            call 0x2140
000020DD  F9                stc
000020DE  C3                ret
000020DF  2411              and al,0x11
000020E1  5E                pop si
000020E2  EB83              jmp short 0x2067
000020E4  9F                lahf
000020E5  FD                std
000020E6  5E                pop si
000020E7  F6C202            test dl,0x2
000020EA  74F2              jz 0x20de
000020EC  83C4EB            add sp,byte -0x15
000020EF  1AE8              sbb ch,al
000020F1  E926FE            jmp 0x1f1a
000020F4  53                push bx
000020F5  E85EFF            call 0x2056
000020F8  7222              jc 0x211c
000020FA  80B4047F15        xor byte [si+0x7f04],0x15
000020FF  00741A            add [si+0x1a],dh
00002102  058BD9            add ax,0xd98b
00002105  E97514            jmp 0x357d
00002108  CB                retf
00002109  E810BD            call 0xde1c
0000210C  058BD9            add ax,0xd98b
0000210F  025B8A            add bl,[bp+di-0x76]
00002112  E0B0              loopne 0x20c4
00002114  197501            sbb [di+0x1],si
00002117  C3                ret
00002118  59                pop cx
00002119  E9FEFD            jmp 0x1f1a
0000211C  804C15EB          or byte [si+0x15],0xeb
00002120  F7                db 0xf7
00002121  884722            mov [bx+0x22],al
00002124  E82F00            call 0x2156
00002127  16                push ss
00002128  8A4420            mov al,[si+0x20]
0000212B  3224              xor ah,[si]
0000212D  894718            mov [bx+0x18],ax
00002130  8B444A            mov ax,[si+0x4a]
00002133  8926C747          mov [0x47c7],sp
00002137  1E                push ds
00002138  0000              add [bx+si],al
0000213A  8B4429            mov ax,[si+0x29]
0000213D  0100              add [bx+si],ax
0000213F  C3                ret
00002140  50                push ax
00002141  06                push es
00002142  56                push si
00002143  7F14              jg 0x2159
00002145  8D772F            lea si,[bx+0x2f]
00002148  B906BE            mov cx,0xbe06
0000214B  7A00              jpe 0x214d
0000214D  5E                pop si
0000214E  C43EF905          les di,[0x5f9]
00002152  830758            add word [bx],byte +0x58
00002155  C3                ret
00002156  0E                push cs
00002157  8B444C            mov ax,[si+0x4c]
0000215A  891C              mov [si],bx
0000215C  2956E8            sub [bp-0x18],dx
0000215F  9B153757          wait adc ax,0x5737
00002163  7C4E              jl 0x21b3
00002165  8D770E            lea si,[bx+0xe]
00002168  A5                movsw
00002169  A5                movsw
0000216A  A5                movsw
0000216B  5E                pop si
0000216C  148D              adc al,0x8d
0000216E  744E              jz 0x21be
00002170  8D7F06            lea di,[bx+0x6]
00002173  A5                movsw
00002174  A5                movsw
00002175  A5                movsw
00002176  5E                pop si
00002177  07                pop es
00002178  C3                ret
00002179  C6440404          mov byte [si+0x4],0x4
0000217D  5F                pop di
0000217E  C3                ret
0000217F  E82300            call 0x21a5
00002182  8CDA              mov dx,ds
00002184  8BC6              mov ax,si
00002186  C5770A            lds si,[bx+0xa]
00002189  C6443700          mov byte [si+0x37],0x0
0000218D  8BF0              mov si,ax
0000218F  8EDA              mov ds,dx
00002191  3B01              cmp ax,[bx+di]
00002193  FA                cli
00002194  50                push ax
00002195  C3                ret
00002196  56                push si
00002197  BF4303            mov di,0x343
0000219A  897708            mov [bx+0x8],si
0000219D  07                pop es
0000219E  5E                pop si
0000219F  048D              add al,0x8d
000021A1  36FC              ss cld
000021A3  5E                pop si
000021A4  C3                ret
000021A5  56                push si
000021A6  0A26C6F6          or ah,[0xf6c6]
000021AA  44                inc sp
000021AB  06                push es
000021AC  724D              jc 0x21fb
000021AE  EB01              jmp short 0x21b1
000021B0  2686FD            es xchg bh,ch
000021B3  EB2F              jmp short 0x21e4
000021B5  BF4303            mov di,0x343
000021B8  07                pop es
000021B9  5E                pop si
000021BA  0406              add al,0x6
000021BC  837F0600          cmp word [bx+0x6],byte +0x0
000021C0  7406              jz 0x21c8
000021C2  807F220C          cmp byte [bx+0x22],0xc
000021C6  1A8BCB8B          sbb cl,[bp+di-0x7435]
000021CA  D7                xlatb
000021CB  33DB              xor bx,bx
000021CD  871C              xchg bx,[si]
000021CF  3E897E7C          mov [ds:bp+0x7c],di
000021D3  0285FF74          add al,[di+0x74ff]
000021D7  0504C7            add ax,0xc704
000021DA  47                inc di
000021DB  891D              mov [di],bx
000021DD  8BFA              mov di,dx
000021DF  8BD9              mov bx,cx
000021E1  E8F5FB            call 0x1dd9
000021E4  5E                pop si
000021E5  C3                ret
000021E6  26836710FC        and word [es:bx+0x10],byte -0x4
000021EB  8BC6              mov ax,si
000021ED  8BD7              mov dx,di
000021EF  5E                pop si
000021F0  C43E115E          les di,[0x5e11]
000021F4  EB8D              jmp short 0x2183
000021F6  3F                aas
000021F7  F3A5              rep movsw
000021F9  26C7470C0147      mov word [es:bx+0xc],0x4701
000021FF  B9C747            mov cx,0x47c7
00002202  27                daa
00002203  003E115E          add [0x5e11],bh
00002207  EB8D              jmp short 0x2196
00002209  7F21              jg 0x222c
0000220B  A4                movsb
0000220C  C43EF9A7          les di,[0xa7f9]
00002210  8BF0              mov si,ax
00002212  8BFA              mov di,dx
00002214  BB9702            mov bx,0x297
00002217  8501              test [bx+di],ax
00002219  F7FC              idiv sp
0000221B  335307            xor dx,[bp+di+0x7]
0000221E  8D761A            lea si,[bp+0x1a]
00002221  B90800            mov cx,0x8
00002224  3EE403            ds in al,0x3
00002227  8A4710            mov al,[bx+0x10]
0000222A  AA                stosb
0000222B  8D7721            lea si,[bx+0x21]
0000222E  1F                pop ds
0000222F  741E              jz 0x224f
00002231  26817407803E      xor word [es:si+0x7],0x3e80
00002237  89268175          mov [0x7581],sp
0000223B  1DF647            sbb ax,0x47f6
0000223E  2101              and [bx+di],ax
00002240  7417              jz 0x2259
00002242  B8FFFF            mov ax,0xffff
00002245  AB                stosw
00002246  AB                stosw
00002247  AB                stosw
00002248  8B448E            mov ax,[si-0x72]
0000224B  FF00              inc word [bx+si]
0000224D  268B08            mov cx,[es:bx+si]
00002250  FF00              inc word [bx+si]
00002252  268B0A            mov cx,[es:bp+si]
00002255  FF                db 0xff
00002256  FF                db 0xff
00002257  EBA5              jmp short 0x21fe
00002259  5E                pop si
0000225A  C43EF905          les di,[0x5f9]
0000225E  B800F0            mov ax,0xf000
00002261  F747104404        test word [bx+0x10],0x444
00002266  06                push es
00002267  06                push es
00002268  33C0              xor ax,ax
0000226A  AB                stosw
0000226B  E9E700            jmp 0x2355
0000226E  268C1EF103        mov [es:0x3f1],ds
00002273  268C1EF703        mov [es:0x3f7],ds
00002278  1F                pop ds
00002279  741E              jz 0x2299
0000227B  26817503B8C0      xor word [es:di+0x3],0xc0b8
00002281  FFAB8D3E          jmp far [bp+di+0x3e8d]
00002285  E103              loope 0x228a
00002287  1F                pop ds
00002288  741E              jz 0x22a8
0000228A  26810103E9        add word [es:bx+di],0xe903
0000228F  8E00              mov es,[bx+si]
00002291  33C0              xor ax,ax
00002293  F747102000        test word [bx+0x10],0x20
00002298  7503              jnz 0x229d
0000229A  874F2B            xchg cx,[bx+0x2b]
0000229D  052F00            add ax,0x2f
000022A0  F7051086          test word [di],0x8610
000022A4  E0A3              loopne 0x2249
000022A6  9C                pushf
000022A7  0432              add al,0x32
000022A9  C0                db 0xc0
000022AA  F6470601          test byte [bx+0x6],0x1
000022AE  E9EB1A            jmp 0x3d9c
000022B1  14A2              adc al,0xa2
000022B3  9F                lahf
000022B4  04C7              add al,0xc7
000022B6  45                inc bp
000022B7  0C06              or al,0x6
000022B9  00C7              add bh,al
000022BB  45                inc bp
000022BC  0E                push cs
000022BD  9A04C74512        call 0x1245:0xc704
000022C2  0200              add al,[bx+si]
000022C4  8D4729            lea ax,[bx+0x29]
000022C7  894514            mov [di+0x14],ax
000022CA  C745180200        mov word [di+0x18],0x2
000022CF  8D470E            lea ax,[bx+0xe]
000022D2  1C00              sbb al,0x0
000022D4  A3C745            mov [0x45c7],ax
000022D7  1E                push ds
000022D8  06                push es
000022D9  008D4706          add [di+0x647],cl
000022DD  894520            mov [di+0x20],ax
000022E0  C745240200        mov word [di+0x24],0x2
000022E5  8B4526            mov ax,[di+0x26]
000022E8  A004C7            mov al,[0xc704]
000022EB  45                inc bp
000022EC  2A02              sub al,[bp+si]
000022EE  008D4727          add [di+0x2747],cl
000022F2  89452C            mov [di+0x2c],ax
000022F5  C745300200        mov word [di+0x30],0x2
000022FA  8D470C            lea ax,[bx+0xc]
000022FD  894532            mov [di+0x32],ax
00002300  C745360600        mov word [di+0x36],0x6
00002305  8D07              lea ax,[bx]
00002307  894538            mov [di+0x38],ax
0000230A  C7453C0200        mov word [di+0x3c],0x2
0000230F  81453C0510        add word [di+0x3c],0x1005
00002314  00453E            add [di+0x3e],al
00002317  A0048D            mov al,[0x8d04]
0000231A  3E2304            and ax,[ds:si]
0000231D  EB22              jmp short 0x2341
0000231F  C7450C0200        mov word [di+0xc],0x2
00002324  8B450E            mov ax,[di+0xe]
00002327  96                xchg ax,si
00002328  04C7              add al,0xc7
0000232A  45                inc bp
0000232B  1210              adc dl,[bx+si]
0000232D  008D0789          add [di-0x76f9],cl
00002331  45                inc bp
00002332  14C7              adc al,0xc7
00002334  45                inc bp
00002335  1802              sbb [bp+si],al
00002337  00C7              add bh,al
00002339  45                inc bp
0000233A  1A98048D          sbb bl,[bx+si-0x72fc]
0000233E  3EFF03            inc word [ds:bp+di]
00002341  B81100            mov ax,0x11
00002344  AB                stosw
00002345  8D4710            lea ax,[bx+0x10]
00002348  AB                stosw
00002349  83C702            add di,byte +0x2
0000234C  33C0              xor ax,ax
0000234E  F747102000        test word [bx+0x10],0x20
00002353  7528              jnz 0x237d
00002355  874F2B            xchg cx,[bx+0x2b]
00002358  3D7000            cmp ax,0x70
0000235B  80208B            and byte [bx+si],0x8b
0000235E  47                inc di
0000235F  2B8BC8AB          sub cx,[bp+di-0x5438]
00002363  8B472D            mov ax,[bx+0x2d]
00002366  AB                stosw
00002367  8B472F            mov ax,[bx+0x2f]
0000236A  AB                stosw
0000236B  8B4712            mov ax,[bx+0x12]
0000236E  2BC1              sub ax,cx
00002370  740B              jz 0x237d
00002372  AB                stosw
00002373  8B4731            mov ax,[bx+0x31]
00002376  AB                stosw
00002377  8B4733            mov ax,[bx+0x33]
0000237A  AB                stosw
0000237B  33C0              xor ax,ax
0000237D  AB                stosw
0000237E  8D3EE203          lea di,[0x3e2]
00002382  26891D            mov [es:di],bx
00002385  1E                push ds
00002386  8C00              mov [bx+si],es
00002388  07                pop es
00002389  BBE1A0            mov bx,0xa0e1
0000238C  8A03              mov al,[bp+di]
0000238E  8400              test [bx+si],al
00002390  FC                cld
00002391  1F                pop ds
00002392  07                pop es
00002393  5B                pop bx
00002394  1F                pop ds
00002395  7306              jnc 0x239d
00002397  26ED              es in ax,dx
00002399  1E                push ds
0000239A  2E7C03            cs jl 0x23a0
0000239D  FF8306C4          inc word [bp+di-0x3bfa]
000023A1  0000              add [bx+si],al
000023A3  8A1EC606          mov bl,[0x6c6]
000023A7  050653            add ax,0x5306
000023AA  E891EA            call 0xe3e
000023AD  5B                pop bx
000023AE  07                pop es
000023AF  26ED              es in ax,dx
000023B1  1E                push ds
000023B2  2E7CC3            cs jl 0x2378
000023B5  53                push bx
000023B6  56                push si
000023B7  06                push es
000023B8  55                push bp
000023B9  7F14              jg 0x23cf
000023BB  8D772F            lea si,[bx+0x2f]
000023BE  5F                pop di
000023BF  0E                push cs
000023C0  ED                in ax,dx
000023C1  6710FD            a32 adc ch,bh
000023C4  E81FFE            call 0x21e6
000023C7  5D                pop bp
000023C8  07                pop es
000023C9  5E                pop si
000023CA  5B                pop bx
000023CB  7210              jc 0x23dd
000023CD  74F1              jz 0x23c0
000023CF  F7471E0208        test word [bx+0x1e],0x802
000023D4  7607              jna 0x23dd
000023D6  5E                pop si
000023D7  048D              add al,0x8d
000023D9  CF                iret
000023DA  F9                stc
000023DB  5E                pop si
000023DC  C3                ret
000023DD  44                inc sp
000023DE  27                daa
000023DF  887C03            mov [si+0x3],bh
000023E2  FF33              push word [bp+di]
000023E4  C089058945        ror byte [bx+di-0x76fb],byte 0x45
000023E9  02894504          add cl,[bx+di+0x445]
000023ED  894506            mov [di+0x6],ax
000023F0  C3                ret
000023F1  50                push ax
000023F2  51                push cx
000023F3  8CC1              mov cx,es
000023F5  FA                cli
000023F6  C47555            les si,[di+0x55]
000023F9  03BD0BC6          add di,[di-0x39f5]
000023FD  7507              jnz 0x2406
000023FF  891D              mov [di],bx
00002401  894D02            mov [di+0x2],cx
00002404  033C              add di,[si]
00002406  FF895C3C          dec word [bx+di+0x3c5c]
0000240A  26894C3E          mov [es:si+0x3e],cx
0000240E  895D04            mov [di+0x4],bx
00002411  894D06            mov [di+0x6],cx
00002414  8EC1              mov es,cx
00002416  33C0              xor ax,ax
00002418  E480              in al,0x80
0000241A  47                inc di
0000241B  3C26              cmp al,0x26
0000241D  89473E            mov [bx+0x3e],ax
00002420  59                pop cx
00002421  58                pop ax
00002422  FB                sti
00002423  C3                ret
00002424  FA                cli
00002425  C42D              les bp,[di]
00002427  8CC3              mov bx,es
00002429  0BDD              or bx,bp
0000242B  F9                stc
0000242C  7417              jz 0x2445
0000242E  47                inc di
0000242F  39263C26          cmp [0x263c],sp
00002433  8B5E3E            mov bx,[bp+0x3e]
00002436  8905              mov [di],ax
00002438  895D02            mov [di+0x2],bx
0000243B  0BC3              or ax,bx
0000243D  7506              jnz 0x2445
0000243F  894504            mov [di+0x4],ax
00002442  895D06            mov [di+0x6],bx
00002445  FB                sti
00002446  C3                ret
00002447  06                push es
00002448  53                push bx
00002449  33C0              xor ax,ax
0000244B  A27C03            mov [0x37c],al
0000244E  A37A03            mov [0x37a],ax
00002451  A20C02            mov [0x20c],al
00002454  A20E02            mov [0x20e],al
00002457  53                push bx
00002458  1E                push ds
00002459  06                push es
0000245A  B92B00            mov cx,0x2b
0000245D  83E906            sub cx,byte +0x6
00002460  1F                pop ds
00002461  741E              jz 0x2481
00002463  26007407          add [es:si+0x7],dh
00002467  B92F00            mov cx,0x2f
0000246A  81C12000          add cx,0x20
0000246E  FF1E94F8          call far [0xf894]
00002472  C3                ret
00002473  1F                pop ds
00002474  5B                pop bx
00002475  1F                pop ds
00002476  741E              jz 0x2496
00002478  2600741B          add [es:si+0x1b],dh
0000247C  00263905          add [0x539],ah
00002480  2F                das
00002481  00F7              add bh,dh
00002483  05103B            add ax,0x3b10
00002486  06                push es
00002487  8603              xchg al,[bp+di]
00002489  760C              jna 0x2497
0000248B  A18603            mov ax,[0x386]
0000248E  2D2F39            sub ax,0x392f
00002491  46                inc si
00002492  08B0A3E8          or [bx+si-0x175d],dh
00002496  0057FA            add [bx-0x6],dl
00002499  BF6A03            mov di,0x36a
0000249C  E844FF            call 0x23e3
0000249F  19721D            sbb [bp+si+0x1d],si
000024A2  8B3EFFFB          mov di,[0xfbff]
000024A6  5F                pop di
000024A7  9C                pushf
000024A8  FA                cli
000024A9  26028A0EE6        add cl,[es:bp+si-0x19f2]
000024AE  0012              add [bp+si],dl
000024B0  0001              add [bx+di],al
000024B2  1A3A              sbb bh,[bp+si]
000024B4  DC05              fadd qword [di]
000024B6  028AC126          add cl,[bp+si+0x26c1]
000024BA  8A6703            mov ah,[bx+0x3]
000024BD  84E4              test ah,ah
000024BF  740C              jz 0x24cd
000024C1  8A2EDC00          mov ch,[0xdc]
000024C5  3AE5              cmp ah,ch
000024C7  7607              jna 0x24d0
000024C9  8AE5              mov ah,ch
000024CB  EB03              jmp short 0x24d0
000024CD  A10600            mov ax,[0x6]
000024D0  A2E400            mov [0xe4],al
000024D3  8826DA00          mov [0xda],ah
000024D7  8826D800          mov [0xd8],ah
000024DB  33C0              xor ax,ax
000024DD  A3E200            mov [0xe2],ax
000024E0  A3EA00            mov [0xea],ax
000024E3  BF4809            mov di,0x948
000024E6  893E5103          mov [0x351],di
000024EA  BA4300            mov dx,0x43
000024ED  42                inc dx
000024EE  83E2FE            and dx,byte -0x2
000024F1  8B0EDA00          mov cx,[0xda]
000024F5  41                inc cx
000024F6  E8F2F8            call 0x1deb
000024F9  893E8BDE          mov [0xde8b],di
000024FD  8B161102          mov dx,[0x211]
00002501  83C237            add dx,byte +0x37
00002504  42                inc dx
00002505  83E2FE            and dx,byte -0x2
00002508  8B0E0F02          mov cx,[0x20f]
0000250C  E8DCF8            call 0x1deb
0000250F  893E73F4          mov [0xf473],di
00002513  C7                db 0xc7
00002514  D5F8              aad 0xf8
00002516  893E5303          mov [0x353],di
0000251A  BA5400            mov dx,0x54
0000251D  42                inc dx
0000251E  83E2FE            and dx,byte -0x2
00002521  8B0EE400          mov cx,[0xe4]
00002525  51                push cx
00002526  E8C2F8            call 0x1deb
00002529  59                pop cx
0000252A  1E                push ds
0000252B  07                pop es
0000252C  893E5703          mov [0x357],di
00002530  33C0              xor ax,ax
00002532  F3AB              rep stosw
00002534  893E5B03          mov [0x35b],di
00002538  E8B0F8            call 0x1deb
0000253B  893E5903          mov [0x359],di
0000253F  8B0ED000          mov cx,[0xd0]
00002543  BA1700            mov dx,0x17
00002546  42                inc dx
00002547  83E2FE            and dx,byte -0x2
0000254A  E89EF8            call 0x1deb
0000254D  8B1E5303          mov bx,[0x353]
00002551  BDDE22            mov bp,0x22de
00002554  E8B7F8            call 0x1e0e
00002557  BBBD88            mov bx,0x88bd
0000255A  E86F00            call 0x25cc
0000255D  C6470501          mov byte [bx+0x5],0x1
00002561  C6470400          mov byte [bx+0x4],0x0
00002565  8BF3              mov si,bx
00002567  053E73            add ax,0x733e
0000256A  F4                hlt
0000256B  8D7D04            lea di,[di+0x4]
0000256E  E868F8            call 0x1dd9
00002571  BB1502            mov bx,0x215
00002574  E85500            call 0x25cc
00002577  C6470501          mov byte [bx+0x5],0x1
0000257B  C6470400          mov byte [bx+0x4],0x0
0000257F  8BF3              mov si,bx
00002581  053E73            add ax,0x733e
00002584  F4                hlt
00002585  8D7D04            lea di,[di+0x4]
00002588  E84EF8            call 0x1dd9
0000258B  BF3F03            mov di,0x33f
0000258E  33C9              xor cx,cx
00002590  E858F8            call 0x1deb
00002593  BF4703            mov di,0x347
00002596  E852F8            call 0x1deb
00002599  00B02472          add [bx+si+0x7224],dh
0000259D  2D00C6            sub ax,0xc600
000025A0  47                inc di
000025A1  050111            add ax,0x1101
000025A4  5E                pop si
000025A5  EBBF              jmp short 0x2566
000025A7  1F                pop ds
000025A8  038D744E          add cx,[di+0x4e74]
000025AC  C606270300        mov byte [0x327],0x0
000025B1  C6472489          mov byte [bx+0x24],0x89
000025B5  00C6              add dh,al
000025B7  47                inc di
000025B8  07                pop es
000025B9  06                push es
000025BA  001EFF1E          add [0x1eff],bl
000025BE  98                cbw
000025BF  001F              add [bx],bl
000025C1  1E                push ds
000025C2  41                inc cx
000025C3  06                push es
000025C4  A0B000            mov al,[0xb0]
000025C7  5D                pop bp
000025C8  07                pop es
000025C9  E955F8            jmp 0x1e21
000025CC  33C0              xor ax,ax
000025CE  8907              mov [bx],ax
000025D0  894702            mov [bx+0x2],ax
000025D3  53                push bx
000025D4  8D7F2E            lea di,[bx+0x2e]
000025D7  33C9              xor cx,cx
000025D9  E80FF8            call 0x1deb
000025DC  5B                pop bx
000025DD  8D7F36            lea di,[bx+0x36]
000025E0  E808F8            call 0x1deb
000025E3  3E897E02          mov [ds:bp+0x2],di
000025E7  3E8B5CE9          mov bx,[ds:si-0x17]
000025EB  8B4E0A            mov cx,[bp+0xa]
000025EE  2E803E9002EB      cmp byte [cs:0x290],0xeb
000025F4  0F2E803E90        ucomiss xmm0,dword [bx+si-0x6fc2]
000025F9  02EB              add ch,bl
000025FB  06                push es
000025FC  E98B4E            jmp 0x748a
000025FF  0AEB              or ch,bl
00002601  DC05              fadd qword [di]
00002603  0033              add [bp+di],dh
00002605  D226034E          shl byte [0x4e03],cl
00002609  0812              or [bp+si],dl
0000260B  D6                salc
0000260C  26894E3D          mov [es:bp+0x3d],cx
00002610  2688563F          mov [es:bp+0x3f],dl
00002614  33C0              xor ax,ax
00002616  E480              in al,0x80
00002618  7C26              jl 0x2640
0000261A  8988263C          mov [bx+si+0x3c26],cx
0000261E  26054638          es add ax,0x3846
00002622  06                push es
00002623  A0D400            mov al,[0xd4]
00002626  BA26E8            mov dx,0xe826
00002629  95                xchg ax,bp
0000262A  03FF              add di,di
0000262C  771E              ja 0x264c
0000262E  807C04EE          cmp byte [si+0x4],0xee
00002632  FA                cli
00002633  58                pop ax
00002634  A9D672            test ax,0x72d6
00002637  4D                dec bp
00002638  052E80            add ax,0x802e
0000263B  3E90              ds nop
0000263D  027404            add dh,[si+0x4]
00002640  804C0275          or byte [si+0x2],0x75
00002644  138A33ED          adc cx,[bp+si-0x12cd]
00002648  EB64              jmp short 0x26ae
0000264A  05F7A8            add ax,0xa8f7
0000264D  087408            or [si+0x8],dh
00002650  FE4426            inc byte [si+0x26]
00002653  753E              jnz 0x2693
00002655  AC                lodsb
00002656  0026FE44          add [0x44fe],ah
0000265A  288A4428          sub [bp+si+0x2844],cl
0000265E  1A730A            sbb dh,[bp+di+0xa]
00002661  A11302            mov ax,[0x213]
00002664  7404              jz 0x266a
00002666  804C0274          or byte [si+0x2],0x74
0000266A  038B4448          add cx,[bp+di+0x4844]
0000266E  3B4448            cmp ax,[si+0x48]
00002671  80648B44          and byte [si-0x75],0x44
00002675  48                dec ax
00002676  7405              jz 0x267d
00002678  E8E8AA            call 0xd163
0000267B  0F                db 0x0f
0000267C  0A263B46          or ah,[0x463b]
00002680  3D7604            cmp ax,0x476
00002683  47                inc di
00002684  39263D89          cmp [0x893d],sp
00002688  44                inc sp
00002689  2CE8              sub al,0xe8
0000268B  3B03              cmp ax,[bp+di]
0000268D  44                inc sp
0000268E  27                daa
0000268F  884074            mov [bx+si+0x74],al
00002692  0480              add al,0x80
00002694  4C                dec sp
00002695  02751C            add dh,[di+0x1c]
00002698  2AC6              sub al,dh
0000269A  47                inc di
0000269B  227216            and dh,[bp+si+0x16]
0000269E  23E8              and bp,ax
000026A0  9C                pushf
000026A1  18E8              sbb al,ch
000026A3  2B28              sub bp,[bx+si]
000026A5  8A442B            mov al,[si+0x2b]
000026A8  882C              mov [si],ch
000026AA  2A834F1E          sub al,[bp+di+0x1e4f]
000026AE  102E4427          adc [0x2744],ch
000026B2  8808              mov [bx+si],cl
000026B4  7404              jz 0x26ba
000026B6  804C0274          or byte [si+0x2],0x74
000026BA  48                dec ax
000026BB  0E                push cs
000026BC  8B444C            mov ax,[si+0x4c]
000026BF  891C              mov [si],bx
000026C1  2956E8            sub [bp-0x18],dx
000026C4  9B1537E8          wait adc ax,0xe837
000026C8  EBFC              jmp short 0x26c6
000026CA  7305              jnc 0x26d1
000026CC  E8B1F7            call 0x1e80
000026CF  EBEA              jmp short 0x26bb
000026D1  8B442C            mov ax,[si+0x2c]
000026D4  7405              jz 0x26db
000026D6  E8E8AA            call 0xd1c1
000026D9  0F15263B46        unpckhps xmm4,oword [0x463b]
000026DE  3D750F            cmp ax,0xf75
000026E1  7505              jnz 0x26e8
000026E3  E8BB10            call 0x37a1
000026E6  EBF4              jmp short 0x26dc
000026E8  B095              mov al,0x95
000026EA  F7EB              imul bx
000026EC  F4                hlt
000026ED  E928F8            jmp 0x1f18
000026F0  E480              in al,0x80
000026F2  7C26              jl 0x271a
000026F4  8A572A            mov dl,[bx+0x2a]
000026F7  2688563C          mov [es:bp+0x3c],dl
000026FB  3CE9              cmp al,0xe9
000026FD  DC05              fadd qword [di]
000026FF  35E9A5            xor ax,0xa5e9
00002702  000E8B44          add [0x448b],cl
00002706  4C                dec sp
00002707  891C              mov [si],bx
00002709  2956E8            sub [bp-0x18],dx
0000270C  9B1537E8          wait adc ax,0xe837
00002710  A3FCF7            mov [0xf7fc],ax
00002713  47                inc di
00002714  1E                push ds
00002715  69F774F1          imul si,di,word 0xf174
00002719  F7471E02E5        test word [bx+0x1e],0xe502
0000271E  7503              jnz 0x2723
00002720  E85810            call 0x377b
00002723  E90075            jmp 0x9c26
00002726  05E833            add ax,0x33e8
00002729  11EB              adc bx,bp
0000272B  F4                hlt
0000272C  B051              mov al,0x51
0000272E  F7F6              div si
00002730  44                inc sp
00002731  0538F7            add ax,0xf738
00002734  74F1              jz 0x2727
00002736  F7471E02C8        test word [bx+0x1e],0xc802
0000273B  8B88472A          mov cx,[bx+si+0x2a47]
0000273F  57                push di
00002740  2A26807C          sub ah,[0x7c80]
00002744  268988563C        mov [es:bx+si+0x3c56],cx
00002749  03E9              add bp,cx
0000274B  D802              fadd dword [bp+si]
0000274D  C3                ret
0000274E  59                pop cx
0000274F  263B463D          cmp ax,[es:bp+0x3d]
00002753  7509              jnz 0x275e
00002755  263A563F          cmp dl,[es:bp+0x3f]
00002759  BB9702            mov bx,0x297
0000275C  BAF783            mov dx,0x83f7
0000275F  671E              push ds
00002761  FD                std
00002762  E807F7            call 0x1e6c
00002765  74F1              jz 0x2758
00002767  F7471E75CF        test word [bx+0x1e],0xcf75
0000276C  47                inc di
0000276D  1E                push ds
0000276E  C400              les ax,[bx+si]
00002770  C7471E0000        mov word [bx+0x1e],0x0
00002775  E8DEF9            call 0x2156
00002778  0E                push cs
00002779  8B444C            mov ax,[si+0x4c]
0000277C  891C              mov [si],bx
0000277E  2956E8            sub [bp-0x18],dx
00002781  9B1537E8          wait adc ax,0xe837
00002785  2EFC              cs cld
00002787  F7471EF4F6        test word [bx+0x1e],0xf6f4
0000278C  74F1              jz 0x277f
0000278E  F7471E02E5        test word [bx+0x1e],0xe502
00002793  7503              jnz 0x2798
00002795  E85810            call 0x37f0
00002798  E9A175            jmp 0x9d3c
0000279B  05E833            add ax,0x33e8
0000279E  11EB              adc bx,bp
000027A0  F4                hlt
000027A1  B0DC              mov al,0xdc
000027A3  F6EB              imul bl
000027A5  ED                in ax,dx
000027A6  EBB6              jmp short 0x275e
000027A8  47                inc di
000027A9  39263D26          cmp [0x263d],sp
000027AD  8A563F            mov dl,[bp+0x3f]
000027B0  262B463A          sub ax,[es:bp+0x3a]
000027B4  261A563C          sbb dl,[es:bp+0x3c]
000027B8  7404              jz 0x27be
000027BA  804C0274          or byte [si+0x2],0x74
000027BE  048B              add al,0x8b
000027C0  C8EB0D8B          enter 0xdeb,0x8b
000027C4  4F                dec di
000027C5  204D15            and [di+0x15],cl
000027C8  3C06              cmp al,0x6
000027CA  C8890EDE          enter 0xe89,0xde
000027CE  05890E            add ax,0xe89
000027D1  4C                dec sp
000027D2  2C47              sub al,0x47
000027D4  1E                push ds
000027D5  C40D              les cx,[di]
000027D7  44                inc sp
000027D8  27                daa
000027D9  887C81            mov [si-0x7f],bh
000027DC  671E              push ds
000027DE  0102              add [bp+si],ax
000027E0  06                push es
000027E1  A0D438            mov al,[0x38d4]
000027E4  0000              add [bx+si],al
000027E6  E86DF9            call 0x2156
000027E9  39066103          cmp [0x361],ax
000027ED  72DB              jc 0x27ca
000027EF  833E7A7307        cmp word [0x737a],byte +0x7
000027F4  803E070A00        cmp byte [0xa07],0x0
000027F9  FF1E3B01          call far [0x13b]
000027FD  FA                cli
000027FE  50                push ax
000027FF  E87EF6            call 0x1e80
00002802  74F1              jz 0x27f5
00002804  F7471E0203        test word [bx+0x1e],0x302
00002809  E9467C            jmp 0xa452
0000280C  81671E3FFF        and word [bx+0x1e],0xff3f
00002811  E8B401            call 0x29c8
00002814  0E                push cs
00002815  8B444C            mov ax,[si+0x4c]
00002818  891C              mov [si],bx
0000281A  2956E8            sub [bp-0x18],dx
0000281D  9B153774          wait adc ax,0x7437
00002821  0480              add al,0x80
00002823  4C                dec sp
00002824  027573            add dh,[di+0x73]
00002827  F6440601          test byte [si+0x6],0x1
0000282B  746D              jz 0x289a
0000282D  8B4720            mov ax,[bx+0x20]
00002830  014442            add [si+0x42],ax
00002833  8B4444            mov ax,[si+0x44]
00002836  394442            cmp [si+0x42],ax
00002839  725F              jc 0x289a
0000283B  44                inc sp
0000283C  27                daa
0000283D  88408B            mov [bx+si-0x75],al
00002840  47                inc di
00002841  20C7              and bh,al
00002843  44                inc sp
00002844  42                inc dx
00002845  0000              add [bx+si],al
00002847  0E                push cs
00002848  8B444C            mov ax,[si+0x4c]
0000284B  891C              mov [si],bx
0000284D  2956E8            sub [bp-0x18],dx
00002850  9B1537E8          wait adc ax,0xe837
00002854  5F                pop di
00002855  FB                sti
00002856  F7471E25F6        test word [bx+0x1e],0xf625
0000285B  74F1              jz 0x284e
0000285D  F7471E0200        test word [bx+0x1e],0x2
00002862  75AE              jnz 0x2812
00002864  F7471E0128        test word [bx+0x1e],0x2801
00002869  7505              jnz 0x2870
0000286B  E83311            call 0x39a1
0000286E  EBF4              jmp short 0x2864
00002870  B00D              mov al,0xd
00002872  F6EB              imul bl
00002874  ED                in ax,dx
00002875  8A4441            mov al,[si+0x41]
00002878  7C26              jl 0x28a0
0000287A  1937              sbb [bx],si
0000287C  E8F4F5            call 0x1e73
0000287F  75AE              jnz 0x282f
00002881  F7471E010B        test word [bx+0x1e],0xb01
00002886  47                inc di
00002887  1E                push ds
00002888  C400              les ax,[bx+si]
0000288A  C7471E0000        mov word [bx+0x1e],0x0
0000288F  EBB6              jmp short 0x2847
00002891  8B88472A          mov cx,[bx+si+0x2a47]
00002895  57                push di
00002896  2AE9              sub ch,cl
00002898  CB                retf
00002899  007505            add [di+0x5],dh
0000289C  E84000            call 0x28df
0000289F  7521              jnz 0x28c2
000028A1  0E                push cs
000028A2  8B444C            mov ax,[si+0x4c]
000028A5  891C              mov [si],bx
000028A7  2956E8            sub [bp-0x18],dx
000028AA  9B1537E8          wait adc ax,0xe837
000028AE  05FB73            add ax,0x73fb
000028B1  0DE8CB            or ax,0xcbe8
000028B4  F5                cmc
000028B5  74F1              jz 0x28a8
000028B7  F7471E02E5        test word [bx+0x1e],0xe502
000028BC  E99300            jmp 0x2952
000028BF  E927FF            jmp 0x27e9
000028C2  7404              jz 0x28c8
000028C4  804C0274          or byte [si+0x2],0x74
000028C8  3F                aas
000028C9  0E                push cs
000028CA  8B444C            mov ax,[si+0x4c]
000028CD  891C              mov [si],bx
000028CF  2956E8            sub [bp-0x18],dx
000028D2  9B1537E8          wait adc ax,0xe837
000028D6  DD                db 0xdd
000028D7  FA                cli
000028D8  F7471EA3F5        test word [bx+0x1e],0xf5a3
000028DD  74F1              jz 0x28d0
000028DF  F7471E02E5        test word [bx+0x1e],0xe502
000028E4  7503              jnz 0x28e9
000028E6  E85810            call 0x3941
000028E9  E90C75            jmp 0x9df8
000028EC  05E833            add ax,0x33e8
000028EF  11EB              adc bx,bp
000028F1  F4                hlt
000028F2  B08B              mov al,0x8b
000028F4  F5                cmc
000028F5  EBED              jmp short 0x28e4
000028F7  8B4720            mov ax,[bx+0x20]
000028FA  0188472A          add [bx+si+0x2a47],cx
000028FE  57                push di
000028FF  2A80D200          sub al,[bx+si+0xd2]
00002903  88572A            mov [bx+0x2a],dl
00002906  EB4A              jmp short 0x2952
00002908  0E                push cs
00002909  8B444C            mov ax,[si+0x4c]
0000290C  891C              mov [si],bx
0000290E  2956E8            sub [bp-0x18],dx
00002911  9B1537E8          wait adc ax,0xe837
00002915  9E                sahf
00002916  FA                cli
00002917  F7471E64F5        test word [bx+0x1e],0xf564
0000291C  74F1              jz 0x290f
0000291E  F7471E0200        test word [bx+0x1e],0x2
00002923  75AE              jnz 0x28d3
00002925  F7471E0128        test word [bx+0x1e],0x2801
0000292A  7505              jnz 0x2931
0000292C  E83311            call 0x3a62
0000292F  EBF4              jmp short 0x2925
00002931  B04C              mov al,0x4c
00002933  F5                cmc
00002934  EBED              jmp short 0x2923
00002936  8A4441            mov al,[si+0x41]
00002939  7C26              jl 0x2961
0000293B  1937              sbb [bx],si
0000293D  E833F5            call 0x1e73
00002940  75AE              jnz 0x28f0
00002942  F7471E010B        test word [bx+0x1e],0xb01
00002947  47                inc di
00002948  1E                push ds
00002949  C400              les ax,[bx+si]
0000294B  C7471E0000        mov word [bx+0x1e],0x0
00002950  EBB6              jmp short 0x2908
00002952  8B88472A          mov cx,[bx+si+0x2a47]
00002956  57                push di
00002957  2A7404            sub dh,[si+0x4]
0000295A  804C0275          or byte [si+0x2],0x75
0000295E  2F                das
0000295F  F6440601          test byte [si+0x6],0x1
00002963  7429              jz 0x298e
00002965  4D                dec bp
00002966  153C25            adc ax,0x253c
00002969  8BC8              mov cx,ax
0000296B  2B4C46            sub cx,[si+0x46]
0000296E  721E              jc 0x298e
00002970  52                push dx
00002971  8BD1              mov dx,cx
00002973  015446            add [si+0x46],dx
00002976  B9FFFF            mov cx,0xffff
00002979  3BCA              cmp cx,dx
0000297B  0E                push cs
0000297C  DE05              fiadd word [di]
0000297E  CA894C            retf 0x4c89
00002981  44                inc sp
00002982  3B4C48            cmp cx,[si+0x48]
00002985  5A                pop dx
00002986  7306              jnc 0x298e
00002988  8B4C48            mov cx,[si+0x48]
0000298B  894C44            mov [si+0x44],cx
0000298E  8BC8              mov cx,ax
00002990  894D46            mov [di+0x46],cx
00002993  268988563C        mov [es:bx+si+0x3c56],cx
00002998  2BC8              sub cx,ax
0000299A  294C2C            sub [si+0x2c],cx
0000299D  C744420000        mov word [si+0x42],0x0
000029A2  7606              jna 0x29aa
000029A4  DC2C              fsubr qword [si]
000029A6  FE                db 0xfe
000029A7  3CE9              cmp al,0xe9
000029A9  46                inc si
000029AA  0535E9            add ax,0xe935
000029AD  8CFD              mov bp,segr7
000029AF  BA0518            mov dx,0x1805
000029B2  03EB              add bp,bx
000029B4  54                push sp
000029B5  90                nop
000029B6  8A16E9BD          mov dl,[0xbde9]
000029BA  DE8AC2E9          fimul word [bp+si-0x163e]
000029BE  5A                pop dx
000029BF  F5                cmc
000029C0  8A4422            mov al,[si+0x22]
000029C3  7C26              jl 0x29eb
000029C5  1976C3            sbb [bp-0x3d],si
000029C8  8B442C            mov ax,[si+0x2c]
000029CB  742B              jz 0x29f8
000029CD  46                inc si
000029CE  383B              cmp [bp+di],bh
000029D0  44                inc sp
000029D1  48                dec ax
000029D2  80648B44          and byte [si-0x75],0x44
000029D6  48                dec ax
000029D7  7405              jz 0x29de
000029D9  E8E8AA            call 0xd4c4
000029DC  0F                db 0x0f
000029DD  0A263B46          or ah,[0x463b]
000029E1  3D7604            cmp ax,0x476
000029E4  47                inc di
000029E5  39263D89          cmp [0x893d],sp
000029E9  47                inc di
000029EA  20460A            and [bp+0xa],al
000029ED  89478B            mov [bx-0x75],ax
000029F0  46                inc si
000029F1  26898A563C        mov [es:bp+si+0x3c56],cx
000029F6  47                inc di
000029F7  20063880          and [0x8038],al
000029FB  D200              rol byte [bx+si],cl
000029FD  894728            mov [bx+0x28],ax
00002A00  88572A            mov [bx+0x2a],dl
00002A03  8CC7              mov di,es
00002A05  7527              jnz 0x2a2e
00002A07  263B4608          cmp ax,[es:bp+0x8]
00002A0B  7321              jnc 0x2a2e
00002A0D  268B5608          mov dx,[es:bp+0x8]
00002A11  2BD0              sub dx,ax
00002A13  92                xchg ax,dx
00002A14  394739            cmp [bx+0x39],ax
00002A17  8167107F39        and word [bx+0x10],0x397f
00002A1C  47                inc di
00002A1D  3F                aas
00002A1E  8C4741            mov [bx+0x41],es
00002A21  1E                push ds
00002A22  07                pop es
00002A23  8D7F2F            lea di,[bx+0x2f]
00002A26  8EC7              mov es,di
00002A28  47                inc di
00002A29  3B8C4703          cmp cx,[si+0x347]
00002A2D  3CFF              cmp al,0xff
00002A2F  2B4608            sub ax,[bp+0x8]
00002A32  26C4560C          les dx,[es:bp+0xc]
00002A36  03D0              add dx,ax
00002A38  8957C4            mov [bx-0x3c],dx
00002A3B  46                inc si
00002A3C  0C89              or al,0x89
00002A3E  8EC7              mov es,di
00002A40  8B4720            mov ax,[bx+0x20]
00002A43  26014638          add [es:bp+0x38],ax
00002A47  268B4638          mov ax,[es:bp+0x38]
00002A4B  39442C            cmp [si+0x2c],ax
00002A4E  5E                pop si
00002A4F  0406              add al,0x6
00002A51  27                daa
00002A52  884047            mov [bx+si+0x47],al
00002A55  8B4626            mov ax,[bp+0x26]
00002A58  898A563C          mov [bp+si+0x3c56],cx
00002A5C  47                inc di
00002A5D  20063880          and [0x8038],al
00002A61  D200              rol byte [bx+si],cl
00002A63  263B463D          cmp ax,[es:bp+0x3d]
00002A67  750B              jnz 0x2a74
00002A69  263A563F          cmp dl,[es:bp+0x3f]
00002A6D  BB052E            mov bx,0x2e05
00002A70  803EC0E6C3        cmp byte [0xe6c0],0xc3
00002A75  E8DC01            call 0x2c54
00002A78  06                push es
00002A79  A0D400            mov al,[0xd4]
00002A7C  53                push bx
00002A7D  29E8              sub ax,bp
00002A7F  8F                db 0x8f
00002A80  133E008A          adc di,[0x8a00]
00002A84  33ED              xor bp,bp
00002A86  EB4C              jmp short 0x2ad4
00002A88  0508A8            add ax,0xa808
00002A8B  08740D            or [si+0xd],dh
00002A8E  A880              test al,0x80
00002A90  7574              jnz 0x2b06
00002A92  03EB              add bp,bx
00002A94  2625833E          es and ax,0x3e83
00002A98  AC                lodsb
00002A99  0026837C          add [0x7c83],ah
00002A9D  3E007423          add [ds:si+0x23],dh
00002AA1  05FDF7            add ax,0xf7fd
00002AA4  45                inc bp
00002AA5  7D14              jnl 0x2abb
00002AA7  0D741A            or ax,0x1a74
00002AAA  8A6427            mov ah,[si+0x27]
00002AAD  3A6515            cmp ah,[di+0x15]
00002AB0  7412              jz 0x2ac4
00002AB2  53                push bx
00002AB3  56                push si
00002AB4  C606060600        mov byte [0x606],0x0
00002AB9  0007              add [bx],al
00002ABB  07                pop es
00002ABC  5D                pop bp
00002ABD  5F                pop di
00002ABE  7EE3              jng 0x2aa3
00002AC0  07                pop es
00002AC1  5D                pop bp
00002AC2  5E                pop si
00002AC3  5B                pop bx
00002AC4  03E9              add bp,cx
00002AC6  D80B              fmul dword [bp+di]
00002AC8  7416              jz 0x2ae0
00002ACA  0533ED            add ax,0xed33
00002ACD  EB75              jmp short 0x2b44
00002ACF  13E8              adc bp,ax
00002AD1  95                xchg ax,bp
00002AD2  F37404            rep jz 0x2ad9
00002AD5  804C0275          or byte [si+0x2],0x75
00002AD9  7403              jz 0x2ade
00002ADB  E9D80B            jmp 0x36b6
00002ADE  75F0              jnz 0x2ad0
00002AE0  E9E500            jmp 0x2bc8
00002AE3  33C9              xor cx,cx
00002AE5  26894E3A          mov [es:bp+0x3a],cx
00002AE9  E835F6            call 0x2121
00002AEC  26874E3C          xchg cx,[es:bp+0x3c]
00002AF0  FF894E38          dec word [bx+di+0x384e]
00002AF4  05FDF7            add ax,0xf7fd
00002AF7  85FF              test di,di
00002AF9  E910EB            jmp 0x160c
00002AFC  6C                insb
00002AFD  90                nop
00002AFE  45                inc bp
00002AFF  7D14              jnl 0x2b15
00002B01  0D7565            or ax,0x6575
00002B04  268B4638          mov ax,[es:bp+0x38]
00002B08  53                push bx
00002B09  56                push si
00002B0A  C606060600        mov byte [0x606],0x0
00002B0F  3B4735            cmp ax,[bx+0x35]
00002B12  80648B47          and byte [si-0x75],0x47
00002B16  35898B            xor ax,0x8b89
00002B19  47                inc di
00002B1A  128B2B3B          adc cl,[bp+di+0x3b2b]
00002B1E  47                inc di
00002B1F  357305            xor ax,0x573
00002B22  8B4712            mov ax,[bx+0x12]
00002B25  89473B            mov [bx+0x3b],ax
00002B28  47                inc di
00002B29  1239              adc bh,[bx+di]
00002B2B  03874F2B          add ax,[bx+0x2b4f]
00002B2F  50                push ax
00002B30  0007              add [bx],al
00002B32  07                pop es
00002B33  5D                pop bp
00002B34  5F                pop di
00002B35  07                pop es
00002B36  E358              jcxz 0x2b90
00002B38  07                pop es
00002B39  5D                pop bp
00002B3A  5E                pop si
00002B3B  5B                pop bx
00002B3C  05FDF7            add ax,0xf7fd
00002B3F  294535            sub [di+0x35],ax
00002B42  740C              jz 0x2b50
00002B44  01452D            add [di+0x2d],ax
00002B47  01451A            add [di+0x1a],ax
00002B4A  80551C00          adc byte [di+0x1c],0x0
00002B4E  EB12              jmp short 0x2b62
00002B50  E8BDF4            call 0x2010
00002B53  0533ED            add ax,0xed33
00002B56  724D              jc 0x2ba5
00002B58  094510            or [di+0x10],ax
00002B5B  80002E            add byte [bx+si],0x2e
00002B5E  803EC0E675        cmp byte [0xe6c0],0x75
00002B63  AE                scasb
00002B64  F7471E015F        test word [bx+0x1e],0x5f01
00002B69  268B4638          mov ax,[es:bp+0x38]
00002B6D  894720            mov [bx+0x20],ax
00002B70  47                inc di
00002B71  1E                push ds
00002B72  C40C              les cx,[si]
00002B74  288A442B          sub [bp+si+0x2b44],cl
00002B78  8828              mov [bx+si],ch
00002B7A  2A834F1E          sub al,[bp+di+0x1e4f]
00002B7E  102A              adc [bp+si],ch
00002B80  29884C23          sub [bx+si+0x234c],cx
00002B84  E89C18            call 0x4423
00002B87  E82306            call 0x31ad
00002B8A  27                daa
00002B8B  8820              mov [bx+si],ah
00002B8D  E8C6F5            call 0x2156
00002B90  0E                push cs
00002B91  8B444C            mov ax,[si+0x4c]
00002B94  891C              mov [si],bx
00002B96  2956E8            sub [bp-0x18],dx
00002B99  9B1537E8          wait adc ax,0xe837
00002B9D  16                push ss
00002B9E  F8                clc
00002B9F  F7471EDCF2        test word [bx+0x1e],0xf2dc
00002BA4  74F1              jz 0x2b97
00002BA6  F7471E02E5        test word [bx+0x1e],0xe502
00002BAB  7503              jnz 0x2bb0
00002BAD  E85810            call 0x3c08
00002BB0  E90075            jmp 0xa0b3
00002BB3  05E833            add ax,0x33e8
00002BB6  11EB              adc bx,bp
00002BB8  F4                hlt
00002BB9  B0C4              mov al,0xc4
00002BBB  F2F64405AB        repne test byte [si+0x5],0xab
00002BC0  F274F1            bnd jz 0x2bb4
00002BC3  F7471E02C5        test word [bx+0x1e],0xc502
00002BC8  8B471E            mov ax,[bx+0x1e]
00002BCB  A9D672            test ax,0x72d6
00002BCE  4D                dec bp
00002BCF  12EB              adc ch,bl
00002BD1  6405F711          fs add ax,0x11f7
00002BD5  08CF              or bh,cl
00002BD7  0101              add [bx+di],ax
00002BD9  0101              add [bx+di],ax
00002BDB  11FF              adc di,di
00002BDD  4C                dec sp
00002BDE  E80674            call 0x9fe7
00002BE1  40                inc ax
00002BE2  E83311            call 0x3d18
00002BE5  EB7E              jmp short 0x2c65
00002BE7  F2EBDC            repne jmp short 0x2bc6
00002BEA  57                push di
00002BEB  2A263C11          sub ah,[0x113c]
00002BEF  FF4CE8            dec word [si-0x18]
00002BF2  AA                stosb
00002BF3  0F837E38          jnc near 0x6475
00002BF7  007446            add [si+0x46],dh
00002BFA  E96AE9            jmp 0x1567
00002BFD  27                daa
00002BFE  FF7404            push word [si+0x4]
00002C01  80752A47          xor byte [di+0x2a],0x47
00002C05  204701            and [bx+0x1],al
00002C08  8926C747          mov [0x47c7],sp
00002C0C  1E                push ds
00002C0D  0000              add [bx+si],al
00002C0F  8B4442            mov ax,[si+0x42]
00002C12  0000              add [bx+si],al
00002C14  288A442B          sub [bp+si+0x2b44],cl
00002C18  8828              mov [bx+si],ch
00002C1A  2A834F1E          sub al,[bp+di+0x1e4f]
00002C1E  E82306            call 0x3244
00002C21  10751C            adc [di+0x1c],dh
00002C24  2AC6              sub al,dh
00002C26  7706              ja 0x2c2e
00002C28  E829F5            call 0x2154
00002C2B  E885F7            call 0x23b3
00002C2E  7417              jz 0x2c47
00002C30  47                inc di
00002C31  3911              cmp [bx+di],dx
00002C33  FF4CED            dec word [si-0x13]
00002C36  724D              jc 0x2c85
00002C38  09457F            or [di+0x7f],ax
00002C3B  50                push ax
00002C3C  E8CFF3            call 0x200e
00002C3F  58                pop ax
00002C40  89471E            mov [bx+0x1e],ax
00002C43  E9DBF3            jmp 0x2021
00002C46  4D                dec bp
00002C47  09457F            or [di+0x7f],ax
00002C4A  E8C1F3            call 0x200e
00002C4D  FEC3              inc bl
00002C4F  B0C6              mov al,0xc6
00002C51  F28A4421          repne mov al,[si+0x21]
00002C55  44                inc sp
00002C56  227C26            and bh,[si+0x26]
00002C59  1932              sbb [bp+si],si
00002C5B  E485              in al,0x85
00002C5D  C0                db 0xc0
00002C5E  7416              jz 0x2c76
00002C60  3B06E400          cmp ax,[0xe4]
00002C64  7710              ja 0x2c76
00002C66  8BF0              mov si,ax
00002C68  D1E6              shl si,1
00002C6A  03365703          add si,[0x357]
00002C6E  8B74FE            mov si,[si-0x2]
00002C71  85F6              test si,si
00002C73  7401              jz 0x2c76
00002C75  72F2              jc 0x2c69
00002C77  C3                ret
00002C78  53                push bx
00002C79  9E                sahf
00002C7A  F8                clc
00002C7B  8B1EE81E          mov bx,[0x1ee8]
00002C7F  F1                int1
00002C80  7278              jc 0x2cfa
00002C82  51                push cx
00002C83  57                push di
00002C84  8BF3              mov si,bx
00002C86  053E73            add ax,0x733e
00002C89  F4                hlt
00002C8A  8D7D49            lea di,[di+0x49]
00002C8D  F1                int1
00002C8E  06                push es
00002C8F  E843FF            call 0x2bd5
00002C92  56                push si
00002C93  A00E02            mov al,[0x20e]
00002C96  FEC0              inc al
00002C98  3A06E400          cmp al,[0xe4]
00002C9C  7602              jna 0x2ca0
00002C9E  B001              mov al,0x1
00002CA0  E8B7FF            call 0x2c5a
00002CA3  73F1              jnc 0x2c96
00002CA5  0C02              or al,0x2
00002CA7  A25E8B            mov [0x8b5e],al
00002CAA  F8                clc
00002CAB  D1E7              shl di,1
00002CAD  0307              add ax,[bx]
00002CAF  893E8975          mov [0x7589],di
00002CB3  FE881745          dec byte [bx+si+0x4517]
00002CB7  028BEEF6          add cl,[bp+di-0x912]
00002CBB  55                push bp
00002CBC  F8                clc
00002CBD  33441E            xor ax,[si+0x1e]
00002CC0  37                aaa
00002CC1  57                push di
00002CC2  7C83              jl 0x2c47
00002CC4  3EF75657          not word [ds:bp+0x57]
00002CC8  1F                pop ds
00002CC9  07                pop es
00002CCA  AB                stosw
00002CCB  00FF              add bh,bh
00002CCD  1E                push ds
00002CCE  E200              loop 0x2cd0
00002CD0  884425            mov [si+0x25],al
00002CD3  884407            mov [si+0x7],al
00002CD6  884405            mov [si+0x5],al
00002CD9  884C23            mov [si+0x23],cl
00002CDC  E84428            call 0x5523
00002CDF  894429            mov [si+0x29],ax
00002CE2  8828              mov [bx+si],ch
00002CE4  2A834406          sub al,[bp+di+0x644]
00002CE8  2EA18E02          mov ax,[cs:0x28e]
00002CEC  894444            mov [si+0x44],ax
00002CEF  55                push bp
00002CF0  F8                clc
00002CF1  334446            xor ax,[si+0x46]
00002CF4  894442            mov [si+0x42],ax
00002CF7  5F                pop di
00002CF8  59                pop cx
00002CF9  F8                clc
00002CFA  5B                pop bx
00002CFB  C3                ret
00002CFC  53                push bx
00002CFD  8A5C20            mov bl,[si+0x20]
00002D00  E32E              jcxz 0x2d30
00002D02  FFA7031E          jmp [bx+0x1e03]
00002D06  57                push di
00002D07  03C7              add ax,di
00002D09  47                inc di
00002D0A  FE00              inc byte [bx+si]
00002D0C  0006E843          add [0x43e8],al
00002D10  00578B            add [bx-0x75],dl
00002D13  F38B1EE8AA        rep mov bx,[0xaae8]
00002D18  F0                lock
00002D19  DB                db 0xdb
00002D1A  FE                db 0xfe
00002D1B  5F                pop di
00002D1C  E200              loop 0x2d1e
00002D1E  E8EDF2            call 0x200e
00002D21  8A4407            mov al,[si+0x7]
00002D24  E8C7F1            call 0x1eee
00002D27  7216              jc 0x2d3f
00002D29  FE0E3E03          dec byte [0x33e]
00002D2D  FE4F16            dec byte [bx+0x16]
00002D30  750D              jnz 0x2d3f
00002D32  017405            add [si+0x5],si
00002D35  8BD9              mov bx,cx
00002D37  07                pop es
00002D38  87F3              xchg si,bx
00002D3A  E8A3F1            call 0x1ee0
00002D3D  8BF3              mov si,bx
00002D3F  5B                pop bx
00002D40  C3                ret
00002D41  B90400            mov cx,0x4
00002D44  E8E9F2            call 0x2030
00002D47  53                push bx
00002D48  E809F3            call 0x2054
00002D4B  7621              jna 0x2d6e
00002D4D  8A7716            mov dh,[bx+0x16]
00002D50  5B                pop bx
00002D51  7305              jnc 0x2d58
00002D53  B015              mov al,0x15
00002D55  E9C0F1            jmp 0x1f18
00002D58  80002E            add byte [bx+si],0x2e
00002D5B  8000B8            add byte [bx+si],0xb8
00002D5E  0400              add al,0x0
00002D60  7C26              jl 0x2d88
00002D62  894D2D            mov [di+0x2d],cx
00002D65  0400              add al,0x0
00002D67  7C3C              jl 0x2da5
00002D69  26055355          es add ax,0x5553
00002D6D  BB430A            mov bx,0xa43
00002D70  EBDC              jmp short 0x2d4e
00002D72  BD4F2B            mov bp,0x2b4f
00002D75  E894F0            call 0x1e0c
00002D78  8AE9              mov ch,cl
00002D7A  B1FF              mov cl,0xff
00002D7C  0F32              rdmsr
00002D7E  C9                leave
00002D7F  BD5A2B            mov bp,0x2b5a
00002D82  E887F0            call 0x1e0c
00002D85  5D                pop bp
00002D86  5B                pop bx
00002D87  06                push es
00002D88  2BC1              sub ax,cx
00002D8A  26C48AC2AA        les cx,[es:bp+si-0x553e]
00002D8F  8AC6              mov al,dh
00002D91  AA                stosb
00002D92  8AC5              mov al,ch
00002D94  AA                stosb
00002D95  8AC1              mov al,cl
00002D97  AA                stosb
00002D98  59                pop cx
00002D99  1E                push ds
00002D9A  07                pop es
00002D9B  2F                das
00002D9C  06                push es
00002D9D  891E2D06          mov [0x62d],bx
00002DA1  46                inc si
00002DA2  385356            cmp [bp+di+0x56],dl
00002DA5  C6                db 0xc6
00002DA6  BD9601            mov bp,0x196
00002DA9  E8C32A            call 0x586f
00002DAC  E85DF0            call 0x1e0c
00002DAF  E358              jcxz 0x2e09
00002DB1  07                pop es
00002DB2  5D                pop bp
00002DB3  E96BF2            jmp 0x2021
00002DB6  F600C6            test byte [bx+si],0xc6
00002DB9  47                inc di
00002DBA  7508              jnz 0x2dc4
00002DBC  750D              jnz 0x2dcb
00002DBE  80FAFF            cmp dl,0xff
00002DC1  7405              jz 0x2dc8
00002DC3  3AF3              cmp dh,bl
00002DC5  7AEC              jpe 0x2db3
00002DC7  00B00906          add [bx+si+0x609],dh
00002DCB  8A4720            mov al,[bx+0x20]
00002DCE  AA                stosb
00002DCF  5A                pop dx
00002DD0  FF75AA            push word [di-0x56]
00002DD3  53                push bx
00002DD4  8A4707            mov al,[bx+0x7]
00002DD7  E814F1            call 0x1eee
00002DDA  087607            or [bp+0x7],dh
00002DDD  36FD              ss std
00002DDF  1F                pop ds
00002DE0  07                pop es
00002DE1  5F                pop di
00002DE2  5B                pop bx
00002DE3  8D77F7            lea si,[bx-0x9]
00002DE6  56                push si
00002DE7  57                push di
00002DE8  1F                pop ds
00002DE9  07                pop es
00002DEA  A5                movsw
00002DEB  53                push bx
00002DEC  8D5F8D            lea bx,[bx-0x73]
00002DEF  7F2E              jg 0x2e1f
00002DF1  BD5D2B            mov bp,0x2b5d
00002DF4  E815F0            call 0x1e0c
00002DF7  8AC1              mov al,cl
00002DF9  AA                stosb
00002DFA  5B                pop bx
00002DFB  8D5F36            lea bx,[bx+0x36]
00002DFE  33C9              xor cx,cx
00002E00  BD5A2B            mov bp,0x2b5a
00002E03  E806F0            call 0x1e0c
00002E06  8AC1              mov al,cl
00002E08  AA                stosb
00002E09  8B1E2D06          mov bx,[0x62d]
00002E0D  5B                pop bx
00002E0E  58                pop ax
00002E0F  06                push es
00002E10  B92400            mov cx,0x24
00002E13  015F26            add [bx+0x26],bx
00002E16  8B3C              mov di,[si]
00002E18  06                push es
00002E19  C8078BC8          enter 0x8b07,0xc8
00002E1D  46                inc si
00002E1E  7C81              jl 0x2da1
00002E20  7FFF              jg 0x2e21
00002E22  260126874E        add [es:0x4e87],sp
00002E27  294E38            sub [bp+0x38],cx
00002E2A  268E4606          mov es,[es:bp+0x6]
00002E2E  8B07              mov ax,[bx]
00002E30  2F                das
00002E31  06                push es
00002E32  BE0906            mov si,0x609
00002E35  7402              jz 0x2e39
00002E37  01A4EB21          add [si+0x21eb],sp
00002E3B  8B1E072F          mov bx,[0x2f07]
00002E3F  06                push es
00002E40  5D                pop bp
00002E41  07                pop es
00002E42  8015F0            adc byte [di],0xf0
00002E45  3C23              cmp al,0x23
00002E47  8D067A21          lea ax,[0x217a]
00002E4B  7501              jnz 0x2e4e
00002E4D  41                inc cx
00002E4E  5D                pop bp
00002E4F  07                pop es
00002E50  8007F0            add byte [bx],0xf0
00002E53  3C15              cmp al,0x15
00002E55  EBF4              jmp short 0x2e4b
00002E57  C6472300          mov byte [bx+0x23],0x0
00002E5B  F8                clc
00002E5C  3C2A              cmp al,0x2a
00002E5E  0004              add [si],al
00002E60  1F                pop ds
00002E61  2424              and al,0x24
00002E63  7504              jnz 0x2e69
00002E65  C6472301          mov byte [bx+0x23],0x1
00002E69  B93C00            mov cx,0x3c
00002E6C  E8C1F1            call 0x2030
00002E6F  E8E8F1            call 0x205a
00002E72  06                push es
00002E73  57                push di
00002E74  57                push di
00002E75  7C83              jl 0x2dfa
00002E77  7F2F              jg 0x2ea8
00002E79  E813F0            call 0x1e8f
00002E7C  5F                pop di
00002E7D  07                pop es
00002E7E  C7C3F747          mov bx,0x47f7
00002E82  1C47              sbb al,0x47
00002E84  204702            and [bx+0x2],al
00002E87  0074EE            add [si-0x12],dh
00002E8A  A1E404            mov ax,[0x4e4]
00002E8D  C6472213          mov byte [bx+0x22],0x13
00002E91  FE060D02          inc byte [0x20d]
00002E95  A00D02            mov al,[0x20d]
00002E98  47                inc di
00002E99  188B444A          sbb [bp+di+0x4a44],cl
00002E9D  A0D400            mov al,[0xd4]
00002EA0  44                inc sp
00002EA1  227C26            and bh,[si+0x26]
00002EA4  B81000            mov ax,0x10
00002EA7  263D8947          es cmp ax,0x4789
00002EAB  20468D            and [bp-0x73],al
00002EAE  46                inc si
00002EAF  0A894789          or cl,[bx+di-0x76b9]
00002EB3  57                push di
00002EB4  C44601            les ax,[bp+0x1]
00002EB7  5F                pop di
00002EB8  26088A442B        or [es:bp+si+0x2b44],cl
00002EBD  7E00              jng 0x2ebf
00002EBF  C747370000        mov word [bx+0x37],0x0
00002EC4  26807EE8E9        cmp byte [es:bp-0x18],0xe9
00002EC9  F4                hlt
00002ECA  16                push ss
00002ECB  F8                clc
00002ECC  F7AFEF64          imul word [bx+0x64ef]
00002ED0  F5                cmc
00002ED1  74F1              jz 0x2ec4
00002ED3  F7471E0200        test word [bx+0x1e],0x2
00002ED8  75AE              jnz 0x2e88
00002EDA  F74719E900        test word [bx+0x19],0xe9
00002EDF  7505              jnz 0x2ee6
00002EE1  E83311            call 0x4017
00002EE4  EB97              jmp short 0x2e7d
00002EE6  EF                out dx,ax
00002EE7  EBED              jmp short 0x2ed6
00002EE9  A0D500            mov al,[0xd5]
00002EEC  E87EEF            call 0x1e6d
00002EEF  64F5              fs cmc
00002EF1  74F1              jz 0x2ee4
00002EF3  F747D10074        test word [bx-0x2f],0x7400
00002EF8  EE                out dx,al
00002EF9  A1E40A            mov ax,[0xae4]
00002EFC  8A4723            mov al,[bx+0x23]
00002EFF  EBEB              jmp short 0x2eec
00002F01  FF00              inc word [bx+si]
00002F03  BB12F0            mov bx,0xf012
00002F06  E918F1            jmp 0x2021
00002F09  50                push ax
00002F0A  FF72DB            push word [bp+si-0x25]
00002F0D  83FE06            cmp si,byte +0x6
00002F10  6503FF            gs add di,di
00002F13  06                push es
00002F14  6303              arpl [bp+di],ax
00002F16  A16303            mov ax,[0x363]
00002F19  2D4404            sub ax,0x444
00002F1C  7509              jnz 0x2f27
00002F1E  A36303            mov [0x363],ax
00002F21  FF06BA00          inc word [0xba]
00002F25  EB07              jmp short 0x2f2e
00002F27  A06503            mov al,[0x365]
00002F2A  2C09              sub al,0x9
00002F2C  7508              jnz 0x2f36
00002F2E  A26503            mov [0x365],al
00002F31  FEC0              inc al
00002F33  A26703            mov [0x367],al
00002F36  C606660301        mov byte [0x366],0x1
00002F3B  58                pop ax
00002F3C  E9A3DA            jmp 0x9e2
00002F3F  0000              add [bx+si],al
00002F41  0000              add [bx+si],al
00002F43  0000              add [bx+si],al
00002F45  0000              add [bx+si],al
00002F47  0000              add [bx+si],al
00002F49  3232              xor dh,[bp+si]
00002F4B  007000            add [bx+si+0x0],dh
00002F4E  B1FF              mov cl,0xff
00002F50  FF00              inc word [bx+si]
00002F52  0000              add [bx+si],al
00002F54  0000              add [bx+si],al
00002F56  007A00            add [bp+si+0x0],bh
00002F59  F4                hlt
00002F5A  020C              add cl,[si]
00002F5C  005EE8            add [bp-0x18],bl
00002F5F  B202              mov dl,0x2
00002F61  B0FF              mov al,0xff
00002F63  0100              add [bx+si],ax
00002F65  5E                pop si
00002F66  E808E9            call 0x1871
00002F69  6D                insw
00002F6A  07                pop es
00002F6B  C747040305        mov word [bx+0x4],0x503
00002F70  005EE8            add [bp-0x18],bl
00002F73  0B01              or ax,[bx+di]
00002F75  B04E              mov al,0x4e
00002F77  52                push dx
00002F78  0000              add [bx+si],al
00002F7A  FF                db 0xff
00002F7B  FF00              inc word [bx+si]
00002F7D  0000              add [bx+si],al
00002F7F  0005              add [di],al
00002F81  37                aaa
00002F82  0C00              or al,0x0
00002F84  5E                pop si
00002F85  E86601            call 0x30ee
00002F88  B0FF              mov al,0xff
00002F8A  0100              add [bx+si],ax
00002F8C  5E                pop si
00002F8D  E82800            call 0x2fb8
00002F90  B0BA              mov al,0xba
00002F92  0100              add [bx+si],ax
00002F94  007F02            add [bx+0x2],bh
00002F97  0000              add [bx+si],al
00002F99  56                push si
00002F9A  0200              add al,[bx+si]
00002F9C  00A80200          add [bx+si+0x2],ch
00002FA0  00BD0212          add [di+0x1202],bh
00002FA4  005EE8            add [bp-0x18],bl
00002FA7  0D00B0            or ax,0xb000
00002FAA  0D0A43            or ax,0x430a
00002FAD  6F                outsw
00002FAE  6D                insw
00002FAF  6D                insw
00002FB0  61                popa
00002FB1  6E                outsb
00002FB2  64206C69          and [fs:si+0x69],ch
00002FB6  6E                outsb
00002FB7  650E              gs push cs
00002FB9  00B22012          add [bp+si+0x1220],dh
00002FBD  00B00006          add [bx+si+0x600],dh
00002FC1  05B041            add ax,0x41b0
00002FC4  6461              fs popa
00002FC6  7074              jo 0x303c
00002FC8  657220            gs jc 0x2feb
00002FCB  6E                outsb
00002FCC  756D              jnz 0x303b
00002FCE  626572            bound sp,[di+0x72]
00002FD1  0E                push cs
00002FD2  00B2201A          add [bp+si+0x1a20],dh
00002FD6  00B04C6F          add [bx+si+0x6f4c],dh
00002FDA  7720              ja 0x2ffc
00002FDC  6C                insb
00002FDD  657665            gs jna 0x3045
00002FE0  6C                insb
00002FE1  204D50            and [di+0x50],cl
00002FE4  58                pop ax
00002FE5  206E75            and [bp+0x75],ch
00002FE8  6D                insw
00002FE9  626572            bound sp,[di+0x72]
00002FEC  1400              adc al,0x0
00002FEE  B220              mov dl,0x20
00002FF0  0E                push cs
00002FF1  00B00D0A          add [bx+si+0xa0d],dh
00002FF5  4D                dec bp
00002FF6  61                popa
00002FF7  7869              js 0x3062
00002FF9  6D                insw
00002FFA  756D              jnz 0x3069
00002FFC  206E75            and [bp+0x75],ch
00002FFF  6D                insw
00003000  626572            bound sp,[di+0x72]
00003003  206F66            and [bx+0x66],ch
00003006  204E43            and [bp+0x43],cl
00003009  42                inc dx
0000300A  7318              jnc 0x3024
0000300C  00B22012          add [bp+si+0x1220],dh
00003010  00B05275          add [bx+si+0x7552],dh
00003014  6E                outsb
00003015  206275            and [bp+si+0x75],ah
00003018  7273              jc 0x308d
0000301A  7420              jz 0x303c
0000301C  7469              jz 0x3087
0000301E  6D                insw
0000301F  6520696E          and [gs:bx+di+0x6e],ch
00003023  207469            and [si+0x69],dh
00003026  636B73            arpl [bp+di+0x73],bp
00003029  17                pop ss
0000302A  00B2200B          add [bp+si+0xb20],dh
0000302E  00B00D0A          add [bx+si+0xa0d],dh
00003032  4D                dec bp
00003033  61                popa
00003034  7869              js 0x309f
00003036  6D                insw
00003037  756D              jnz 0x30a6
00003039  206E75            and [bp+0x75],ch
0000303C  6D                insw
0000303D  626572            bound sp,[di+0x72]
00003040  206F66            and [bx+0x66],ch
00003043  207365            and [bp+di+0x65],dh
00003046  7373              jnc 0x30bb
00003048  696F6E731C        imul bp,[bx+0x6e],word 0x1c73
0000304D  00B2200E          add [bp+si+0xe20],dh
00003051  00B05379          add [bx+si+0x7953],dh
00003055  7374              jnc 0x30cb
00003057  656D              gs insw
00003059  207469            and [si+0x69],dh
0000305C  6D                insw
0000305D  656F              gs outsw
0000305F  7574              jnz 0x30d5
00003061  20696E            and [bx+di+0x6e],ch
00003064  2031              and [bx+di],dh
00003066  2F                das
00003067  3220              xor ah,[bx+si]
00003069  7365              jnc 0x30d0
0000306B  636F6E            arpl [bx+0x6e],bp
0000306E  647320            fs jnc 0x3091
00003071  2020              and [bx+si],ah
00003073  2020              and [bx+si],ah
00003075  0D0A4D            or ax,0x4d0a
00003078  61                popa
00003079  7869              js 0x30e4
0000307B  6D                insw
0000307C  756D              jnz 0x30eb
0000307E  206E75            and [bp+0x75],ch
00003081  6D                insw
00003082  626572            bound sp,[di+0x72]
00003085  206F66            and [bx+0x66],ch
00003088  206E61            and [bp+0x61],ch
0000308B  6D                insw
0000308C  65733B            gs jnc 0x30ca
0000308F  00B22011          add [bp+si+0x1120],dh
00003093  00B05265          add [bx+si+0x6552],dh
00003097  7472              jz 0x310b
00003099  7920              jns 0x30bb
0000309B  7065              jo 0x3102
0000309D  7269              jc 0x3108
0000309F  6F                outsw
000030A0  6420696E          and [fs:bx+di+0x6e],ch
000030A4  207469            and [si+0x69],dh
000030A7  636B73            arpl [bp+di+0x73],bp
000030AA  1500B2            adc ax,0xb200
000030AD  200D              and [di],cl
000030AF  00B00D0A          add [bx+si+0xa0d],dh
000030B3  44                inc sp
000030B4  656661            gs popad
000030B7  756C              jnz 0x3125
000030B9  7420              jz 0x30db
000030BB  6E                outsb
000030BC  756D              jnz 0x312b
000030BE  626572            bound sp,[di+0x72]
000030C1  206F66            and [bx+0x66],ch
000030C4  204E43            and [bp+0x43],cl
000030C7  42                inc dx
000030C8  7318              jnc 0x30e2
000030CA  00B22012          add [bp+si+0x1220],dh
000030CE  00B04143          add [bx+si+0x4341],dh
000030D2  4B                dec bx
000030D3  207469            and [si+0x69],dh
000030D6  6D                insw
000030D7  656F              gs outsw
000030D9  7574              jnz 0x314f
000030DB  20696E            and [bx+di+0x6e],ch
000030DE  207469            and [si+0x69],dh
000030E1  636B73            arpl [bp+di+0x73],bp
000030E4  1400              adc al,0x0
000030E6  B220              mov dl,0x20
000030E8  0E                push cs
000030E9  00B00D0A          add [bx+si+0xa0d],dh
000030ED  44                inc sp
000030EE  656661            gs popad
000030F1  756C              jnz 0x315f
000030F3  7420              jz 0x3115
000030F5  6E                outsb
000030F6  756D              jnz 0x3165
000030F8  626572            bound sp,[di+0x72]
000030FB  206F66            and [bx+0x66],ch
000030FE  207365            and [bp+di+0x65],dh
00003101  7373              jnc 0x3176
00003103  696F6E731C        imul bp,[bx+0x6e],word 0x1c73
00003108  00B2200E          add [bp+si+0xe20],dh
0000310C  00B04E75          add [bx+si+0x754e],dh
00003110  6D                insw
00003111  626572            bound sp,[di+0x72]
00003114  206F66            and [bx+0x66],ch
00003117  206275            and [bp+si+0x75],ah
0000311A  6666657273        gs o32 jc 0x3192
0000311F  1100              adc [bx+si],ax
00003121  B220              mov dl,0x20
00003123  1100              adc [bx+si],ax
00003125  B00D              mov al,0xd
00003127  0A4275            or al,[bp+si+0x75]
0000312A  6666657220        gs o32 jc 0x314f
0000312F  7369              jnc 0x319a
00003131  7A65              jpe 0x3198
00003133  0D00B2            or ax,0xb200
00003136  201D              and [di],bl
00003138  00B0496E          add [bx+si+0x6e49],dh
0000313C  697469616C        imul si,[si+0x69],word 0x6c61
00003141  207365            and [bp+di+0x65],dh
00003144  6E                outsb
00003145  64207369          and [fs:bp+di+0x69],dh
00003149  7A65              jpe 0x31b0
0000314B  1100              adc [bx+si],ax
0000314D  B220              mov dl,0x20
0000314F  1300              adc ax,[bx+si]
00003151  B00D              mov al,0xd
00003153  0A526F            or dl,[bp+si+0x6f]
00003156  7574              jnz 0x31cc
00003158  696E672070        imul bp,[bp+0x67],word 0x7020
0000315D  726F              jc 0x31ce
0000315F  746F              jz 0x31d0
00003161  636F6C            arpl [bx+0x6c],bp
00003164  1200              adc al,[bx+si]
00003166  5E                pop si
00003167  2018              and [bx+si],bl
00003169  00B04950          add [bx+si+0x5049],dh
0000316D  58                pop ax
0000316E  207061            and [bx+si+0x61],dh
00003171  636B65            arpl [bp+di+0x65],bp
00003174  7420              jz 0x3196
00003176  7369              jnc 0x31e1
00003178  7A65              jpe 0x31df
0000317A  0910              or [bx+si],dx
0000317C  00B22013          add [bp+si+0x1320],dh
00003180  00B00D0A          add [bx+si+0xa0d],dh
00003184  50                push ax
00003185  6F                outsw
00003186  7374              jnc 0x31fc
00003188  206C65            and [si+0x65],ch
0000318B  7665              jna 0x31f2
0000318D  6C                insb
0000318E  0909              or [bx+di],cx
00003190  0E                push cs
00003191  00B22010          add [bp+si+0x1020],dh
00003195  00B04279          add [bx+si+0x7942],dh
00003199  7465              jz 0x3200
0000319B  7320              jnc 0x31bd
0000319D  6F                outsw
0000319E  66206D65          o32 and [di+0x65],ch
000031A2  6D                insw
000031A3  6F                outsw
000031A4  7279              jc 0x321f
000031A6  207573            and [di+0x73],dh
000031A9  65641400          fs adc al,0x0
000031AD  B220              mov dl,0x20
000031AF  1100              adc [bx+si],ax
000031B1  B00D              mov al,0xd
000031B3  0A0A              or cl,[bp+si]
000031B5  0083A409          add [bp+di+0x9a4],al
000031B9  59                pop cx
000031BA  0300              add ax,[bx+si]
000031BC  00FE              add dh,bh
000031BE  004143            add [bx+di+0x43],al
000031C1  4B                dec bx
000031C2  5F                pop di
000031C3  54                push sp
000031C4  49                dec cx
000031C5  4D                dec bp
000031C6  45                inc bp
000031C7  4F                dec di
000031C8  55                push bp
000031C9  54                push sp
000031CA  0083A009          add [bp+di+0x9a0],al
000031CE  59                pop cx
000031CF  0300              add ax,[bx+si]
000031D1  00FF              add bh,bh
000031D3  004144            add [bx+di+0x44],al
000031D6  41                inc cx
000031D7  50                push ax
000031D8  54                push sp
000031D9  45                inc bp
000031DA  52                push dx
000031DB  0093A909          add [bp+di+0x9a9],dl
000031DF  59                pop cx
000031E0  0300              add ax,[bx+si]
000031E2  00FE              add dh,bh
000031E4  004255            add [bp+si+0x55],al
000031E7  46                inc si
000031E8  46                inc si
000031E9  45                inc bp
000031EA  52                push dx
000031EB  53                push bx
000031EC  0041B1            add [bx+di-0x4f],al
000031EF  095903            or [bx+di+0x3],bx
000031F2  0000              add [bx+si],al
000031F4  0000              add [bx+si],al
000031F6  44                inc sp
000031F7  45                inc bp
000031F8  53                push bx
000031F9  43                inc bx
000031FA  52                push dx
000031FB  49                dec cx
000031FC  42                inc dx
000031FD  45                inc bp
000031FE  0001              add [bx+di],al
00003200  90                nop
00003201  022F              add ch,[bx]
00003203  0000              add [bx+si],al
00003205  0000              add [bx+si],al
00003207  00464F            add [bp+0x4f],al
0000320A  52                push dx
0000320B  43                inc bx
0000320C  45                inc bp
0000320D  5F                pop di
0000320E  41                inc cx
0000320F  43                inc bx
00003210  4B                dec bx
00003211  5F                pop di
00003212  4D                dec bp
00003213  4F                dec di
00003214  44                inc sp
00003215  45                inc bp
00003216  0001              add [bx+di],al
00003218  B009              mov al,0x9
0000321A  59                pop cx
0000321B  0300              add ax,[bx+si]
0000321D  0000              add [bx+si],al
0000321F  004845            add [bx+si+0x45],cl
00003222  4C                dec sp
00003223  50                push ax
00003224  0093AD09          add [bp+di+0x9ad],dl
00003228  59                pop cx
00003229  0301              add ax,[bx+di]
0000322B  00FF              add bh,bh
0000322D  FF494E            dec word [bx+di+0x4e]
00003230  49                dec cx
00003231  54                push sp
00003232  49                dec cx
00003233  41                inc cx
00003234  4C                dec sp
00003235  5F                pop di
00003236  53                push bx
00003237  45                inc bp
00003238  4E                dec si
00003239  44                inc sp
0000323A  5F                pop di
0000323B  53                push bx
0000323C  49                dec cx
0000323D  5A                pop dx
0000323E  45                inc bp
0000323F  0001              add [bx+di],al
00003241  B409              mov ah,0x9
00003243  59                pop cx
00003244  0300              add ax,[bx+si]
00003246  0000              add [bx+si],al
00003248  004950            add [bx+di+0x50],cl
0000324B  58                pop ax
0000324C  5F                pop di
0000324D  52                push dx
0000324E  4F                dec di
0000324F  55                push bp
00003250  54                push sp
00003251  49                dec cx
00003252  4E                dec si
00003253  47                inc di
00003254  0093B509          add [bp+di+0x9b5],dl
00003258  59                pop cx
00003259  03F4              add si,sp
0000325B  01CC              add sp,cx
0000325D  104950            adc [bx+di+0x50],cl
00003260  58                pop ax
00003261  5F                pop di
00003262  53                push bx
00003263  49                dec cx
00003264  5A                pop dx
00003265  45                inc bp
00003266  0093A709          add [bp+di+0x9a7],dl
0000326A  59                pop cx
0000326B  0300              add ax,[bx+si]
0000326D  00FF              add bh,bh
0000326F  7F4B              jg 0x32bc
00003271  45                inc bp
00003272  45                inc bp
00003273  50                push ax
00003274  5F                pop di
00003275  41                inc cx
00003276  4C                dec sp
00003277  49                dec cx
00003278  56                push si
00003279  45                inc bp
0000327A  5F                pop di
0000327B  54                push sp
0000327C  49                dec cx
0000327D  4D                dec bp
0000327E  45                inc bp
0000327F  4F                dec di
00003280  55                push bp
00003281  54                push sp
00003282  00939A09          add [bp+di+0x99a],dl
00003286  59                pop cx
00003287  0301              add ax,[bx+di]
00003289  00FD              add ch,bh
0000328B  004D41            add [di+0x41],cl
0000328E  58                pop ax
0000328F  5F                pop di
00003290  4E                dec si
00003291  41                inc cx
00003292  4D                dec bp
00003293  45                inc bp
00003294  53                push bx
00003295  00939609          add [bp+di+0x996],dl
00003299  59                pop cx
0000329A  0301              add ax,[bx+di]
0000329C  00FF              add bh,bh
0000329E  004D41            add [di+0x41],cl
000032A1  58                pop ax
000032A2  5F                pop di
000032A3  4E                dec si
000032A4  43                inc bx
000032A5  42                inc dx
000032A6  53                push bx
000032A7  00939809          add [bp+di+0x998],dl
000032AB  59                pop cx
000032AC  0301              add ax,[bx+di]
000032AE  00FE              add dh,bh
000032B0  004D41            add [di+0x41],cl
000032B3  58                pop ax
000032B4  5F                pop di
000032B5  53                push bx
000032B6  45                inc bp
000032B7  53                push bx
000032B8  53                push bx
000032B9  49                dec cx
000032BA  4F                dec di
000032BB  4E                dec si
000032BC  53                push bx
000032BD  00829509          add [bp+si+0x995],al
000032C1  59                pop cx
000032C2  03C0              add ax,ax
000032C4  00FF              add bh,bh
000032C6  004D50            add [di+0x50],cl
000032C9  58                pop ax
000032CA  00939C09          add [bp+di+0x99c],dl
000032CE  59                pop cx
000032CF  0301              add ax,[bx+di]
000032D1  00FF              add bh,bh
000032D3  004E43            add [bp+0x43],cl
000032D6  42                inc dx
000032D7  53                push bx
000032D8  0001              add [bx+di],al
000032DA  B80959            mov ax,0x5909
000032DD  0300              add ax,[bx+si]
000032DF  0000              add [bx+si],al
000032E1  004E4F            add [bp+0x4f],cl
000032E4  5F                pop di
000032E5  4D                dec bp
000032E6  55                push bp
000032E7  4C                dec sp
000032E8  54                push sp
000032E9  49                dec cx
000032EA  43                inc bx
000032EB  41                inc cx
000032EC  53                push bx
000032ED  54                push sp
000032EE  0083B709          add [bp+di+0x9b7],al
000032F2  59                pop cx
000032F3  0300              add ax,[bx+si]
000032F5  0003              add [bp+di],al
000032F7  00504F            add [bx+si+0x4f],dl
000032FA  53                push bx
000032FB  54                push sp
000032FC  5F                pop di
000032FD  4C                dec sp
000032FE  45                inc bp
000032FF  56                push si
00003300  45                inc bp
00003301  4C                dec sp
00003302  0001              add [bx+di],al
00003304  B209              mov dl,0x9
00003306  59                pop cx
00003307  0300              add ax,[bx+si]
00003309  0000              add [bx+si],al
0000330B  005245            add [bp+si+0x45],dl
0000330E  4D                dec bp
0000330F  4F                dec di
00003310  56                push si
00003311  45                inc bp
00003312  0083A309          add [bp+di+0x9a3],al
00003316  59                pop cx
00003317  0300              add ax,[bx+si]
00003319  00FE              add dh,bh
0000331B  005245            add [bp+si+0x45],dl
0000331E  54                push sp
0000331F  52                push dx
00003320  59                pop cx
00003321  5F                pop di
00003322  50                push ax
00003323  45                inc bp
00003324  52                push dx
00003325  49                dec cx
00003326  4F                dec di
00003327  44                inc sp
00003328  0001              add [bx+di],al
0000332A  B309              mov bl,0x9
0000332C  59                pop cx
0000332D  0300              add ax,[bx+si]
0000332F  0000              add [bx+si],al
00003331  00524F            add [bp+si+0x4f],dl
00003334  4D                dec bp
00003335  5F                pop di
00003336  50                push ax
00003337  41                inc cx
00003338  54                push sp
00003339  43                inc bx
0000333A  48                dec ax
0000333B  0083A109          add [bp+di+0x9a1],al
0000333F  59                pop cx
00003340  0300              add ax,[bx+si]
00003342  00FE              add dh,bh
00003344  005255            add [bp+si+0x55],dl
00003347  4E                dec si
00003348  5F                pop di
00003349  42                inc dx
0000334A  55                push bp
0000334B  52                push dx
0000334C  53                push bx
0000334D  54                push sp
0000334E  00939E09          add [bp+di+0x99e],dl
00003352  59                pop cx
00003353  0301              add ax,[bx+di]
00003355  00FE              add dh,bh
00003357  005345            add [bp+di+0x45],dl
0000335A  53                push bx
0000335B  53                push bx
0000335C  49                dec cx
0000335D  4F                dec di
0000335E  4E                dec si
0000335F  53                push bx
00003360  0093AB09          add [bp+di+0x9ab],dl
00003364  59                pop cx
00003365  0301              add ax,[bx+di]
00003367  00CC              add ah,cl
00003369  105349            adc [bp+di+0x49],dl
0000336C  5A                pop dx
0000336D  45                inc bp
0000336E  0083A209          add [bp+di+0x9a2],al
00003372  59                pop cx
00003373  0301              add ax,[bx+di]
00003375  00FE              add dh,bh
00003377  005449            add [si+0x49],dl
0000337A  4D                dec bp
0000337B  45                inc bp
0000337C  4F                dec di
0000337D  55                push bp
0000337E  54                push sp
0000337F  0001              add [bx+di],al
00003381  AF                scasw
00003382  095903            or [bx+di+0x3],bx
00003385  0000              add [bx+si],al
00003387  0000              add [bx+si],al
00003389  56                push si
0000338A  45                inc bp
0000338B  52                push dx
0000338C  42                inc dx
0000338D  4F                dec di
0000338E  53                push bx
0000338F  45                inc bp
00003390  0001              add [bx+di],al
00003392  B009              mov al,0x9
00003394  59                pop cx
00003395  0300              add ax,[bx+si]
00003397  0000              add [bx+si],al
00003399  003F              add [bx],bh
0000339B  00959027          add [di+0x2790],dl
0000339F  59                pop cx
000033A0  0300              add ax,[bx+si]
000033A2  0000              add [bx+si],al
000033A4  104000            adc [bx+si+0x0],al
000033A7  47                inc di
000033A8  43                inc bx
000033A9  0A5903            or bl,[bx+di+0x3]
000033AC  0100              add [bx+si],ax
000033AE  6300              arpl [bx+si],ax
000033B0  49                dec cx
000033B1  4E                dec si
000033B2  54                push sp
000033B3  45                inc bp
000033B4  52                push dx
000033B5  4E                dec si
000033B6  41                inc cx
000033B7  4C                dec sp
000033B8  00D3              add bl,dl
000033BA  A5                movsw
000033BB  095903            or [bx+di+0x3],bx
000033BE  0000              add [bx+si],al
000033C0  7F00              jg 0x33c2
000033C2  44                inc sp
000033C3  49                dec cx
000033C4  53                push bx
000033C5  43                inc bx
000033C6  4F                dec di
000033C7  4E                dec si
000033C8  4E                dec si
000033C9  45                inc bp
000033CA  43                inc bx
000033CB  54                push sp
000033CC  5F                pop di
000033CD  54                push sp
000033CE  49                dec cx
000033CF  4D                dec bp
000033D0  45                inc bp
000033D1  4F                dec di
000033D2  55                push bp
000033D3  54                push sp
000033D4  0000              add [bx+si],al
000033D6  41                inc cx
000033D7  6461              fs popa
000033D9  7074              jo 0x344f
000033DB  657220            gs jc 0x33fe
000033DE  49                dec cx
000033DF  6E                outsb
000033E0  64657065          gs jo 0x3449
000033E4  6E                outsb
000033E5  64656E            gs outsb
000033E8  7420              jz 0x340a
000033EA  41                inc cx
000033EB  49                dec cx
000033EC  2D4C41            sub ax,0x414c
000033EF  4E                dec si
000033F0  42                inc dx
000033F1  49                dec cx
000033F2  4F                dec di
000033F3  53                push bx
000033F4  285229            sub [bp+si+0x29],dl
000033F7  205634            and [bp+0x34],dl
000033FA  2E3036202D        xor [cs:0x2d20],dh
000033FF  2028              and [bx+si],ch
00003401  43                inc bx
00003402  2920              sub [bx+si],sp
00003404  43                inc bx
00003405  6F                outsw
00003406  7079              jo 0x3481
00003408  7269              jc 0x3473
0000340A  67687420          push word 0x2074
0000340E  3139              xor [bx+di],di
00003410  3933              cmp [bp+di],si
00003412  204152            and [bx+di+0x52],al
00003415  54                push sp
00003416  49                dec cx
00003417  53                push bx
00003418  4F                dec di
00003419  46                inc si
0000341A  54                push sp
0000341B  20496E            and [bx+di+0x6e],cl
0000341E  632E0D0A          arpl [0xa0d],bp
00003422  007102            add [bx+di+0x2],dh
00003425  B220              mov dl,0x20
00003427  1200              adc al,[bx+si]
00003429  B02D              mov al,0x2d
0000342B  2D2D2D            sub ax,0x2d2d
0000342E  204149            and [bx+di+0x49],al
00003431  2D4C41            sub ax,0x414c
00003434  4E                dec si
00003435  42                inc dx
00003436  49                dec cx
00003437  4F                dec di
00003438  53                push bx
00003439  285229            sub [bp+si+0x29],dl
0000343C  20496E            and [bx+di+0x6e],cl
0000343F  7374              jnc 0x34b5
00003441  61                popa
00003442  6C                insb
00003443  6C                insb
00003444  6564202D          and [fs:di],ch
00003448  2D2D2D            sub ax,0x2d2d
0000344B  0D0A00            or ax,0xa
0000344E  4E                dec si
0000344F  6F                outsw
00003450  204149            and [bx+di+0x49],al
00003453  2D4C41            sub ax,0x414c
00003456  4E                dec si
00003457  42                inc dx
00003458  49                dec cx
00003459  4F                dec di
0000345A  53                push bx
0000345B  285229            sub [bp+si+0x29],dl
0000345E  206C6F            and [si+0x6f],ch
00003461  7720              ja 0x3483
00003463  6C                insb
00003464  657665            gs jna 0x34cc
00003467  6C                insb
00003468  206472            and [si+0x72],ah
0000346B  6976657220        imul si,[bp+0x65],word 0x2072
00003470  696E737461        imul bp,[bp+0x73],word 0x6174
00003475  6C                insb
00003476  6C                insb
00003477  65640D0A00        fs or ax,0xa
0000347C  41                inc cx
0000347D  49                dec cx
0000347E  2D4C41            sub ax,0x414c
00003481  4E                dec si
00003482  42                inc dx
00003483  49                dec cx
00003484  4F                dec di
00003485  53                push bx
00003486  285229            sub [bp+si+0x29],dl
00003489  206C6F            and [si+0x6f],ch
0000348C  7720              ja 0x34ae
0000348E  6C                insb
0000348F  657665            gs jna 0x34f7
00003492  6C                insb
00003493  206472            and [si+0x72],ah
00003496  6976657220        imul si,[bp+0x65],word 0x2072
0000349B  697320616C        imul si,[bp+di+0x20],word 0x6c61
000034A0  7265              jc 0x3507
000034A2  61                popa
000034A3  647920            fs jns 0x34c6
000034A6  696E207573        imul bp,[bp+0x20],word 0x7375
000034AB  65206279          and [gs:bp+si+0x79],ah
000034AF  20616E            and [bx+di+0x6e],ah
000034B2  6F                outsw
000034B3  7468              jz 0x351d
000034B5  657220            gs jc 0x34d8
000034B8  4E                dec si
000034B9  45                inc bp
000034BA  54                push sp
000034BB  42                inc dx
000034BC  49                dec cx
000034BD  4F                dec di
000034BE  53                push bx
000034BF  0D0A00            or ax,0xa
000034C2  41                inc cx
000034C3  204E45            and [bp+0x45],cl
000034C6  54                push sp
000034C7  42                inc dx
000034C8  49                dec cx
000034C9  4F                dec di
000034CA  53                push bx
000034CB  207769            and [bx+0x69],dh
000034CE  7468              jz 0x3538
000034D0  207468            and [si+0x68],dh
000034D3  6973206164        imul si,[bp+di+0x20],word 0x6461
000034D8  61                popa
000034D9  7074              jo 0x354f
000034DB  657220            gs jc 0x34fe
000034DE  6E                outsb
000034DF  756D              jnz 0x354e
000034E1  626572            bound sp,[di+0x72]
000034E4  206973            and [bx+di+0x73],ch
000034E7  20616C            and [bx+di+0x6c],ah
000034EA  7265              jc 0x3551
000034EC  61                popa
000034ED  647920            fs jns 0x3510
000034F0  696E737461        imul bp,[bp+0x73],word 0x6174
000034F5  6C                insb
000034F6  6C                insb
000034F7  65640D0A00        fs or ax,0xa
000034FC  D200              rol byte [bx+si],cl
000034FE  B220              mov dl,0x20
00003500  1000              adc [bx+si],al
00003502  B02D              mov al,0x2d
00003504  2D2D2D            sub ax,0x2d2d
00003507  204149            and [bx+di+0x49],al
0000350A  2D4C41            sub ax,0x414c
0000350D  4E                dec si
0000350E  42                inc dx
0000350F  49                dec cx
00003510  4F                dec di
00003511  53                push bx
00003512  285229            sub [bp+si+0x29],dl
00003515  204E4F            and [bp+0x4f],cl
00003518  54                push sp
00003519  20696E            and [bx+di+0x6e],ch
0000351C  7374              jnc 0x3592
0000351E  61                popa
0000351F  6C                insb
00003520  6C                insb
00003521  6564202D          and [fs:di],ch
00003525  2D2D2D            sub ax,0x2d2d
00003528  0D0A00            or ax,0xa
0000352B  0D0A56            or ax,0x560a
0000352E  61                popa
0000352F  6C                insb
00003530  696420636F        imul sp,[si+0x20],word 0x6f63
00003535  6D                insw
00003536  6D                insw
00003537  61                popa
00003538  6E                outsb
00003539  64206C69          and [fs:si+0x69],ch
0000353D  6E                outsb
0000353E  65207377          and [gs:bp+di+0x77],dh
00003542  6974636865        imul si,[si+0x63],word 0x6568
00003547  733A              jnc 0x3583
00003549  0D0A00            or ax,0xa
0000354C  0D0A20            or ax,0x200a
0000354F  2D2D2D            sub ax,0x2d2d
00003552  204149            and [bx+di+0x49],al
00003555  2D4C41            sub ax,0x414c
00003558  4E                dec si
00003559  42                inc dx
0000355A  49                dec cx
0000355B  4F                dec di
0000355C  53                push bx
0000355D  285229            sub [bp+si+0x29],dl
00003560  205634            and [bp+0x34],dl
00003563  2E30362E31        xor [cs:0x312e],dh
00003568  3020              xor [bx+si],ah
0000356A  2D2D2D            sub ax,0x2d2d
0000356D  0D0A00            or ax,0xa
00003570  43                inc bx
00003571  61                popa
00003572  6E                outsb
00003573  27                daa
00003574  7420              jz 0x3596
00003576  52                push dx
00003577  45                inc bp
00003578  4D                dec bp
00003579  4F                dec di
0000357A  56                push si
0000357B  45                inc bp
0000357C  202D              and [di],ch
0000357E  2D2052            sub ax,0x5220
00003581  4F                dec di
00003582  4D                dec bp
00003583  207665            and [bp+0x65],dh
00003586  7273              jc 0x35fb
00003588  696F6E2069        imul bp,[bx+0x6e],word 0x6920
0000358D  6E                outsb
0000358E  7374              jnc 0x3604
00003590  61                popa
00003591  6C                insb
00003592  6C                insb
00003593  65640D0A00        fs or ax,0xa
00003598  43                inc bx
00003599  61                popa
0000359A  6E                outsb
0000359B  27                daa
0000359C  7420              jz 0x35be
0000359E  52                push dx
0000359F  45                inc bp
000035A0  4D                dec bp
000035A1  4F                dec di
000035A2  56                push si
000035A3  45                inc bp
000035A4  202D              and [di],ch
000035A6  2D2041            sub ax,0x4120
000035A9  49                dec cx
000035AA  2D4C41            sub ax,0x414c
000035AD  4E                dec si
000035AE  42                inc dx
000035AF  49                dec cx
000035B0  4F                dec di
000035B1  53                push bx
000035B2  285229            sub [bp+si+0x29],dl
000035B5  20696E            and [bx+di+0x6e],ch
000035B8  7465              jz 0x361f
000035BA  7272              jc 0x362e
000035BC  7570              jnz 0x362e
000035BE  7473              jz 0x3633
000035C0  207265            and [bp+si+0x65],dh
000035C3  2D686F            sub ax,0x6f68
000035C6  6F                outsw
000035C7  6B65640D          imul sp,[di+0x64],byte +0xd
000035CB  0A00              or al,[bx+si]
000035CD  49                dec cx
000035CE  6E                outsb
000035CF  7374              jnc 0x3645
000035D1  61                popa
000035D2  6C                insb
000035D3  6C                insb
000035D4  6564204149        and [fs:bx+di+0x49],al
000035D9  2D4C41            sub ax,0x414c
000035DC  4E                dec si
000035DD  42                inc dx
000035DE  49                dec cx
000035DF  4F                dec di
000035E0  53                push bx
000035E1  285229            sub [bp+si+0x29],dl
000035E4  206973            and [bx+di+0x73],ch
000035E7  206469            and [si+0x69],ah
000035EA  6666657265        gs o32 jc 0x3654
000035EF  6E                outsb
000035F0  7420              jz 0x3612
000035F2  7665              jna 0x3659
000035F4  7273              jc 0x3669
000035F6  696F6E0D0A        imul bp,[bx+0x6e],word 0xa0d
000035FB  004361            add [bp+di+0x61],al
000035FE  6E                outsb
000035FF  27                daa
00003600  7420              jz 0x3622
00003602  52                push dx
00003603  45                inc bp
00003604  4D                dec bp
00003605  4F                dec di
00003606  56                push si
00003607  45                inc bp
00003608  202D              and [di],ch
0000360A  2D2041            sub ax,0x4120
0000360D  49                dec cx
0000360E  2D4C41            sub ax,0x414c
00003611  4E                dec si
00003612  42                inc dx
00003613  49                dec cx
00003614  4F                dec di
00003615  53                push bx
00003616  285229            sub [bp+si+0x29],dl
00003619  207374            and [bp+di+0x74],dh
0000361C  696C6C2061        imul bp,[si+0x6c],word 0x6120
00003621  637469            arpl [si+0x69],si
00003624  7665              jna 0x368b
00003626  0D0A00            or ax,0xa
00003629  41                inc cx
0000362A  49                dec cx
0000362B  2D4C41            sub ax,0x414c
0000362E  4E                dec si
0000362F  42                inc dx
00003630  49                dec cx
00003631  4F                dec di
00003632  53                push bx
00003633  285229            sub [bp+si+0x29],dl
00003636  206973            and [bx+di+0x73],ch
00003639  206E6F            and [bp+0x6f],ch
0000363C  7420              jz 0x365e
0000363E  6C                insb
0000363F  6F                outsw
00003640  61                popa
00003641  6465640D0A00      fs or ax,0xa
00003647  43                inc bx
00003648  61                popa
00003649  6E                outsb
0000364A  27                daa
0000364B  7420              jz 0x366d
0000364D  52                push dx
0000364E  45                inc bp
0000364F  4D                dec bp
00003650  4F                dec di
00003651  56                push si
00003652  45                inc bp
00003653  202D              and [di],ch
00003655  2D2041            sub ax,0x4120
00003658  49                dec cx
00003659  2D4C41            sub ax,0x414c
0000365C  4E                dec si
0000365D  42                inc dx
0000365E  49                dec cx
0000365F  4F                dec di
00003660  53                push bx
00003661  285229            sub [bp+si+0x29],dl
00003664  206973            and [bx+di+0x73],ch
00003667  206E6F            and [bp+0x6f],ch
0000366A  7420              jz 0x368c
0000366C  7468              jz 0x36d6
0000366E  65206D6F          and [gs:di+0x6f],ch
00003672  7374              jnc 0x36e8
00003674  207265            and [bp+si+0x65],dh
00003677  63656E            arpl [di+0x6e],sp
0000367A  7420              jz 0x369c
0000367C  4E                dec si
0000367D  45                inc bp
0000367E  54                push sp
0000367F  42                inc dx
00003680  49                dec cx
00003681  4F                dec di
00003682  53                push bx
00003683  206C6F            and [si+0x6f],ch
00003686  61                popa
00003687  6465640D0A00      fs or ax,0xa
0000368D  2020              and [bx+si],ah
0000368F  2020              and [bx+si],ah
00003691  2020              and [bx+si],ah
00003693  2009              and [bx+di],cl
00003695  92                xchg ax,dx
00003696  01B2200C          add [bp+si+0xc20],si
0000369A  00B02D2D          add [bx+si+0x2d2d],dh
0000369E  2D2D20            sub ax,0x202d
000036A1  41                inc cx
000036A2  49                dec cx
000036A3  2D4C41            sub ax,0x414c
000036A6  4E                dec si
000036A7  42                inc dx
000036A8  49                dec cx
000036A9  4F                dec di
000036AA  53                push bx
000036AB  285229            sub [bp+si+0x29],dl
000036AE  207265            and [bp+si+0x65],dh
000036B1  6D                insw
000036B2  6F                outsw
000036B3  7665              jna 0x371a
000036B5  64202D            and [fs:di],ch
000036B8  2D2D2D            sub ax,0x2d2d
000036BB  0D0A00            or ax,0xa
000036BE  41                inc cx
000036BF  49                dec cx
000036C0  2D4C41            sub ax,0x414c
000036C3  4E                dec si
000036C4  42                inc dx
000036C5  49                dec cx
000036C6  4F                dec di
000036C7  53                push bx
000036C8  2028              and [bx+si],ch
000036CA  52                push dx
000036CB  2920              sub [bx+si],sp
000036CD  6C                insb
000036CE  6F                outsw
000036CF  7720              ja 0x36f1
000036D1  6C                insb
000036D2  657665            gs jna 0x373a
000036D5  6C                insb
000036D6  206472            and [si+0x72],ah
000036D9  6976657220        imul si,[bp+0x65],word 0x2072
000036DE  6D                insw
000036DF  7573              jnz 0x3754
000036E1  7420              jz 0x3703
000036E3  626520            bound sp,[di+0x20]
000036E6  56                push si
000036E7  342E              xor al,0x2e
000036E9  7878              js 0x3763
000036EB  0D0A00            or ax,0xa
000036EE  43                inc bx
000036EF  61                popa
000036F0  6E                outsb
000036F1  27                daa
000036F2  7420              jz 0x3714
000036F4  50                push ax
000036F5  61                popa
000036F6  7463              jz 0x375b
000036F8  682041            push word 0x4120
000036FB  49                dec cx
000036FC  2D4C41            sub ax,0x414c
000036FF  4E                dec si
00003700  42                inc dx
00003701  49                dec cx
00003702  4F                dec di
00003703  53                push bx
00003704  285229            sub [bp+si+0x29],dl
00003707  202D              and [di],ch
00003709  20524F            and [bp+si+0x4f],dl
0000370C  4D                dec bp
0000370D  206E6F            and [bp+0x6f],ch
00003710  7420              jz 0x3732
00003712  696E737461        imul bp,[bp+0x73],word 0x6174
00003717  6C                insb
00003718  6C                insb
00003719  65640D0A00        fs or ax,0xa
0000371E  2020              and [bx+si],ah
00003720  2020              and [bx+si],ah
00003722  2020              and [bx+si],ah
00003724  202D              and [di],ch
00003726  2D2D2D            sub ax,0x2d2d
00003729  20524F            and [bp+si+0x4f],dl
0000372C  4D                dec bp
0000372D  207665            and [bp+0x65],dh
00003730  7273              jc 0x37a5
00003732  696F6E206F        imul bp,[bx+0x6e],word 0x6f20
00003737  66204149          o32 and [bx+di+0x49],al
0000373B  2D4C41            sub ax,0x414c
0000373E  4E                dec si
0000373F  42                inc dx
00003740  49                dec cx
00003741  4F                dec di
00003742  53                push bx
00003743  285229            sub [bp+si+0x29],dl
00003746  207375            and [bp+di+0x75],dh
00003749  636365            arpl [bp+di+0x65],sp
0000374C  7373              jnc 0x37c1
0000374E  66756C            o32 jnz 0x37bd
00003751  6C                insb
00003752  7920              jns 0x3774
00003754  7061              jo 0x37b7
00003756  7463              jz 0x37bb
00003758  686564            push word 0x6465
0000375B  202D              and [di],ch
0000375D  2D2D2D            sub ax,0x2d2d
00003760  0D0A00            or ax,0xa
00003763  52                push dx
00003764  4F                dec di
00003765  4D                dec bp
00003766  207665            and [bp+0x65],dh
00003769  7273              jc 0x37de
0000376B  696F6E206F        imul bp,[bx+0x6e],word 0x6f20
00003770  66204149          o32 and [bx+di+0x49],al
00003774  2D4C41            sub ax,0x414c
00003777  4E                dec si
00003778  42                inc dx
00003779  49                dec cx
0000377A  4F                dec di
0000377B  53                push bx
0000377C  285229            sub [bp+si+0x29],dl
0000377F  20616C            and [bx+di+0x6c],ah
00003782  7265              jc 0x37e9
00003784  61                popa
00003785  647920            fs jns 0x37a8
00003788  7061              jo 0x37eb
0000378A  7463              jz 0x37ef
0000378C  686564            push word 0x6465
0000378F  0D0A00            or ax,0xa
00003792  4D                dec bp
00003793  61                popa
00003794  7869              js 0x37ff
00003796  6D                insw
00003797  756D              jnz 0x3806
00003799  20636F            and [bp+di+0x6f],ah
0000379C  6E                outsb
0000379D  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
000037A5  6F                outsw
000037A6  6E                outsb
000037A7  207369            and [bp+di+0x69],dh
000037AA  7A65              jpe 0x3811
000037AC  206578            and [di+0x78],ah
000037AF  636565            arpl [di+0x65],sp
000037B2  646564202D        and [fs:di],ch
000037B7  205265            and [bp+si+0x65],dl
000037BA  647563            fs jnz 0x3820
000037BD  65206F6E          and [gs:bx+0x6e],ch
000037C1  65206F72          and [gs:bx+0x72],ch
000037C5  206D6F            and [di+0x6f],ch
000037C8  7265              jc 0x382f
000037CA  207061            and [bx+si+0x61],dh
000037CD  7261              jc 0x3830
000037CF  6D                insw
000037D0  657465            gs jz 0x3838
000037D3  7273              jc 0x3848
000037D5  0D0A00            or ax,0xa
000037D8  4C                dec sp
000037D9  41                inc cx
000037DA  4E                dec si
000037DB  7461              jz 0x383e
000037DD  7374              jnc 0x3853
000037DF  6963004950        imul sp,[bp+di+0x0],word 0x5049
000037E4  58                pop ax
000037E5  004E2F            add [bp+0x2f],cl
000037E8  41                inc cx
000037E9  00C7              add bh,al
000037EB  2000              and [bx+si],al
000037ED  2000              and [bx+si],al
000037EF  1000              adc [bx+si],al
000037F1  2000              and [bx+si],al
000037F3  2000              and [bx+si],al
000037F5  005A01            add [bp+si+0x1],bl
000037F8  B2FF              mov dl,0xff
000037FA  08E9              or cl,ch
000037FC  6D                insw
000037FD  0100              add [bx+si],ax
000037FF  3A02              cmp al,[bp+si]
00003801  3A02              cmp al,[bp+si]
00003803  0000              add [bx+si],al
00003805  0000              add [bx+si],al
00003807  0000              add [bx+si],al
00003809  0804              or [si],al
0000380B  0300              add ax,[bx+si]
0000380D  0000              add [bx+si],al
0000380F  0000              add [bx+si],al
00003811  B300              mov bl,0x0
00003813  0000              add [bx+si],al
00003815  A20000            mov [0x0],al
00003818  00C0              add al,al
0000381A  0000              add [bx+si],al
0000381C  00B000F4          add [bx+si-0xc00],dh
00003820  027C03            add bh,[si+0x3]
00003823  F4                hlt
00003824  027D03            add bh,[di+0x3]
00003827  F4                hlt
00003828  0292022F          add dl,[bp+si+0x2f02]
0000382C  0096022F          add [bp+0x2f02],dl
00003830  009C022F          add [si+0x2f02],bl
00003834  00A4022F          add [si+0x2f02],ah
00003838  00AE022F          add [bp+0x2f02],ch
0000383C  00B4022F          add [si+0x2f02],dh
00003840  00BA022F          add [bp+si+0x2f02],bh
00003844  005602            add [bp+0x2],dl
00003847  0000              add [bx+si],al
00003849  7F02              jg 0x384d
0000384B  0000              add [bx+si],al
0000384D  DC5100            fcom qword [bx+di+0x0]
00003850  5E                pop si
00003851  E84900            call 0x389d
00003854  B026              mov al,0x26
00003856  8025BF            and byte [di],0xbf
00003859  2E80264B05BF      and byte [cs:0x54b],0xbf
0000385F  CB                retf
00003860  8CC8              mov ax,cs
00003862  8E5000            mov ss,[bx+si+0x0]
00003865  07                pop es
00003866  FC                cld
00003867  BE6805            mov si,0x568
0000386A  E8530C            call 0x44c0
0000386D  53                push bx
0000386E  06                push es
0000386F  B462              mov ah,0x62
00003871  CD21              int 0x21
00003873  8EC3              mov es,bx
00003875  891EB909          mov [0x9b9],bx
00003879  268E062C00        mov es,[es:0x2c]
0000387E  B449              mov ah,0x49
00003880  CD21              int 0x21
00003882  07                pop es
00003883  5B                pop bx
00003884  33C9              xor cx,cx
00003886  BF4803            mov di,0x348
00003889  E8D80D            call 0x4664
0000388C  730E              jnc 0x389c
0000388E  B002              mov al,0x2
00003890  50                push ax
00003891  BE9906            mov si,0x699
00003894  E8290C            call 0x44c0
00003897  58                pop ax
00003898  B44C              mov ah,0x4c
0000389A  CD8D              int 0x8d
0000389C  7721              ja 0x38bf
0000389E  B009              mov al,0x9
000038A0  017510            add [di+0x10],si
000038A3  BED106            mov si,0x6d1
000038A6  E8170C            call 0x44c0
000038A9  BF4803            mov di,0x348
000038AC  E85E0C            call 0x450d
000038AF  7DC3              jnl 0x3874
000038B1  B0DD              mov al,0xdd
000038B3  803EB109A1        cmp byte [0x9b1],0xa1
000038B8  E40A              in al,0xa
000038BA  BEF206            mov si,0x6f2
000038BD  E8000C            call 0x44c0
000038C0  7DC3              jnl 0x3885
000038C2  B0CC              mov al,0xcc
000038C4  803EB20901        cmp byte [0x9b2],0x1
000038C9  740A              jz 0x38d5
000038CB  803EB3091E        cmp byte [0x9b3],0x1e
000038D0  268101CC00        add word [es:bx+di],0xcc
000038D5  8CCA              mov dx,cs
000038D7  81EA5903          sub dx,0x359
000038DB  81C2807E          add dx,0x7e80
000038DF  E8CB0A            call 0x43ad
000038E2  4F                dec di
000038E3  2B3D              sub di,[di]
000038E5  7070              jo 0x3957
000038E7  803EB3091E        cmp byte [0x9b3],0x1e
000038EC  268101A300        add word [es:bx+di],0xa3
000038F1  B40A              mov ah,0xa
000038F3  3C08              cmp al,0x8
000038F5  B00C              mov al,0xc
000038F7  BE9908            mov si,0x899
000038FA  E99700            jmp 0x3994
000038FD  8EC2              mov es,dx
000038FF  26803EA00147      cmp byte [es:0x1a0],0x47
00003905  7508              jnz 0x390f
00003907  B00D              mov al,0xd
00003909  BE0E09            mov si,0x90e
0000390C  E98500            jmp 0x3994
0000390F  06                push es
00003910  B434              mov ah,0x34
00003912  CD21              int 0x21
00003914  8CC0              mov ax,es
00003916  07                pop es
00003917  26891EB601        mov [es:0x1b6],bx
0000391C  26A3B801          mov [es:0x1b8],ax
00003920  06                push es
00003921  B82F35            mov ax,0x352f
00003924  CD21              int 0x21
00003926  8CC0              mov ax,es
00003928  07                pop es
00003929  26891EBE01        mov [es:0x1be],bx
0000392E  26A3C001          mov [es:0x1c0],ax
00003932  BAC202            mov dx,0x2c2
00003935  8501              test [bx+di],ax
00003937  F7B82F25          idiv word [bx+si+0x252f]
0000393B  CD21              int 0x21
0000393D  1F                pop ds
0000393E  26C606A00147      mov byte [es:0x1a0],0x47
00003944  268C06A301        mov [es:0x1a3],es
00003949  BEC908            mov si,0x8c9
0000394C  8CC8              mov ax,cs
0000394E  8E50E8            mov ss,[bx+si-0x18]
00003951  6D                insw
00003952  0B33              or si,[bp+di]
00003954  C0EB46            shr bl,byte 0x46
00003957  803EB3091E        cmp byte [0x9b3],0x1e
0000395C  7502              jnz 0x3960
0000395E  EB95              jmp short 0x38f5
00003960  8EC2              mov es,dx
00003962  06                push es
00003963  268E063300        mov es,[es:0x33]
00003968  1E                push ds
00003969  06                push es
0000396A  B92B00            mov cx,0x2b
0000396D  8326E9061F        and word [0x6e9],byte +0x1f
00003972  741E              jz 0x3992
00003974  26007407          add [es:si+0x7],dh
00003978  B92F00            mov cx,0x2f
0000397B  81C12620          add cx,0x2026
0000397F  00FF              add bh,bh
00003981  1E                push ds
00003982  94                xchg ax,sp
00003983  E8E509            call 0x436b
00003986  BE3308            mov si,0x833
00003989  8CC8              mov ax,cs
0000398B  8E50E8            mov ss,[bx+si-0x18]
0000398E  300B              xor [bp+di],cl
00003990  33C0              xor ax,ax
00003992  EB09              jmp short 0x399d
00003994  8CCB              mov bx,cs
00003996  8EDB              mov ds,bx
00003998  50                push ax
00003999  E8510B            call 0x44ed
0000399C  58                pop ax
0000399D  B44C              mov ah,0x4c
0000399F  CD8D              int 0x8d
000039A1  A19609            mov ax,[0x996]
000039A4  39069C09          cmp [0x99c],ax
000039A8  7603              jna 0x39ad
000039AA  A39C09            mov [0x99c],ax
000039AD  A19809            mov ax,[0x998]
000039B0  39069E09          cmp [0x99e],ax
000039B4  7603              jna 0x39b9
000039B6  A39E09            mov [0x99e],ax
000039B9  06                push es
000039BA  B85C35            mov ax,0x355c
000039BD  CD21              int 0x21
000039BF  8CC0              mov ax,es
000039C1  07                pop es
000039C2  06                push es
000039C3  8CCA              mov dx,cs
000039C5  81EA5903          sub dx,0x359
000039C9  81C2807E          add dx,0x7e80
000039CD  8EC2              mov es,dx
000039CF  26891E3700        mov [es:0x37],bx
000039D4  26A33900          mov [es:0x39],ax
000039D8  07                pop es
000039D9  3D00F0            cmp ax,0xf000
000039DC  734C              jnc 0x3a2a
000039DE  E8A70A            call 0x4488
000039E1  7518              jnz 0x39fb
000039E3  1E                push ds
000039E4  8CCA              mov dx,cs
000039E6  81EA5903          sub dx,0x359
000039EA  81C22F00          add dx,0x2f
000039EE  8EDA              mov ds,dx
000039F0  C606740591        mov byte [0x574],0x91
000039F5  1F                pop ds
000039F6  3D6000            cmp ax,0x60
000039F9  7445              jz 0x3a40
000039FB  0BC3              or ax,bx
000039FD  7441              jz 0x3a40
000039FF  06                push es
00003A00  0E                push cs
00003A01  07                pop es
00003A02  A0A009            mov al,[0x9a0]
00003A05  A2330A            mov [0xa33],al
00003A08  C606040A05        mov byte [0xa04],0x5
00003A0D  BB030A            mov bx,0xa03
00003A10  26C6077F          mov byte [es:bx],0x7f
00003A14  CD5C              int 0x5c
00003A16  FB                sti
00003A17  5F                pop di
00003A18  9C                pushf
00003A19  0107              add [bx],ax
00003A1B  EBEB              jmp short 0x3a08
00003A1D  FF21              jmp [bx+di]
00003A1F  BE5F06            mov si,0x65f
00003A22  E8C80A            call 0x44ed
00003A25  B004              mov al,0x4
00003A27  E966FE            jmp 0x3890
00003A2A  0406              add al,0x6
00003A2C  06                push es
00003A2D  8EC0              mov es,ax
00003A2F  FA                cli
00003A30  26C7067001470C    mov word [es:0x170],0xc47
00003A37  014706            add [bx+0x6],ax
00003A3A  7201              jc 0x3a3d
00003A3C  47                inc di
00003A3D  0CFB              or al,0xfb
00003A3F  07                pop es
00003A40  8A269509          mov ah,[0x995]
00003A44  32C0              xor al,al
00003A46  8A16A009          mov dl,[0x9a0]
00003A4A  CD2F              int 0x2f
00003A4C  3DFF00            cmp ax,0xff
00003A4F  742E              jz 0x3a7f
00003A51  3DFF01            cmp ax,0x1ff
00003A54  750B              jnz 0x3a61
00003A56  BE1906            mov si,0x619
00003A59  E8910A            call 0x44ed
00003A5C  B003              mov al,0x3
00003A5E  E92FFE            jmp 0x3890
00003A61  3CFF              cmp al,0xff
00003A63  750F              jnz 0x3a74
00003A65  81FA5341          cmp dx,0x4153
00003A69  7509              jnz 0x3a74
00003A6B  84C9              test cl,cl
00003A6D  7410              jz 0x3a7f
00003A6F  80F901            cmp cl,0x1
00003A72  74E2              jz 0x3a56
00003A74  BEEB05            mov si,0x5eb
00003A77  E8730A            call 0x44ed
00003A7A  06                push es
00003A7B  58                pop ax
00003A7C  C3                ret
00003A7D  11FE              adc si,di
00003A7F  8A269509          mov ah,[0x995]
00003A83  B001              mov al,0x1
00003A85  8A16A009          mov dl,[0x9a0]
00003A89  CD2F              int 0x2f
00003A8B  2803              sub [bp+di],al
00003A8D  260474            es add al,0x74
00003A90  0BBE6908          or di,[bp+0x869]
00003A94  E8560A            call 0x44ed
00003A97  B00B              mov al,0xb
00003A99  E9F4FD            jmp 0x3890
00003A9C  1E                push ds
00003A9D  8CC8              mov ax,cs
00003A9F  2D5903            sub ax,0x359
00003AA2  050000            add ax,0x0
00003AA5  8ED8              mov ds,ax
00003AA7  2E8A269509        mov ah,[cs:0x995]
00003AAC  88263B00          mov [0x3b],ah
00003AB0  B434              mov ah,0x34
00003AB2  CD21              int 0x21
00003AB4  891EB601          mov [0x1b6],bx
00003AB8  8C06B801          mov [0x1b8],es
00003ABC  8CC8              mov ax,cs
00003ABE  2D5903            sub ax,0x359
00003AC1  052F00            add ax,0x2f
00003AC4  A33100            mov [0x31],ax
00003AC7  8CC8              mov ax,cs
00003AC9  2D5903            sub ax,0x359
00003ACC  05F402            add ax,0x2f4
00003ACF  A33300            mov [0x33],ax
00003AD2  B85C35            mov ax,0x355c
00003AD5  CD21              int 0x21
00003AD7  BF4442            mov di,0x4244
00003ADA  00F7              add bh,dh
00003ADC  B93100            mov cx,0x31
00003ADF  F3A6              repe cmpsb
00003AE1  008075A1          add [bx+si-0x5e8b],al
00003AE5  3100              xor [bx+si],ax
00003AE7  A33100            mov [0x31],ax
00003AEA  8CC8              mov ax,cs
00003AEC  2D5903            sub ax,0x359
00003AEF  052F00            add ax,0x2f
00003AF2  A33300            mov [0x33],ax
00003AF5  1F                pop ds
00003AF6  33D2              xor dx,dx
00003AF8  52                push dx
00003AF9  A19609            mov ax,[0x996]
00003AFC  40                inc ax
00003AFD  BB4300            mov bx,0x43
00003B00  43                inc bx
00003B01  83E3FE            and bx,byte -0x2
00003B04  F7E3              mul bx
00003B06  050800            add ax,0x8
00003B09  5A                pop dx
00003B0A  03D0              add dx,ax
00003B0C  A19A09            mov ax,[0x99a]
00003B0F  B417              mov ah,0x17
00003B11  FEC4              inc ah
00003B13  80E4FE            and ah,0xfe
00003B16  F6E4              mul ah
00003B18  051000            add ax,0x10
00003B1B  03D0              add dx,ax
00003B1D  A19809            mov ax,[0x998]
00003B20  B454              mov ah,0x54
00003B22  FEC4              inc ah
00003B24  80E4FE            and ah,0xfe
00003B27  F6E4              mul ah
00003B29  051000            add ax,0x10
00003B2C  03D0              add dx,ax
00003B2E  A19809            mov ax,[0x998]
00003B31  D1E0              shl ax,1
00003B33  03D0              add dx,ax
00003B35  52                push dx
00003B36  A1A909            mov ax,[0x9a9]
00003B39  8B1EAB09          mov bx,[0x9ab]
00003B3D  83C337            add bx,byte +0x37
00003B40  43                inc bx
00003B41  83E3FE            and bx,byte -0x2
00003B44  F7E3              mul bx
00003B46  83FA08            cmp dx,byte +0x8
00003B49  CF                iret
00003B4A  015AEB            add [bp+si-0x15],bx
00003B4D  58                pop ax
00003B4E  050800            add ax,0x8
00003B51  7301              jnc 0x3b54
00003B53  5A                pop dx
00003B54  EB50              jmp short 0x3ba6
00003B56  5A                pop dx
00003B57  03D0              add dx,ax
00003B59  724B              jc 0x3ba6
00003B5B  81C24809          add dx,0x948
00003B5F  7245              jc 0x3ba6
00003B61  83C20F            add dx,byte +0xf
00003B64  7240              jc 0x3ba6
00003B66  B104              mov cl,0x4
00003B68  D3EA              shr dx,cl
00003B6A  8CC8              mov ax,cs
00003B6C  2D5903            sub ax,0x359
00003B6F  050000            add ax,0x0
00003B72  8EC0              mov es,ax
00003B74  2603163300        add dx,[es:0x33]
00003B79  8CC8              mov ax,cs
00003B7B  2D5903            sub ax,0x359
00003B7E  050000            add ax,0x0
00003B81  2BD0              sub dx,ax
00003B83  83C210            add dx,byte +0x10
00003B86  8916BB09          mov [0x9bb],dx
00003B8A  813EBB090010      cmp word [0x9bb],0x1000
00003B90  7714              ja 0x3ba6
00003B92  B462              mov ah,0x62
00003B94  CD21              int 0x21
00003B96  06                push es
00003B97  8EC3              mov es,bx
00003B99  26A10200          mov ax,[es:0x2]
00003B9D  07                pop es
00003B9E  031EBB09          add bx,[0x9bb]
00003BA2  3BD8              cmp bx,ax
00003BA4  760B              jna 0x3bb1
00003BA6  BE3D09            mov si,0x93d
00003BA9  E84109            call 0x44ed
00003BAC  B00E              mov al,0xe
00003BAE  E9DFFC            jmp 0x3890
00003BB1  268B163100        mov dx,[es:0x31]
00003BB6  015F1E            add [bx+0x1e],bx
00003BB9  3300              xor ax,[bx+si]
00003BBB  8C06BF09          mov [0x9bf],es
00003BBF  8C06C309          mov [0x9c3],es
00003BC3  8C06C709          mov [0x9c7],es
00003BC7  891ECB09          mov [0x9cb],bx
00003BCB  891ECF09          mov [0x9cf],bx
00003BCF  891ED309          mov [0x9d3],bx
00003BD3  8916D709          mov [0x9d7],dx
00003BD7  8916DB09          mov [0x9db],dx
00003BDB  8916DF09          mov [0x9df],dx
00003BDF  8916E309          mov [0x9e3],dx
00003BE3  8916E709          mov [0x9e7],dx
00003BE7  8916EB09          mov [0x9eb],dx
00003BEB  8916EF09          mov [0x9ef],dx
00003BEF  8C06F309          mov [0x9f3],es
00003BF3  8C06F709          mov [0x9f7],es
00003BF7  8C06FB09          mov [0x9fb],es
00003BFB  2E891E010A        mov [cs:0xa01],bx
00003C00  2EA1B909          mov ax,[cs:0x9b9]
00003C04  26A33500          mov [es:0x35],ax
00003C08  7C3C              jl 0x3c46
00003C0A  16                push ss
00003C0B  40                inc ax
00003C0C  007C3C            add [si+0x3c],bh
00003C0F  16                push ss
00003C10  44                inc sp
00003C11  007C3C            add [si+0x3c],bh
00003C14  16                push ss
00003C15  7001              jo 0x3c18
00003C17  06                push es
00003C18  8CC0              mov ax,es
00003C1A  8EC3              mov es,bx
00003C1C  26A33B06          mov [es:0x63b],ax
00003C20  BB5602            mov bx,0x256
00003C23  26891E3906        mov [es:0x639],bx
00003C28  26A33706          mov [es:0x637],ax
00003C2C  BB7F02            mov bx,0x27f
00003C2F  26891E3506        mov [es:0x635],bx
00003C34  26A33F06          mov [es:0x63f],ax
00003C38  BBA802            mov bx,0x2a8
00003C3B  26891E3D06        mov [es:0x63d],bx
00003C40  26A34306          mov [es:0x643],ax
00003C44  B7F8              mov bh,0xf8
00003C46  BB2689            mov bx,0x8926
00003C49  1E                push ds
00003C4A  41                inc cx
00003C4B  06                push es
00003C4C  26A33306          mov [es:0x633],ax
00003C50  BB55BB            mov bx,0xbb55
00003C53  26891E3106        mov [es:0x631],bx
00003C58  07                pop es
00003C59  268E063300        mov es,[es:0x33]
00003C5E  E8A104            call 0x4102
00003C61  E89E06            call 0x4302
00003C64  E8DB06            call 0x4342
00003C67  E85804            call 0x40c2
00003C6A  A0B409            mov al,[0x9b4]
00003C6D  26A28803          mov [es:0x388],al
00003C71  A1B509            mov ax,[0x9b5]
00003C74  26A38603          mov [es:0x386],ax
00003C78  A0B709            mov al,[0x9b7]
00003C7B  26A28A03          mov [es:0x38a],al
00003C7F  A0B809            mov al,[0x9b8]
00003C82  26A28903          mov [es:0x389],al
00003C86  A0A009            mov al,[0x9a0]
00003C89  26A23880          mov [es:0x8038],al
00003C8D  D2C6              rol dh,cl
00003C8F  06                push es
00003C90  D300              rol word [bx+si],cl
00003C92  0A26C606          or ah,[0x6c6]
00003C96  D400              aam 0x0
00003C98  0826C606          or [0x6c6],ah
00003C9C  D500              aad 0x0
00003C9E  0226C606          add ah,[0x6c6]
00003CA2  D6                salc
00003CA3  0002              add [bp+si],al
00003CA5  26C7060F02010C    mov word [es:0x20f],0xc01
00003CAC  014706            add [bx+0x6],ax
00003CAF  1102              adc [bp+si],ax
00003CB1  3A02              cmp al,[bp+si]
00003CB3  014706            add [bx+0x6],ax
00003CB6  1302              adc ax,[bp+si]
00003CB8  3A02              cmp al,[bp+si]
00003CBA  014706            add [bx+0x6],ax
00003CBD  AC                lodsb
00003CBE  E82800            call 0x3ce9
00003CC1  014706            add [bx+0x6],ax
00003CC4  AE                scasb
00003CC5  001E80D2          add [0xd280],bl
00003CC9  C606B80004        mov byte [0xb8],0x4
00003CCE  D2C6              rol dh,cl
00003CD0  06                push es
00003CD1  B90006            mov cx,0x600
00003CD4  A19809            mov ax,[0x998]
00003CD7  26A3E600          mov [es:0xe6],ax
00003CDB  A19609            mov ax,[0x996]
00003CDE  26A3DC00          mov [es:0xdc],ax
00003CE2  A19A09            mov ax,[0x99a]
00003CE5  26A3D000          mov [es:0xd0],ax
00003CE9  8A269C09          mov ah,[0x99c]
00003CED  A09E09            mov al,[0x99e]
00003CF0  26A34707          mov [es:0x747],ax
00003CF4  06                push es
00003CF5  8A269509          mov ah,[0x995]
00003CF9  B001              mov al,0x1
00003CFB  8A16A009          mov dl,[0x9a0]
00003CFF  06                push es
00003D00  CD2F              int 0x2f
00003D02  06                push es
00003D03  1F                pop ds
00003D04  8BF3              mov si,bx
00003D06  07                pop es
00003D07  BF8400            mov di,0x84
00003D0A  B9141F            mov cx,0x1f14
00003D0D  07                pop es
00003D0E  A5                movsw
00003D0F  26C5369C00        lds si,[es:0x9c]
00003D14  E8A907            call 0x44c0
00003D17  26C5369C00        lds si,[es:0x9c]
00003D1C  AC                lodsb
00003D1D  84C0              test al,al
00003D1F  75FB              jnz 0x3d1c
00003D21  46                inc si
00003D22  D2C6              rol dh,cl
00003D24  06                push es
00003D25  7F03              jg 0x3d2a
00003D27  00813C41          add [bx+di+0x413c],al
00003D2B  53                push bx
00003D2C  7533              jnz 0x3d61
00003D2E  817C024654        cmp word [si+0x2],0x5446
00003D33  752C              jnz 0x3d61
00003D35  D2C6              rol dh,cl
00003D37  06                push es
00003D38  7F03              jg 0x3d3d
00003D3A  0183C604          add [bp+di+0x4c6],ax
00003D3E  268936821E        mov [es:0x1e82],si
00003D43  F1                int1
00003D44  032684BF          add sp,[0xbf84]
00003D48  3F                aas
00003D49  038A0C83          add cx,[bp+si-0x7cf4]
00003D4D  C6                db 0xc6
00003D4E  E8DC01            call 0x3f2d
00003D51  06                push es
00003D52  800301            add byte [bp+di],0x1
00003D55  008B0426          add [bp+di+0x2604],cl
00003D59  01068003          add [0x380],ax
00003D5D  03F0              add si,ax
00003D5F  E2F5              loop 0x3d56
00003D61  1F                pop ds
00003D62  06                push es
00003D63  8CC8              mov ax,cs
00003D65  2D5903            sub ax,0x359
00003D68  055903            add ax,0x359
00003D6B  1E                push ds
00003D6C  8C00              mov [bx+si],es
00003D6E  BD098A            mov bp,0x8a09
00003D71  2695              es xchg ax,bp
00003D73  09B0028A          or [bx+si-0x75fe],si
00003D77  16                push ss
00003D78  A009CD            mov al,[0xcd09]
00003D7B  2F                das
00003D7C  07                pop es
00003D7D  8A269509          mov ah,[0x995]
00003D81  B003              mov al,0x3
00003D83  8A16A009          mov dl,[0x9a0]
00003D87  B301              mov bl,0x1
00003D89  CD2F              int 0x2f
00003D8B  E88405            call 0x4312
00003D8E  E8B205            call 0x4343
00003D91  E8CE06            call 0x4462
00003D94  B180              mov cl,0x80
00003D96  E80503            call 0x409e
00003D99  8CC8              mov ax,cs
00003D9B  2D5903            sub ax,0x359
00003D9E  050000            add ax,0x0
00003DA1  8EC0              mov es,ax
00003DA3  268E063300        mov es,[es:0x33]
00003DA8  8CC9              mov cx,cs
00003DAA  81E95903          sub cx,0x359
00003DAE  81C12E00          add cx,0x2e
00003DB2  7C3C              jl 0x3df0
00003DB4  0E                push cs
00003DB5  E000              loopne 0x3db7
00003DB7  1E                push ds
00003DB8  8ED9              mov ds,cx
00003DBA  C70601470C00      mov word [0x4701],0xc
00003DC0  A34724            mov [0x2447],ax
00003DC3  8900              mov [bx+si],ax
00003DC5  050024            add ax,0x2400
00003DC8  1F                pop ds
00003DC9  02531E            add dl,[bp+di+0x1e]
00003DCC  06                push es
00003DCD  B92B00            mov cx,0x2b
00003DD0  83B03101B4        xor word [bx+si+0x131],byte -0x4c
00003DD5  091E2600          or [0x26],bx
00003DD9  7407              jz 0x3de2
00003DDB  B92F00            mov cx,0x2f
00003DDE  81C12620          add cx,0x2026
00003DE2  00FF              add bh,bh
00003DE4  1E                push ds
00003DE5  94                xchg ax,sp
00003DE6  1F                pop ds
00003DE7  B031              mov al,0x31
00003DE9  01B40901          add [si+0x109],si
00003DED  751F              jnz 0x3e0e
00003DEF  26741B            es jz 0x3e0d
00003DF2  00263905          add [0x539],ah
00003DF6  2F                das
00003DF7  00F7              add bh,dh
00003DF9  2605103B          es add ax,0x3b10
00003DFD  06                push es
00003DFE  860E2676          xchg cl,[0x7626]
00003E02  0CA1              or al,0xa1
00003E04  8603              xchg al,[bp+di]
00003E06  2D2F39            sub ax,0x392f
00003E09  46                inc si
00003E0A  2608B0A3A0        or [es:bx+si-0x5f5d],dh
00003E0F  A10975            mov ax,[0x7509]
00003E12  14CB              adc al,0xcb
00003E14  0426              add al,0x26
00003E16  A2D300            mov [0xd3],al
00003E19  266D              es insw
00003E1B  F9                stc
00003E1C  39A2A109          cmp [bp+si+0x9a1],sp
00003E20  A0A209            mov al,[0x9a2]
00003E23  7514              jnz 0x3e39
00003E25  CB                retf
00003E26  0426              add al,0x26
00003E28  A2D400            mov [0xd4],al
00003E2B  44                inc sp
00003E2C  A0D400            mov al,[0xd4]
00003E2F  A2A209            mov [0x9a2],al
00003E32  A0A309            mov al,[0x9a3]
00003E35  7514              jnz 0x3e4b
00003E37  CB                retf
00003E38  0426              add al,0x26
00003E3A  A2D500            mov [0xd5],al
00003E3D  44                inc sp
00003E3E  A0D500            mov al,[0xd5]
00003E41  A2A309            mov [0x9a3],al
00003E44  8A26A409          mov ah,[0x9a4]
00003E48  80FC80            cmp ah,0x80
00003E4B  FA                cli
00003E4C  FF268826          jmp [0x2688]
00003E50  D6                salc
00003E51  00F8              add al,bh
00003E53  3C26              cmp al,0x26
00003E55  D6                salc
00003E56  008826A4          add [bx+si-0x5bda],cl
00003E5A  09A1A709          or [bx+di+0x9a7],sp
00003E5E  3DFFFF            cmp ax,0xffff
00003E61  7406              jz 0x3e69
00003E63  D1E0              shl ax,1
00003E65  26A3AE00          mov [es:0xae],ax
00003E69  A1A509            mov ax,[0x9a5]
00003E6C  3DFFFF            cmp ax,0xffff
00003E6F  7406              jz 0x3e77
00003E71  D1E0              shl ax,1
00003E73  26A3AC00          mov [es:0xac],ax
00003E77  26A1AC00          mov ax,[es:0xac]
00003E7B  26833EAE0000      cmp word [es:0xae],byte +0x0
00003E81  46                inc si
00003E82  3D7547            cmp ax,0x4775
00003E85  06                push es
00003E86  AC                lodsb
00003E87  E8471E            call 0x5cd1
00003E8A  001B              add [bp+di],bl
00003E8C  4F                dec di
00003E8D  2B3D              sub di,[di]
00003E8F  7016              jo 0x3ea7
00003E91  26833EAE0000      cmp word [es:0xae],byte +0x0
00003E97  740E              jz 0x3ea7
00003E99  268B0EAE00        mov cx,[es:0xae]
00003E9E  03C1              add ax,cx
00003EA0  26A3AC00          mov [es:0xac],ax
00003EA4  A3A509            mov [0x9a5],ax
00003EA7  A1A909            mov ax,[0x9a9]
00003EAA  3D01A1            cmp ax,0xa101
00003EAD  E404              in al,0x4
00003EAF  26A30F02          mov [es:0x20f],ax
00003EB3  26A10F02          mov ax,[es:0x20f]
00003EB7  A3A909            mov [0x9a9],ax
00003EBA  A1AB09            mov ax,[0x9ab]
00003EBD  3D3A02            cmp ax,0x23a
00003EC0  E404              in al,0x4
00003EC2  26A31102          mov [es:0x211],ax
00003EC6  26A11102          mov ax,[es:0x211]
00003ECA  A3AB09            mov [0x9ab],ax
00003ECD  A1AD09            mov ax,[0x9ad]
00003ED0  3D3A02            cmp ax,0x23a
00003ED3  E404              in al,0x4
00003ED5  26A31302          mov [es:0x213],ax
00003ED9  26A11302          mov ax,[es:0x213]
00003EDD  A3AD09            mov [0x9ad],ax
00003EE0  0E                push cs
00003EE1  7A73              jpe 0x3f56
00003EE3  07                pop es
00003EE4  AF                scasw
00003EE5  091E2681          or [0x8126],bx
00003EE9  0100              add [bx+si],ax
00003EEB  A3EA20            mov [0x20ea],ax
00003EEE  00E8              add al,ch
00003EF0  3406              xor al,0x6
00003EF2  BE807E            mov si,0x7e80
00003EF5  E8C805            call 0x44c0
00003EF8  E85C06            call 0x4557
00003EFB  32E4              xor ah,ah
00003EFD  A0A009            mov al,[0x9a0]
00003F00  BFBE00            mov di,0xbe
00003F03  E88E05            call 0x4494
00003F06  A09509            mov al,[0x995]
00003F09  BFE700            mov di,0xe7
00003F0C  E83706            call 0x4546
00003F0F  A19609            mov ax,[0x996]
00003F12  BF0A01            mov di,0x10a
00003F15  E87C05            call 0x4494
00003F18  A0A109            mov al,[0x9a1]
00003F1B  BF3301            mov di,0x133
00003F1E  E87305            call 0x4494
00003F21  A19809            mov ax,[0x998]
00003F24  BF5601            mov di,0x156
00003F27  E86A05            call 0x4494
00003F2A  A0A209            mov al,[0x9a2]
00003F2D  BF7F01            mov di,0x17f
00003F30  E86105            call 0x4494
00003F33  A19A09            mov ax,[0x99a]
00003F36  BFA201            mov di,0x1a2
00003F39  E85805            call 0x4494
00003F3C  A0A309            mov al,[0x9a3]
00003F3F  BFCB01            mov di,0x1cb
00003F42  E84F05            call 0x4494
00003F45  A19C09            mov ax,[0x99c]
00003F48  BFEE01            mov di,0x1ee
00003F4B  E84605            call 0x4494
00003F4E  A0A409            mov al,[0x9a4]
00003F51  BF1702            mov di,0x217
00003F54  E83D05            call 0x4494
00003F57  A19E09            mov ax,[0x99e]
00003F5A  BF3A02            mov di,0x23a
00003F5D  E83405            call 0x4494
00003F60  A1A909            mov ax,[0x9a9]
00003F63  BF6302            mov di,0x263
00003F66  E82B05            call 0x4494
00003F69  A1AB09            mov ax,[0x9ab]
00003F6C  BF8602            mov di,0x286
00003F6F  E82205            call 0x4494
00003F72  A1AD09            mov ax,[0x9ad]
00003F75  BFAF02            mov di,0x2af
00003F78  E81905            call 0x4494
00003F7B  BE8309            mov si,0x983
00003F7E  3101              xor [bx+di],ax
00003F80  B409              mov ah,0x9
00003F82  1E                push ds
00003F83  2603BE8D09        add di,[es:bp+0x98d]
00003F88  E85007            call 0x46db
00003F8B  BFD402            mov di,0x2d4
00003F8E  F3A4              rep movsb
00003F90  BFFD02            mov di,0x2fd
00003F93  3101              xor [bx+di],ax
00003F95  B409              mov ah,0x9
00003F97  1E                push ds
00003F98  2608A1B509        or [es:bx+di+0x9b5],ah
00003F9D  E8F43B            call 0x7b94
00003FA0  8C47BE            mov [bx-0x42],es
00003FA3  91                xchg ax,cx
00003FA4  09E8              or ax,bp
00003FA6  3307              xor ax,[bx]
00003FA8  F3A4              rep movsb
00003FAA  33C0              xor ax,ax
00003FAC  A0B709            mov al,[0x9b7]
00003FAF  BF1503            mov di,0x315
00003FB2  E8DF04            call 0x4494
00003FB5  A1BB09            mov ax,[0x9bb]
00003FB8  33D2              xor dx,dx
00003FBA  D1E0              shl ax,1
00003FBC  D1C2              rol dx,1
00003FBE  D1E0              shl ax,1
00003FC0  D1C2              rol dx,1
00003FC2  D1E0              shl ax,1
00003FC4  D1C2              rol dx,1
00003FC6  D1E0              shl ax,1
00003FC8  D1C2              rol dx,1
00003FCA  BF3E03            mov di,0x33e
00003FCD  E8CC04            call 0x449c
00003FD0  BEA000            mov si,0xa0
00003FD3  E8EA04            call 0x44c0
00003FD6  BEB505            mov si,0x5b5
00003FD9  E8E404            call 0x44c0
00003FDC  B90500            mov cx,0x5
00003FDF  BB0000            mov bx,0x0
00003FE2  B43E              mov ah,0x3e
00003FE4  CD21              int 0x21
00003FE6  43                inc bx
00003FE7  E2F9              loop 0x3fe2
00003FE9  B462              mov ah,0x62
00003FEB  CD21              int 0x21
00003FED  8EC3              mov es,bx
00003FEF  BFC100            mov di,0xc1
00003FF2  893EFD09          mov [0x9fd],di
00003FF6  8C06FF09          mov [0x9ff],es
00003FFA  8CC8              mov ax,cs
00003FFC  8E50BE            mov ss,[bx+si-0x42]
00003FFF  8612              xchg dl,[bp+si]
00004001  33D2              xor dx,dx
00004003  07                pop es
00004004  90                nop
00004005  F3A4              rep movsb
00004007  D2C6              rol dh,cl
00004009  06                push es
0000400A  800000            add byte [bx+si],0x0
0000400D  BB8180            mov bx,0x8081
00004010  D2C6              rol dh,cl
00004012  07                pop es
00004013  32A19C09          xor ah,[bx+di+0x99c]
00004017  26884703          mov [es:bx+0x3],al
0000401B  A19E09            mov ax,[0x99e]
0000401E  26884702          mov [es:bx+0x2],al
00004022  A0A009            mov al,[0x9a0]
00004025  26884730          mov [es:bx+0x30],al
00004029  8CC2              mov dx,es
0000402B  8E06010A          mov es,[0xa01]
0000402F  FA                cli
00004030  8CC0              mov ax,es
00004032  8ED0              mov ss,ax
00004034  BCEC00            mov sp,0xec
00004037  81C42001          add sp,0x120
0000403B  FB                sti
0000403C  8EC2              mov es,dx
0000403E  EB12              jmp short 0x4052
00004040  2000              and [bx+si],al
00004042  0001              add [bx+di],al
00004044  004149            add [bx+di+0x49],al
00004047  4C                dec sp
00004048  41                inc cx
00004049  4E                dec si
0000404A  42                inc dx
0000404B  49                dec cx
0000404C  4F                dec di
0000404D  2E45              cs inc bp
0000404F  58                pop ax
00004050  45                inc bp
00004051  005053            add [bx+si+0x53],dl
00004054  51                push cx
00004055  1E                push ds
00004056  06                push es
00004057  B462              mov ah,0x62
00004059  CD21              int 0x21
0000405B  8EDB              mov ds,bx
0000405D  83C30E            add bx,byte +0xe
00004060  891E2C00          mov [0x2c],bx
00004064  4B                dec bx
00004065  8EC3              mov es,bx
00004067  26C60600005A      mov byte [es:0x0],0x5a
0000406D  F1                int1
0000406E  0326010C          add sp,[0xc01]
00004072  014706            add [bx+0x6],ax
00004075  0300              add ax,[bx+si]
00004077  0100              add [bx+si],ax
00004079  BF1000            mov di,0x10
0000407C  BE2E12            mov si,0x122e
0000407F  8CC8              mov ax,cs
00004081  8E50B9            mov ss,[bx+si-0x47]
00004084  12BF7A3E          adc bh,[bx+0x3e7a]
00004088  07                pop es
00004089  1F                pop ds
0000408A  59                pop cx
0000408B  5B                pop bx
0000408C  58                pop ax
0000408D  8B16BB09          mov dx,[0x9bb]
00004091  B90031            mov cx,0x3100
00004094  FF2EFD09          jmp far [0x9fd]
00004098  CD5C              int 0x5c
0000409A  8BC1              mov ax,cx
0000409C  CD21              int 0x21
0000409E  53                push bx
0000409F  1E                push ds
000040A0  BB5903            mov bx,0x359
000040A3  1E                push ds
000040A4  DB8A1EA0          fisttp dword [bp+si-0x5fe2]
000040A8  0980FB02          or [bx+si+0x2fb],ax
000040AC  730B              jnc 0x40b9
000040AE  32FF              xor bh,bh
000040B0  B80000            mov ax,0x0
000040B3  8ED8              mov ds,ax
000040B5  888FA204          mov [bx+0x4a2],cl
000040B9  1F                pop ds
000040BA  5B                pop bx
000040BB  C3                ret
000040BC  0000              add [bx+si],al
000040BE  0000              add [bx+si],al
000040C0  0000              add [bx+si],al
000040C2  8501              test [bx+di],ax
000040C4  F733              div word [bp+di]
000040C6  C0C606            rol dh,byte 0x6
000040C9  1C00              sbb al,0x0
000040CB  0FA31A            bt [bp+si],bx
000040CE  00C7              add bh,al
000040D0  06                push es
000040D1  1800              sbb [bx+si],al
000040D3  90                nop
000040D4  00A32200          add [bp+di+0x22],ah
000040D8  A22424            mov [0x2424],al
000040DB  8900              mov [bx+si],ax
000040DD  51                push cx
000040DE  0010              add [bx+si],dl
000040E0  A34F00            mov [0x4f],ax
000040E3  C7064D009000      mov word [0x4d],0x90
000040E9  A35700            mov [0x57],ax
000040EC  A25900            mov [0x59],al
000040EF  48                dec ax
000040F0  A27800            mov [0x78],al
000040F3  A27900            mov [0x79],al
000040F6  1F                pop ds
000040F7  C3                ret
000040F8  A308B2            mov [0xb208],ax
000040FB  000A              add [bp+si],cl
000040FD  00B05051          add [bx+si+0x5150],dh
00004101  57                push di
00004102  56                push si
00004103  3F                aas
00004104  3301              xor ax,[bx+di]
00004106  06                push es
00004107  80007A            add byte [bx+si],0x7a
0000410A  00268C06          add [0x68c],ah
0000410E  82                db 0x82
0000410F  00BFB000          add [bx+0xb0],bh
00004113  B93C00            mov cx,0x3c
00004116  F3AA              rep stosb
00004118  2633C0            es xor ax,ax
0000411B  A2267A            mov [0x7a26],al
0000411E  03A226A2          add sp,[bp+si-0x5dda]
00004122  0DA226            or ax,0x26a2
00004125  A20E02            mov [0x20e],al
00004128  26A36103          mov [es:0x361],ax
0000412C  26A36303          mov [es:0x363],ax
00004130  26A26503          mov [es:0x365],al
00004134  26A26603          mov [es:0x366],al
00004138  26A26703          mov [es:0x367],al
0000413C  26A26803          mov [es:0x368],al
00004140  26A26903          mov [es:0x369],al
00004144  BF1103            mov di,0x311
00004147  26C6451401        mov byte [es:di+0x14],0x1
0000414C  26C6451504        mov byte [es:di+0x15],0x4
00004151  26884516          mov [es:di+0x16],al
00004155  73F4              jnc 0x414b
00004157  8DB91000          lea di,[bx+di+0x10]
0000415B  F3AA              rep stosb
0000415D  BF2803            mov di,0x328
00004160  26C64514FF        mov byte [es:di+0x14],0xff
00004165  26C6451584        mov byte [es:di+0x15],0x84
0000416A  26884516          mov [es:di+0x16],al
0000416E  26C645042A        mov byte [es:di+0x4],0x2a
00004173  8D7D05            lea di,[di+0x5]
00004176  B90F00            mov cx,0xf
00004179  F3AA              rep stosb
0000417B  26C6067D03FF      mov byte [es:0x37d],0xff
00004181  BF8B1E            mov di,0x1e8b
00004184  F1                int1
00004185  03450A            add ax,[di+0xa]
00004188  F1                int1
00004189  034510            add ax,[di+0x10]
0000418C  F1                int1
0000418D  034516            add ax,[di+0x16]
00004190  F1                int1
00004191  03451C            add ax,[di+0x1c]
00004194  F1                int1
00004195  034522            add ax,[di+0x22]
00004198  F1                int1
00004199  034528            add ax,[di+0x28]
0000419C  26C74508C404      mov word [es:di+0x8],0x4c4
000041A2  B031              mov al,0x31
000041A4  01B40901          add [si+0x109],si
000041A8  7445              jz 0x41ef
000041AA  26EB22            es jmp short 0x41cf
000041AD  C7450C26EB        mov word [di+0xc],0xeb26
000041B2  220E9004          and cl,[0x490]
000041B6  2696              es xchg ax,si
000041B8  04C7              add al,0xc7
000041BA  45                inc bp
000041BB  12269604          adc ah,[0x496]
000041BF  14D8              adc al,0xd8
000041C1  0426              add al,0x26
000041C3  96                xchg ax,si
000041C4  0418              add al,0x18
000041C6  45                inc bp
000041C7  0C26              or al,0x26
000041C9  EB22              jmp short 0x41ed
000041CB  1A7004            sbb dh,[bx+si+0x4]
000041CE  2696              es xchg ax,si
000041D0  041E              add al,0x1e
000041D2  110C              adc [si],cx
000041D4  26EB22            es jmp short 0x41f9
000041D7  20E8              and al,ch
000041D9  0426              add al,0x26
000041DB  96                xchg ax,si
000041DC  0424              add al,0x24
000041DE  200C              and [si],cl
000041E0  26EB22            es jmp short 0x4205
000041E3  260D0526          es or ax,0x2605
000041E7  EB22              jmp short 0x420b
000041E9  2AE9              sub ch,cl
000041EB  46                inc si
000041EC  05B200            add ax,0xb2
000041EF  268C452E          mov [es:di+0x2e],es
000041F3  268C4534          mov [es:di+0x34],es
000041F7  268C453A          mov [es:di+0x3a],es
000041FB  268C4540          mov [es:di+0x40],es
000041FF  268C4546          mov [es:di+0x46],es
00004203  268C454C          mov [es:di+0x4c],es
00004207  268C4552          mov [es:di+0x52],es
0000420B  269F              es lahf
0000420D  04C7              add al,0xc7
0000420F  45                inc bp
00004210  0C26              or al,0x26
00004212  EB22              jmp short 0x4236
00004214  0E                push cs
00004215  D204              rol byte [si],cl
00004217  2696              es xchg ax,si
00004219  04C7              add al,0xc7
0000421B  45                inc bp
0000421C  0C26              or al,0x26
0000421E  EB22              jmp short 0x4242
00004220  1492              adc al,0x92
00004222  0426              add al,0x26
00004224  96                xchg ax,si
00004225  0418              add al,0x18
00004227  45                inc bp
00004228  0C26              or al,0x26
0000422A  EB22              jmp short 0x424e
0000422C  1AD8              sbb bl,al
0000422E  0426              add al,0x26
00004230  96                xchg ax,si
00004231  041E              add al,0x1e
00004233  45                inc bp
00004234  0C26              or al,0x26
00004236  EB22              jmp short 0x425a
00004238  20DA              and dl,bl
0000423A  0426              add al,0x26
0000423C  96                xchg ax,si
0000423D  0424              add al,0x24
0000423F  45                inc bp
00004240  0C26              or al,0x26
00004242  EB22              jmp short 0x4266
00004244  266E              es outsb
00004246  0426              add al,0x26
00004248  96                xchg ax,si
00004249  042A              add al,0x2a
0000424B  45                inc bp
0000424C  0C26              or al,0x26
0000424E  EB22              jmp short 0x4272
00004250  2C94              sub al,0x94
00004252  0426              add al,0x26
00004254  96                xchg ax,si
00004255  0430              add al,0x30
00004257  45                inc bp
00004258  0C26              or al,0x26
0000425A  EB22              jmp short 0x427e
0000425C  32E0              xor ah,al
0000425E  0426              add al,0x26
00004260  96                xchg ax,si
00004261  0436              add al,0x36
00004263  45                inc bp
00004264  0C26              or al,0x26
00004266  EB22              jmp short 0x428a
00004268  38E2              cmp dl,ah
0000426A  0426              add al,0x26
0000426C  96                xchg ax,si
0000426D  043C              add al,0x3c
0000426F  45                inc bp
00004270  0C26              or al,0x26
00004272  EB22              jmp short 0x4296
00004274  3E6C              ds insb
00004276  0426              add al,0x26
00004278  96                xchg ax,si
00004279  0442              add al,0x42
0000427B  200C              and [si],cl
0000427D  26EB22            es jmp short 0x42a2
00004280  44                inc sp
00004281  7004              jo 0x4287
00004283  2696              es xchg ax,si
00004285  0448              add al,0x48
00004287  110C              adc [si],cx
00004289  26EB22            es jmp short 0x42ae
0000428C  4A                dec dx
0000428D  E80426            call 0x6894
00004290  96                xchg ax,si
00004291  044E              add al,0x4e
00004293  200C              and [si],cl
00004295  26EB22            es jmp short 0x42ba
00004298  50                push ax
00004299  0D0526            or ax,0x2605
0000429C  EB22              jmp short 0x42c0
0000429E  54                push sp
0000429F  0000              add [bx+si],al
000042A1  BFE103            mov di,0x3e1
000042A4  26C6050C          mov byte [es:di],0xc
000042A8  F1                int1
000042A9  03451C            add ax,[di+0x1c]
000042AC  F1                int1
000042AD  034522            add ax,[di+0x22]
000042B0  F1                int1
000042B1  034528            add ax,[di+0x28]
000042B4  268C452E          mov [es:di+0x2e],es
000042B8  268C4534          mov [es:di+0x34],es
000042BC  268C453A          mov [es:di+0x3a],es
000042C0  268C4540          mov [es:di+0x40],es
000042C4  268C4546          mov [es:di+0x46],es
000042C8  BF3704            mov di,0x437
000042CB  2696              es xchg ax,si
000042CD  0410              add al,0x10
000042CF  C400              les ax,[bx+si]
000042D1  26C64514FF        mov byte [es:di+0x14],0xff
000042D6  26C70696044E52    mov word [es:0x496],0x524e
000042DD  269F              es lahf
000042DF  06                push es
000042E0  98                cbw
000042E1  0447              add al,0x47
000042E3  0C01              or al,0x1
000042E5  47                inc di
000042E6  06                push es
000042E7  9A04FFFF26        call 0x26ff:0xff04
000042EC  C6069E040C        mov byte [0x49e],0xc
000042F1  014706            add [bx+0x6],ax
000042F4  A00405            mov al,[0x504]
000042F7  37                aaa
000042F8  5F                pop di
000042F9  59                pop cx
000042FA  58                pop ax
000042FB  C3                ret
000042FC  0000              add [bx+si],al
000042FE  00C3              add bl,al
00004300  0102              add [bp+si],ax
00004302  B200              mov dl,0x0
00004304  0F00B01E06        jmpe word [bx+si+0x61e]
00004309  B435              mov ah,0x35
0000430B  B05C              mov al,0x5c
0000430D  CD21              int 0x21
0000430F  B80000            mov ax,0x0
00004312  8ED8              mov ds,ax
00004314  891E4600          mov [0x46],bx
00004318  8C064800          mov [0x48],es
0000431C  BA4A00            mov dx,0x4a
0000431F  B80000            mov ax,0x0
00004322  8ED8              mov ds,ax
00004324  B425              mov ah,0x25
00004326  B05C              mov al,0x5c
00004328  CD21              int 0x21
0000432A  07                pop es
0000432B  1F                pop ds
0000432C  C3                ret
0000432D  2600B2000A        add [es:bp+si+0xa00],dh
00004332  00B0C31E          add [bx+si+0x1ec3],dh
00004336  06                push es
00004337  B108              mov cl,0x8
00004339  B435              mov ah,0x35
0000433B  8AC1              mov al,cl
0000433D  CD21              int 0x21
0000433F  B80000            mov ax,0x0
00004342  8ED8              mov ds,ax
00004344  891E7201          mov [0x172],bx
00004348  8C067401          mov [0x174],es
0000434C  BA7601            mov dx,0x176
0000434F  B80000            mov ax,0x0
00004352  8ED8              mov ds,ax
00004354  B425              mov ah,0x25
00004356  8AC1              mov al,cl
00004358  CD21              int 0x21
0000435A  07                pop es
0000435B  1F                pop ds
0000435C  C3                ret
0000435D  50                push ax
0000435E  52                push dx
0000435F  06                push es
00004360  1E                push ds
00004361  268B163700        mov dx,[es:0x37]
00004366  268E1E3900        mov ds,[es:0x39]
0000436B  B425              mov ah,0x25
0000436D  B05C              mov al,0x5c
0000436F  CD21              int 0x21
00004371  268B167201        mov dx,[es:0x172]
00004376  268E1E7401        mov ds,[es:0x174]
0000437B  B425              mov ah,0x25
0000437D  B008              mov al,0x8
0000437F  CD21              int 0x21
00004381  268B16BE01        mov dx,[es:0x1be]
00004386  268E1EC001        mov ds,[es:0x1c0]
0000438B  B425              mov ah,0x25
0000438D  B02F              mov al,0x2f
0000438F  CD21              int 0x21
00004391  268E063500        mov es,[es:0x35]
00004396  B449              mov ah,0x49
00004398  CD21              int 0x21
0000439A  1F                pop ds
0000439B  07                pop es
0000439C  5A                pop dx
0000439D  58                pop ax
0000439E  C3                ret
0000439F  1E                push ds
000043A0  06                push es
000043A1  57                push di
000043A2  8EDA              mov ds,dx
000043A4  B85C35            mov ax,0x355c
000043A7  CD21              int 0x21
000043A9  8CC0              mov ax,es
000043AB  3D00F0            cmp ax,0xf000
000043AE  731F              jnc 0x43cf
000043B0  0BC3              or ax,bx
000043B2  741B              jz 0x43cf
000043B4  8CC2              mov dx,es
000043B6  BF4442            mov di,0x4244
000043B9  00F7              add bh,dh
000043BB  B93100            mov cx,0x31
000043BE  F3A6              repe cmpsb
000043C0  741D              jz 0x43df
000043C2  83F907            cmp cx,byte +0x7
000043C5  7610              jna 0x43d7
000043C7  B00A              mov al,0xa
000043C9  BEED07            mov si,0x7ed
000043CC  EB79              jmp short 0x4447
000043CE  90                nop
000043CF  B006              mov al,0x6
000043D1  BECF07            mov si,0x7cf
000043D4  EB71              jmp short 0x4447
000043D6  90                nop
000043D7  B007              mov al,0x7
000043D9  C0                db 0xc0
000043DA  B435              mov ah,0x35
000043DC  B05C              mov al,0x5c
000043DE  CD21              int 0x21
000043E0  B25B              mov dl,0x5b
000043E2  67CF              a32 iret
000043E4  054380            add ax,0x8043
000043E7  16                push ss
000043E8  07                pop es
000043E9  1E                push ds
000043EA  260026833E        add [es:0x3e83],ah
000043EF  AE                scasb
000043F0  5B                pop bx
000043F1  BE3E07            mov si,0x73e
000043F4  B8083D            mov ax,0x3d08
000043F7  00F0              add al,dh
000043F9  B008              mov al,0x8
000043FB  81FB7601          cmp bx,0x176
000043FF  754B              jnz 0x444c
00004401  8CC3              mov bx,es
00004403  3BDA              cmp bx,dx
00004405  7545              jnz 0x444c
00004407  8CC0              mov ax,es
00004409  07                pop es
0000440A  2689B00881        mov [es:bx+si-0x7ef8],si
0000440F  FB                sti
00004410  C20175            ret 0x7501
00004413  388CC33B          cmp [si+0x3bc3],cl
00004417  DA7532            fidiv dword [di+0x32]
0000441A  B009              mov al,0x9
0000441C  BEA200            mov si,0xa2
0000441F  E8A104            call 0x48c3
00004422  E89E00            call 0x44c3
00004425  740E              jz 0x4435
00004427  E283              loop 0x43ac
00004429  3EAE              ds scasb
0000442B  02EB              add ch,bl
0000442D  1E                push ds
0000442E  26A1D806          mov ax,[es:0x6d8]
00004432  860E26DA          xchg cl,[0xda26]
00004436  3EAE              ds scasb
00004438  02EB              add ch,bl
0000443A  1137              adc [bx],si
0000443C  00268ACD          add [0xcd8a],ah
00004440  2189B003          and [bx+di+0x3b0],cx
00004444  53                push bx
00004445  B300              mov bl,0x0
00004447  CD2F              int 0x2f
00004449  5B                pop bx
0000444A  33C0              xor ax,ax
0000444C  5F                pop di
0000444D  06                push es
0000444E  1E                push ds
0000444F  2617              es pop ss
00004451  01B20009          add [bp+si+0x900],si
00004455  35B05C            xor ax,0x5cb0
00004458  CD21              int 0x21
0000445A  B8002F            mov ax,0x2f00
0000445D  8ED8              mov ds,ax
0000445F  891E7201          mov [0x172],bx
00004463  8C0674BE          mov [0xbe74],es
00004467  BA7601            mov dx,0x176
0000446A  8501              test [bx+di],ax
0000446C  F7B82FB4          idiv word [bx+si-0x4bd1]
00004470  25B05C            and ax,0x5cb0
00004473  CD21              int 0x21
00004475  07                pop es
00004476  1F                pop ds
00004477  2F                das
00004478  50                push ax
00004479  52                push dx
0000447A  06                push es
0000447B  1E                push ds
0000447C  268B53B4          mov dx,[es:bp+di-0x4c]
00004480  0F                db 0x0f
00004481  CD10              int 0x10
00004483  80FC0F            cmp ah,0xf
00004486  5B                pop bx
00004487  58                pop ax
00004488  C3                ret
00004489  52                push dx
0000448A  33D2              xor dx,dx
0000448C  E80200            call 0x4491
0000448F  5A                pop dx
00004490  268B5351          mov dx,[es:bp+di+0x51]
00004494  52                push dx
00004495  B90A00            mov cx,0xa
00004498  E80500            call 0x44a0
0000449B  5A                pop dx
0000449C  BB09B9            mov bx,0xb909
0000449F  C3                ret
000044A0  E82F03            call 0x47d2
000044A3  53                push bx
000044A4  8BD8              mov bx,ax
000044A6  0BDA              or bx,dx
000044A8  7403              jz 0x44ad
000044AA  E8F3FF            call 0x44a0
000044AD  5B                pop bx
000044AE  93                xchg ax,bx
000044AF  0430              add al,0x30
000044B1  AA                stosb
000044B2  8BC3              mov ax,bx
000044B4  C3                ret
000044B5  2EFF36A01A        push word [cs:0x1aa0]
000044BA  2E8F06A41A        pop word [cs:0x1aa4]
000044BF  E91A02            jmp 0x46dc
000044C2  2EFF36A01A        push word [cs:0x1aa0]
000044C7  2E8F06A41A        pop word [cs:0x1aa4]
000044CC  E93702            jmp 0x4706
000044CF  56                push si
000044D0  BEE91C            mov si,0x1ce9
000044D3  1E                push ds
000044D4  0E                push cs
000044D5  1F                pop ds
000044D6  E80C00            call 0x44e5
000044D9  1F                pop ds
000044DA  5E                pop si
000044DB  C3                ret
000044DC  56                push si
000044DD  BEF41C            mov si,0x1cf4
000044E0  EBF1              jmp short 0x44d3
000044E2  E8EAFF            call 0x44cf
000044E5  2EFF36A21A        push word [cs:0x1aa2]
000044EA  2E8F06A41A        pop word [cs:0x1aa4]
000044EF  E9EA01            jmp 0x46dc
000044F2  E8DAFF            call 0x44cf
000044F5  2EFF36A21A        push word [cs:0x1aa2]
000044FA  2E8F06A41A        pop word [cs:0x1aa4]
000044FF  E90402            jmp 0x4706
00004502  57                push di
00004503  51                push cx
00004504  0BBE690E          or di,[bp+0xe69]
00004508  AE                scasb
00004509  00E8              add al,ch
0000450B  05028D            add ax,0x8d02
0000450E  7D09              jnl 0x4519
00004510  E8AC01            call 0x46bf
00004513  03F9              add di,cx
00004515  47                inc di
00004516  EBEC              jmp short 0x4504
00004518  59                pop cx
00004519  5F                pop di
0000451A  268B5351          mov dx,[es:bp+di+0x51]
0000451E  56                push si
0000451F  57                push di
00004520  1E                push ds
00004521  DB83C30E          fild dword [bp+di+0xec3]
00004525  891EBE80          mov [0x80be],bx
00004529  00AC8AC8          add [si-0x3776],ch
0000452D  B559              mov ch,0x59
0000452F  5B                pop bx
00004530  58                pop ax
00004531  26880D            mov [es:di],cl
00004534  1F                pop ds
00004535  5F                pop di
00004536  5E                pop si
00004537  BB09B9            mov bx,0xb909
0000453A  C3                ret
0000453B  50                push ax
0000453C  51                push cx
0000453D  B104              mov cl,0x4
0000453F  D2E8              shr al,cl
00004541  59                pop cx
00004542  E85203            call 0x4897
00004545  58                pop ax
00004546  E94E03            jmp 0x4897
00004549  4E                dec si
0000454A  7461              jz 0x45ad
0000454C  56                push si
0000454D  1E                push ds
0000454E  0E                push cs
0000454F  1F                pop ds
00004550  BE4217            mov si,0x1742
00004553  E85FFF            call 0x44b5
00004556  1F                pop ds
00004557  5E                pop si
00004558  C3                ret
00004559  0201              add al,[bx+di]
0000455B  B200              mov dl,0x0
0000455D  0300              add ax,[bx+si]
0000455F  002EFF36          add [0x36ff],ch
00004563  A01A2E            mov al,[0x2e1a]
00004566  FF36A21A          push word [0x1aa2]
0000456A  2E8F06A01A        pop word [cs:0x1aa0]
0000456F  53                push bx
00004570  51                push cx
00004571  52                push dx
00004572  56                push si
00004573  1E                push ds
00004574  BE5217            mov si,0x1752
00004577  8BDF              mov bx,di
00004579  8CC2              mov dx,es
0000457B  0E                push cs
0000457C  07                pop es
0000457D  BF5217            mov di,0x1752
00004580  E89FFE            call 0x4422
00004583  0E                push cs
00004584  1F                pop ds
00004585  2EA0D819          mov al,[cs:0x19d8]
00004589  2EC606D81900      mov byte [cs:0x19d8],0x0
0000458F  E309              jcxz 0x459a
00004591  BFD217            mov di,0x17d2
00004594  E85001            call 0x46e7
00004597  49                dec cx
00004598  EBF5              jmp short 0x458f
0000459A  2EA2D819          mov [cs:0x19d8],al
0000459E  8B20              mov sp,[bx+si]
000045A0  0000              add [bx+si],al
000045A2  E81F03            call 0x48c4
000045A5  1F                pop ds
000045A6  5E                pop si
000045A7  5A                pop dx
000045A8  BB092E            mov bx,0x2e09
000045AB  8F06A01A          pop word [0x1aa0]
000045AF  C3                ret
000045B0  2EFF36A01A        push word [cs:0x1aa0]
000045B5  2EFF36A21A        push word [cs:0x1aa2]
000045BA  2E8F06A01A        pop word [cs:0x1aa0]
000045BF  53                push bx
000045C0  51                push cx
000045C1  52                push dx
000045C2  56                push si
000045C3  1E                push ds
000045C4  EBB1              jmp short 0x4577
000045C6  50                push ax
000045C7  57                push di
000045C8  06                push es
000045C9  3BCA              cmp cx,dx
000045CB  0E                push cs
000045CC  32C0              xor al,al
000045CE  F2AE              repne scasb
000045D0  F7D1              not cx
000045D2  49                dec cx
000045D3  07                pop es
000045D4  5F                pop di
000045D5  58                pop ax
000045D6  C3                ret
000045D7  7F2F              jg 0x4608
000045D9  E8138B            call 0xd0ef
000045DC  FE                db 0xfe
000045DD  E8E6FF            call 0x45c6
000045E0  5F                pop di
000045E1  07                pop es
000045E2  268B5351          mov dx,[es:bp+di+0x51]
000045E6  E8EEFF            call 0x45d7
000045E9  E31E              jcxz 0x4609
000045EB  2E8B1EA41A        mov bx,[cs:0x1aa4]
000045F0  83FBFF            cmp bx,byte -0x1
000045F3  750C              jnz 0x4601
000045F5  56                push si
000045F6  43                inc bx
000045F7  AC                lodsb
000045F8  B40E              mov ah,0xe
000045FA  CD10              int 0x10
000045FC  E2F9              loop 0x45f7
000045FE  5E                pop si
000045FF  EB08              jmp short 0x4609
00004601  52                push dx
00004602  8BD6              mov dx,si
00004604  B440              mov ah,0x40
00004606  CD21              int 0x21
00004608  5A                pop dx
00004609  BB09B9            mov bx,0xb909
0000460C  C3                ret
0000460D  C6061C87F7        mov byte [0x871c],0xf7
00004612  E8CEFF            call 0x45e3
00004615  87F7              xchg si,di
00004617  000A              add [bp+si],cl
00004619  00F6              add dh,dh
0000461B  0540EA            add ax,0xea40
0000461E  2000              and [bx+si],al
00004620  B606              mov dh,0x6
00004622  B462              mov ah,0x62
00004624  CD56              int 0x56
00004626  1E                push ds
00004627  0E                push cs
00004628  1F                pop ds
00004629  BEFC1C            mov si,0x1cfc
0000462C  E88DFD            call 0x43bc
0000462F  57                push di
00004630  8D7D09            lea di,[di+0x9]
00004633  E893FD            call 0x43c9
00004636  5F                pop di
00004637  268A0D            mov cl,[es:di]
0000463A  8AE9              mov ch,cl
0000463C  80E10F            and cl,0xf
0000463F  80E530            and ch,0x30
00004642  BEEB05            mov si,0x5eb
00004645  E82B80            call 0xc673
00004648  F9                stc
00004649  087426            or [si+0x26],dh
0000464C  80F905            cmp cl,0x5
0000464F  7423              jz 0x4674
00004651  BE011D            mov si,0x1d01
00004654  E865FD            call 0x43bc
00004657  80F907            cmp cl,0x7
0000465A  7508              jnz 0x4664
0000465C  BE601D            mov si,0x1d60
0000465F  E85AFD            call 0x43bc
00004662  EB6C              jmp short 0x46d0
00004664  80F906            cmp cl,0x6
00004667  E8910A            call 0x50fb
0000466A  41                inc cx
0000466B  1DE84D            sbb ax,0x4de8
0000466E  FD                std
0000466F  E8F604            call 0x4b68
00004672  EB5C              jmp short 0x46d0
00004674  00F6              add dh,dh
00004676  058074            add ax,0x7480
00004679  38BE031D          cmp [bp+0x1d03],bh
0000467D  E83CFD            call 0x43bc
00004680  BE8D1D            mov si,0x1d8d
00004683  268B4505          mov ax,[es:di+0x5]
00004687  268B5D07          mov bx,[es:di+0x7]
0000468B  80F904            cmp cl,0x4
0000468E  091E26F9          or [0xf926],bx
00004692  057405            add ax,0x574
00004695  80F903            cmp cl,0x3
00004698  750D              jnz 0x46a7
0000469A  E8BD04            call 0x4b5a
0000469D  E81CFD            call 0x43bc
000046A0  8BC3              mov ax,bx
000046A2  E8B504            call 0x4b5a
000046A5  EB0B              jmp short 0x46b2
000046A7  E8F602            call 0x49a0
000046AA  E80FFD            call 0x43bc
000046AD  8BC3              mov ax,bx
000046AF  E8EE02            call 0x49a0
000046B2  BE0B1D            mov si,0x1d0b
000046B5  80F903            cmp cl,0x3
000046B8  7413              jz 0x46cd
000046BA  BE151D            mov si,0x1d15
000046BD  80F902            cmp cl,0x2
000046C0  E8560A            call 0x5119
000046C3  1B1D              sbb bx,[di]
000046C5  80F904            cmp cl,0x4
000046C8  0903              or [bp+di],ax
000046CA  BE2E1D            mov si,0x1d2e
000046CD  E8ECFC            call 0x43bc
000046D0  E880FD            call 0x4453
000046D3  1F                pop ds
000046D4  5E                pop si
000046D5  BB09B9            mov bx,0xb909
000046D8  C3                ret
000046D9  92                xchg ax,dx
000046DA  8BDA              mov bx,dx
000046DC  33D2              xor dx,dx
000046DE  F7F1              div cx
000046E0  93                xchg ax,bx
000046E1  F7F1              div cx
000046E3  87DA              xchg bx,dx
000046E5  C3                ret
000046E6  015053            add [bx+si+0x53],dx
000046E9  52                push dx
000046EA  B80037            mov ax,0x3700
000046ED  CD21              int 0x21
000046EF  8AFA              mov bh,dl
000046F1  5A                pop dx
000046F2  51                push cx
000046F3  52                push dx
000046F4  57                push di
000046F5  E8DFFE            call 0x45d7
000046F8  E354              jcxz 0x474e
000046FA  B320              mov bl,0x20
000046FC  383C              cmp [si],bh
000046FE  7404              jz 0x4704
00004700  381C              cmp [si],bl
00004702  7710              ja 0x4714
00004704  1B04              sbb ax,[si]
00004706  16                push ss
00004707  0E                push cs
00004708  051911            add ax,0x1119
0000470B  0A17              or dl,[bx]
0000470D  1A0A              sbb cl,[bp+si]
0000470F  1A17              sbb dl,[bx]
00004711  1204              adc al,[si]
00004713  1019              adc [bx+di],bl
00004715  1911              sbb [bx+di],dx
00004717  17                pop ss
00004718  001A              add [bp+si],bl
0000471A  17                pop ss
0000471B  1B19              sbb bx,[bx+di]
0000471D  051617            add ax,0x1716
00004720  16                push ss
00004721  1100              adc [bx+si],ax
00004723  07                pop es
00004724  0A00              or al,[bx+si]
00004726  1104              adc [si],ax
00004728  0207              add al,[bx]
0000472A  1105              adc [di],ax
0000472C  1B1B              sbb bx,[bp+di]
0000472E  191A              sbb [bp+si],bx
00004730  1012              adc [bp+si],dl
00004732  1219              adc bl,[bx+di]
00004734  1A1A              sbb bl,[bp+si]
00004736  191B              sbb [bp+di],bx
00004738  101B              adc [bp+di],bl
0000473A  0E                push cs
0000473B  1A05              sbb al,[di]
0000473D  16                push ss
0000473E  1910              sbb [bx+si],dx
00004740  0019              add [bx+di],bl
00004742  0D0711            or ax,0x1107
00004745  0405              add al,0x5
00004747  0D1902            or ax,0x219
0000474A  1912              sbb [bp+si],dx
0000474C  1907              sbb [bx],ax
0000474E  040A              add al,0xa
00004750  0D1A17            or ax,0x171a
00004753  1A11              sbb dl,[bx+di]
00004755  05051A            add ax,0x1a05
00004758  0011              add [bx+di],dl
0000475A  1904              sbb [si],ax
0000475C  040E              add al,0xe
0000475E  1B1B              sbb bx,[bp+di]
00004760  16                push ss
00004761  1A00              sbb al,[bx+si]
00004763  1A02              sbb al,[bp+si]
00004765  021A              add bl,[bp+si]
00004767  0E                push cs
00004768  0411              add al,0x11
0000476A  1104              adc [si],ax
0000476C  1B17              sbb dx,[bx]
0000476E  17                pop ss
0000476F  0D111B            or ax,0x1b11
00004772  05111B            add ax,0x1b11
00004775  050719            add ax,0x1907
00004778  0205              add al,[di]
0000477A  0E                push cs
0000477B  1912              sbb [bp+si],dx
0000477D  1107              adc [bx],ax
0000477F  0E                push cs
00004780  050707            add ax,0x707
00004783  0E                push cs
00004784  1A10              sbb dl,[bx+si]
00004786  07                pop es
00004787  1A19              sbb bl,[bx+di]
00004789  0A04              or al,[si]
0000478B  000A              add [bp+si],cl
0000478D  1902              sbb [bp+si],ax
0000478F  1211              adc dl,[bx+di]
00004791  05000E            add ax,0xe00
00004794  0D1110            or ax,0x1011
00004797  0010              add [bx+si],dl
00004799  1A10              sbb dl,[bx+si]
0000479B  1907              sbb [bx],ax
0000479D  1200              adc al,[bx+si]
0000479F  0D0E1A            or ax,0x1a0e
000047A2  1902              sbb [bp+si],ax
000047A4  051B10            add ax,0x101b
000047A7  07                pop es
000047A8  07                pop es
000047A9  120E0417          adc cl,[0x1704]
000047AD  0E                push cs
000047AE  1A160419          sbb dl,[0x1904]
000047B2  16                push ss
000047B3  1212              adc dl,[bp+si]
000047B5  051207            add ax,0x712
000047B8  051A10            add ax,0x101a
000047BB  16                push ss
000047BC  02161B12          add dl,[0x121b]
000047C0  1B10              sbb dx,[bx+si]
000047C2  1A12              sbb dl,[bp+si]
000047C4  1012              adc [bp+si],dl
000047C6  000E120A          add [0xa12],cl
000047CA  0419              add al,0x19
000047CC  020A              add cl,[bp+si]
000047CE  0D0511            or ax,0x1105
000047D1  0E                push cs
000047D2  0A0A              or cl,[bp+si]
000047D4  0D0019            or ax,0x1900
000047D7  16                push ss
000047D8  0E                push cs
000047D9  17                pop ss
000047DA  07                pop es
000047DB  1B07              sbb ax,[bx]
000047DD  1004              adc [si],al
000047DF  0D0A12            or ax,0x120a
000047E2  021A              add bl,[bp+si]
000047E4  1910              sbb [bx+si],dx
000047E6  16                push ss
000047E7  0E                push cs
000047E8  120A              adc cl,[bp+si]
000047EA  101A              adc [bp+si],bl
000047EC  0402              add al,0x2
000047EE  1011              adc [bx+di],dl
000047F0  0D0D0A            or ax,0xa0d
000047F3  191B              sbb [bp+di],bx
000047F5  101A              adc [bp+si],bl
000047F7  17                pop ss
000047F8  0E                push cs
000047F9  1200              adc al,[bx+si]
000047FB  0E                push cs
000047FC  1B19              sbb bx,[bx+di]
000047FE  120E0E07          adc cl,[0x70e]
00004802  17                pop ss
00004803  051A16            add ax,0x161a
00004806  0210              add dl,[bx+si]
00004808  17                pop ss
00004809  120E111A          adc cl,[0x1a11]
0000480D  07                pop es
0000480E  0D0700            or ax,0x7
00004811  17                pop ss
00004812  120A              adc cl,[bp+si]
00004814  1000              adc [bx+si],al
00004816  0416              add al,0x16
00004818  1212              adc dl,[bp+si]
0000481A  16                push ss
0000481B  0A0E1200          or cl,[0x12]
0000481F  1A0E1607          sbb cl,[0x716]
00004823  101B              adc [bp+di],bl
00004825  121B              adc bl,[bp+di]
00004827  1005              adc [di],al
00004829  07                pop es
0000482A  17                pop ss
0000482B  0E                push cs
0000482C  1A1A              sbb bl,[bp+si]
0000482E  040D              add al,0xd
00004830  1107              adc [bx],ax
00004832  1000              adc [bx+si],al
00004834  191B              sbb [bp+di],bx
00004836  0A02              or al,[bp+si]
00004838  0412              add al,0x12
0000483A  0D0D16            or ax,0x160d
0000483D  001A              add [bp+si],bl
0000483F  0D0D1B            or ax,0x1b0d
00004842  110D              adc [di],cx
00004844  0210              add dl,[bx+si]
00004846  16                push ss
00004847  1A1A              sbb bl,[bp+si]
00004849  1010              adc [bx+si],dl
0000484B  17                pop ss
0000484C  1212              adc dl,[bp+si]
0000484E  0410              add al,0x10
00004850  07                pop es
00004851  16                push ss
00004852  0007              add [bx],al
00004854  0A0A              or cl,[bp+si]
00004856  051005            add ax,0x510
00004859  0416              add al,0x16
0000485B  0E                push cs
0000485C  07                pop es
0000485D  021B              add bl,[bp+di]
0000485F  1B19              sbb bx,[bx+di]
00004861  020D              add cl,[di]
00004863  07                pop es
00004864  1010              adc [bx+si],dl
00004866  1217              adc dl,[bx]
00004868  110E070A          adc [0xa07],cx
0000486C  0417              add al,0x17
0000486E  1100              adc [bx+si],ax
00004870  07                pop es
00004871  0A12              or dl,[bp+si]
00004873  0D0A05            or ax,0x50a
00004876  001A              add [bp+si],bl
00004878  041B              add al,0x1b
0000487A  1902              sbb [bp+si],ax
0000487C  0200              add al,[bx+si]
0000487E  1B05              sbb ax,[di]
00004880  0E                push cs
00004881  051212            add ax,0x1212
00004884  0204              add al,[si]
00004886  17                pop ss
00004887  1907              sbb [bx],ax
00004889  16                push ss
0000488A  1205              adc al,[di]
0000488C  1000              adc [bx+si],al
0000488E  17                pop ss
0000488F  120D              adc cl,[di]
00004891  0211              add dl,[bx+di]
00004893  0404              add al,0x4
00004895  0E                push cs
00004896  0007              add [bx],al
00004898  17                pop ss
00004899  050D0E            add ax,0xe0d
0000489C  17                pop ss
0000489D  1102              adc [bp+si],ax
0000489F  0207              add al,[bx]
000048A1  0E                push cs
000048A2  16                push ss
000048A3  1204              adc al,[si]
000048A5  16                push ss
000048A6  0210              add dl,[bx+si]
000048A8  16                push ss
000048A9  190A              sbb [bp+si],cx
000048AB  1212              adc dl,[bp+si]
000048AD  0E                push cs
000048AE  0A11              or dl,[bx+di]
000048B0  07                pop es
000048B1  1B0D              sbb cx,[di]
000048B3  1B19              sbb bx,[bx+di]
000048B5  1B12              sbb dx,[bp+si]
000048B7  0E                push cs
000048B8  0E                push cs
000048B9  0205              add al,[di]
000048BB  1B04              sbb ax,[si]
000048BD  0004              add [si],al
000048BF  051A16            add ax,0x161a
000048C2  000D              add [di],cl
000048C4  1010              adc [bx+si],dl
000048C6  07                pop es
000048C7  1011              adc [bx+di],dl
000048C9  1916070A          sbb [0xa07],dx
000048CD  0E                push cs
000048CE  1202              adc al,[bp+si]
000048D0  120D              adc cl,[di]
000048D2  1B1B              sbb bx,[bp+di]
000048D4  000E1602          add [0x216],cl
000048D8  0E                push cs
000048D9  1105              adc [di],ax
000048DB  0005              add [di],al
000048DD  0E                push cs
000048DE  100D              adc [di],cl
000048E0  001B              add [bp+di],bl
000048E2  120E0200          adc cl,[0x2]
000048E6  051619            add ax,0x1916
000048E9  0E                push cs
000048EA  0E                push cs
000048EB  1105              adc [di],ax
000048ED  0405              add al,0x5
000048EF  1B11              sbb dx,[bx+di]
000048F1  1204              adc al,[si]
000048F3  000A              add [bp+si],cl
000048F5  1B07              sbb ax,[bx]
000048F7  0E                push cs
000048F8  1B17              sbb dx,[bx]
000048FA  0404              add al,0x4
000048FC  001A              add [bp+si],bl
000048FE  0D0505            or ax,0x505
00004901  0D0E17            or ax,0x170e
00004904  0011              add [bx+di],dl
00004906  0A00              or al,[bx+si]
00004908  1117              adc [bx],dx
0000490A  021B              add bl,[bp+di]
0000490C  0204              add al,[si]
0000490E  040D              add al,0xd
00004910  000D              add [di],cl
00004912  1B12              sbb dx,[bp+si]
00004914  0D070E            or ax,0xe07
00004917  17                pop ss
00004918  0D1010            or ax,0x1010
0000491B  0219              add bl,[bx+di]
0000491D  121A              adc bl,[bp+si]
0000491F  0E                push cs
00004920  1B12              sbb dx,[bp+si]
00004922  1A02              sbb al,[bp+si]
00004924  1910              sbb [bx+si],dx
00004926  0011              add [bx+di],dl
00004928  0D0211            or ax,0x1102
0000492B  051204            add ax,0x412
0000492E  0407              add al,0x7
00004930  17                pop ss
00004931  0D1602            or ax,0x216
00004934  0D001B            or ax,0x1b00
00004937  1A00              sbb al,[bx+si]
00004939  1010              adc [bx+si],dl
0000493B  0219              add bl,[bx+di]
0000493D  07                pop es
0000493E  0E                push cs
0000493F  0200              add al,[bx+si]
00004941  1200              adc al,[bx+si]
00004943  1A160019          sbb dl,[0x1900]
00004947  0D1010            or ax,0x1010
0000494A  0E                push cs
0000494B  17                pop ss
0000494C  0204              add al,[si]
0000494E  0E                push cs
0000494F  1200              adc al,[bx+si]
00004951  07                pop es
00004952  0E                push cs
00004953  1B1B              sbb bx,[bp+di]
00004955  101B              adc [bp+di],bl
00004957  0204              add al,[si]
00004959  1204              adc al,[si]
0000495B  120D              adc cl,[di]
0000495D  0211              add dl,[bx+di]
0000495F  0205              add al,[di]
00004961  0416              add al,0x16
00004963  17                pop ss
00004964  1A11              sbb dl,[bx+di]
00004966  101B              adc [bp+di],bl
00004968  1005              adc [di],al
0000496A  1B00              sbb ax,[bx+si]
0000496C  17                pop ss
0000496D  17                pop ss
0000496E  1017              adc [bx],dl
00004970  1B10              sbb dx,[bx+si]
00004972  1016190E          adc [0xe19],dl
00004976  07                pop es
00004977  1912              sbb [bp+si],dx
00004979  07                pop es
0000497A  07                pop es
0000497B  17                pop ss
0000497C  16                push ss
0000497D  0E                push cs
0000497E  1212              adc dl,[bp+si]
00004980  0A04              or al,[si]
00004982  1119              adc [bx+di],bx
00004984  0E                push cs
00004985  1B05              sbb ax,[di]
00004987  1204              adc al,[si]
00004989  1104              adc [si],ax
0000498B  0D101A            or ax,0x1a10
0000498E  0E                push cs
0000498F  0010              add [bx+si],dl
00004991  0011              add [bx+di],dl
00004993  1104              adc [si],ax
00004995  1100              adc [bx+si],ax
00004997  0A11              or dl,[bx+di]
00004999  000E0704          add [0x407],cl
0000499D  0202              add al,[bp+si]
0000499F  1B10              sbb dx,[bx+si]
000049A1  1904              sbb [si],ax
000049A3  0A0D              or cl,[di]
000049A5  1911              sbb [bx+di],dx
000049A7  000D              add [di],cl
000049A9  1B0D              sbb cx,[di]
000049AB  1205              adc al,[di]
000049AD  0E                push cs
000049AE  11160E00          adc [0xe],dx
000049B2  020D              add cl,[di]
000049B4  17                pop ss
000049B5  0E                push cs
000049B6  0D0A0A            or ax,0xa0a
000049B9  121B              adc bl,[bp+di]
000049BB  07                pop es
000049BC  07                pop es
000049BD  0D0012            or ax,0x1200
000049C0  100D              adc [di],cl
000049C2  1902              sbb [bp+si],ax
000049C4  1A10              sbb dl,[bx+si]
000049C6  110D              adc [di],cx
000049C8  100E111A          adc [0x1a11],cl
000049CC  1B00              sbb ax,[bx+si]
000049CE  07                pop es
000049CF  16                push ss
000049D0  100A              adc [bp+si],cl
000049D2  07                pop es
000049D3  1010              adc [bx+si],dl
000049D5  0A11              or dl,[bx+di]
000049D7  0011              add [bx+di],dl
000049D9  0E                push cs
000049DA  100E1A1A          adc [0x1a1a],cl
000049DE  1A10              sbb dl,[bx+si]
000049E0  0011              add [bx+di],dl
000049E2  0A1A              or bl,[bp+si]
000049E4  1202              adc al,[bp+si]
000049E6  07                pop es
000049E7  0417              add al,0x17
000049E9  0002              add [bp+si],al
000049EB  101B              adc [bp+di],bl
000049ED  1107              adc [bx],ax
000049EF  1A1B              sbb bl,[bp+di]
000049F1  0419              add al,0x19
000049F3  0002              add [bp+si],al
000049F5  16                push ss
000049F6  07                pop es
000049F7  0207              add al,[bx]
000049F9  16                push ss
000049FA  0A17              or dl,[bx]
000049FC  0E                push cs
000049FD  1012              adc [bp+si],dl
000049FF  07                pop es
00004A00  1000              adc [bx+si],al
00004A02  07                pop es
00004A03  10160E17          adc [0x170e],dl
00004A07  0417              add al,0x17
00004A09  1B10              sbb dx,[bx+si]
00004A0B  16                push ss
00004A0C  0A17              or dl,[bx]
00004A0E  1B04              sbb ax,[si]
00004A10  16                push ss
00004A11  110A              adc [bp+si],cx
00004A13  1000              adc [bx+si],al
00004A15  110D              adc [di],cx
00004A17  07                pop es
00004A18  1A07              sbb al,[bx]
00004A1A  0D1011            or ax,0x1110
00004A1D  17                pop ss
00004A1E  051012            add ax,0x1210
00004A21  0A0E0019          or cl,[0x1900]
00004A25  0019              add [bx+di],bl
00004A27  0A1B              or bl,[bp+di]
00004A29  1A07              sbb al,[bx]
00004A2B  000E0A02          add [0x20a],cl
00004A2F  0A1B              or bl,[bp+di]
00004A31  1B02              sbb ax,[bp+si]
00004A33  07                pop es
00004A34  1B10              sbb dx,[bx+si]
00004A36  1019              adc [bx+di],bl
00004A38  0E                push cs
00004A39  020A              add cl,[bp+si]
00004A3B  16                push ss
00004A3C  0D0A0D            or ax,0xd0a
00004A3F  001B              add [bp+di],bl
00004A41  0005              add [di],al
00004A43  19160E00          sbb [0xe],dx
00004A47  1B04              sbb ax,[si]
00004A49  16                push ss
00004A4A  1217              adc dl,[bx]
00004A4C  0E                push cs
00004A4D  0E                push cs
00004A4E  0D0005            or ax,0x500
00004A51  1A10              sbb dl,[bx+si]
00004A53  0010              add [bx+si],dl
00004A55  1919              sbb [bx+di],bx
00004A57  17                pop ss
00004A58  16                push ss
00004A59  17                pop ss
00004A5A  1B161202          sbb dx,[0x212]
00004A5E  1B160A19          sbb dx,[0x190a]
00004A62  16                push ss
00004A63  1100              adc [bx+si],ax
00004A65  000A              add [bp+si],cl
00004A67  07                pop es
00004A68  0416              add al,0x16
00004A6A  1010              adc [bx+si],dl
00004A6C  0404              add al,0x4
00004A6E  050A12            add ax,0x120a
00004A71  111A              adc [bp+si],bx
00004A73  1B07              sbb ax,[bx]
00004A75  1005              adc [di],al
00004A77  1A0E1010          sbb cl,[0x1010]
00004A7B  0007              add [bx],al
00004A7D  1000              adc [bx+si],al
00004A7F  051B17            add ax,0x171b
00004A82  1002              adc [bp+si],al
00004A84  1B11              sbb dx,[bx+di]
00004A86  02160A1B          add dl,[0x1b0a]
00004A8A  0D0516            or ax,0x1605
00004A8D  1204              adc al,[si]
00004A8F  0A19              or bl,[bx+di]
00004A91  0D1107            or ax,0x711
00004A94  1000              adc [bx+si],al
00004A96  17                pop ss
00004A97  0019              add [bx+di],bl
00004A99  0E                push cs
00004A9A  1212              adc dl,[bp+si]
00004A9C  020D              add cl,[di]
00004A9E  1919              sbb [bx+di],bx
00004AA0  0E                push cs
00004AA1  1911              sbb [bx+di],dx
00004AA3  1A1A              sbb bl,[bp+si]
00004AA5  1000              adc [bx+si],al
00004AA7  0410              add al,0x10
00004AA9  0204              add al,[si]
00004AAB  0A12              or dl,[bp+si]
00004AAD  0D1616            or ax,0x1616
00004AB0  0E                push cs
00004AB1  050D0E            add ax,0xe0d
00004AB4  0D0400            or ax,0x4
00004AB7  0200              add al,[bx+si]
00004AB9  0E                push cs
00004ABA  16                push ss
00004ABB  07                pop es
00004ABC  0202              add al,[bp+si]
00004ABE  1219              adc bl,[bx+di]
00004AC0  191A              sbb [bp+si],bx
00004AC2  051912            add ax,0x1219
00004AC5  1B16050E          sbb dx,[0xe05]
00004AC9  16                push ss
00004ACA  16                push ss
00004ACB  16                push ss
00004ACC  16                push ss
00004ACD  0A05              or al,[di]
00004ACF  0D190D            or ax,0xd19
00004AD2  1900              sbb [bx+si],ax
00004AD4  05021A            add ax,0x1a02
00004AD7  1219              adc bl,[bx+di]
00004AD9  101A              adc [bp+si],bl
00004ADB  0212              add dl,[bp+si]
00004ADD  100A              adc [bp+si],cl
00004ADF  1119              adc [bx+di],bx
00004AE1  1100              adc [bx+si],ax
00004AE3  1000              adc [bx+si],al
00004AE5  0217              add dl,[bx]
00004AE7  0402              add al,0x2
00004AE9  07                pop es
00004AEA  0E                push cs
00004AEB  0202              add al,[bp+si]
00004AED  05111A            add ax,0x1a11
00004AF0  1216111B          adc dl,[0x1b11]
00004AF4  0000              add [bx+si],al
00004AF6  0D0707            or ax,0x707
00004AF9  0405              add al,0x5
00004AFB  07                pop es
00004AFC  1B160505          sbb dx,[0x505]
00004B00  07                pop es
00004B01  0A0D              or cl,[di]
00004B03  0E                push cs
00004B04  1B0A              sbb cx,[bp+si]
00004B06  1A02              sbb al,[bp+si]
00004B08  1A04              sbb al,[si]
00004B0A  001A              add [bp+si],bl
00004B0C  0004              add [si],al
00004B0E  1100              adc [bx+si],ax
00004B10  050D07            add ax,0x70d
00004B13  0010              add [bx+si],dl
00004B15  16                push ss
00004B16  05041A            add ax,0x1a04
00004B19  0217              add dl,[bx]
00004B1B  16                push ss
00004B1C  1219              adc bl,[bx+di]
00004B1E  1204              adc al,[si]
00004B20  0A19              or bl,[bx+di]
00004B22  1B161605          sbb dx,[0x516]
00004B26  1112              adc [bp+si],dx
00004B28  111B              adc [bp+di],bx
00004B2A  05120E            add ax,0xe12
00004B2D  0A0A              or cl,[bp+si]
00004B2F  17                pop ss
00004B30  050702            add ax,0x207
00004B33  1900              sbb [bx+si],ax
00004B35  1B0D              sbb cx,[di]
00004B37  17                pop ss
00004B38  040E              add al,0xe
00004B3A  121A              adc bl,[bp+si]
00004B3C  051104            add ax,0x411
00004B3F  001A              add [bp+si],bl
00004B41  0A02              or al,[bp+si]
00004B43  051207            add ax,0x712
00004B46  0200              add al,[bx+si]
00004B48  110A              adc [bp+si],cx
00004B4A  190D              sbb [di],cx
00004B4C  1B0E171B          sbb cx,[0x1b17]
00004B50  1B00              sbb ax,[bx+si]
00004B52  1904              sbb [si],ax
00004B54  16                push ss
00004B55  1117              adc [bx],dx
00004B57  001A              add [bp+si],bl
00004B59  07                pop es
00004B5A  17                pop ss
00004B5B  17                pop ss
00004B5C  101B              adc [bp+di],bl
00004B5E  040D              add al,0xd
00004B60  040A              add al,0xa
00004B62  0A12              or dl,[bp+si]
00004B64  1100              adc [bx+si],ax
00004B66  07                pop es
00004B67  1A11              sbb dl,[bx+di]
00004B69  050004            add ax,0x400
00004B6C  17                pop ss
00004B6D  020A              add cl,[bp+si]
00004B6F  1907              sbb [bx],ax
00004B71  050A04            add ax,0x40a
00004B74  0D1A1A            or ax,0x1a1a
00004B77  1117              adc [bx],dx
00004B79  1A00              sbb al,[bx+si]
00004B7B  0A1A              or bl,[bp+si]
00004B7D  07                pop es
00004B7E  17                pop ss
00004B7F  101B              adc [bp+di],bl
00004B81  1A10              sbb dl,[bx+si]
00004B83  0012              add [bp+si],dl
00004B85  051B1A            add ax,0x1a1b
00004B88  1A05              sbb al,[di]
00004B8A  190A              sbb [bp+si],cx
00004B8C  0011              add [bx+di],dl
00004B8E  1A1A              sbb bl,[bp+si]
00004B90  1112              adc [bp+si],dx
00004B92  1B11              sbb dx,[bx+di]
00004B94  0202              add al,[bp+si]
00004B96  040A              add al,0xa
00004B98  190D              sbb [di],cx
00004B9A  000D              add [di],cl
00004B9C  001A              add [bp+si],bl
00004B9E  1B1A              sbb bx,[bp+si]
00004BA0  111B              adc [bp+di],bx
00004BA2  07                pop es
00004BA3  1B11              sbb dx,[bx+di]
00004BA5  0419              add al,0x19
00004BA7  0E                push cs
00004BA8  1202              adc al,[bp+si]
00004BAA  120A              adc cl,[bp+si]
00004BAC  041A              add al,0x1a
00004BAE  0204              add al,[si]
00004BB0  05161A            add ax,0x1a16
00004BB3  1019              adc [bx+di],bl
00004BB5  0404              add al,0x4
00004BB7  1007              adc [bx],al
00004BB9  100A              adc [bp+si],cl
00004BBB  0410              add al,0x10
00004BBD  0E                push cs
00004BBE  1B07              sbb ax,[bx]
00004BC0  1112              adc [bp+si],dx
00004BC2  000A              add [bp+si],cl
00004BC4  0202              add al,[bp+si]
00004BC6  040D              add al,0xd
00004BC8  0D020A            or ax,0xa02
00004BCB  0A0A              or cl,[bp+si]
00004BCD  0D070E            or ax,0xe07
00004BD0  07                pop es
00004BD1  1117              adc [bx],dx
00004BD3  0404              add al,0x4
00004BD5  0A1A              or bl,[bp+si]
00004BD7  0419              add al,0x19
00004BD9  05160A            add ax,0xa16
00004BDC  050019            add ax,0x1900
00004BDF  001B              add [bp+di],bl
00004BE1  07                pop es
00004BE2  0A1B              or bl,[bp+di]
00004BE4  1B0D              sbb cx,[di]
00004BE6  1004              adc [si],al
00004BE8  0A02              or al,[bp+si]
00004BEA  1005              adc [di],al
00004BEC  1A0A              sbb cl,[bp+si]
00004BEE  1112              adc [bp+si],dx
00004BF0  0E                push cs
00004BF1  0417              add al,0x17
00004BF3  1B17              sbb dx,[bx]
00004BF5  1B161117          sbb dx,[0x1711]
00004BF9  0010              add [bx+si],dl
00004BFB  0205              add al,[di]
00004BFD  051705            add ax,0x517
00004C00  05000E            add ax,0xe00
00004C03  1B10              sbb dx,[bx+si]
00004C05  07                pop es
00004C06  05001B            add ax,0x1b00
00004C09  0A02              or al,[bp+si]
00004C0B  050E07            add ax,0x70e
00004C0E  0000              add [bx+si],al
00004C10  040D              add al,0xd
00004C12  0D0011            or ax,0x1100
00004C15  1B12              sbb dx,[bp+si]
00004C17  100E0705          adc [0x507],cl
00004C1B  1112              adc [bp+si],dx
00004C1D  100A              adc [bp+si],cl
00004C1F  000E1911          add [0x1119],cl
00004C23  0A10              or dl,[bx+si]
00004C25  1917              sbb [bx],dx
00004C27  1019              adc [bx+di],bl
00004C29  07                pop es
00004C2A  020A              add cl,[bp+si]
00004C2C  17                pop ss
00004C2D  17                pop ss
00004C2E  16                push ss
00004C2F  1110              adc [bx+si],dx
00004C31  1004              adc [si],al
00004C33  1911              sbb [bx+di],dx
00004C35  07                pop es
00004C36  0A1B              or bl,[bp+di]
00004C38  17                pop ss
00004C39  0E                push cs
00004C3A  021A              add bl,[bp+si]
00004C3C  0417              add al,0x17
00004C3E  0417              add al,0x17
00004C40  021B              add bl,[bp+di]
00004C42  001A              add [bp+si],bl
00004C44  1100              adc [bx+si],ax
00004C46  0E                push cs
00004C47  16                push ss
00004C48  0210              add dl,[bx+si]
00004C4A  0A10              or dl,[bx+si]
00004C4C  040E              add al,0xe
00004C4E  1A11              sbb dl,[bx+di]
00004C50  17                pop ss
00004C51  1012              adc [bp+si],dl
00004C53  051A00            add ax,0x1a
00004C56  1102              adc [bp+si],ax
00004C58  1A0E1A10          sbb cl,[0x101a]
00004C5C  100E0711          adc [0x1107],cl
00004C60  0205              add al,[di]
00004C62  0416              add al,0x16
00004C64  1016070E          adc [0xe07],dl
00004C68  17                pop ss
00004C69  0E                push cs
00004C6A  1000              adc [bx+si],al
00004C6C  0D1919            or ax,0x1919
00004C6F  0204              add al,[si]
00004C71  10161002          adc [0x210],dl
00004C75  02161A0A          add dl,[0xa1a]
00004C79  1905              sbb [di],ax
00004C7B  16                push ss
00004C7C  191A              sbb [bp+si],bx
00004C7E  1A00              sbb al,[bx+si]
00004C80  0A0E101B          or cl,[0x1b10]
00004C84  1A17              sbb dl,[bx]
00004C86  07                pop es
00004C87  0400              add al,0x0
00004C89  121A              adc bl,[bp+si]
00004C8B  07                pop es
00004C8C  05111A            add ax,0x1a11
00004C8F  16                push ss
00004C90  17                pop ss
00004C91  1019              adc [bx+di],bl
00004C93  0D1619            or ax,0x1916
00004C96  121B              adc bl,[bp+di]
00004C98  1116020A          adc [0xa02],dx
00004C9C  1A02              sbb al,[bp+si]
00004C9E  07                pop es
00004C9F  0410              add al,0x10
00004CA1  05191A            add ax,0x1a19
00004CA4  0416              add al,0x16
00004CA6  17                pop ss
00004CA7  16                push ss
00004CA8  1A161919          sbb dl,[0x1919]
00004CAC  0412              add al,0x12
00004CAE  001B              add [bp+di],bl
00004CB0  1B11              sbb dx,[bx+di]
00004CB2  0407              add al,0x7
00004CB4  111B              adc [bp+di],bx
00004CB6  1A04              sbb al,[si]
00004CB8  0007              add [bx],al
00004CBA  16                push ss
00004CBB  051700            add ax,0x17
00004CBE  0D0205            or ax,0x502
00004CC1  0D001A            or ax,0x1a00
00004CC4  0D050D            or ax,0xd05
00004CC7  0002              add [bp+si],al
00004CC9  17                pop ss
00004CCA  0407              add al,0x7
00004CCC  0217              add dl,[bx]
00004CCE  0400              add al,0x0
00004CD0  12160E07          adc dl,[0x70e]
00004CD4  0E                push cs
00004CD5  1904              sbb [si],ax
00004CD7  07                pop es
00004CD8  16                push ss
00004CD9  1212              adc dl,[bp+si]
00004CDB  051B12            add ax,0x121b
00004CDE  0A0D              or cl,[di]
00004CE0  0A12              or dl,[bp+si]
00004CE2  190E1005          sbb [0x510],cx
00004CE6  16                push ss
00004CE7  1911              sbb [bx+di],dx
00004CE9  001B              add [bp+di],bl
00004CEB  16                push ss
00004CEC  1011              adc [bx+di],dl
00004CEE  0E                push cs
00004CEF  1000              adc [bx+si],al
00004CF1  1017              adc [bx],dl
00004CF3  16                push ss
00004CF4  111A              adc [bp+si],bx
00004CF6  0E                push cs
00004CF7  17                pop ss
00004CF8  050405            add ax,0x504
00004CFB  0E                push cs
00004CFC  0E                push cs
00004CFD  051B19            add ax,0x191b
00004D00  040A              add al,0xa
00004D02  1119              adc [bx+di],bx
00004D04  051110            add ax,0x1011
00004D07  16                push ss
00004D08  051117            add ax,0x1711
00004D0B  1A0E0407          sbb cl,[0x704]
00004D0F  1910              sbb [bx+si],dx
00004D11  050407            add ax,0x704
00004D14  0E                push cs
00004D15  07                pop es
00004D16  1B11              sbb dx,[bx+di]
00004D18  1A16171A          sbb dl,[0x1a17]
00004D1C  0D100E            or ax,0xe10
00004D1F  110E0704          adc [0x407],cx
00004D23  120D              adc cl,[di]
00004D25  07                pop es
00004D26  0A0A              or cl,[bp+si]
00004D28  12160E0D          adc dl,[0xd0e]
00004D2C  1111              adc [bx+di],dx
00004D2E  0019              add [bx+di],bl
00004D30  0D0D02            or ax,0x20d
00004D33  0D1617            or ax,0x1716
00004D36  121A              adc bl,[bp+si]
00004D38  05000D            add ax,0xd00
00004D3B  0E                push cs
00004D3C  0410              add al,0x10
00004D3E  020D              add cl,[di]
00004D40  110E0E1B          adc [0x1b0e],cx
00004D44  1911              sbb [bx+di],dx
00004D46  001B              add [bp+di],bl
00004D48  07                pop es
00004D49  120D              adc cl,[di]
00004D4B  021B              add bl,[bp+di]
00004D4D  17                pop ss
00004D4E  0402              add al,0x2
00004D50  0E                push cs
00004D51  110E0E1A          adc [0x1a0e],cx
00004D55  1904              sbb [si],ax
00004D57  111B              adc [bp+di],bx
00004D59  07                pop es
00004D5A  0E                push cs
00004D5B  191B              sbb [bp+di],bx
00004D5D  17                pop ss
00004D5E  0A05              or al,[di]
00004D60  1B07              sbb ax,[bx]
00004D62  02160207          add dl,[0x702]
00004D66  050517            add ax,0x1705
00004D69  110D              adc [di],cx
00004D6B  0E                push cs
00004D6C  020E1104          add cl,[0x411]
00004D70  051617            add ax,0x1716
00004D73  0A10              or dl,[bx+si]
00004D75  120D              adc cl,[di]
00004D77  0E                push cs
00004D78  121B              adc bl,[bp+di]
00004D7A  0A0E1002          or cl,[0x210]
00004D7E  1A161A00          sbb dl,[0x1a]
00004D82  1A19              sbb bl,[bx+di]
00004D84  0A10              or dl,[bx+si]
00004D86  0E                push cs
00004D87  0A07              or al,[bx]
00004D89  0217              add dl,[bx]
00004D8B  07                pop es
00004D8C  0011              add [bx+di],dl
00004D8E  16                push ss
00004D8F  0E                push cs
00004D90  17                pop ss
00004D91  0E                push cs
00004D92  1100              adc [bx+si],ax
00004D94  040D              add al,0xd
00004D96  0410              add al,0x10
00004D98  0A19              or bl,[bx+di]
00004D9A  190D              sbb [di],cx
00004D9C  050704            add ax,0x407
00004D9F  040D              add al,0xd
00004DA1  17                pop ss
00004DA2  1A04              sbb al,[si]
00004DA4  051010            add ax,0x1010
00004DA7  1917              sbb [bx],dx
00004DA9  16                push ss
00004DAA  1202              adc al,[bp+si]
00004DAC  1910              sbb [bx+si],dx
00004DAE  07                pop es
00004DAF  051202            add ax,0x212
00004DB2  16                push ss
00004DB3  16                push ss
00004DB4  0217              add dl,[bx]
00004DB6  1000              adc [bx+si],al
00004DB8  121A              adc bl,[bp+si]
00004DBA  16                push ss
00004DBB  0212              add dl,[bp+si]
00004DBD  0212              add dl,[bp+si]
00004DBF  16                push ss
00004DC0  16                push ss
00004DC1  050216            add ax,0x1602
00004DC4  191A              sbb [bp+si],bx
00004DC6  1A10              sbb dl,[bx+si]
00004DC8  0D0A1B            or ax,0x1b0a
00004DCB  1202              adc al,[bp+si]
00004DCD  1216160E          adc dl,[0xe16]
00004DD1  1A0A              sbb cl,[bp+si]
00004DD3  1217              adc dl,[bx]
00004DD5  07                pop es
00004DD6  1B0D              sbb cx,[di]
00004DD8  0000              add [bx+si],al
00004DDA  0405              add al,0x5
00004DDC  0019              add [bx+di],bl
00004DDE  1002              adc [bp+si],al
00004DE0  0012              add [bp+si],dl
00004DE2  05190A            add ax,0xa19
00004DE5  0A02              or al,[bp+si]
00004DE7  05000A            add ax,0xa00
00004DEA  1A07              sbb al,[bx]
00004DEC  1B0D              sbb cx,[di]
00004DEE  1B05              sbb ax,[di]
00004DF0  0405              add al,0x5
00004DF2  1119              adc [bx+di],bx
00004DF4  0D190E            or ax,0xe19
00004DF7  1212              adc dl,[bp+si]
00004DF9  101B              adc [bp+di],bl
00004DFB  050219            add ax,0x1902
00004DFE  0212              add dl,[bp+si]
00004E00  17                pop ss
00004E01  100A              adc [bp+si],cl
00004E03  101A              adc [bp+si],bl
00004E05  0012              add [bp+si],dl
00004E07  111A              adc [bp+si],bx
00004E09  051B11            add ax,0x111b
00004E0C  16                push ss
00004E0D  1A12              sbb dl,[bp+si]
00004E0F  1919              sbb [bx+di],bx
00004E11  1904              sbb [si],ax
00004E13  001B              add [bp+di],bl
00004E15  05170D            add ax,0xd17
00004E18  040A              add al,0xa
00004E1A  07                pop es
00004E1B  17                pop ss
00004E1C  0E                push cs
00004E1D  07                pop es
00004E1E  05171B            add ax,0x1b17
00004E21  0419              add al,0x19
00004E23  1B0E0E02          sbb cx,[0x20e]
00004E27  0D050D            or ax,0xd05
00004E2A  020D              add cl,[di]
00004E2C  0412              add al,0x12
00004E2E  1905              sbb [di],ax
00004E30  0A12              or dl,[bp+si]
00004E32  1B11              sbb dx,[bx+di]
00004E34  1A19              sbb bl,[bx+di]
00004E36  07                pop es
00004E37  0005              add [di],al
00004E39  0012              add [bp+si],dl
00004E3B  100D              adc [di],cl
00004E3D  0205              add al,[di]
00004E3F  0D0A1A            or ax,0x1a0a
00004E42  0A17              or dl,[bx]
00004E44  1217              adc dl,[bx]
00004E46  1900              sbb [bx+si],ax
00004E48  020A              add cl,[bp+si]
00004E4A  1A10              sbb dl,[bx+si]
00004E4C  0012              add [bp+si],dl
00004E4E  0A02              or al,[bp+si]
00004E50  051B0E            add ax,0xe1b
00004E53  110D              adc [di],cx
00004E55  1012              adc [bp+si],dl
00004E57  1205              adc al,[di]
00004E59  121A              adc bl,[bp+si]
00004E5B  191A              sbb [bp+si],bx
00004E5D  16                push ss
00004E5E  0E                push cs
00004E5F  0E                push cs
00004E60  0007              add [bx],al
00004E62  0207              add al,[bx]
00004E64  0A10              or dl,[bx+si]
00004E66  1110              adc [bx+si],dx
00004E68  0E                push cs
00004E69  1911              sbb [bx+di],dx
00004E6B  1002              adc [bp+si],al
00004E6D  000A              add [bp+si],cl
00004E6F  0A1B              or bl,[bp+di]
00004E71  0A04              or al,[si]
00004E73  0D1A1B            or ax,0x1b1a
00004E76  1104              adc [si],ax
00004E78  111A              adc [bp+si],bx
00004E7A  1904              sbb [si],ax
00004E7C  05120D            add ax,0xd12
00004E7F  021B              add bl,[bp+di]
00004E81  1B1A              sbb bx,[bp+si]
00004E83  07                pop es
00004E84  17                pop ss
00004E85  041B              add al,0x1b
00004E87  021A              add bl,[bp+si]
00004E89  101A              adc [bp+si],bl
00004E8B  0400              add al,0x0
00004E8D  1A160E16          sbb dl,[0x160e]
00004E91  16                push ss
00004E92  19161000          sbb [0x10],dx
00004E96  110A              adc [bp+si],cx
00004E98  020D              add cl,[di]
00004E9A  0D100A            or ax,0xa10
00004E9D  1210              adc dl,[bx+si]
00004E9F  1210              adc dl,[bx+si]
00004EA1  1A160D17          sbb dl,[0x170d]
00004EA5  0E                push cs
00004EA6  0E                push cs
00004EA7  07                pop es
00004EA8  1005              adc [di],al
00004EAA  190E111A          sbb [0x1a11],cx
00004EAE  0E                push cs
00004EAF  1900              sbb [bx+si],ax
00004EB1  07                pop es
00004EB2  121A              adc bl,[bp+si]
00004EB4  001A              add [bp+si],bl
00004EB6  0419              add al,0x19
00004EB8  1A05              sbb al,[di]
00004EBA  021A              add bl,[bp+si]
00004EBC  02160216          add dl,[0x1602]
00004EC0  16                push ss
00004EC1  0D0517            or ax,0x1705
00004EC4  190D              sbb [di],cx
00004EC6  051916            add ax,0x1619
00004EC9  0D0416            or ax,0x1604
00004ECC  1019              adc [bx+di],bl
00004ECE  0D000D            or ax,0xd00
00004ED1  1A160719          sbb dl,[0x1907]
00004ED5  120A              adc cl,[bp+si]
00004ED7  0011              add [bx+di],dl
00004ED9  0019              add [bx+di],bl
00004EDB  120A              adc cl,[bp+si]
00004EDD  020E171B          add cl,[0x1b17]
00004EE1  1A0E100A          sbb cl,[0xa10]
00004EE5  0D1904            or ax,0x419
00004EE8  07                pop es
00004EE9  1107              adc [bx],ax
00004EEB  0404              add al,0x4
00004EED  1A05              sbb al,[di]
00004EEF  07                pop es
00004EF0  1912              sbb [bp+si],dx
00004EF2  0A1B              or bl,[bp+di]
00004EF4  050A10            add ax,0x100a
00004EF7  02160011          add dl,[0x1100]
00004EFB  051702            add ax,0x217
00004EFE  121B              adc bl,[bp+di]
00004F00  050D02            add ax,0x20d
00004F03  1B11              sbb dx,[bx+di]
00004F05  16                push ss
00004F06  16                push ss
00004F07  16                push ss
00004F08  1B16191A          sbb dx,[0x1a19]
00004F0C  0400              add al,0x0
00004F0E  07                pop es
00004F0F  0E                push cs
00004F10  1A12              sbb dl,[bp+si]
00004F12  17                pop ss
00004F13  021B              add bl,[bp+di]
00004F15  1205              adc al,[di]
00004F17  110D              adc [di],cx
00004F19  16                push ss
00004F1A  17                pop ss
00004F1B  021B              add bl,[bp+di]
00004F1D  021A              add bl,[bp+si]
00004F1F  1B1B              sbb bx,[bp+di]
00004F21  110D              adc [di],cx
00004F23  051A02            add ax,0x21a
00004F26  0D0A1A            or ax,0x1a0a
00004F29  190D              sbb [di],cx
00004F2B  0019              add [bx+di],bl
00004F2D  16                push ss
00004F2E  1A0A              sbb cl,[bp+si]
00004F30  1A0D              sbb cl,[di]
00004F32  1111              adc [bx+di],dx
00004F34  0E                push cs
00004F35  1004              adc [si],al
00004F37  1902              sbb [bp+si],ax
00004F39  0000              add [bx+si],al
00004F3B  110E040A          adc [0xa04],cx
00004F3F  0412              add al,0x12
00004F41  1B12              sbb dx,[bp+si]
00004F43  020A              add cl,[bp+si]
00004F45  1902              sbb [bp+si],ax
00004F47  17                pop ss
00004F48  07                pop es
00004F49  0A1A              or bl,[bp+si]
00004F4B  0007              add [bx],al
00004F4D  050A16            add ax,0x160a
00004F50  1A0D              sbb cl,[di]
00004F52  1A04              sbb al,[si]
00004F54  021B              add bl,[bp+di]
00004F56  0207              add al,[bx]
00004F58  16                push ss
00004F59  021B              add bl,[bp+di]
00004F5B  0A1B              or bl,[bp+di]
00004F5D  050016            add ax,0x1600
00004F60  100E1700          adc [0x17],cl
00004F64  1017              adc [bx],dl
00004F66  0E                push cs
00004F67  1A11              sbb dl,[bx+di]
00004F69  191B              sbb [bp+di],bx
00004F6B  0D1019            or ax,0x1910
00004F6E  0211              add dl,[bx+di]
00004F70  1B11              sbb dx,[bx+di]
00004F72  16                push ss
00004F73  07                pop es
00004F74  0016001A          add [0x1a00],dl
00004F78  1010              adc [bx+si],dl
00004F7A  0E                push cs
00004F7B  1B07              sbb ax,[bx]
00004F7D  0A02              or al,[bp+si]
00004F7F  101A              adc [bp+si],bl
00004F81  1916070E          sbb [0xe07],dx
00004F85  1A1A              sbb bl,[bp+si]
00004F87  0E                push cs
00004F88  120A              adc cl,[bp+si]
00004F8A  0A05              or al,[di]
00004F8C  16                push ss
00004F8D  0D110D            or ax,0xd11
00004F90  0D0D00            or ax,0xd
00004F93  1B04              sbb ax,[si]
00004F95  0019              add [bx+di],bl
00004F97  0005              add [di],al
00004F99  17                pop ss
00004F9A  05070D            add ax,0xd07
00004F9D  1912              sbb [bp+si],dx
00004F9F  0410              add al,0x10
00004FA1  051919            add ax,0x1919
00004FA4  0D1B10            or ax,0x101b
00004FA7  1902              sbb [bp+si],ax
00004FA9  0412              add al,0x12
00004FAB  1017              adc [bx],dl
00004FAD  16                push ss
00004FAE  0A04              or al,[si]
00004FB0  1A11              sbb dl,[bx+di]
00004FB2  0E                push cs
00004FB3  050407            add ax,0x704
00004FB6  16                push ss
00004FB7  0D0716            or ax,0x1607
00004FBA  1911              sbb [bx+di],dx
00004FBC  0E                push cs
00004FBD  041B              add al,0x1b
00004FBF  0E                push cs
00004FC0  17                pop ss
00004FC1  0A00              or al,[bx+si]
00004FC3  0A04              or al,[si]
00004FC5  1B05              sbb ax,[di]
00004FC7  07                pop es
00004FC8  1904              sbb [si],ax
00004FCA  0E                push cs
00004FCB  1A1B              sbb bl,[bp+di]
00004FCD  050019            add ax,0x1900
00004FD0  0410              add al,0x10
00004FD2  0E                push cs
00004FD3  0E                push cs
00004FD4  0404              add al,0x4
00004FD6  0E                push cs
00004FD7  16                push ss
00004FD8  16                push ss
00004FD9  1B00              sbb ax,[bx+si]
00004FDB  0D1A05            or ax,0x51a
00004FDE  000A              add [bp+si],cl
00004FE0  0004              add [si],al
00004FE2  021B              add bl,[bp+di]
00004FE4  0D171A            or ax,0x1a17
00004FE7  1211              adc dl,[bx+di]
00004FE9  07                pop es
00004FEA  02161B19          add dl,[0x191b]
00004FEE  0A11              or dl,[bx+di]
00004FF0  111A              adc [bp+si],bx
00004FF2  000A              add [bp+si],cl
00004FF4  1B11              sbb dx,[bx+di]
00004FF6  1211              adc dl,[bx+di]
00004FF8  07                pop es
00004FF9  0A04              or al,[si]
00004FFB  07                pop es
00004FFC  020A              add cl,[bp+si]
00004FFE  16                push ss
00004FFF  0D0404            or ax,0x404
00005002  0E                push cs
00005003  16                push ss
00005004  1202              adc al,[bp+si]
00005006  051212            add ax,0x1212
00005009  101B              adc [bp+di],bl
0000500B  110A              adc [bp+si],cx
0000500D  051019            add ax,0x1910
00005010  0007              add [bx],al
00005012  0A02              or al,[bp+si]
00005014  1105              adc [di],ax
00005016  0017              add [bx],dl
00005018  120D              adc cl,[di]
0000501A  07                pop es
0000501B  07                pop es
0000501C  1010              adc [bx+si],dl
0000501E  0010              add [bx+si],dl
00005020  051117            add ax,0x1711
00005023  17                pop ss
00005024  0416              add al,0x16
00005026  1200              adc al,[bx+si]
00005028  0E                push cs
00005029  17                pop ss
0000502A  041B              add al,0x1b
0000502C  0E                push cs
0000502D  0E                push cs
0000502E  051005            add ax,0x510
00005031  041B              add al,0x1b
00005033  0219              add bl,[bx+di]
00005035  16                push ss
00005036  110E021B          adc [0x1b02],cx
0000503A  040D              add al,0xd
0000503C  1002              adc [bp+si],al
0000503E  040D              add al,0xd
00005040  121A              adc bl,[bp+si]
00005042  050004            add ax,0x400
00005045  07                pop es
00005046  020E070E          add cl,[0xe07]
0000504A  17                pop ss
0000504B  1004              adc [si],al
0000504D  051A0A            add ax,0xa1a
00005050  1002              adc [bp+si],al
00005052  0E                push cs
00005053  07                pop es
00005054  1102              adc [bp+si],ax
00005056  00161204          add [0x412],dl
0000505A  1A0A              sbb cl,[bp+si]
0000505C  0E                push cs
0000505D  1907              sbb [bx],ax
0000505F  07                pop es
00005060  0211              add dl,[bx+di]
00005062  0E                push cs
00005063  100A              adc [bp+si],cl
00005065  07                pop es
00005066  1200              adc al,[bx+si]
00005068  0D0A19            or ax,0x190a
0000506B  0D1705            or ax,0x517
0000506E  0217              add dl,[bx]
00005070  16                push ss
00005071  1005              adc [di],al
00005073  16                push ss
00005074  1910              sbb [bx+si],dx
00005076  17                pop ss
00005077  0210              add dl,[bx+si]
00005079  05041B            add ax,0x1b04
0000507C  1217              adc dl,[bx]
0000507E  0D0A05            or ax,0x50a
00005081  0A16040A          or dl,[0xa04]
00005085  1B11              sbb dx,[bx+di]
00005087  1119              adc [bx+di],bx
00005089  0E                push cs
0000508A  07                pop es
0000508B  17                pop ss
0000508C  0A07              or al,[bx]
0000508E  17                pop ss
0000508F  1A02              sbb al,[bp+si]
00005091  100A              adc [bp+si],cl
00005093  1B19              sbb bx,[bx+di]
00005095  1B1A              sbb bx,[bp+si]
00005097  110D              adc [di],cx
00005099  0A02              or al,[bp+si]
0000509B  1019              adc [bx+di],bl
0000509D  1B02              sbb ax,[bp+si]
0000509F  07                pop es
000050A0  0404              add al,0x4
000050A2  0419              add al,0x19
000050A4  0E                push cs
000050A5  051904            add ax,0x419
000050A8  07                pop es
000050A9  1A04              sbb al,[si]
000050AB  0D1B07            or ax,0x71b
000050AE  17                pop ss
000050AF  11161B19          adc [0x191b],dx
000050B3  0A0E1B12          or cl,[0x121b]
000050B7  0A0D              or cl,[di]
000050B9  050A00            add ax,0xa
000050BC  1A19              sbb bl,[bx+di]
000050BE  05120D            add ax,0xd12
000050C1  0A0A              or cl,[bp+si]
000050C3  1B07              sbb ax,[bx]
000050C5  05190D            add ax,0xd19
000050C8  17                pop ss
000050C9  16                push ss
000050CA  0007              add [bx],al
000050CC  16                push ss
000050CD  1A0E0D0E          sbb cl,[0xe0d]
000050D1  1219              adc bl,[bx+di]
000050D3  0404              add al,0x4
000050D5  07                pop es
000050D6  17                pop ss
000050D7  040E              add al,0xe
000050D9  07                pop es
000050DA  1A1A              sbb bl,[bp+si]
000050DC  0211              add dl,[bx+di]
000050DE  051B1B            add ax,0x1b1b
000050E1  07                pop es
000050E2  021B              add bl,[bp+di]
000050E4  1B10              sbb dx,[bx+si]
000050E6  0202              add al,[bp+si]
000050E8  1B1B              sbb bx,[bp+di]
000050EA  1104              adc [si],ax
000050EC  121B              adc bl,[bp+di]
000050EE  17                pop ss
000050EF  17                pop ss
000050F0  000A              add [bp+si],cl
000050F2  0E                push cs
000050F3  0411              add al,0x11
000050F5  0E                push cs
000050F6  16                push ss
000050F7  16                push ss
000050F8  0007              add [bx],al
000050FA  1B04              sbb ax,[si]
000050FC  1105              adc [di],ax
000050FE  001A              add [bp+si],bl
00005100  0012              add [bp+si],dl
00005102  17                pop ss
00005103  1B04              sbb ax,[si]
00005105  05020A            add ax,0xa02
00005108  0D111B            or ax,0x1b11
0000510B  1212              adc dl,[bp+si]
0000510D  1210              adc dl,[bx+si]
0000510F  1211              adc dl,[bx+di]
00005111  0A05              or al,[di]
00005113  121A              adc bl,[bp+si]
00005115  1017              adc [bx],dl
00005117  0A0A              or cl,[bp+si]
00005119  1A10              sbb dl,[bx+si]
0000511B  051712            add ax,0x1217
0000511E  0D0E07            or ax,0x70e
00005121  16                push ss
00005122  16                push ss
00005123  0D1000            or ax,0x10
00005126  1A07              sbb al,[bx]
00005128  1A17              sbb dl,[bx]
0000512A  040D              add al,0xd
0000512C  0002              add [bp+si],al
0000512E  1B11              sbb dx,[bx+di]
00005130  1000              adc [bx+si],al
00005132  17                pop ss
00005133  0211              add dl,[bx+di]
00005135  07                pop es
00005136  0D1212            or ax,0x1212
00005139  0410              add al,0x10
0000513B  0217              add dl,[bx]
0000513D  121A              adc bl,[bp+si]
0000513F  0012              add [bp+si],dl
00005141  12161B10          adc dl,[0x101b]
00005145  1002              adc [bp+si],al
00005147  0A0A              or cl,[bp+si]
00005149  0D1211            or ax,0x1112
0000514C  0E                push cs
0000514D  190D              sbb [di],cx
0000514F  051612            add ax,0x1216
00005152  1012              adc [bp+si],dl
00005154  1107              adc [bx],ax
00005156  17                pop ss
00005157  041A              add al,0x1a
00005159  10160704          adc [0x407],dl
0000515D  1B10              sbb dx,[bx+si]
0000515F  0A0D              or cl,[di]
00005161  17                pop ss
00005162  1904              sbb [si],ax
00005164  1A12              sbb dl,[bp+si]
00005166  191A              sbb [bp+si],bx
00005168  1012              adc [bp+si],dl
0000516A  0E                push cs
0000516B  1B12              sbb dx,[bp+si]
0000516D  0212              add dl,[bp+si]
0000516F  0A07              or al,[bx]
00005171  16                push ss
00005172  0204              add al,[si]
00005174  1B0A              sbb cx,[bp+si]
00005176  0D1005            or ax,0x510
00005179  02161A11          add dl,[0x111a]
0000517D  100D              adc [di],cl
0000517F  1B12              sbb dx,[bp+si]
00005181  0411              add al,0x11
00005183  040D              add al,0xd
00005185  0D000E            or ax,0xe00
00005188  0D1A0A            or ax,0xa1a
0000518B  1005              adc [di],al
0000518D  1204              adc al,[si]
0000518F  041B              add al,0x1b
00005191  0D020A            or ax,0xa02
00005194  050E17            add ax,0x170e
00005197  16                push ss
00005198  000A              add [bp+si],cl
0000519A  101A              adc [bp+si],bl
0000519C  02160E10          add dl,[0x100e]
000051A0  0D161A            or ax,0x1a16
000051A3  16                push ss
000051A4  0210              add dl,[bx+si]
000051A6  190A              sbb [bp+si],cx
000051A8  191A              sbb [bp+si],bx
000051AA  17                pop ss
000051AB  1000              adc [bx+si],al
000051AD  111A              adc [bp+si],bx
000051AF  1A160411          sbb dl,[0x1104]
000051B3  100D              adc [di],cl
000051B5  1A0E0417          sbb cl,[0x1704]
000051B9  16                push ss
000051BA  17                pop ss
000051BB  110E0D12          adc [0x120d],cx
000051BF  0E                push cs
000051C0  0411              add al,0x11
000051C2  0210              add dl,[bx+si]
000051C4  16                push ss
000051C5  0400              add al,0x0
000051C7  001B              add [bp+di],bl
000051C9  191A              sbb [bp+si],bx
000051CB  1012              adc [bp+si],dl
000051CD  0A04              or al,[si]
000051CF  0204              add al,[si]
000051D1  1B17              sbb dx,[bx]
000051D3  0217              add dl,[bx]
000051D5  041A              add al,0x1a
000051D7  0A00              or al,[bx+si]
000051D9  021B              add bl,[bp+di]
000051DB  0419              add al,0x19
000051DD  17                pop ss
000051DE  0000              add [bx+si],al
000051E0  1200              adc al,[bx+si]
000051E2  07                pop es
000051E3  00160011          add [0x1100],dl
000051E7  1210              adc dl,[bx+si]
000051E9  0400              add al,0x0
000051EB  17                pop ss
000051EC  0002              add [bp+si],al
000051EE  000D              add [di],cl
000051F0  050504            add ax,0x405
000051F3  0402              add al,0x2
000051F5  1100              adc [bx+si],ax
000051F7  1000              adc [bx+si],al
000051F9  0E                push cs
000051FA  120D              adc cl,[di]
000051FC  0410              add al,0x10
000051FE  0D120E            or ax,0xe12
00005201  17                pop ss
00005202  0010              add [bx+si],dl
00005204  17                pop ss
00005205  0A05              or al,[di]
00005207  0200              add al,[bx+si]
00005209  1117              adc [bx],dx
0000520B  120D              adc cl,[di]
0000520D  0A17              or dl,[bx]
0000520F  1A161711          sbb dl,[0x1117]
00005213  1904              sbb [si],ax
00005215  0E                push cs
00005216  101B              adc [bp+di],bl
00005218  1A10              sbb dl,[bx+si]
0000521A  0404              add al,0x4
0000521C  07                pop es
0000521D  0D051A            or ax,0x1a05
00005220  0404              add al,0x4
00005222  001B              add [bp+di],bl
00005224  051211            add ax,0x1112
00005227  0D1616            or ax,0x1616
0000522A  000D              add [di],cl
0000522C  051A10            add ax,0x101a
0000522F  05021A            add ax,0x1a02
00005232  07                pop es
00005233  1012              adc [bp+si],dl
00005235  17                pop ss
00005236  17                pop ss
00005237  0010              add [bx+si],dl
00005239  051712            add ax,0x1217
0000523C  0419              add al,0x19
0000523E  07                pop es
0000523F  16                push ss
00005240  1B160019          sbb dx,[0x1900]
00005244  0E                push cs
00005245  0D0D0A            or ax,0xa0d
00005248  0D041B            or ax,0x1b04
0000524B  0E                push cs
0000524C  0E                push cs
0000524D  0012              add [bp+si],dl
0000524F  00161610          add [0x1016],dl
00005253  17                pop ss
00005254  1017              adc [bx],dl
00005256  0A0A              or cl,[bp+si]
00005258  17                pop ss
00005259  100E1604          adc [0x416],cl
0000525D  07                pop es
0000525E  0D1016            or ax,0x1610
00005261  1007              adc [bx],al
