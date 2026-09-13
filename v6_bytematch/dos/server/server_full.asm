00000000  C00357            rol byte [bp+di],byte 0x57
00000003  1E                push ds
00000004  06                push es
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
00000046  E8782A            call 0x2ac1
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
000000D2  E9AF03            jmp 0x484
000000D5  0009              add [bx+di],cl
000000D7  01B10153          add [bx+di+0x5301],si
000000DB  52                push dx
000000DC  56                push si
000000DD  43                inc bx
000000DE  4F                dec di
000000DF  52                push dx
000000E0  45                inc bp
000000E1  2E53              cs push bx
000000E3  4C                dec sp
000000E4  4D                dec bp
000000E5  0000              add [bx+si],al
000000E7  46                inc si
000000E8  41                inc cx
000000E9  53                push bx
000000EA  54                push sp
000000EB  4F                dec di
000000EC  4E                dec si
000000ED  2E53              cs push bx
000000EF  4C                dec sp
000000F0  4D                dec bp
000000F1  0001              add [bx+di],al
000000F3  46                inc si
000000F4  41                inc cx
000000F5  53                push bx
000000F6  54                push sp
000000F7  4F                dec di
000000F8  46                inc si
000000F9  46                inc si
000000FA  2E53              cs push bx
000000FC  4C                dec sp
000000FD  4D                dec bp
000000FE  0000              add [bx+si],al
00000100  41                inc cx
00000101  43                inc bx
00000102  4C                dec sp
00000103  43                inc bx
00000104  48                dec ax
00000105  4F                dec di
00000106  4E                dec si
00000107  2E53              cs push bx
00000109  4C                dec sp
0000010A  4D                dec bp
0000010B  0001              add [bx+di],al
0000010D  41                inc cx
0000010E  43                inc bx
0000010F  4C                dec sp
00000110  43                inc bx
00000111  48                dec ax
00000112  4F                dec di
00000113  46                inc si
00000114  46                inc si
00000115  2E53              cs push bx
00000117  4C                dec sp
00000118  4D                dec bp
00000119  0000              add [bx+si],al
0000011B  46                inc si
0000011C  4E                dec si
0000011D  42                inc dx
0000011E  4F                dec di
0000011F  4E                dec si
00000120  2E53              cs push bx
00000122  4C                dec sp
00000123  4D                dec bp
00000124  0001              add [bx+di],al
00000126  46                inc si
00000127  4E                dec si
00000128  42                inc dx
00000129  4F                dec di
0000012A  46                inc si
0000012B  46                inc si
0000012C  2E53              cs push bx
0000012E  4C                dec sp
0000012F  4D                dec bp
00000130  0000              add [bx+si],al
00000132  46                inc si
00000133  41                inc cx
00000134  54                push sp
00000135  4F                dec di
00000136  4E                dec si
00000137  2E53              cs push bx
00000139  4C                dec sp
0000013A  4D                dec bp
0000013B  0001              add [bx+di],al
0000013D  46                inc si
0000013E  41                inc cx
0000013F  54                push sp
00000140  4F                dec di
00000141  46                inc si
00000142  46                inc si
00000143  2E53              cs push bx
00000145  4C                dec sp
00000146  4D                dec bp
00000147  0000              add [bx+si],al
00000149  53                push bx
0000014A  52                push dx
0000014B  56                push si
0000014C  44                inc sp
0000014D  47                inc di
0000014E  4F                dec di
0000014F  4E                dec si
00000150  2E53              cs push bx
00000152  4C                dec sp
00000153  4D                dec bp
00000154  0001              add [bx+di],al
00000156  53                push bx
00000157  52                push dx
00000158  56                push si
00000159  44                inc sp
0000015A  47                inc di
0000015B  4F                dec di
0000015C  46                inc si
0000015D  46                inc si
0000015E  2E53              cs push bx
00000160  4C                dec sp
00000161  4D                dec bp
00000162  0000              add [bx+si],al
00000164  52                push dx
00000165  50                push ax
00000166  4C                dec sp
00000167  4F                dec di
00000168  4E                dec si
00000169  2E53              cs push bx
0000016B  4C                dec sp
0000016C  4D                dec bp
0000016D  0001              add [bx+di],al
0000016F  52                push dx
00000170  50                push ax
00000171  4C                dec sp
00000172  4F                dec di
00000173  46                inc si
00000174  46                inc si
00000175  2E53              cs push bx
00000177  4C                dec sp
00000178  4D                dec bp
00000179  0000              add [bx+si],al
0000017B  41                inc cx
0000017C  55                push bp
0000017D  44                inc sp
0000017E  49                dec cx
0000017F  54                push sp
00000180  4F                dec di
00000181  4E                dec si
00000182  2E53              cs push bx
00000184  4C                dec sp
00000185  4D                dec bp
00000186  0001              add [bx+di],al
00000188  41                inc cx
00000189  55                push bp
0000018A  44                inc sp
0000018B  49                dec cx
0000018C  54                push sp
0000018D  4F                dec di
0000018E  46                inc si
0000018F  46                inc si
00000190  2E53              cs push bx
00000192  4C                dec sp
00000193  4D                dec bp
00000194  0000              add [bx+si],al
00000196  4C                dec sp
00000197  4F                dec di
00000198  47                inc di
00000199  49                dec cx
0000019A  4E                dec si
0000019B  4F                dec di
0000019C  4E                dec si
0000019D  2E53              cs push bx
0000019F  4C                dec sp
000001A0  4D                dec bp
000001A1  0001              add [bx+di],al
000001A3  4C                dec sp
000001A4  4F                dec di
000001A5  47                inc di
000001A6  49                dec cx
000001A7  4E                dec si
000001A8  4F                dec di
000001A9  46                inc si
000001AA  46                inc si
000001AB  2E53              cs push bx
000001AD  4C                dec sp
000001AE  4D                dec bp
000001AF  0000              add [bx+si],al
000001B1  52                push dx
000001B2  41                inc cx
000001B3  43                inc bx
000001B4  43                inc bx
000001B5  54                push sp
000001B6  4F                dec di
000001B7  4E                dec si
000001B8  2E53              cs push bx
000001BA  4C                dec sp
000001BB  4D                dec bp
000001BC  0001              add [bx+di],al
000001BE  52                push dx
000001BF  41                inc cx
000001C0  43                inc bx
000001C1  43                inc bx
000001C2  54                push sp
000001C3  4F                dec di
000001C4  46                inc si
000001C5  46                inc si
000001C6  2E53              cs push bx
000001C8  4C                dec sp
000001C9  4D                dec bp
000001CA  0000              add [bx+si],al
000001CC  41                inc cx
000001CD  43                inc bx
000001CE  4C                dec sp
000001CF  53                push bx
000001D0  4F                dec di
000001D1  4E                dec si
000001D2  2E53              cs push bx
000001D4  4C                dec sp
000001D5  4D                dec bp
000001D6  0001              add [bx+di],al
000001D8  41                inc cx
000001D9  43                inc bx
000001DA  4C                dec sp
000001DB  53                push bx
000001DC  4F                dec di
000001DD  46                inc si
000001DE  46                inc si
000001DF  2E53              cs push bx
000001E1  4C                dec sp
000001E2  4D                dec bp
000001E3  0000              add [bx+si],al
000001E5  46                inc si
000001E6  41                inc cx
000001E7  43                inc bx
000001E8  4C                dec sp
000001E9  53                push bx
000001EA  4F                dec di
000001EB  4E                dec si
000001EC  2E53              cs push bx
000001EE  4C                dec sp
000001EF  4D                dec bp
000001F0  0001              add [bx+di],al
000001F2  46                inc si
000001F3  41                inc cx
000001F4  43                inc bx
000001F5  4C                dec sp
000001F6  53                push bx
000001F7  4F                dec di
000001F8  46                inc si
000001F9  46                inc si
000001FA  2E53              cs push bx
000001FC  4C                dec sp
000001FD  4D                dec bp
000001FE  0000              add [bx+si],al
00000200  41                inc cx
00000201  4C                dec sp
00000202  49                dec cx
00000203  41                inc cx
00000204  53                push bx
00000205  4F                dec di
00000206  4E                dec si
00000207  2E53              cs push bx
00000209  4C                dec sp
0000020A  4D                dec bp
0000020B  0001              add [bx+di],al
0000020D  41                inc cx
0000020E  4C                dec sp
0000020F  49                dec cx
00000210  41                inc cx
00000211  53                push bx
00000212  4F                dec di
00000213  46                inc si
00000214  46                inc si
00000215  2E53              cs push bx
00000217  4C                dec sp
00000218  4D                dec bp
00000219  0000              add [bx+si],al
0000021B  50                push ax
0000021C  52                push dx
0000021D  49                dec cx
0000021E  4E                dec si
0000021F  54                push sp
00000220  4F                dec di
00000221  4E                dec si
00000222  2E53              cs push bx
00000224  4C                dec sp
00000225  4D                dec bp
00000226  0001              add [bx+di],al
00000228  50                push ax
00000229  52                push dx
0000022A  49                dec cx
0000022B  4E                dec si
0000022C  54                push sp
0000022D  4F                dec di
0000022E  46                inc si
0000022F  46                inc si
00000230  2E53              cs push bx
00000232  4C                dec sp
00000233  4D                dec bp
00000234  0000              add [bx+si],al
00000236  49                dec cx
00000237  4D                dec bp
00000238  4D                dec bp
00000239  45                inc bp
0000023A  44                inc sp
0000023B  4F                dec di
0000023C  4E                dec si
0000023D  2E53              cs push bx
0000023F  4C                dec sp
00000240  4D                dec bp
00000241  0001              add [bx+di],al
00000243  49                dec cx
00000244  4D                dec bp
00000245  4D                dec bp
00000246  45                inc bp
00000247  44                inc sp
00000248  4F                dec di
00000249  46                inc si
0000024A  46                inc si
0000024B  2E53              cs push bx
0000024D  4C                dec sp
0000024E  4D                dec bp
0000024F  0000              add [bx+si],al
00000251  53                push bx
00000252  50                push ax
00000253  4F                dec di
00000254  4F                dec di
00000255  4C                dec sp
00000256  4F                dec di
00000257  4E                dec si
00000258  2E53              cs push bx
0000025A  4C                dec sp
0000025B  4D                dec bp
0000025C  0001              add [bx+di],al
0000025E  53                push bx
0000025F  50                push ax
00000260  4F                dec di
00000261  4F                dec di
00000262  4C                dec sp
00000263  4F                dec di
00000264  46                inc si
00000265  46                inc si
00000266  2E53              cs push bx
00000268  4C                dec sp
00000269  4D                dec bp
0000026A  0000              add [bx+si],al
0000026C  53                push bx
0000026D  52                push dx
0000026E  56                push si
0000026F  51                push cx
00000270  4F                dec di
00000271  4E                dec si
00000272  2E53              cs push bx
00000274  4C                dec sp
00000275  4D                dec bp
00000276  0001              add [bx+di],al
00000278  53                push bx
00000279  52                push dx
0000027A  56                push si
0000027B  51                push cx
0000027C  4F                dec di
0000027D  46                inc si
0000027E  46                inc si
0000027F  2E53              cs push bx
00000281  4C                dec sp
00000282  4D                dec bp
00000283  0000              add [bx+si],al
00000285  53                push bx
00000286  54                push sp
00000287  52                push dx
00000288  45                inc bp
00000289  41                inc cx
0000028A  4D                dec bp
0000028B  4F                dec di
0000028C  4E                dec si
0000028D  2E53              cs push bx
0000028F  4C                dec sp
00000290  4D                dec bp
00000291  0001              add [bx+di],al
00000293  53                push bx
00000294  54                push sp
00000295  52                push dx
00000296  45                inc bp
00000297  41                inc cx
00000298  4D                dec bp
00000299  4F                dec di
0000029A  46                inc si
0000029B  2E53              cs push bx
0000029D  4C                dec sp
0000029E  4D                dec bp
0000029F  0000              add [bx+si],al
000002A1  52                push dx
000002A2  50                push ax
000002A3  44                inc sp
000002A4  4F                dec di
000002A5  4E                dec si
000002A6  2E53              cs push bx
000002A8  4C                dec sp
000002A9  4D                dec bp
000002AA  0001              add [bx+di],al
000002AC  52                push dx
000002AD  50                push ax
000002AE  44                inc sp
000002AF  4F                dec di
000002B0  46                inc si
000002B1  46                inc si
000002B2  2E53              cs push bx
000002B4  4C                dec sp
000002B5  4D                dec bp
000002B6  0000              add [bx+si],al
000002B8  43                inc bx
000002B9  54                push sp
000002BA  52                push dx
000002BB  4C                dec sp
000002BC  4F                dec di
000002BD  4E                dec si
000002BE  2E53              cs push bx
000002C0  4C                dec sp
000002C1  4D                dec bp
000002C2  0001              add [bx+di],al
000002C4  43                inc bx
000002C5  54                push sp
000002C6  52                push dx
000002C7  4C                dec sp
000002C8  4F                dec di
000002C9  46                inc si
000002CA  46                inc si
000002CB  2E53              cs push bx
000002CD  4C                dec sp
000002CE  4D                dec bp
000002CF  0000              add [bx+si],al
000002D1  50                push ax
000002D2  4F                dec di
000002D3  50                push ax
000002D4  55                push bp
000002D5  50                push ax
000002D6  4F                dec di
000002D7  4E                dec si
000002D8  2E53              cs push bx
000002DA  4C                dec sp
000002DB  4D                dec bp
000002DC  0001              add [bx+di],al
000002DE  50                push ax
000002DF  4F                dec di
000002E0  50                push ax
000002E1  55                push bp
000002E2  50                push ax
000002E3  4F                dec di
000002E4  46                inc si
000002E5  46                inc si
000002E6  2E53              cs push bx
000002E8  4C                dec sp
000002E9  4D                dec bp
000002EA  0000              add [bx+si],al
000002EC  50                push ax
000002ED  4F                dec di
000002EE  50                push ax
000002EF  49                dec cx
000002F0  54                push sp
000002F1  4F                dec di
000002F2  4E                dec si
000002F3  2E53              cs push bx
000002F5  4C                dec sp
000002F6  4D                dec bp
000002F7  0001              add [bx+di],al
000002F9  50                push ax
000002FA  4F                dec di
000002FB  50                push ax
000002FC  49                dec cx
000002FD  54                push sp
000002FE  4F                dec di
000002FF  46                inc si
00000300  46                inc si
00000301  2E53              cs push bx
00000303  4C                dec sp
00000304  4D                dec bp
00000305  0001              add [bx+di],al
00000307  4D                dec bp
00000308  49                dec cx
00000309  53                push bx
0000030A  43                inc bx
0000030B  4F                dec di
0000030C  4E                dec si
0000030D  2E53              cs push bx
0000030F  4C                dec sp
00000310  4D                dec bp
00000311  0000              add [bx+si],al
00000313  4D                dec bp
00000314  49                dec cx
00000315  53                push bx
00000316  43                inc bx
00000317  4F                dec di
00000318  46                inc si
00000319  46                inc si
0000031A  2E53              cs push bx
0000031C  4C                dec sp
0000031D  4D                dec bp
0000031E  0001              add [bx+di],al
00000320  4D                dec bp
00000321  41                inc cx
00000322  49                dec cx
00000323  4E                dec si
00000324  54                push sp
00000325  4F                dec di
00000326  4E                dec si
00000327  2E53              cs push bx
00000329  4C                dec sp
0000032A  4D                dec bp
0000032B  0000              add [bx+si],al
0000032D  4D                dec bp
0000032E  41                inc cx
0000032F  49                dec cx
00000330  4E                dec si
00000331  54                push sp
00000332  4F                dec di
00000333  46                inc si
00000334  46                inc si
00000335  2E53              cs push bx
00000337  4C                dec sp
00000338  4D                dec bp
00000339  0000              add [bx+si],al
0000033B  53                push bx
0000033C  48                dec ax
0000033D  41                inc cx
0000033E  52                push dx
0000033F  45                inc bp
00000340  4F                dec di
00000341  4E                dec si
00000342  2E53              cs push bx
00000344  4C                dec sp
00000345  4D                dec bp
00000346  0001              add [bx+di],al
00000348  53                push bx
00000349  48                dec ax
0000034A  41                inc cx
0000034B  52                push dx
0000034C  45                inc bp
0000034D  4F                dec di
0000034E  46                inc si
0000034F  46                inc si
00000350  2E53              cs push bx
00000352  4C                dec sp
00000353  4D                dec bp
00000354  0000              add [bx+si],al
00000356  43                inc bx
00000357  41                inc cx
00000358  43                inc bx
00000359  48                dec ax
0000035A  45                inc bp
0000035B  4F                dec di
0000035C  4E                dec si
0000035D  2E53              cs push bx
0000035F  4C                dec sp
00000360  4D                dec bp
00000361  0001              add [bx+di],al
00000363  43                inc bx
00000364  41                inc cx
00000365  43                inc bx
00000366  48                dec ax
00000367  45                inc bp
00000368  4F                dec di
00000369  46                inc si
0000036A  46                inc si
0000036B  2E53              cs push bx
0000036D  4C                dec sp
0000036E  4D                dec bp
0000036F  0001              add [bx+di],al
00000371  53                push bx
00000372  52                push dx
00000373  56                push si
00000374  4C                dec sp
00000375  41                inc cx
00000376  53                push bx
00000377  54                push sp
00000378  2E53              cs push bx
0000037A  4C                dec sp
0000037B  4D                dec bp
0000037C  00FF              add bh,bh
0000037E  002E8C06          add [0x68c],ch
00000382  D500              aad 0x0
00000384  E8E302            call 0x66a
00000387  8CC8              mov ax,cs
00000389  8ED8              mov ds,ax
0000038B  8EC0              mov es,ax
0000038D  BE320B            mov si,0xb32
00000390  E8FC25            call 0x298f
00000393  2EA09300          mov al,[cs:0x93]
00000397  BF9B12            mov di,0x129b
0000039A  E8C927            call 0x2b66
0000039D  2EA09200          mov al,[cs:0x92]
000003A1  D0E8              shr al,1
000003A3  D0E8              shr al,1
000003A5  D0E8              shr al,1
000003A7  D0E8              shr al,1
000003A9  E8AC27            call 0x2b58
000003AC  2EA19000          mov ax,[cs:0x90]
000003B0  2E8B169200        mov dx,[cs:0x92]
000003B5  83E20F            and dx,byte +0xf
000003B8  BF9F12            mov di,0x129f
000003BB  E8AD25            call 0x296b
000003BE  BE8D12            mov si,0x128d
000003C1  E8CB25            call 0x298f
000003C4  E8CC05            call 0x993
000003C7  7509              jnz 0x3d2
000003C9  B014              mov al,0x14
000003CB  8D362B0E          lea si,[0xe2b]
000003CF  E96D02            jmp 0x63f
000003D2  B430              mov ah,0x30
000003D4  CD21              int 0x21
000003D6  2EA36F1A          mov [cs:0x1a6f],ax
000003DA  E85F22            call 0x263c
000003DD  7220              jc 0x3ff
000003DF  2EA15A21          mov ax,[cs:0x215a]
000003E3  85C0              test ax,ax
000003E5  7418              jz 0x3ff
000003E7  3D0600            cmp ax,0x6
000003EA  7713              ja 0x3ff
000003EC  2EA15C21          mov ax,[cs:0x215c]
000003F0  85C0              test ax,ax
000003F2  740B              jz 0x3ff
000003F4  3D2000            cmp ax,0x20
000003F7  7706              ja 0x3ff
000003F9  2EC6066E1A01      mov byte [cs:0x1a6e],0x1
000003FF  33C9              xor cx,cx
00000401  2E803E10232F      cmp byte [cs:0x2310],0x2f
00000407  7411              jz 0x41a
00000409  2E803E10233F      cmp byte [cs:0x2310],0x3f
0000040F  7409              jz 0x41a
00000411  2E803E102340      cmp byte [cs:0x2310],0x40
00000417  7401              jz 0x41a
00000419  41                inc cx
0000041A  BFD31C            mov di,0x1cd3
0000041D  B80000            mov ax,0x0
00000420  8CCB              mov bx,cs
00000422  E8F326            call 0x2b18
00000425  BEC312            mov si,0x12c3
00000428  E89928            call 0x2cc4
0000042B  730A              jnc 0x437
0000042D  B00D              mov al,0xd
0000042F  33D2              xor dx,dx
00000431  8BF2              mov si,dx
00000433  B44C              mov ah,0x4c
00000435  CD21              int 0x21
00000437  8D36B00A          lea si,[0xab0]
0000043B  B80300            mov ax,0x3
0000043E  E8CB05            call 0xa0c
00000441  8D364C0E          lea si,[0xe4c]
00000445  B015              mov al,0x15
00000447  7303              jnc 0x44c
00000449  E9F301            jmp 0x63f
0000044C  2E803E791A01      cmp byte [cs:0x1a79],0x1
00000452  7513              jnz 0x467
00000454  0E                push cs
00000455  1F                pop ds
00000456  BEE811            mov si,0x11e8
00000459  E83325            call 0x298f
0000045C  BFD31C            mov di,0x1cd3
0000045F  E87A25            call 0x29dc
00000462  B00E              mov al,0xe
00000464  E9DF01            jmp 0x646
00000467  2E803E671A01      cmp byte [cs:0x1a67],0x1
0000046D  750D              jnz 0x47c
0000046F  0E                push cs
00000470  1F                pop ds
00000471  BE750B            mov si,0xb75
00000474  E81825            call 0x298f
00000477  B00E              mov al,0xe
00000479  E9CA01            jmp 0x646
0000047C  2E803E811A00      cmp byte [cs:0x1a81],0x0
00000482  7512              jnz 0x496
00000484  B80016            mov ax,0x1600
00000487  CD2F              int 0x2f
00000489  84C0              test al,al
0000048B  7409              jz 0x496
0000048D  B016              mov al,0x16
0000048F  8D36700E          lea si,[0xe70]
00000493  E9A901            jmp 0x63f
00000496  2E803E681A01      cmp byte [cs:0x1a68],0x1
0000049C  7403              jz 0x4a1
0000049E  E99F00            jmp 0x540
000004A1  B800B8            mov ax,0xb800
000004A4  CD2F              int 0x2f
000004A6  84C0              test al,al
000004A8  746E              jz 0x518
000004AA  F6C308            test bl,0x8
000004AD  7469              jz 0x518
000004AF  F6C340            test bl,0x40
000004B2  746C              jz 0x520
000004B4  B81090            mov ax,0x9010
000004B7  CD2A              int 0x2a
000004B9  84C0              test al,al
000004BB  7435              jz 0x4f2
000004BD  BEFE0C            mov si,0xcfe
000004C0  1E                push ds
000004C1  0E                push cs
000004C2  1F                pop ds
000004C3  E8C924            call 0x298f
000004C6  1F                pop ds
000004C7  B90000            mov cx,0x0
000004CA  BA0000            mov dx,0x0
000004CD  BE910D            mov si,0xd91
000004D0  1E                push ds
000004D1  0E                push cs
000004D2  1F                pop ds
000004D3  B80E90            mov ax,0x900e
000004D6  CD2A              int 0x2a
000004D8  1F                pop ds
000004D9  BE0E0F            mov si,0xf0e
000004DC  E8B024            call 0x298f
000004DF  B8004C            mov ax,0x4c00
000004E2  CD21              int 0x21
000004E4  0E                push cs
000004E5  1F                pop ds
000004E6  E8D324            call 0x29bc
000004E9  58                pop ax
000004EA  33D2              xor dx,dx
000004EC  8BF2              mov si,dx
000004EE  B44C              mov ah,0x4c
000004F0  CD21              int 0x21
000004F2  BE770D            mov si,0xd77
000004F5  E89724            call 0x298f
000004F8  B90000            mov cx,0x0
000004FB  BA0000            mov dx,0x0
000004FE  BE910D            mov si,0xd91
00000501  1E                push ds
00000502  0E                push cs
00000503  1F                pop ds
00000504  B80E90            mov ax,0x900e
00000507  CD2A              int 0x2a
00000509  1F                pop ds
0000050A  B300              mov bl,0x0
0000050C  B81090            mov ax,0x9010
0000050F  CD2A              int 0x2a
00000511  80FBFF            cmp bl,0xff
00000514  74F4              jz 0x50a
00000516  EB1D              jmp short 0x535
00000518  BEAA0D            mov si,0xdaa
0000051B  B013              mov al,0x13
0000051D  50                push ax
0000051E  EBC4              jmp short 0x4e4
00000520  B300              mov bl,0x0
00000522  B81090            mov ax,0x9010
00000525  CD2A              int 0x2a
00000527  80FBFF            cmp bl,0xff
0000052A  75EC              jnz 0x518
0000052C  84C0              test al,al
0000052E  758D              jnz 0x4bd
00000530  B81190            mov ax,0x9011
00000533  CD2A              int 0x2a
00000535  BED90E            mov si,0xed9
00000538  E85424            call 0x298f
0000053B  B8004C            mov ax,0x4c00
0000053E  CD21              int 0x21
00000540  2E803E6C1A01      cmp byte [cs:0x1a6c],0x1
00000546  7408              jz 0x550
00000548  BEC10B            mov si,0xbc1
0000054B  B003              mov al,0x3
0000054D  E9EF00            jmp 0x63f
00000550  2E803E6D1A01      cmp byte [cs:0x1a6d],0x1
00000556  7408              jz 0x560
00000558  BE2B0C            mov si,0xc2b
0000055B  B004              mov al,0x4
0000055D  E9DF00            jmp 0x63f
00000560  2E803E6E1A01      cmp byte [cs:0x1a6e],0x1
00000566  7408              jz 0x570
00000568  BE520C            mov si,0xc52
0000056B  B005              mov al,0x5
0000056D  E9CF00            jmp 0x63f
00000570  E82A01            call 0x69d
00000573  B80001            mov ax,0x100
00000576  CD2F              int 0x2f
00000578  FEC0              inc al
0000057A  7508              jnz 0x584
0000057C  B007              mov al,0x7
0000057E  BE010E            mov si,0xe01
00000581  E9BB00            jmp 0x63f
00000584  B80011            mov ax,0x1100
00000587  CD2F              int 0x2f
00000589  FEC0              inc al
0000058B  7408              jz 0x595
0000058D  B001              mov al,0x1
0000058F  BE940B            mov si,0xb94
00000592  E9AA00            jmp 0x63f
00000595  06                push es
00000596  B8FF5F            mov ax,0x5fff
00000599  CD21              int 0x21
0000059B  7210              jc 0x5ad
0000059D  8BFB              mov di,bx
0000059F  1E                push ds
000005A0  0E                push cs
000005A1  1F                pop ds
000005A2  BE8600            mov si,0x86
000005A5  B90800            mov cx,0x8
000005A8  F3A6              repe cmpsb
000005AA  1F                pop ds
000005AB  7409              jz 0x5b6
000005AD  07                pop es
000005AE  B00F              mov al,0xf
000005B0  BEED10            mov si,0x10ed
000005B3  E98900            jmp 0x63f
000005B6  07                pop es
000005B7  B800B8            mov ax,0xb800
000005BA  CD2F              int 0x2f
000005BC  84C0              test al,al
000005BE  7442              jz 0x602
000005C0  F6C308            test bl,0x8
000005C3  743D              jz 0x602
000005C5  F6C340            test bl,0x40
000005C8  7525              jnz 0x5ef
000005CA  B300              mov bl,0x0
000005CC  B81090            mov ax,0x9010
000005CF  CD2A              int 0x2a
000005D1  80FBFF            cmp bl,0xff
000005D4  752C              jnz 0x602
000005D6  84C0              test al,al
000005D8  750D              jnz 0x5e7
000005DA  B81190            mov ax,0x9011
000005DD  CD2A              int 0x2a
000005DF  BED00D            mov si,0xdd0
000005E2  E8AA23            call 0x298f
000005E5  EB1B              jmp short 0x602
000005E7  BEDC0C            mov si,0xcdc
000005EA  B011              mov al,0x11
000005EC  EB51              jmp short 0x63f
000005EE  90                nop
000005EF  BAC90C            mov dx,0xcc9
000005F2  B8005E            mov ax,0x5e00
000005F5  CD21              int 0x21
000005F7  BE8C0C            mov si,0xc8c
000005FA  E89223            call 0x298f
000005FD  B8024C            mov ax,0x4c02
00000600  CD21              int 0x21
00000602  B809B8            mov ax,0xb809
00000605  CD2F              int 0x2f
00000607  3D0006            cmp ax,0x600
0000060A  7408              jz 0x614
0000060C  BE4510            mov si,0x1045
0000060F  B00A              mov al,0xa
00000611  EB2C              jmp short 0x63f
00000613  90                nop
00000614  2E8E06D500        mov es,[cs:0xd5]
00000619  E86500            call 0x681
0000061C  BE0000            mov si,0x0
0000061F  8EDE              mov ds,si
00000621  BEDE01            mov si,0x1de
00000624  B9A602            mov cx,0x2a6
00000627  2EA0801A          mov al,[cs:0x1a80]
0000062B  D0E0              shl al,1
0000062D  2E803E7E1A00      cmp byte [cs:0x1a7e],0x0
00000633  7405              jz 0x63a
00000635  2E0A067F1A        or al,[cs:0x1a7f]
0000063A  EA0000C103        jmp 0x3c1:0x0
0000063F  50                push ax
00000640  0E                push cs
00000641  1F                pop ds
00000642  E87723            call 0x29bc
00000645  58                pop ax
00000646  33D2              xor dx,dx
00000648  8BF2              mov si,dx
0000064A  B44C              mov ah,0x4c
0000064C  CD21              int 0x21
0000064E  53                push bx
0000064F  52                push dx
00000650  1E                push ds
00000651  06                push es
00000652  0E                push cs
00000653  1F                pop ds
00000654  E83823            call 0x298f
00000657  07                pop es
00000658  1F                pop ds
00000659  5A                pop dx
0000065A  5B                pop bx
0000065B  C3                ret
0000065C  803C00            cmp byte [si],0x0
0000065F  7407              jz 0x668
00000661  2EC606B72101      mov byte [cs:0x21b7],0x1
00000667  CB                retf
00000668  F9                stc
00000669  CB                retf
0000066A  1E                push ds
0000066B  06                push es
0000066C  06                push es
0000066D  1F                pop ds
0000066E  BE8000            mov si,0x80
00000671  BF0000            mov di,0x0
00000674  8EC7              mov es,di
00000676  BFD700            mov di,0xd7
00000679  B94000            mov cx,0x40
0000067C  F3A5              rep movsw
0000067E  07                pop es
0000067F  1F                pop ds
00000680  C3                ret
00000681  BF8000            mov di,0x80
00000684  BE0000            mov si,0x0
00000687  8EDE              mov ds,si
00000689  BED700            mov si,0xd7
0000068C  B94000            mov cx,0x40
0000068F  F3A5              rep movsw
00000691  BE8600            mov si,0x86
00000694  B91000            mov cx,0x10
00000697  BF5C00            mov di,0x5c
0000069A  F3A5              rep movsw
0000069C  C3                ret
0000069D  2E803E8B2200      cmp byte [cs:0x228b],0x0
000006A3  7425              jz 0x6ca
000006A5  E82502            call 0x8cd
000006A8  7220              jc 0x6ca
000006AA  2EC6063F0401      mov byte [cs:0x43f],0x1
000006B0  2EC6064C0400      mov byte [cs:0x44c],0x0
000006B6  2E803E8C2200      cmp byte [cs:0x228c],0x0
000006BC  740C              jz 0x6ca
000006BE  2EC6065A0401      mov byte [cs:0x45a],0x1
000006C4  2EC606670400      mov byte [cs:0x467],0x0
000006CA  2E803E702101      cmp byte [cs:0x2170],0x1
000006D0  740C              jz 0x6de
000006D2  2EC606EB0101      mov byte [cs:0x1eb],0x1
000006D8  2EC606F70100      mov byte [cs:0x1f7],0x0
000006DE  2E803E6E2101      cmp byte [cs:0x216e],0x1
000006E4  760C              jna 0x6f2
000006E6  2EC606040201      mov byte [cs:0x204],0x1
000006EC  2EC606110200      mov byte [cs:0x211],0x0
000006F2  2E833E392200      cmp word [cs:0x2239],byte +0x0
000006F8  740C              jz 0x706
000006FA  2EC6061F0201      mov byte [cs:0x21f],0x1
00000700  2EC6062A0200      mov byte [cs:0x22a],0x0
00000706  2E803E6D2100      cmp byte [cs:0x216d],0x0
0000070C  740C              jz 0x71a
0000070E  2EC606360201      mov byte [cs:0x236],0x1
00000714  2EC606410200      mov byte [cs:0x241],0x0
0000071A  2E803E5E2101      cmp byte [cs:0x215e],0x1
00000720  740C              jz 0x72e
00000722  2EC6064D0201      mov byte [cs:0x24d],0x1
00000728  2EC6065A0200      mov byte [cs:0x25a],0x0
0000072E  2E803E5F2100      cmp byte [cs:0x215f],0x0
00000734  740C              jz 0x742
00000736  2EC606680201      mov byte [cs:0x268],0x1
0000073C  2EC606730200      mov byte [cs:0x273],0x0
00000742  2E803E872200      cmp byte [cs:0x2287],0x0
00000748  740C              jz 0x756
0000074A  2EC6067F0201      mov byte [cs:0x27f],0x1
00000750  2EC6068C0200      mov byte [cs:0x28c],0x0
00000756  2E803E7E2200      cmp byte [cs:0x227e],0x0
0000075C  7420              jz 0x77e
0000075E  2EC6069A0201      mov byte [cs:0x29a],0x1
00000764  2EC606A70200      mov byte [cs:0x2a7],0x0
0000076A  2E803EB72100      cmp byte [cs:0x21b7],0x0
00000770  740C              jz 0x77e
00000772  2EC606B50201      mov byte [cs:0x2b5],0x1
00000778  2EC606C20200      mov byte [cs:0x2c2],0x0
0000077E  2E803E7F2200      cmp byte [cs:0x227f],0x0
00000784  7434              jz 0x7ba
00000786  2EC606D00201      mov byte [cs:0x2d0],0x1
0000078C  2EC606DC0200      mov byte [cs:0x2dc],0x0
00000792  2E803E812200      cmp byte [cs:0x2281],0x0
00000798  740C              jz 0x7a6
0000079A  2EC606040301      mov byte [cs:0x304],0x1
000007A0  2EC606110300      mov byte [cs:0x311],0x0
000007A6  2E803E802200      cmp byte [cs:0x2280],0x0
000007AC  740C              jz 0x7ba
000007AE  2EC606E90201      mov byte [cs:0x2e9],0x1
000007B4  2EC606F60200      mov byte [cs:0x2f6],0x0
000007BA  2E803E822200      cmp byte [cs:0x2282],0x0
000007C0  7503              jnz 0x7c5
000007C2  E98C00            jmp 0x851
000007C5  2EC606862201      mov byte [cs:0x2286],0x1
000007CB  2EC606852201      mov byte [cs:0x2285],0x1
000007D1  2EC6061F0301      mov byte [cs:0x31f],0x1
000007D7  2EC6062C0300      mov byte [cs:0x32c],0x0
000007DD  2E803E832200      cmp byte [cs:0x2283],0x0
000007E3  740C              jz 0x7f1
000007E5  2EC6063A0301      mov byte [cs:0x33a],0x1
000007EB  2EC606470300      mov byte [cs:0x347],0x0
000007F1  2E803E852200      cmp byte [cs:0x2285],0x0
000007F7  740C              jz 0x805
000007F9  2EC606550301      mov byte [cs:0x355],0x1
000007FF  2EC606620300      mov byte [cs:0x362],0x0
00000805  2E803E822200      cmp byte [cs:0x2282],0x0
0000080B  7508              jnz 0x815
0000080D  2E803E852200      cmp byte [cs:0x2285],0x0
00000813  743C              jz 0x851
00000815  2E803E862200      cmp byte [cs:0x2286],0x0
0000081B  7434              jz 0x851
0000081D  2EC606700301      mov byte [cs:0x370],0x1
00000823  2EC6067C0300      mov byte [cs:0x37c],0x0
00000829  2E803E882200      cmp byte [cs:0x2288],0x0
0000082F  740C              jz 0x83d
00000831  2EC606A50301      mov byte [cs:0x3a5],0x1
00000837  2EC606B00300      mov byte [cs:0x3b0],0x0
0000083D  2E803E842200      cmp byte [cs:0x2284],0x0
00000843  740C              jz 0x851
00000845  2EC606890301      mov byte [cs:0x389],0x1
0000084B  2EC606970300      mov byte [cs:0x397],0x0
00000851  2E803E892200      cmp byte [cs:0x2289],0x0
00000857  740C              jz 0x865
00000859  2EC606BC0301      mov byte [cs:0x3bc],0x1
0000085F  2EC606C80300      mov byte [cs:0x3c8],0x0
00000865  2E803E8A2200      cmp byte [cs:0x228a],0x0
0000086B  740C              jz 0x879
0000086D  2EC606D50301      mov byte [cs:0x3d5],0x1
00000873  2EC606E20300      mov byte [cs:0x3e2],0x0
00000879  2E803E8E2200      cmp byte [cs:0x228e],0x0
0000087F  740C              jz 0x88d
00000881  2EC6060B0401      mov byte [cs:0x40b],0x1
00000887  2EC606170400      mov byte [cs:0x417],0x0
0000088D  2EA07E22          mov al,[cs:0x227e]
00000891  D0E0              shl al,1
00000893  2E0A068A22        or al,[cs:0x228a]
00000898  D0E0              shl al,1
0000089A  2E0A068722        or al,[cs:0x2287]
0000089F  D0E0              shl al,1
000008A1  2E0A06A503        or al,[cs:0x3a5]
000008A6  740C              jz 0x8b4
000008A8  2EC606F00301      mov byte [cs:0x3f0],0x1
000008AE  2EC606FD0300      mov byte [cs:0x3fd],0x0
000008B4  2E803E8D2200      cmp byte [cs:0x228d],0x0
000008BA  750C              jnz 0x8c8
000008BC  2EC606240400      mov byte [cs:0x424],0x0
000008C2  2EC606310401      mov byte [cs:0x431],0x1
000008C8  C3                ret
000008C9  0000              add [bx+si],al
000008CB  0000              add [bx+si],al
000008CD  50                push ax
000008CE  53                push bx
000008CF  51                push cx
000008D0  52                push dx
000008D1  56                push si
000008D2  1E                push ds
000008D3  06                push es
000008D4  B90000            mov cx,0x0
000008D7  8ED9              mov ds,cx
000008D9  B80010            mov ax,0x1000
000008DC  CD2F              int 0x2f
000008DE  0AC0              or al,al
000008E0  740A              jz 0x8ec
000008E2  8D36A319          lea si,[0x19a3]
000008E6  E865FD            call 0x64e
000008E9  E98400            jmp 0x970
000008EC  1E                push ds
000008ED  B8065D            mov ax,0x5d06
000008F0  CD21              int 0x21
000008F2  1E                push ds
000008F3  07                pop es
000008F4  83C6E3            add si,byte -0x1d
000008F7  1F                pop ds
000008F8  26803C00          cmp byte [es:si],0x0
000008FC  7560              jnz 0x95e
000008FE  B452              mov ah,0x52
00000900  CD21              int 0x21
00000902  26C45F04          les bx,[es:bx+0x4]
00000906  891ECE09          mov [0x9ce],bx
0000090A  8C06D009          mov [0x9d0],es
0000090E  268B77C8          mov si,[es:bx-0x38]
00000912  268B4FCA          mov cx,[es:bx-0x36]
00000916  263B77CC          cmp si,[es:bx-0x34]
0000091A  7542              jnz 0x95e
0000091C  263B4FCE          cmp cx,[es:bx-0x32]
00000920  753C              jnz 0x95e
00000922  8EC1              mov es,cx
00000924  26813CF8CB        cmp word [es:si],0xcbf8
00000929  7533              jnz 0x95e
0000092B  06                push es
0000092C  56                push si
0000092D  C41ECE09          les bx,[0x9ce]
00000931  26C747C8830A      mov word [es:bx-0x38],0xa83
00000937  268C4FCA          mov [es:bx-0x36],cs
0000093B  B8003D            mov ax,0x3d00
0000093E  1E                push ds
0000093F  0E                push cs
00000940  1F                pop ds
00000941  8D167E0A          lea dx,[0xa7e]
00000945  CD21              int 0x21
00000947  1F                pop ds
00000948  7206              jc 0x950
0000094A  8BD8              mov bx,ax
0000094C  B43E              mov ah,0x3e
0000094E  CD21              int 0x21
00000950  5E                pop si
00000951  59                pop cx
00000952  C41ECE09          les bx,[0x9ce]
00000956  268977C8          mov [es:bx-0x38],si
0000095A  26894FCA          mov [es:bx-0x36],cx
0000095E  8D36EF19          lea si,[0x19ef]
00000962  2E803E820A00      cmp byte [cs:0xa82],0x0
00000968  7503              jnz 0x96d
0000096A  E979FF            jmp 0x8e6
0000096D  F8                clc
0000096E  EB01              jmp short 0x971
00000970  F9                stc
00000971  07                pop es
00000972  1F                pop ds
00000973  5E                pop si
00000974  5A                pop dx
00000975  59                pop cx
00000976  5B                pop bx
00000977  58                pop ax
00000978  C3                ret
00000979  43                inc bx
0000097A  4F                dec di
0000097B  4E                dec si
0000097C  0000              add [bx+si],al
0000097E  2EC606820A01      mov byte [cs:0xa82],0x1
00000984  F8                clc
00000985  CB                retf
00000986  52                push dx
00000987  50                push ax
00000988  44                inc sp
00000989  204150            and [bx+di+0x50],al
0000098C  49                dec cx
0000098D  205553            and [di+0x53],dl
00000990  45                inc bp
00000991  52                push dx
00000992  00B800AE          add [bx+si-0x5200],bh
00000996  33D2              xor dx,dx
00000998  8D368B0A          lea si,[0xa8b]
0000099C  CD21              int 0x21
0000099E  3CFF              cmp al,0xff
000009A0  C3                ret
000009A1  C808B200          enter 0xb208,0x0
000009A5  0A00              or al,[bx+si]
000009A7  B050              mov al,0x50
000009A9  44                inc sp
000009AA  42                inc dx
000009AB  50                push ax
000009AC  44                inc sp
000009AD  42                inc dx
000009AE  0001              add [bx+di],al
000009B0  1E                push ds
000009B1  0303              add ax,[bp+di]
000009B3  3C00              cmp al,0x0
000009B5  0003              add [bp+di],al
000009B7  0001              add [bx+di],al
000009B9  06                push es
000009BA  005252            add [bp+si+0x52],dl
000009BD  52                push dx
000009BE  0300              add ax,[bx+si]
000009C0  0000              add [bx+si],al
000009C2  0000              add [bx+si],al
000009C4  F5                cmc
000009C5  6450              fs push ax
000009C7  8AD0              mov dl,al
000009C9  8BC5              mov ax,bp
000009CB  32D0              xor dl,al
000009CD  8AF2              mov dh,dl
000009CF  02F6              add dh,dh
000009D1  9C                pushf
000009D2  32D6              xor dl,dh
000009D4  32F6              xor dh,dh
000009D6  9D                popf
000009D7  7A02              jpe 0x9db
000009D9  B603              mov dh,0x3
000009DB  7303              jnc 0x9e0
000009DD  80F602            xor dh,0x2
000009E0  8AC2              mov al,dl
000009E2  8AEC              mov ch,ah
000009E4  8AE6              mov ah,dh
000009E6  D0EE              shr dh,1
000009E8  B106              mov cl,0x6
000009EA  D3E0              shl ax,cl
000009EC  0AC6              or al,dh
000009EE  32C5              xor al,ch
000009F0  8BE8              mov bp,ax
000009F2  58                pop ax
000009F3  C3                ret
000009F4  50                push ax
000009F5  51                push cx
000009F6  52                push dx
000009F7  FC                cld
000009F8  B91C00            mov cx,0x1c
000009FB  33ED              xor bp,bp
000009FD  AC                lodsb
000009FE  51                push cx
000009FF  E8C4FF            call 0x9c6
00000A02  59                pop cx
00000A03  E2F8              loop 0x9fd
00000A05  5A                pop dx
00000A06  59                pop cx
00000A07  58                pop ax
00000A08  C3                ret
00000A09  50                push ax
00000A0A  55                push bp
00000A0B  56                push si
00000A0C  1E                push ds
00000A0D  3B440E            cmp ax,[si+0xe]
00000A10  750A              jnz 0xa1c
00000A12  FC                cld
00000A13  E8DEFF            call 0x9f4
00000A16  F8                clc
00000A17  AD                lodsw
00000A18  3BC5              cmp ax,bp
00000A1A  7401              jz 0xa1d
00000A1C  F9                stc
00000A1D  1F                pop ds
00000A1E  5E                pop si
00000A1F  5D                pop bp
00000A20  58                pop ax
00000A21  C3                ret
00000A22  F8                clc
00000A23  3B4409            cmp ax,[si+0x9]
00000A26  7401              jz 0xa29
00000A28  F9                stc
00000A29  C3                ret
00000A2A  4C                dec sp
00000A2B  41                inc cx
00000A2C  4E                dec si
00000A2D  7461              jz 0xa90
00000A2F  7374              jnc 0xaa5
00000A31  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000A36  2920              sub [bx+si],sp
00000A38  53                push bx
00000A39  657276            gs jc 0xab2
00000A3C  657220            gs jc 0xa5f
00000A3F  56                push si
00000A40  362E3030          xor [cs:bx+si],dh
00000A44  2F                das
00000A45  41                inc cx
00000A46  49                dec cx
00000A47  202D              and [di],ch
00000A49  2028              and [bx+si],ch
00000A4B  43                inc bx
00000A4C  2920              sub [bx+si],sp
00000A4E  43                inc bx
00000A4F  6F                outsw
00000A50  7079              jo 0xacb
00000A52  7269              jc 0xabd
00000A54  67687420          push word 0x2074
00000A58  3139              xor [bx+di],di
00000A5A  3934              cmp [si],si
00000A5C  204152            and [bx+di+0x52],al
00000A5F  54                push sp
00000A60  49                dec cx
00000A61  53                push bx
00000A62  4F                dec di
00000A63  46                inc si
00000A64  54                push sp
00000A65  20496E            and [bx+di+0x6e],cl
00000A68  632E0D0A          arpl [0xa0d],bp
00000A6C  0020              add [bx+si],ah
00000A6E  2D2D2D            sub ax,0x2d2d
00000A71  205345            and [bp+di+0x45],dl
00000A74  52                push dx
00000A75  56                push si
00000A76  45                inc bp
00000A77  52                push dx
00000A78  205636            and [bp+0x36],dl
00000A7B  2E3030            xor [cs:bx+si],dh
00000A7E  2E3038            xor [cs:bx+si],bh
00000A81  322F              xor ch,[bx]
00000A83  41                inc cx
00000A84  49                dec cx
00000A85  202D              and [di],ch
00000A87  2D2D0D            sub ax,0xd2d
00000A8A  0A00              or al,[bx+si]
00000A8C  52                push dx
00000A8D  45                inc bp
00000A8E  44                inc sp
00000A8F  49                dec cx
00000A90  52                push dx
00000A91  206D75            and [di+0x75],ch
00000A94  7374              jnc 0xb0a
00000A96  206265            and [bp+si+0x65],ah
00000A99  207275            and [bp+si+0x75],dh
00000A9C  6E                outsb
00000A9D  206265            and [bp+si+0x65],ah
00000AA0  666F              outsd
00000AA2  7265              jc 0xb09
00000AA4  205345            and [bp+di+0x45],dl
00000AA7  52                push dx
00000AA8  56                push si
00000AA9  45                inc bp
00000AAA  52                push dx
00000AAB  206973            and [bx+di+0x73],ch
00000AAE  207374            and [bp+di+0x74],dh
00000AB1  61                popa
00000AB2  7274              jc 0xb28
00000AB4  65640D0A00        fs or ax,0xa
00000AB9  43                inc bx
00000ABA  61                popa
00000ABB  6E                outsb
00000ABC  27                daa
00000ABD  7420              jz 0xadf
00000ABF  6C                insb
00000AC0  6F                outsw
00000AC1  636174            arpl [bx+di+0x74],sp
00000AC4  65206E65          and [gs:bp+0x65],ch
00000AC8  7477              jz 0xb41
00000ACA  6F                outsw
00000ACB  726B              jc 0xb38
00000ACD  20636F            and [bp+di+0x6f],ah
00000AD0  6E                outsb
00000AD1  7472              jz 0xb45
00000AD3  6F                outsw
00000AD4  6C                insb
00000AD5  206469            and [si+0x69],ah
00000AD8  7265              jc 0xb3f
00000ADA  63746F            arpl [si+0x6f],si
00000ADD  7279              jc 0xb58
00000ADF  37                aaa
00000AE0  01B22041          add [bp+si+0x4120],si
00000AE4  00B00D0A          add [bx+si+0xa0d],dh
00000AE8  004361            add [bp+di+0x61],al
00000AEB  6E                outsb
00000AEC  27                daa
00000AED  7420              jz 0xb0f
00000AEF  66696E6420736572  imul ebp,[bp+0x64],dword 0x72657320
00000AF7  7665              jna 0xb5e
00000AF9  7220              jc 0xb1b
00000AFB  636F6E            arpl [bx+0x6e],bp
00000AFE  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
00000B06  6F                outsw
00000B07  6E                outsb
00000B08  206669            and [bp+0x69],ah
00000B0B  6C                insb
00000B0C  650D0A00          gs or ax,0xa
00000B10  42                inc dx
00000B11  61                popa
00000B12  646C              fs insb
00000B14  7920              jns 0xb36
00000B16  666F              outsd
00000B18  726D              jc 0xb87
00000B1A  61                popa
00000B1B  7474              jz 0xb91
00000B1D  6564207365        and [fs:bp+di+0x65],dh
00000B22  7276              jc 0xb9a
00000B24  657220            gs jc 0xb47
00000B27  636F6E            arpl [bx+0x6e],bp
00000B2A  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
00000B32  6F                outsw
00000B33  6E                outsb
00000B34  206669            and [bp+0x69],ah
00000B37  6C                insb
00000B38  65202D            and [gs:di],ch
00000B3B  205275            and [bp+si+0x75],dl
00000B3E  6E                outsb
00000B3F  204E45            and [bp+0x45],cl
00000B42  54                push sp
00000B43  5F                pop di
00000B44  4D                dec bp
00000B45  47                inc di
00000B46  52                push dx
00000B47  0D0A00            or ax,0xa
00000B4A  07                pop es
00000B4B  0D0A4C            or ax,0x4c0a
00000B4E  41                inc cx
00000B4F  4E                dec si
00000B50  7461              jz 0xbb3
00000B52  7374              jnc 0xbc8
00000B54  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000B59  2920              sub [bx+si],sp
00000B5B  53                push bx
00000B5C  657276            gs jc 0xbd5
00000B5F  657220            gs jc 0xb82
00000B62  697320616C        imul si,[bp+di+0x20],word 0x6c61
00000B67  7265              jc 0xbce
00000B69  61                popa
00000B6A  647920            fs jns 0xb8d
00000B6D  7374              jnc 0xbe3
00000B6F  61                popa
00000B70  7274              jc 0xbe6
00000B72  6564207769        and [fs:bx+0x69],dh
00000B77  7468              jz 0xbe1
00000B79  206D61            and [di+0x61],ch
00000B7C  636869            arpl [bx+si+0x69],bp
00000B7F  6E                outsb
00000B80  65206E61          and [gs:bp+0x61],ch
00000B84  6D                insw
00000B85  6520A100B2        and [gs:bx+di-0x4e00],ah
00000B8A  0010              add [bx+si],dl
00000B8C  00B00D0A          add [bx+si+0xa0d],dh
00000B90  005072            add [bx+si+0x72],dl
00000B93  657669            gs jna 0xbff
00000B96  6F                outsw
00000B97  7573              jnz 0xc0c
00000B99  207365            and [bp+di+0x65],dh
00000B9C  7276              jc 0xc14
00000B9E  657220            gs jc 0xbc1
00000BA1  6D                insw
00000BA2  7573              jnz 0xc17
00000BA4  7420              jz 0xbc6
00000BA6  626520            bound sp,[di+0x20]
00000BA9  7265              jc 0xc10
00000BAB  6D                insw
00000BAC  6F                outsw
00000BAD  7665              jna 0xc14
00000BAF  640D0A00          fs or ax,0xa
00000BB3  57                push di
00000BB4  41                inc cx
00000BB5  52                push dx
00000BB6  4E                dec si
00000BB7  49                dec cx
00000BB8  4E                dec si
00000BB9  47                inc di
00000BBA  3A20              cmp ah,[bx+si]
00000BBC  4D                dec bp
00000BBD  61                popa
00000BBE  7920              jns 0xbe0
00000BC0  6E                outsb
00000BC1  6F                outsw
00000BC2  7420              jz 0xbe4
00000BC4  626520            bound sp,[di+0x20]
00000BC7  61                popa
00000BC8  626C65            bound bp,[si+0x65]
00000BCB  20746F            and [si+0x6f],dh
00000BCE  207265            and [bp+si+0x65],dh
00000BD1  6C                insb
00000BD2  6561              gs popa
00000BD4  7365              jnc 0xc3b
00000BD6  206D65            and [di+0x65],ch
00000BD9  6D                insw
00000BDA  6F                outsw
00000BDB  7279              jc 0xc56
00000BDD  2028              and [bx+si],ch
00000BDF  696E746572        imul bp,[bp+0x74],word 0x7265
00000BE4  7275              jc 0xc5b
00000BE6  7074              jo 0xc5c
00000BE8  7320              jnc 0xc0a
00000BEA  7265              jc 0xc51
00000BEC  2D686F            sub ax,0x6f68
00000BEF  6F                outsw
00000BF0  6B656429          imul sp,[di+0x64],byte +0x29
00000BF4  0D0A00            or ax,0xa
00000BF7  55                push bp
00000BF8  6E                outsb
00000BF9  61                popa
00000BFA  626C65            bound bp,[si+0x65]
00000BFD  20746F            and [si+0x6f],dh
00000C00  206C6F            and [si+0x6f],ch
00000C03  61                popa
00000C04  642000            and [fs:bx+si],al
00000C07  46                inc si
00000C08  696C65206E        imul bp,[si+0x65],word 0x6e20
00000C0D  6F                outsw
00000C0E  7420              jz 0xc30
00000C10  666F              outsd
00000C12  756E              jnz 0xc82
00000C14  640D0A00          fs or ax,0xa
00000C18  4E                dec si
00000C19  6F                outsw
00000C1A  7420              jz 0xc3c
00000C1C  656E              gs outsb
00000C1E  6F                outsw
00000C1F  7567              jnz 0xc88
00000C21  68206D            push word 0x6d20
00000C24  656D              gs insw
00000C26  6F                outsw
00000C27  7279              jc 0xca2
00000C29  0D0A00            or ax,0xa
00000C2C  53                push bx
00000C2D  687574            push word 0x7475
00000C30  7469              jz 0xc9b
00000C32  6E                outsb
00000C33  6720646F77        and [dword edi+ebp*2+0x77],ah
00000C38  6E                outsb
00000C39  207365            and [bp+di+0x65],dh
00000C3C  7276              jc 0xcb4
00000C3E  65722E            gs jc 0xc6f
00000C41  2E2E0D0A00        cs or ax,0xa
00000C46  53                push bx
00000C47  657276            gs jc 0xcc0
00000C4A  657220            gs jc 0xc6d
00000C4D  6973207368        imul si,[bp+di+0x20],word 0x6873
00000C52  7574              jnz 0xcc8
00000C54  7469              jz 0xcbf
00000C56  6E                outsb
00000C57  6720646F77        and [dword edi+ebp*2+0x77],ah
00000C5C  6E                outsb
00000C5D  2E004C41          add [cs:si+0x41],cl
00000C61  4E                dec si
00000C62  7461              jz 0xcc5
00000C64  7374              jnc 0xcda
00000C66  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000C6B  2920              sub [bx+si],sp
00000C6D  53                push bx
00000C6E  657276            gs jc 0xce7
00000C71  657220            gs jc 0xc94
00000C74  6973206E6F        imul si,[bp+di+0x20],word 0x6f6e
00000C79  7420              jz 0xc9b
00000C7B  6C                insb
00000C7C  6F                outsw
00000C7D  61                popa
00000C7E  6465642E0D0A00    cs or ax,0xa
00000C85  57                push di
00000C86  41                inc cx
00000C87  52                push dx
00000C88  4E                dec si
00000C89  49                dec cx
00000C8A  4E                dec si
00000C8B  47                inc di
00000C8C  3A20              cmp ah,[bx+si]
00000C8E  7072              jo 0xd02
00000C90  657669            gs jna 0xcfc
00000C93  6F                outsw
00000C94  7573              jnz 0xd09
00000C96  205345            and [bp+di+0x45],dl
00000C99  52                push dx
00000C9A  56                push si
00000C9B  45                inc bp
00000C9C  52                push dx
00000C9D  20756E            and [di+0x6e],dh
00000CA0  6C                insb
00000CA1  6F                outsw
00000CA2  61                popa
00000CA3  646564206672      and [fs:bp+0x72],ah
00000CA9  6F                outsw
00000CAA  6D                insw
00000CAB  206D65            and [di+0x65],ch
00000CAE  6D                insw
00000CAF  6F                outsw
00000CB0  7279              jc 0xd2b
00000CB2  2E0D0A00          cs or ax,0xa
00000CB6  53                push bx
00000CB7  657276            gs jc 0xd30
00000CBA  657220            gs jc 0xcdd
00000CBD  63616E            arpl [bx+di+0x6e],sp
00000CC0  6E                outsb
00000CC1  6F                outsw
00000CC2  7420              jz 0xce4
00000CC4  626520            bound sp,[di+0x20]
00000CC7  696E737461        imul bp,[bp+0x73],word 0x6174
00000CCC  6C                insb
00000CCD  6C                insb
00000CCE  6564206166        and [fs:bx+di+0x66],ah
00000CD3  7465              jz 0xd3a
00000CD5  7220              jc 0xcf7
00000CD7  50                push ax
00000CD8  52                push dx
00000CD9  49                dec cx
00000CDA  4E                dec si
00000CDB  54                push sp
00000CDC  2E0D0A00          cs or ax,0xa
00000CE0  53                push bx
00000CE1  657276            gs jc 0xd5a
00000CE4  657220            gs jc 0xd07
00000CE7  63616E            arpl [bx+di+0x6e],sp
00000CEA  6E                outsb
00000CEB  6F                outsw
00000CEC  7420              jz 0xd0e
00000CEE  626520            bound sp,[di+0x20]
00000CF1  7275              jc 0xd68
00000CF3  6E                outsb
00000CF4  207769            and [bx+0x69],dh
00000CF7  7468              jz 0xd61
00000CF9  205250            and [bp+si+0x50],dl
00000CFC  53                push bx
00000CFD  2E0D0A00          cs or ax,0xa
00000D01  45                inc bp
00000D02  7865              js 0xd69
00000D04  637574            arpl [di+0x74],si
00000D07  61                popa
00000D08  626C65            bound bp,[si+0x65]
00000D0B  206669            and [bp+0x69],ah
00000D0E  6C                insb
00000D0F  65206861          and [gs:bx+si+0x61],ch
00000D13  7320              jnc 0xd35
00000D15  626565            bound sp,[di+0x65]
00000D18  6E                outsb
00000D19  20616C            and [bx+di+0x6c],ah
00000D1C  7465              jz 0xd83
00000D1E  7265              jc 0xd85
00000D20  642E0D0A00        cs or ax,0xa
00000D25  4C                dec sp
00000D26  41                inc cx
00000D27  4E                dec si
00000D28  7461              jz 0xd8b
00000D2A  7374              jnc 0xda0
00000D2C  6963205365        imul sp,[bp+di+0x20],word 0x6553
00000D31  7276              jc 0xda9
00000D33  657220            gs jc 0xd56
00000D36  636F6D            arpl [bx+0x6d],bp
00000D39  6D                insw
00000D3A  61                popa
00000D3B  6E                outsb
00000D3C  64206E6F          and [fs:bp+0x6f],ch
00000D40  7420              jz 0xd62
00000D42  61                popa
00000D43  6C                insb
00000D44  6C                insb
00000D45  6F                outsw
00000D46  7765              ja 0xdad
00000D48  6420696E          and [fs:bx+di+0x6e],ch
00000D4C  205749            and [bx+0x49],dl
00000D4F  4E                dec si
00000D50  44                inc sp
00000D51  4F                dec di
00000D52  57                push di
00000D53  53                push bx
00000D54  2E0D0A00          cs or ax,0xa
00000D58  CA01B2            retf 0xb201
00000D5B  200B              and [bp+di],cl
00000D5D  00B02D2D          add [bx+si+0x2d2d],dh
00000D61  2D2D20            sub ax,0x202d
00000D64  4C                dec sp
00000D65  41                inc cx
00000D66  4E                dec si
00000D67  7461              jz 0xdca
00000D69  7374              jnc 0xddf
00000D6B  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000D70  2920              sub [bx+si],sp
00000D72  53                push bx
00000D73  657276            gs jc 0xdec
00000D76  657220            gs jc 0xd99
00000D79  49                dec cx
00000D7A  6E                outsb
00000D7B  7374              jnc 0xdf1
00000D7D  61                popa
00000D7E  6C                insb
00000D7F  6C                insb
00000D80  6564202D          and [fs:di],ch
00000D84  2D2D2D            sub ax,0x2d2d
00000D87  0D0A00            or ax,0xa
00000D8A  2B00              sub ax,[bx+si]
00000D8C  B220              mov dl,0x20
00000D8E  0C00              or al,0x0
00000D90  B02D              mov al,0x2d
00000D92  2D2D2D            sub ax,0x2d2d
00000D95  204C41            and [si+0x41],cl
00000D98  4E                dec si
00000D99  7461              jz 0xdfc
00000D9B  7374              jnc 0xe11
00000D9D  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000DA2  2920              sub [bx+si],sp
00000DA4  53                push bx
00000DA5  657276            gs jc 0xe1e
00000DA8  657220            gs jc 0xdcb
00000DAB  7265              jc 0xe12
00000DAD  6D                insw
00000DAE  6F                outsw
00000DAF  7665              jna 0xe16
00000DB1  64202D            and [fs:di],ch
00000DB4  2D2D2D            sub ax,0x2d2d
00000DB7  0D0A00            or ax,0xa
00000DBA  2900              sub [bx+si],ax
00000DBC  B220              mov dl,0x20
00000DBE  0C00              or al,0x0
00000DC0  B02D              mov al,0x2d
00000DC2  2D2D2D            sub ax,0x2d2d
00000DC5  204C41            and [si+0x41],cl
00000DC8  4E                dec si
00000DC9  7461              jz 0xe2c
00000DCB  7374              jnc 0xe41
00000DCD  6963202852        imul sp,[bp+di+0x20],word 0x5228
00000DD2  2920              sub [bx+si],sp
00000DD4  53                push bx
00000DD5  657276            gs jc 0xe4e
00000DD8  657220            gs jc 0xdfb
00000DDB  7368              jnc 0xe45
00000DDD  7574              jnz 0xe53
00000DDF  20646F            and [si+0x6f],ah
00000DE2  776E              ja 0xe52
00000DE4  202D              and [di],ch
00000DE6  2D2D2D            sub ax,0x2d2d
00000DE9  0D0A00            or ax,0xa
00000DEC  42                inc dx
00000DED  61                popa
00000DEE  646C              fs insb
00000DF0  7920              jns 0xe12
00000DF2  666F              outsd
00000DF4  726D              jc 0xe63
00000DF6  61                popa
00000DF7  7474              jz 0xe6d
00000DF9  6564207175        and [fs:bx+di+0x75],dh
00000DFE  657565            gs jnz 0xe66
00000E01  20636F            and [bp+di+0x6f],ah
00000E04  6E                outsb
00000E05  7472              jz 0xe79
00000E07  6F                outsw
00000E08  6C                insb
00000E09  206669            and [bp+0x69],ah
00000E0C  6C                insb
00000E0D  65202D            and [gs:di],ch
00000E10  205275            and [bp+si+0x75],dl
00000E13  6E                outsb
00000E14  204E45            and [bp+0x45],cl
00000E17  54                push sp
00000E18  5F                pop di
00000E19  4D                dec bp
00000E1A  47                inc di
00000E1B  52                push dx
00000E1C  0D0A00            or ax,0xa
00000E1F  59                pop cx
00000E20  6F                outsw
00000E21  7572              jnz 0xe95
00000E23  204E45            and [bp+0x45],cl
00000E26  54                push sp
00000E27  42                inc dx
00000E28  49                dec cx
00000E29  4F                dec di
00000E2A  53                push bx
00000E2B  206973            and [bx+di+0x73],ch
00000E2E  20696E            and [bx+di+0x6e],ch
00000E31  636F6D            arpl [bx+0x6d],bp
00000E34  7061              jo 0xe97
00000E36  7469              jz 0xea1
00000E38  626C65            bound bp,[si+0x65]
00000E3B  2C20              sub al,0x20
00000E3D  4E                dec si
00000E3E  45                inc bp
00000E3F  54                push sp
00000E40  42                inc dx
00000E41  49                dec cx
00000E42  4F                dec di
00000E43  53                push bx
00000E44  206572            and [di+0x72],ah
00000E47  726F              jc 0xeb8
00000E49  7220              jc 0xe6b
00000E4B  686848            push word 0x4868
00000E4E  0D0A00            or ax,0xa
00000E51  4E                dec si
00000E52  6F                outsw
00000E53  7420              jz 0xe75
00000E55  656E              gs outsb
00000E57  6F                outsw
00000E58  7567              jnz 0xec1
00000E5A  68206D            push word 0x6d20
00000E5D  656D              gs insw
00000E5F  6F                outsw
00000E60  7279              jc 0xedb
00000E62  202D              and [di],ch
00000E64  205265            and [bp+si+0x65],dl
00000E67  647563            fs jnz 0xecd
00000E6A  65206C6F          and [gs:si+0x6f],ch
00000E6E  67696E73206F      imul bp,[esi+0x73],word 0x6f20
00000E74  7220              jc 0xe96
00000E76  7265              jc 0xedd
00000E78  7175              jno 0xeef
00000E7A  657374            gs jnc 0xef1
00000E7D  207369            and [bp+di+0x69],dh
00000E80  7A65              jpe 0xee7
00000E82  0D0A00            or ax,0xa
00000E85  4E                dec si
00000E86  6F                outsw
00000E87  7420              jz 0xea9
00000E89  656E              gs outsb
00000E8B  6F                outsw
00000E8C  7567              jnz 0xef5
00000E8E  68206D            push word 0x6d20
00000E91  656D              gs insw
00000E93  6F                outsw
00000E94  7279              jc 0xf0f
00000E96  202D              and [di],ch
00000E98  205265            and [bp+si+0x65],dl
00000E9B  647563            fs jnz 0xf01
00000E9E  65206669          and [gs:bp+0x69],ah
00000EA2  6C                insb
00000EA3  65732C            gs jnc 0xed2
00000EA6  207461            and [si+0x61],dh
00000EA9  736B              jnc 0xf16
00000EAB  732C              jnc 0xed9
00000EAD  206275            and [bp+si+0x75],ah
00000EB0  6666657220        gs o32 jc 0xed5
00000EB5  7369              jnc 0xf20
00000EB7  7A65              jpe 0xf1e
00000EB9  2C0D              sub al,0xd
00000EBB  0A20              or ah,[bx+si]
00000EBD  2020              and [bx+si],ah
00000EBF  2020              and [bx+si],ah
00000EC1  2020              and [bx+si],ah
00000EC3  7261              jc 0xf26
00000EC5  6E                outsb
00000EC6  646F              fs outsw
00000EC8  6D                insw
00000EC9  2D6163            sub ax,0x6361
00000ECC  636573            arpl [di+0x73],sp
00000ECF  7320              jnc 0xef1
00000ED1  636163            arpl [bx+di+0x63],sp
00000ED4  68652C            push word 0x2c65
00000ED7  206F72            and [bx+0x72],ch
00000EDA  207265            and [bp+si+0x65],dh
00000EDD  736F              jnc 0xf4e
00000EDF  7572              jnz 0xf53
00000EE1  636520            arpl [di+0x20],sp
00000EE4  636163            arpl [bx+di+0x63],sp
00000EE7  68650D            push word 0xd65
00000EEA  0A00              or al,[bx+si]
00000EEC  52                push dx
00000EED  65646972656374    imul si,[fs:bp+si+0x65],word 0x7463
00000EF4  6F                outsw
00000EF5  7220              jc 0xf17
00000EF7  7665              jna 0xf5e
00000EF9  7273              jc 0xf6e
00000EFB  696F6E2064        imul bp,[bx+0x6e],word 0x6420
00000F00  6F                outsw
00000F01  657320            gs jnc 0xf24
00000F04  6E                outsb
00000F05  6F                outsw
00000F06  7420              jz 0xf28
00000F08  6D                insw
00000F09  61                popa
00000F0A  7463              jz 0xf6f
00000F0C  682073            push word 0x7320
00000F0F  657276            gs jc 0xf88
00000F12  657220            gs jc 0xf35
00000F15  7665              jna 0xf7c
00000F17  7273              jc 0xf8c
00000F19  696F6E0D0A        imul bp,[bx+0x6e],word 0xa0d
00000F1E  00496E            add [bx+di+0x6e],cl
00000F21  7375              jnc 0xf98
00000F23  6666696369656E74  imul esp,[bp+di+0x69],dword 0x20746e65
         -20
00000F2C  4E                dec si
00000F2D  45                inc bp
00000F2E  54                push sp
00000F2F  42                inc dx
00000F30  49                dec cx
00000F31  4F                dec di
00000F32  53                push bx
00000F33  207265            and [bp+si+0x65],dh
00000F36  736F              jnc 0xfa7
00000F38  7572              jnz 0xfac
00000F3A  636573            arpl [di+0x73],sp
00000F3D  20666F            and [bp+0x6f],ah
00000F40  7220              jc 0xf62
00000F42  7468              jz 0xfac
00000F44  6973207365        imul si,[bp+di+0x20],word 0x6573
00000F49  7276              jc 0xfc1
00000F4B  657220            gs jc 0xf6e
00000F4E  636F6E            arpl [bx+0x6e],bp
00000F51  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
00000F59  6F                outsw
00000F5A  6E                outsb
00000F5B  0D0A20            or ax,0x200a
00000F5E  2020              and [bx+si],ah
00000F60  2020              and [bx+si],ah
00000F62  2020              and [bx+si],ah
00000F64  52                push dx
00000F65  657374            gs jnc 0xfdc
00000F68  61                popa
00000F69  7274              jc 0xfdf
00000F6B  204E45            and [bp+0x45],cl
00000F6E  54                push sp
00000F6F  42                inc dx
00000F70  49                dec cx
00000F71  4F                dec di
00000F72  53                push bx
00000F73  207769            and [bx+0x69],dh
00000F76  7468              jz 0xfe0
00000F78  206869            and [bx+si+0x69],ch
00000F7B  67686572          push word 0x7265
00000F7F  207365            and [bp+di+0x65],dh
00000F82  7373              jnc 0xff7
00000F84  696F6E7320        imul bp,[bx+0x6e],word 0x2073
00000F89  61                popa
00000F8A  6E                outsb
00000F8B  64204E43          and [fs:bp+0x43],cl
00000F8F  42                inc dx
00000F90  730D              jnc 0xf9f
00000F92  0A00              or al,[bx+si]
00000F94  53                push bx
00000F95  657269            gs jc 0x1001
00000F98  61                popa
00000F99  6C                insb
00000F9A  206E75            and [bp+0x75],ch
00000F9D  6D                insw
00000F9E  626572            bound sp,[di+0x72]
00000FA1  20646F            and [si+0x6f],ah
00000FA4  657320            gs jnc 0xfc7
00000FA7  6E                outsb
00000FA8  6F                outsw
00000FA9  7420              jz 0xfcb
00000FAB  6D                insw
00000FAC  61                popa
00000FAD  7463              jz 0x1012
00000FAF  682074            push word 0x7420
00000FB2  686174            push word 0x7461
00000FB5  206F66            and [bx+0x66],ch
00000FB8  205245            and [bp+si+0x45],dl
00000FBB  44                inc sp
00000FBC  49                dec cx
00000FBD  52                push dx
00000FBE  0D0A00            or ax,0xa
00000FC1  57                push di
00000FC2  41                inc cx
00000FC3  52                push dx
00000FC4  4E                dec si
00000FC5  49                dec cx
00000FC6  4E                dec si
00000FC7  47                inc di
00000FC8  3A20              cmp ah,[bx+si]
00000FCA  4E                dec si
00000FCB  657477            gs jz 0x1045
00000FCE  6F                outsw
00000FCF  726B              jc 0x103c
00000FD1  206275            and [bp+si+0x75],ah
00000FD4  6666657220        gs o32 jc 0xff9
00000FD9  7369              jnc 0x1044
00000FDB  7A65              jpe 0x1042
00000FDD  207769            and [bx+0x69],dh
00000FE0  6C                insb
00000FE1  6C                insb
00000FE2  206265            and [bp+si+0x65],ah
00000FE5  20696E            and [bx+di+0x6e],ch
00000FE8  637265            arpl [bp+si+0x65],si
00000FEB  61                popa
00000FEC  7365              jnc 0x1053
00000FEE  6420746F          and [fs:si+0x6f],dh
00000FF2  206163            and [bx+di+0x63],ah
00000FF5  636F6D            arpl [bx+0x6d],bp
00000FF8  6D                insw
00000FF9  6F                outsw
00000FFA  6461              fs popa
00000FFC  7465              jz 0x1063
00000FFE  207265            and [bp+si+0x65],dh
00001001  6D                insw
00001002  6F                outsw
00001003  7465              jz 0x106a
00001005  20626F            and [bp+si+0x6f],ah
00001008  6F                outsw
00001009  7469              jz 0x1074
0000100B  6E                outsb
0000100C  670D0A00          or ax,0xa
00001010  57                push di
00001011  41                inc cx
00001012  52                push dx
00001013  4E                dec si
00001014  49                dec cx
00001015  4E                dec si
00001016  47                inc di
00001017  3A20              cmp ah,[bx+si]
00001019  51                push cx
0000101A  7565              jnz 0x1081
0000101C  7565              jnz 0x1083
0000101E  20636F            and [bp+di+0x6f],ah
00001021  6E                outsb
00001022  7472              jz 0x1096
00001024  6F                outsw
00001025  6C                insb
00001026  206669            and [bp+0x69],ah
00001029  6C                insb
0000102A  6520646F          and [gs:si+0x6f],ah
0000102E  657320            gs jnc 0x1051
00001031  6E                outsb
00001032  6F                outsw
00001033  7420              jz 0x1055
00001035  657869            gs js 0x10a1
00001038  7374              jnc 0x10ae
0000103A  202D              and [di],ch
0000103C  206175            and [bx+di+0x75],ah
0000103F  746F              jz 0x10b0
00001041  6D                insw
00001042  61                popa
00001043  7469              jz 0x10ae
00001045  63616C            arpl [bx+di+0x6c],sp
00001048  6C                insb
00001049  7920              jns 0x106b
0000104B  637265            arpl [bp+si+0x65],si
0000104E  61                popa
0000104F  7465              jz 0x10b6
00001051  640D0A00          fs or ax,0xa
00001055  0D0A96            or ax,0x960a
00001058  02B22009          add dh,[bp+si+0x920]
0000105C  00B02D2D          add [bx+si+0x2d2d],dh
00001060  2D2D20            sub ax,0x202d
00001063  4C                dec sp
00001064  41                inc cx
00001065  4E                dec si
00001066  7461              jz 0x10c9
00001068  7374              jnc 0x10de
0000106A  6963202852        imul sp,[bp+di+0x20],word 0x5228
0000106F  2920              sub [bx+si],sp
00001071  53                push bx
00001072  657276            gs jc 0x10eb
00001075  657220            gs jc 0x1098
00001078  4E                dec si
00001079  4F                dec di
0000107A  54                push sp
0000107B  20496E            and [bx+di+0x6e],cl
0000107E  7374              jnc 0x10f4
00001080  61                popa
00001081  6C                insb
00001082  6C                insb
00001083  6564202D          and [fs:di],ch
00001087  2D2D2D            sub ax,0x2d2d
0000108A  0D0A00            or ax,0xa
0000108D  0D0A55            or ax,0x550a
00001090  53                push bx
00001091  41                inc cx
00001092  47                inc di
00001093  45                inc bp
00001094  3A20              cmp ah,[bx+si]
00001096  53                push bx
00001097  45                inc bp
00001098  52                push dx
00001099  56                push si
0000109A  45                inc bp
0000109B  52                push dx
0000109C  205B6E            and [bp+di+0x6e],bl
0000109F  657477            gs jz 0x1119
000010A2  6F                outsw
000010A3  726B              jc 0x1110
000010A5  2D636F            sub ax,0x6f63
000010A8  6E                outsb
000010A9  7472              jz 0x111d
000010AB  6F                outsw
000010AC  6C                insb
000010AD  2D6469            sub ax,0x6964
000010B0  7265              jc 0x1117
000010B2  63746F            arpl [si+0x6f],si
000010B5  7279              jc 0x1130
000010B7  5D                pop bp
000010B8  205B2F            and [bp+di+0x2f],bl
000010BB  7377              jnc 0x1134
000010BD  6974636865        imul si,[si+0x63],word 0x6568
000010C2  732E              jnc 0x10f2
000010C4  2E2E5D            cs pop bp
000010C7  0D0A0D            or ax,0xd0a
000010CA  0A5661            or dl,[bp+0x61]
000010CD  6C                insb
000010CE  696420636F        imul sp,[si+0x20],word 0x6f63
000010D3  6D                insw
000010D4  6D                insw
000010D5  61                popa
000010D6  6E                outsb
000010D7  64206C69          and [fs:si+0x69],ch
000010DB  6E                outsb
000010DC  65207377          and [gs:bp+di+0x77],dh
000010E0  6974636865        imul si,[si+0x63],word 0x6568
000010E5  733A              jnc 0x1121
000010E7  0D0A00            or ax,0xa
000010EA  4D                dec bp
000010EB  61                popa
000010EC  636869            arpl [bx+si+0x69],bp
000010EF  6E                outsb
000010F0  6520636F          and [gs:bp+di+0x6f],ah
000010F4  6E                outsb
000010F5  6669677572617469  imul esp,[bx+0x75],dword 0x69746172
000010FD  6F                outsw
000010FE  6E                outsb
000010FF  207265            and [bp+si+0x65],dh
00001102  7175              jno 0x1179
00001104  6972657320        imul si,[bp+si+0x65],word 0x2073
00001109  696E746572        imul bp,[bp+0x74],word 0x7265
0000110E  6E                outsb
0000110F  61                popa
00001110  7469              jz 0x117b
00001112  6F                outsw
00001113  6E                outsb
00001114  61                popa
00001115  6C                insb
00001116  207665            and [bp+0x65],dh
00001119  7273              jc 0x118e
0000111B  696F6E206F        imul bp,[bx+0x6e],word 0x6f20
00001120  66204C41          o32 and [si+0x41],cl
00001124  4E                dec si
00001125  7461              jz 0x1188
00001127  7374              jnc 0x119d
00001129  6963202852        imul sp,[bp+di+0x20],word 0x5228
0000112E  290D              sub [di],cx
00001130  0A00              or al,[bx+si]
00001132  53                push bx
00001133  657269            gs jc 0x119f
00001136  61                popa
00001137  6C                insb
00001138  204E75            and [bp+0x75],cl
0000113B  6D                insw
0000113C  626572            bound sp,[di+0x72]
0000113F  2020              and [bx+si],ah
00001141  2020              and [bx+si],ah
00001143  2D2020            sub ax,0x2020
00001146  2020              and [bx+si],ah
00001148  2020              and [bx+si],ah
0000114A  200D              and [di],cl
0000114C  0A00              or al,[bx+si]
0000114E  0D0A43            or ax,0x430a
00001151  6F                outsw
00001152  6D                insw
00001153  6D                insw
00001154  61                popa
00001155  6E                outsb
00001156  64206C69          and [fs:si+0x69],ch
0000115A  6E                outsb
0000115B  65FE00            inc byte [gs:bx+si]
0000115E  B220              mov dl,0x20
00001160  0C00              or al,0x0
00001162  B000              mov al,0x0
00001164  8000B0            add byte [bx+si],0xb0
00001167  0D0A0D            or ax,0xd0a
0000116A  0A4D61            or cl,[di+0x61]
0000116D  636869            arpl [bx+si+0x69],bp
00001170  6E                outsb
00001171  65206E61          and [gs:bp+0x61],ch
00001175  6D                insw
00001176  651000            adc [gs:bx+si],al
00001179  B220              mov dl,0x20
0000117B  1B00              sbb ax,[bx+si]
0000117D  B041              mov al,0x41
0000117F  6461              fs popa
00001181  7074              jo 0x11f7
00001183  657273            gs jc 0x11f9
00001186  20696E            and [bx+di+0x6e],ch
00001189  207573            and [di+0x73],dh
0000118C  650F00B2200A      jmpe word [gs:bp+si+0xa20]
00001192  00B00D0A          add [bx+si+0xa0d],dh
00001196  4D                dec bp
00001197  61                popa
00001198  7869              js 0x1203
0000119A  6D                insw
0000119B  756D              jnz 0x120a
0000119D  206F70            and [bx+0x70],ch
000011A0  656E              gs outsb
000011A2  206669            and [bp+0x69],ah
000011A5  6C                insb
000011A6  657314            gs jnc 0x11bd
000011A9  00B22015          add [bp+si+0x1520],dh
000011AD  00B04D61          add [bx+si+0x614d],dh
000011B1  7869              js 0x121c
000011B3  6D                insw
000011B4  756D              jnz 0x1223
000011B6  206C6F            and [si+0x6f],ch
000011B9  67696E730E00      imul bp,[esi+0x73],word 0xe
000011BF  B220              mov dl,0x20
000011C1  0D00B0            or ax,0xb000
000011C4  0D0A4E            or ax,0x4e0a
000011C7  657477            gs jz 0x1241
000011CA  6F                outsw
000011CB  726B              jc 0x1238
000011CD  206275            and [bp+si+0x75],ah
000011D0  6666657220        gs o32 jc 0x11f5
000011D5  7369              jnc 0x1240
000011D7  7A65              jpe 0x123e
000011D9  1500B2            adc ax,0xb200
000011DC  2014              and [si],dl
000011DE  00B04E65          add [bx+si+0x654e],dh
000011E2  7477              jz 0x125b
000011E4  6F                outsw
000011E5  726B              jc 0x1252
000011E7  207461            and [si+0x61],dh
000011EA  736B              jnc 0x1257
000011EC  730D              jnc 0x11fb
000011EE  00B22015          add [bp+si+0x1520],dh
000011F2  00B00D0A          add [bx+si+0xa0d],dh
000011F6  49                dec cx
000011F7  6E                outsb
000011F8  697469616C        imul si,[si+0x69],word 0x6c61
000011FD  207265            and [bp+si+0x65],dh
00001200  7175              jno 0x1277
00001202  657374            gs jnc 0x1279
00001205  207369            and [bp+di+0x69],dh
00001208  7A65              jpe 0x126f
0000120A  16                push ss
0000120B  00B22013          add [bp+si+0x1320],dh
0000120F  00B05275          add [bx+si+0x7552],dh
00001213  6E                outsb
00001214  206275            and [bp+si+0x75],ah
00001217  7273              jc 0x128c
00001219  7409              jz 0x1224
0000121B  00B22019          add [bp+si+0x1920],dh
0000121F  00B00D0A          add [bx+si+0xa0d],dh
00001223  43                inc bx
00001224  61                popa
00001225  636865            arpl [bx+si+0x65],bp
00001228  64207265          and [fs:bp+si+0x65],dh
0000122C  736F              jnc 0x129d
0000122E  7572              jnz 0x12a2
00001230  636573            arpl [di+0x73],sp
00001233  1200              adc al,[bx+si]
00001235  B220              mov dl,0x20
00001237  17                pop ss
00001238  00B04669          add [bx+si+0x6946],dh
0000123C  6C                insb
0000123D  65204C6F          and [gs:si+0x6f],cl
00001241  6F                outsw
00001242  6B757020          imul si,[di+0x70],byte +0x20
00001246  43                inc bx
00001247  61                popa
00001248  636865            arpl [bx+si+0x65],bp
0000124B  1100              adc [bx+si],ax
0000124D  B220              mov dl,0x20
0000124F  1100              adc [bx+si],ax
00001251  B00D              mov al,0xd
00001253  0A5261            or dl,[bp+si+0x61]
00001256  6E                outsb
00001257  646F              fs outsw
00001259  6D                insw
0000125A  206163            and [bx+di+0x63],ah
0000125D  636573            arpl [di+0x73],sp
00001260  7320              jnc 0x1282
00001262  636163            arpl [bx+di+0x63],sp
00001265  686520            push word 0x2065
00001268  4B                dec bx
00001269  42                inc dx
0000126A  1800              sbb [bx+si],al
0000126C  B220              mov dl,0x20
0000126E  1100              adc [bx+si],ax
00001270  B052              mov al,0x52
00001272  65636F72          arpl [gs:bx+0x72],bp
00001276  64206C6F          and [fs:si+0x6f],ch
0000127A  636B20            arpl [bp+di+0x20],bp
0000127D  686F6C            push word 0x6c6f
00001280  64207469          and [fs:si+0x69],dh
00001284  6D                insw
00001285  651500B2          gs adc ax,0xb200
00001289  200D              and [di],cl
0000128B  00B00D0A          add [bx+si+0xa0d],dh
0000128F  46                inc si
00001290  6C                insb
00001291  6F                outsw
00001292  7070              jo 0x1304
00001294  7920              jns 0x12b6
00001296  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
0000129C  206163            and [bx+di+0x63],ah
0000129F  636573            arpl [di+0x73],sp
000012A2  7316              jnc 0x12ba
000012A4  00B22013          add [bp+si+0x1320],dh
000012A8  00B05061          add [bx+si+0x6150],dh
000012AC  726B              jc 0x1319
000012AE  204472            and [si+0x72],al
000012B1  6976652061        imul si,[bp+0x65],word 0x6120
000012B6  7420              jz 0x12d8
000012B8  53                push bx
000012B9  687574            push word 0x7475
000012BC  646F              fs outsw
000012BE  776E              ja 0x132e
000012C0  16                push ss
000012C1  00B2200C          add [bp+si+0xc20],dh
000012C5  00B00D0A          add [bx+si+0xa0d],dh
000012C9  52                push dx
000012CA  656D              gs insw
000012CC  6F                outsw
000012CD  7465              jz 0x1334
000012CF  207072            and [bx+si+0x72],dh
000012D2  6F                outsw
000012D3  677261            jc 0x1337
000012D6  6D                insw
000012D7  206C6F            and [si+0x6f],ch
000012DA  61                popa
000012DB  641500B2          fs adc ax,0xb200
000012DF  200F              and [bx],cl
000012E1  00B00D0A          add [bx+si+0xa0d],dh
000012E5  4E                dec si
000012E6  6F                outsw
000012E7  7469              jz 0x1352
000012E9  6669636174696F6E  imul esp,[bp+di+0x61],dword 0x6e6f6974
000012F1  0E                push cs
000012F2  00B2201B          add [bp+si+0x1b20],dh
000012F6  00B04175          add [bx+si+0x7541],dh
000012FA  646974696E67      imul si,[fs:si+0x69],word 0x676e
00001300  0800              or [bx+si],al
00001302  B220              mov dl,0x20
00001304  1A00              sbb al,[bx+si]
00001306  B00D              mov al,0xd
00001308  0A5365            or dl,[bp+di+0x65]
0000130B  7276              jc 0x1383
0000130D  657220            gs jc 0x1330
00001310  43                inc bx
00001311  6F                outsw
00001312  6E                outsb
00001313  7472              jz 0x1387
00001315  6F                outsw
00001316  6C                insb
00001317  1000              adc [bx+si],al
00001319  B220              mov dl,0x20
0000131B  1900              sbb [bx+si],ax
0000131D  B052              mov al,0x52
0000131F  756E              jnz 0x138f
00001321  206275            and [bp+si+0x75],ah
00001324  6666657220        gs o32 jc 0x1349
00001329  7369              jnc 0x1394
0000132B  7A65              jpe 0x1392
0000132D  0F00B22013        jmpe word [bp+si+0x1320]
00001332  00B00D0A          add [bx+si+0xa0d],dh
00001336  0200              add al,[bx+si]
00001338  B220              mov dl,0x20
0000133A  1B00              sbb ax,[bx+si]
0000133C  B050              mov al,0x50
0000133E  7269              jc 0x13a9
00001340  6E                outsb
00001341  7469              jz 0x13ac
00001343  6E                outsb
00001344  67202D0A00B220    and [dword 0x20b2000a],ch
0000134B  0B00              or ax,[bx+si]
0000134D  B00D              mov al,0xd
0000134F  0A5072            or dl,[bx+si+0x72]
00001352  696E746572        imul bp,[bp+0x74],word 0x7265
00001357  206275            and [bp+si+0x75],ah
0000135A  6666657220        gs o32 jc 0x137f
0000135F  7369              jnc 0x13ca
00001361  7A65              jpe 0x13c8
00001363  1500B2            adc ax,0xb200
00001366  2014              and [si],dl
00001368  00B05072          add [bx+si+0x7250],dh
0000136C  696E746572        imul bp,[bp+0x74],word 0x7265
00001371  207461            and [si+0x61],dh
00001374  736B              jnc 0x13e1
00001376  730D              jnc 0x1385
00001378  00B22015          add [bp+si+0x1520],dh
0000137C  00B00D0A          add [bx+si+0xa0d],dh
00001380  49                dec cx
00001381  6D                insw
00001382  6D                insw
00001383  65646961746520    imul sp,[fs:bx+di+0x74],word 0x2065
0000138A  44                inc sp
0000138B  657370            gs jnc 0x13fe
0000138E  6F                outsw
0000138F  6F                outsw
00001390  6C                insb
00001391  696E671600        imul bp,[bp+0x67],word 0x16
00001396  B220              mov dl,0x20
00001398  1300              adc ax,[bx+si]
0000139A  B050              mov al,0x50
0000139C  7269              jc 0x1407
0000139E  6E                outsb
0000139F  7420              jz 0x13c1
000013A1  53                push bx
000013A2  7472              jz 0x1416
000013A4  6561              gs popa
000013A6  6D                insw
000013A7  730D              jnc 0x13b6
000013A9  00B22015          add [bp+si+0x1520],dh
000013AD  00B00D0A          add [bx+si+0xa0d],dh
000013B1  52                push dx
000013B2  50                push ax
000013B3  44                inc sp
000013B4  205375            and [bp+di+0x75],dl
000013B7  7070              jo 0x1429
000013B9  6F                outsw
000013BA  7274              jc 0x1430
000013BC  0D00B2            or ax,0xb200
000013BF  201C              and [si],bl
000013C1  00B0496E          add [bx+si+0x6e49],dh
000013C5  697469616C        imul si,[si+0x69],word 0x6c61
000013CA  206465            and [si+0x65],ah
000013CD  7370              jnc 0x143f
000013CF  6F                outsw
000013D0  6F                outsw
000013D1  6C                insb
000013D2  696E671200        imul bp,[bp+0x67],word 0x12
000013D7  B220              mov dl,0x20
000013D9  1000              adc [bx+si],al
000013DB  B00D              mov al,0xd
000013DD  0A02              or al,[bp+si]
000013DF  00B2201B          add [bp+si+0x1b20],dh
000013E3  00B05365          add [bx+si+0x6553],dh
000013E7  637572            arpl [di+0x72],si
000013EA  697479202D        imul si,[si+0x79],word 0x2d20
000013EF  0A00              or al,[bx+si]
000013F1  B220              mov dl,0x20
000013F3  0B00              or ax,[bx+si]
000013F5  B00D              mov al,0xd
000013F7  0A5365            or dl,[bp+di+0x65]
000013FA  6E                outsb
000013FB  64207365          and [fs:bp+di+0x65],dh
000013FF  7276              jc 0x1477
00001401  657220            gs jc 0x1424
00001404  49                dec cx
00001405  44                inc sp
00001406  1000              adc [bx+si],al
00001408  B220              mov dl,0x20
0000140A  1900              sbb [bx+si],ax
0000140C  B04C              mov al,0x4c
0000140E  6F                outsw
0000140F  67696E204163      imul bp,[esi+0x20],word 0x6341
00001415  636F75            arpl [bx+0x75],bp
00001418  6E                outsb
00001419  7473              jz 0x148e
0000141B  0E                push cs
0000141C  00B22014          add [bp+si+0x1420],dh
00001420  00B00D0A          add [bx+si+0xa0d],dh
00001424  41                inc cx
00001425  636365            arpl [bp+di+0x65],sp
00001428  7373              jnc 0x149d
0000142A  20436F            and [bp+di+0x6f],al
0000142D  6E                outsb
0000142E  7472              jz 0x14a2
00001430  6F                outsw
00001431  6C                insb
00001432  204C69            and [si+0x69],cl
00001435  7374              jnc 0x14ab
00001437  7316              jnc 0x144f
00001439  00B22013          add [bp+si+0x1320],dh
0000143D  00B04669          add [bx+si+0x6946],dh
00001441  6C                insb
00001442  65204C65          and [gs:si+0x65],cl
00001446  7665              jna 0x14ad
00001448  6C                insb
00001449  204143            and [bx+di+0x43],al
0000144C  4C                dec sp
0000144D  730F              jnc 0x145e
0000144F  00B22013          add [bp+si+0x1320],dh
00001453  00B00D0A          add [bx+si+0xa0d],dh
00001457  47                inc di
00001458  726F              jc 0x14c9
0000145A  7570              jnz 0x14cc
0000145C  204143            and [bx+di+0x43],al
0000145F  4C                dec sp
00001460  730C              jnc 0x146e
00001462  00B22018          add [bp+si+0x1820],dh
00001466  00B00D0A          add [bx+si+0xa0d],dh
0000146A  0200              add al,[bx+si]
0000146C  B220              mov dl,0x20
0000146E  1500B0            adc ax,0xb000
00001471  49                dec cx
00001472  6E                outsb
00001473  7465              jz 0x14da
00001475  726E              jc 0x14e5
00001477  61                popa
00001478  6C                insb
00001479  205348            and [bp+di+0x48],dl
0000147C  41                inc cx
0000147D  52                push dx
0000147E  45                inc bp
0000147F  202D              and [di],ch
00001481  1000              adc [bx+si],al
00001483  B220              mov dl,0x20
00001485  0B00              or ax,[bx+si]
00001487  B00D              mov al,0xd
00001489  0A4E61            or cl,[bp+0x61]
0000148C  6D                insw
0000148D  65205370          and [gs:bp+di+0x70],dl
00001491  61                popa
00001492  63650C            arpl [di+0xc],sp
00001495  00B2201D          add [bp+si+0x1d20],dh
00001499  00B05348          add [bx+si+0x4853],dh
0000149D  41                inc cx
0000149E  52                push dx
0000149F  45                inc bp
000014A0  204C6F            and [si+0x6f],cl
000014A3  636B73            arpl [bp+di+0x73],bp
000014A6  0B00              or ax,[bx+si]
000014A8  B220              mov dl,0x20
000014AA  17                pop ss
000014AB  00B00D0A          add [bx+si+0xa0d],dh
000014AF  53                push bx
000014B0  687574            push word 0x7475
000014B3  646F              fs outsw
000014B5  776E              ja 0x1525
000014B7  206B65            and [bp+di+0x65],ch
000014BA  790E              jns 0x14ca
000014BC  00B2200C          add [bp+si+0xc20],dh
000014C0  00B04374          add [bx+si+0x7443],dh
000014C4  726C              jc 0x1532
000014C6  2D416C            sub ax,0x6c41
000014C9  742D              jz 0x14f8
000014CB  2020              and [bx+si],ah
000014CD  2020              and [bx+si],ah
000014CF  2020              and [bx+si],ah
000014D1  42                inc dx
000014D2  7974              jns 0x1548
000014D4  657320            gs jnc 0x14f7
000014D7  6F                outsw
000014D8  66206D65          o32 and [di+0x65],ch
000014DC  6D                insw
000014DD  6F                outsw
000014DE  7279              jc 0x1559
000014E0  207573            and [di+0x73],dh
000014E3  65642300          and ax,[fs:bx+si]
000014E7  B220              mov dl,0x20
000014E9  0E                push cs
000014EA  00B00D0A          add [bx+si+0xa0d],dh
000014EE  005370            add [bp+di+0x70],dl
000014F1  6F                outsw
000014F2  6F                outsw
000014F3  6C                insb
000014F4  696E670B00        imul bp,[bp+0x67],word 0xb
000014F9  B220              mov dl,0x20
000014FB  1F                pop ds
000014FC  00B05175          add [bx+si+0x7551],dh
00001500  657565            gs jnz 0x1568
00001503  20436F            and [bp+di+0x6f],al
00001506  6E                outsb
00001507  7472              jz 0x157b
00001509  6F                outsw
0000150A  6C                insb
0000150B  0D00B2            or ax,0xb200
0000150E  2015              and [di],dl
00001510  00B00D0A          add [bx+si+0xa0d],dh
00001514  4E                dec si
00001515  45                inc bp
00001516  54                push sp
00001517  20436F            and [bp+di+0x6f],al
0000151A  7079              jo 0x1595
0000151C  2F                das
0000151D  49                dec cx
0000151E  6E                outsb
0000151F  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00001525  2F                das
00001526  46                inc si
00001527  6C                insb
00001528  7573              jnz 0x159d
0000152A  681900            push word 0x19
0000152D  B220              mov dl,0x20
0000152F  0B00              or ax,[bx+si]
00001531  B00D              mov al,0xd
00001533  0A4163            or al,[bx+di+0x63]
00001536  636F75            arpl [bx+0x75],bp
00001539  6E                outsb
0000153A  7420              jz 0x155c
0000153C  53                push bx
0000153D  657276            gs jc 0x15b6
00001540  657220            gs jc 0x1563
00001543  4E                dec si
00001544  61                popa
00001545  6D                insw
00001546  651500B2          gs adc ax,0xb200
0000154A  2014              and [si],dl
0000154C  00B04163          add [bx+si+0x6341],dh
00001550  636F75            arpl [bx+0x75],bp
00001553  6E                outsb
00001554  7420              jz 0x1576
00001556  53                push bx
00001557  657276            gs jc 0x15d0
0000155A  657220            gs jc 0x157d
0000155D  41                inc cx
0000155E  6461              fs popa
00001560  7074              jo 0x15d6
00001562  657216            gs jc 0x157b
00001565  00B22011          add [bp+si+0x1120],dh
00001569  00B00D0A          add [bx+si+0xa0d],dh
0000156D  00696E            add [bx+di+0x6e],ch
00001570  20434F            and [bp+di+0x4f],al
00001573  4E                dec si
00001574  46                inc si
00001575  49                dec cx
00001576  47                inc di
00001577  2E53              cs push bx
00001579  59                pop cx
0000157A  53                push bx
0000157B  005354            add [bp+di+0x54],dl
0000157E  4F                dec di
0000157F  50                push ax
00001580  50                push ax
00001581  45                inc bp
00001582  44                inc sp
00001583  004143            add [bx+di+0x43],al
00001586  54                push sp
00001587  49                dec cx
00001588  56                push si
00001589  45                inc bp
0000158A  005741            add [bx+0x41],dl
0000158D  52                push dx
0000158E  4E                dec si
0000158F  49                dec cx
00001590  4E                dec si
00001591  47                inc di
00001592  3A20              cmp ah,[bx+si]
00001594  53                push bx
00001595  48                dec ax
00001596  41                inc cx
00001597  52                push dx
00001598  45                inc bp
00001599  2E45              cs inc bp
0000159B  58                pop ax
0000159C  45                inc bp
0000159D  206973            and [bx+di+0x73],ch
000015A0  20616C            and [bx+di+0x6c],ah
000015A3  7265              jc 0x160a
000015A5  61                popa
000015A6  647920            fs jns 0x15c9
000015A9  696E737461        imul bp,[bp+0x73],word 0x6174
000015AE  6C                insb
000015AF  6C                insb
000015B0  65642C20          fs sub al,0x20
000015B4  49                dec cx
000015B5  6E                outsb
000015B6  7465              jz 0x161d
000015B8  726E              jc 0x1628
000015BA  61                popa
000015BB  6C                insb
000015BC  205348            and [bp+di+0x48],dl
000015BF  41                inc cx
000015C0  52                push dx
000015C1  45                inc bp
000015C2  207769            and [bx+0x69],dh
000015C5  6C                insb
000015C6  6C                insb
000015C7  206E6F            and [bp+0x6f],ch
000015CA  7420              jz 0x15ec
000015CC  626520            bound sp,[di+0x20]
000015CF  7573              jnz 0x1644
000015D1  65642E0D0A00      cs or ax,0xa
000015D7  57                push di
000015D8  41                inc cx
000015D9  52                push dx
000015DA  4E                dec si
000015DB  49                dec cx
000015DC  4E                dec si
000015DD  47                inc di
000015DE  3A20              cmp ah,[bx+si]
000015E0  49                dec cx
000015E1  6E                outsb
000015E2  7465              jz 0x1649
000015E4  726E              jc 0x1654
000015E6  61                popa
000015E7  6C                insb
000015E8  205348            and [bp+di+0x48],dl
000015EB  41                inc cx
000015EC  52                push dx
000015ED  45                inc bp
000015EE  206E6F            and [bp+0x6f],ch
000015F1  7420              jz 0x1613
000015F3  7375              jnc 0x166a
000015F5  7070              jo 0x1667
000015F7  6F                outsw
000015F8  7274              jc 0x166e
000015FA  656420756E        and [fs:di+0x6e],dh
000015FF  64657220          gs jc 0x1623
00001603  7468              jz 0x166d
00001605  6973204F2F        imul si,[bp+di+0x20],word 0x2f4f
0000160A  53                push bx
0000160B  2E0D0A00          cs or ax,0xa
0000160F  5C                pop sp
00001610  4C                dec sp
00001611  41                inc cx
00001612  4E                dec si
00001613  54                push sp
00001614  41                inc cx
00001615  53                push bx
00001616  54                push sp
00001617  49                dec cx
00001618  2E4E              cs dec si
0000161A  45                inc bp
0000161B  54                push sp
0000161C  5C                pop sp
0000161D  7379              jnc 0x1698
0000161F  7374              jnc 0x1695
00001621  656D              gs insw
00001623  2E6E              cs outsb
00001625  65745C            gs jz 0x1684
00001628  636F6E            arpl [bx+0x6e],bp
0000162B  666967C300B2002B  imul esp,[bx-0x3d],dword 0x2b00b200
00001633  00B04C41          add [bx+si+0x414c],dh
00001637  4E                dec si
00001638  5F                pop di
00001639  44                inc sp
0000163A  49                dec cx
0000163B  52                push dx
0000163C  0000              add [bx+si],al
0000163E  52                push dx
0000163F  4E                dec si
00001640  41                inc cx
00001641  41                inc cx
00001642  0000              add [bx+si],al
00001644  0000              add [bx+si],al
00001646  4E                dec si
00001647  2F                das
00001648  41                inc cx
00001649  0000              add [bx+si],al
0000164B  59                pop cx
0000164C  45                inc bp
0000164D  53                push bx
0000164E  0001              add [bx+di],al
00001650  004E4F            add [bp+0x4f],cl
00001653  0000              add [bx+si],al
00001655  0000              add [bx+si],al
00001657  0000              add [bx+si],al
00001659  004449            add [si+0x49],al
0000165C  53                push bx
0000165D  41                inc cx
0000165E  42                inc dx
0000165F  4C                dec sp
00001660  45                inc bp
00001661  44                inc sp
00001662  0001              add [bx+di],al
00001664  00454E            add [di+0x4e],al
00001667  41                inc cx
00001668  42                inc dx
00001669  4C                dec sp
0000166A  45                inc bp
0000166B  44                inc sp
0000166C  0000              add [bx+si],al
0000166E  0000              add [bx+si],al
00001670  0000              add [bx+si],al
00001672  004449            add [si+0x49],al
00001675  53                push bx
00001676  41                inc cx
00001677  42                inc dx
00001678  4C                dec sp
00001679  45                inc bp
0000167A  44                inc sp
0000167B  0001              add [bx+di],al
0000167D  00454E            add [di+0x4e],al
00001680  41                inc cx
00001681  42                inc dx
00001682  4C                dec sp
00001683  45                inc bp
00001684  44                inc sp
00001685  0000              add [bx+si],al
00001687  0000              add [bx+si],al
00001689  0000              add [bx+si],al
0000168B  0832              or [bp+si],dh
0000168D  4B                dec bx
0000168E  0000              add [bx+si],al
00001690  0C33              or al,0x33
00001692  4B                dec bx
00001693  0000              add [bx+si],al
00001695  1034              adc [si],dh
00001697  4B                dec bx
00001698  0000              add [bx+si],al
0000169A  1435              adc al,0x35
0000169C  4B                dec bx
0000169D  0000              add [bx+si],al
0000169F  18364B00          sbb [0x4b],dh
000016A3  0020              add [bx+si],ah
000016A5  384B00            cmp [bp+di+0x0],cl
000016A8  0028              add [bx+si],ch
000016AA  3130              xor [bx+si],si
000016AC  4B                dec bx
000016AD  0000              add [bx+si],al
000016AF  3031              xor [bx+di],dh
000016B1  324B00            xor cl,[bp+di+0x0]
000016B4  0038              add [bx+si],bh
000016B6  3134              xor [si],si
000016B8  4B                dec bx
000016B9  0000              add [bx+si],al
000016BB  40                inc ax
000016BC  31364B00          xor [0x4b],si
000016C0  004831            add [bx+si+0x31],cl
000016C3  384B00            cmp [bp+di+0x0],cl
000016C6  005032            add [bx+si+0x32],dl
000016C9  304B00            xor [bp+di+0x0],cl
000016CC  006032            add [bx+si+0x32],ah
000016CF  344B              xor al,0x4b
000016D1  0000              add [bx+si],al
000016D3  7032              jo 0x1707
000016D5  384B00            cmp [bp+di+0x0],cl
000016D8  00803332          add [bx+si+0x3233],al
000016DC  4B                dec bx
000016DD  0000              add [bx+si],al
000016DF  A03430            mov al,[0x3034]
000016E2  4B                dec bx
000016E3  0000              add [bx+si],al
000016E5  C0                db 0xc0
000016E6  3438              xor al,0x38
000016E8  4B                dec bx
000016E9  0000              add [bx+si],al
000016EB  E035              loopne 0x1722
000016ED  364B              ss dec bx
000016EF  0000              add [bx+si],al
000016F1  0000              add [bx+si],al
000016F3  0000              add [bx+si],al
000016F5  0235              add dh,[di]
000016F7  3132              xor [bp+si],si
000016F9  0000              add [bx+si],al
000016FB  0431              add al,0x31
000016FD  4B                dec bx
000016FE  0000              add [bx+si],al
00001700  0832              or [bp+si],dh
00001702  4B                dec bx
00001703  0000              add [bx+si],al
00001705  0C33              or al,0x33
00001707  4B                dec bx
00001708  0000              add [bx+si],al
0000170A  1034              adc [si],dh
0000170C  4B                dec bx
0000170D  0000              add [bx+si],al
0000170F  1435              adc al,0x35
00001711  4B                dec bx
00001712  0000              add [bx+si],al
00001714  18364B00          sbb [0x4b],dh
00001718  0020              add [bx+si],ah
0000171A  384B00            cmp [bp+di+0x0],cl
0000171D  0028              add [bx+si],ch
0000171F  3130              xor [bx+si],si
00001721  4B                dec bx
00001722  0000              add [bx+si],al
00001724  3031              xor [bx+di],dh
00001726  324B00            xor cl,[bp+di+0x0]
00001729  0038              add [bx+si],bh
0000172B  3134              xor [si],si
0000172D  4B                dec bx
0000172E  0000              add [bx+si],al
00001730  40                inc ax
00001731  31364B00          xor [0x4b],si
00001735  004831            add [bx+si+0x31],cl
00001738  384B00            cmp [bp+di+0x0],cl
0000173B  005032            add [bx+si+0x32],dl
0000173E  304B00            xor [bp+di+0x0],cl
00001741  006032            add [bx+si+0x32],ah
00001744  344B              xor al,0x4b
00001746  0000              add [bx+si],al
00001748  7032              jo 0x177c
0000174A  384B00            cmp [bp+di+0x0],cl
0000174D  00803332          add [bx+si+0x3233],al
00001751  4B                dec bx
00001752  0000              add [bx+si],al
00001754  0000              add [bx+si],al
00001756  0000              add [bx+si],al
00001758  004E4F            add [bp+0x4f],cl
0000175B  4E                dec si
0000175C  45                inc bp
0000175D  0001              add [bx+di],al
0000175F  0031              add [bx+di],dh
00001761  4B                dec bx
00001762  0002              add [bp+si],al
00001764  0032              add [bp+si],dh
00001766  4B                dec bx
00001767  0004              add [si],al
00001769  0034              add [si],dh
0000176B  4B                dec bx
0000176C  0008              add [bx+si],cl
0000176E  0038              add [bx+si],bh
00001770  4B                dec bx
00001771  000C              add [si],cl
00001773  0031              add [bx+di],dh
00001775  324B00            xor cl,[bp+di+0x0]
00001778  1000              adc [bx+si],al
0000177A  31364B00          xor [0x4b],si
0000177E  1400              adc al,0x0
00001780  3230              xor dh,[bx+si]
00001782  4B                dec bx
00001783  0018              add [bx+si],bl
00001785  0032              add [bp+si],dh
00001787  344B              xor al,0x4b
00001789  001C              add [si],bl
0000178B  0032              add [bp+si],dh
0000178D  384B00            cmp [bp+di+0x0],cl
00001790  2000              and [bx+si],al
00001792  3332              xor si,[bp+si]
00001794  4B                dec bx
00001795  0028              add [bx+si],ch
00001797  0034              add [si],dh
00001799  304B00            xor [bp+di+0x0],cl
0000179C  3000              xor [bx+si],al
0000179E  3438              xor al,0x38
000017A0  4B                dec bx
000017A1  0038              add [bx+si],bh
000017A3  0035              add [di],dh
000017A5  364B              ss dec bx
000017A7  004000            add [bx+si+0x0],al
000017AA  36344B            ss xor al,0x4b
000017AD  0000              add [bx+si],al
000017AF  0000              add [bx+si],al
000017B1  0001              add [bx+di],al
000017B3  004449            add [si+0x49],al
000017B6  53                push bx
000017B7  41                inc cx
000017B8  42                inc dx
000017B9  4C                dec sp
000017BA  45                inc bp
000017BB  44                inc sp
000017BC  0002              add [bp+si],al
000017BE  0032              add [bp+si],dh
000017C0  0003              add [bp+di],al
000017C2  0033              add [bp+di],dh
000017C4  0004              add [si],al
000017C6  0034              add [si],dh
000017C8  0005              add [di],al
000017CA  0035              add [di],dh
000017CC  0009              add [bx+di],cl
000017CE  0039              add [bx+di],bh
000017D0  000D              add [di],cl
000017D2  0031              add [bx+di],dh
000017D4  3300              xor ax,[bx+si]
000017D6  1200              adc al,[bx+si]
000017D8  3138              xor [bx+si],di
000017DA  001B              add [bp+di],bl
000017DC  0032              add [bp+si],dh
000017DE  37                aaa
000017DF  0024              add [si],ah
000017E1  0033              add [bp+di],dh
000017E3  36002D            add [ss:di],ch
000017E6  0034              add [si],dh
000017E8  350036            xor ax,0x3600
000017EB  0035              add [di],dh
000017ED  3400              xor al,0x0
000017EF  3F                aas
000017F0  00363300          add [0x33],dh
000017F4  48                dec ax
000017F5  0037              add [bx],dh
000017F7  3200              xor al,[bx+si]
000017F9  51                push cx
000017FA  0038              add [bx+si],bh
000017FC  3100              xor [bx+si],ax
000017FE  5A                pop dx
000017FF  0039              add [bx+di],bh
00001801  3000              xor [bx+si],al
00001803  6C                insb
00001804  0031              add [bx+di],dh
00001806  3038              xor [bx+si],bh
00001808  007E00            add [bp+0x0],bh
0000180B  3132              xor [bp+si],si
0000180D  3600900031        add [ss:bx+si+0x3100],dl
00001812  3434              xor al,0x34
00001814  00A20031          add [bp+si+0x3100],ah
00001818  363200            xor al,[ss:bx+si]
0000181B  B400              mov ah,0x0
0000181D  3138              xor [bx+si],di
0000181F  3000              xor [bx+si],al
00001821  0000              add [bx+si],al
00001823  0000              add [bx+si],al
00001825  1E                push ds
00001826  004100            add [bx+di+0x0],al
00001829  3000              xor [bx+si],al
0000182B  42                inc dx
0000182C  002E0043          add [0x4300],ch
00001830  0020              add [bx+si],ah
00001832  004400            add [si+0x0],al
00001835  1200              adc al,[bx+si]
00001837  45                inc bp
00001838  0021              add [bx+di],ah
0000183A  004600            add [bp+0x0],al
0000183D  2200              and al,[bx+si]
0000183F  47                inc di
00001840  0023              add [bp+di],ah
00001842  004800            add [bx+si+0x0],cl
00001845  17                pop ss
00001846  004900            add [bx+di+0x0],cl
00001849  2400              and al,0x0
0000184B  4A                dec dx
0000184C  0025              add [di],ah
0000184E  004B00            add [bp+di+0x0],cl
00001851  26004C00          add [es:si+0x0],cl
00001855  3200              xor al,[bx+si]
00001857  4D                dec bp
00001858  0031              add [bx+di],dh
0000185A  004E00            add [bp+0x0],cl
0000185D  1800              sbb [bx+si],al
0000185F  4F                dec di
00001860  0019              add [bx+di],bl
00001862  005000            add [bx+si+0x0],dl
00001865  1000              adc [bx+si],al
00001867  51                push cx
00001868  0013              add [bp+di],dl
0000186A  005200            add [bp+si+0x0],dl
0000186D  1F                pop ds
0000186E  005300            add [bp+di+0x0],dl
00001871  1400              adc al,0x0
00001873  54                push sp
00001874  00160055          add [0x5500],dl
00001878  002F              add [bx],ch
0000187A  005600            add [bp+0x0],dl
0000187D  1100              adc [bx+si],ax
0000187F  57                push di
00001880  002D              add [di],ch
00001882  005800            add [bx+si+0x0],bl
00001885  150059            adc ax,0x5900
00001888  002C              add [si],ch
0000188A  005A00            add [bp+si+0x0],bl
0000188D  53                push bx
0000188E  004445            add [si+0x45],al
00001891  4C                dec sp
00001892  0000              add [bx+si],al
00001894  0000              add [bx+si],al
00001896  0007              add [bx],al
00001898  61                popa
00001899  07                pop es
0000189A  0000              add [bx+si],al
0000189C  0100              add [bx+si],ax
0000189E  6300              arpl [bx+si],ax
000018A0  41                inc cx
000018A1  43                inc bx
000018A2  43                inc bx
000018A3  4F                dec di
000018A4  55                push bp
000018A5  4E                dec si
000018A6  54                push sp
000018A7  5F                pop di
000018A8  53                push bx
000018A9  45                inc bp
000018AA  52                push dx
000018AB  56                push si
000018AC  45                inc bp
000018AD  52                push dx
000018AE  00067F22          add [0x227f],al
000018B2  0000              add [bx+si],al
000018B4  AD                lodsw
000018B5  1A00              sbb al,[bx+si]
000018B7  004143            add [bx+di+0x43],al
000018BA  4C                dec sp
000018BB  5F                pop di
000018BC  53                push bx
000018BD  55                push bp
000018BE  50                push ax
000018BF  50                push ax
000018C0  4F                dec di
000018C1  52                push dx
000018C2  54                push sp
000018C3  00935A21          add [bp+di+0x215a],dl
000018C7  0000              add [bx+si],al
000018C9  0100              add [bx+si],ax
000018CB  06                push es
000018CC  004144            add [bx+di+0x44],al
000018CF  41                inc cx
000018D0  50                push ax
000018D1  54                push sp
000018D2  45                inc bp
000018D3  52                push dx
000018D4  53                push bx
000018D5  00068722          add [0x2287],al
000018D9  0000              add [bx+si],al
000018DB  AD                lodsw
000018DC  1A00              sbb al,[bx+si]
000018DE  004155            add [bx+di+0x55],al
000018E1  44                inc sp
000018E2  49                dec cx
000018E3  54                push sp
000018E4  49                dec cx
000018E5  4E                dec si
000018E6  47                inc di
000018E7  004167            add [bx+di+0x67],al
000018EA  1A00              sbb al,[bx+si]
000018EC  0000              add [bx+si],al
000018EE  0000              add [bx+si],al
000018F0  004445            add [si+0x45],al
000018F3  53                push bx
000018F4  43                inc bx
000018F5  52                push dx
000018F6  49                dec cx
000018F7  42                inc dx
000018F8  45                inc bp
000018F9  00067D21          add [0x217d],al
000018FD  0000              add [bx+si],al
000018FF  851A              test [bp+si],bx
00001901  0000              add [bx+si],al
00001903  44                inc sp
00001904  45                inc bp
00001905  53                push bx
00001906  50                push ax
00001907  4F                dec di
00001908  4F                dec di
00001909  4C                dec sp
0000190A  45                inc bp
0000190B  52                push dx
0000190C  5F                pop di
0000190D  53                push bx
0000190E  54                push sp
0000190F  4F                dec di
00001910  50                push ax
00001911  50                push ax
00001912  45                inc bp
00001913  44                inc sp
00001914  00068022          add [0x2280],al
00001918  0000              add [bx+si],al
0000191A  AD                lodsw
0000191B  1A00              sbb al,[bx+si]
0000191D  004649            add [bp+0x49],al
00001920  4C                dec sp
00001921  45                inc bp
00001922  5F                pop di
00001923  4C                dec sp
00001924  45                inc bp
00001925  56                push si
00001926  45                inc bp
00001927  4C                dec sp
00001928  5F                pop di
00001929  41                inc cx
0000192A  43                inc bx
0000192B  4C                dec sp
0000192C  53                push bx
0000192D  00936421          add [bp+di+0x2164],dl
00001931  0000              add [bx+si],al
00001933  0000              add [bx+si],al
00001935  EC                in al,dx
00001936  134649            adc ax,[bp+0x49]
00001939  4C                dec sp
0000193A  45                inc bp
0000193B  53                push bx
0000193C  00067C21          add [0x217c],al
00001940  0000              add [bx+si],al
00001942  851A              test [bp+si],bx
00001944  0000              add [bx+si],al
00001946  46                inc si
00001947  4C                dec sp
00001948  4F                dec di
00001949  50                push ax
0000194A  50                push ax
0000194B  59                pop cx
0000194C  5F                pop di
0000194D  44                inc sp
0000194E  49                dec cx
0000194F  52                push dx
00001950  45                inc bp
00001951  43                inc bx
00001952  54                push sp
00001953  00068122          add [0x2281],al
00001957  0000              add [bx+si],al
00001959  AD                lodsw
0000195A  1A00              sbb al,[bx+si]
0000195C  004752            add [bx+0x52],al
0000195F  4F                dec di
00001960  55                push bp
00001961  50                push ax
00001962  5F                pop di
00001963  41                inc cx
00001964  43                inc bx
00001965  4C                dec sp
00001966  53                push bx
00001967  0001              add [bx+di],al
00001969  791A              jns 0x1985
0000196B  0000              add [bx+si],al
0000196D  0000              add [bx+si],al
0000196F  0000              add [bx+si],al
00001971  48                dec ax
00001972  45                inc bp
00001973  4C                dec sp
00001974  50                push ax
00001975  00068322          add [0x2283],al
00001979  0000              add [bx+si],al
0000197B  AD                lodsw
0000197C  1A00              sbb al,[bx+si]
0000197E  00494D            add [bx+di+0x4d],cl
00001981  4D                dec bp
00001982  45                inc bp
00001983  44                inc sp
00001984  49                dec cx
00001985  41                inc cx
00001986  54                push sp
00001987  45                inc bp
00001988  5F                pop di
00001989  44                inc sp
0000198A  45                inc bp
0000198B  53                push bx
0000198C  50                push ax
0000198D  4F                dec di
0000198E  4F                dec di
0000198F  4C                dec sp
00001990  49                dec cx
00001991  4E                dec si
00001992  47                inc di
00001993  004718            add [bx+0x18],al
00001996  27                daa
00001997  0000              add [bx+si],al
00001999  0100              add [bx+si],ax
0000199B  6300              arpl [bx+si],ax
0000199D  49                dec cx
0000199E  4E                dec si
0000199F  54                push sp
000019A0  45                inc bp
000019A1  52                push dx
000019A2  4E                dec si
000019A3  41                inc cx
000019A4  4C                dec sp
000019A5  0041DD            add [bx+di-0x23],al
000019A8  0100              add [bx+si],ax
000019AA  0000              add [bx+si],al
000019AC  0000              add [bx+si],al
000019AE  00494E            add [bx+di+0x4e],cl
000019B1  54                push sp
000019B2  3133              xor [bp+di],si
000019B4  5F                pop di
000019B5  41                inc cx
000019B6  54                push sp
000019B7  5F                pop di
000019B8  54                push sp
000019B9  4F                dec di
000019BA  50                push ax
000019BB  00067021          add [0x2170],al
000019BF  0000              add [bx+si],al
000019C1  EE                out dx,al
000019C2  1B00              sbb ax,[bx+si]
000019C4  004C4F            add [si+0x4f],cl
000019C7  43                inc bx
000019C8  4B                dec bx
000019C9  5F                pop di
000019CA  48                dec ax
000019CB  4F                dec di
000019CC  4C                dec sp
000019CD  44                inc sp
000019CE  5F                pop di
000019CF  54                push sp
000019D0  49                dec cx
000019D1  4D                dec bp
000019D2  45                inc bp
000019D3  00067E22          add [0x227e],al
000019D7  0000              add [bx+si],al
000019D9  AD                lodsw
000019DA  1A00              sbb al,[bx+si]
000019DC  004C4F            add [si+0x4f],cl
000019DF  47                inc di
000019E0  49                dec cx
000019E1  4E                dec si
000019E2  5F                pop di
000019E3  41                inc cx
000019E4  43                inc bx
000019E5  43                inc bx
000019E6  4F                dec di
000019E7  55                push bp
000019E8  4E                dec si
000019E9  54                push sp
000019EA  53                push bx
000019EB  00935621          add [bp+di+0x2156],dl
000019EF  0000              add [bx+si],al
000019F1  0200              add al,[bx+si]
000019F3  F4                hlt
000019F4  014C4F            add [si+0x4f],cx
000019F7  47                inc di
000019F8  49                dec cx
000019F9  4E                dec si
000019FA  53                push bx
000019FB  00068D22          add [0x228d],al
000019FF  0000              add [bx+si],al
00001A01  AD                lodsw
00001A02  1A00              sbb al,[bx+si]
00001A04  004D41            add [di+0x41],cl
00001A07  49                dec cx
00001A08  4E                dec si
00001A09  54                push sp
00001A0A  45                inc bp
00001A0B  4E                dec si
00001A0C  41                inc cx
00001A0D  4E                dec si
00001A0E  43                inc bx
00001A0F  45                inc bp
00001A10  00417F            add [bx+di+0x7f],al
00001A13  1A00              sbb al,[bx+si]
00001A15  0000              add [bx+si],al
00001A17  0000              add [bx+si],al
00001A19  004D41            add [di+0x41],cl
00001A1C  50                push ax
00001A1D  5F                pop di
00001A1E  46                inc si
00001A1F  49                dec cx
00001A20  4C                dec sp
00001A21  45                inc bp
00001A22  0001              add [bx+di],al
00001A24  DB01              fild dword [bx+di]
00001A26  0000              add [bx+si],al
00001A28  0000              add [bx+si],al
00001A2A  0000              add [bx+si],al
00001A2C  4D                dec bp
00001A2D  4F                dec di
00001A2E  4E                dec si
00001A2F  4F                dec di
00001A30  43                inc bx
00001A31  48                dec ax
00001A32  52                push dx
00001A33  4F                dec di
00001A34  4D                dec bp
00001A35  45                inc bp
00001A36  00933B22          add [bp+di+0x223b],dl
00001A3A  0000              add [bx+si],al
00001A3C  0100              add [bx+si],ax
00001A3E  58                pop ax
00001A3F  024E41            add cl,[bp+0x41]
00001A42  4D                dec bp
00001A43  45                inc bp
00001A44  5F                pop di
00001A45  53                push bx
00001A46  50                push ax
00001A47  41                inc cx
00001A48  43                inc bx
00001A49  45                inc bp
00001A4A  00165821          add [0x2158],dl
00001A4E  0000              add [bx+si],al
00001A50  C6                db 0xc6
00001A51  1A00              sbb al,[bx+si]
00001A53  004E45            add [bp+0x45],cl
00001A56  54                push sp
00001A57  57                push di
00001A58  4F                dec di
00001A59  52                push dx
00001A5A  4B                dec bx
00001A5B  5F                pop di
00001A5C  42                inc dx
00001A5D  55                push bp
00001A5E  46                inc si
00001A5F  46                inc si
00001A60  45                inc bp
00001A61  52                push dx
00001A62  5F                pop di
00001A63  53                push bx
00001A64  49                dec cx
00001A65  5A                pop dx
00001A66  45                inc bp
00001A67  00935C21          add [bp+di+0x215c],dl
00001A6B  0000              add [bx+si],al
00001A6D  0100              add [bx+si],ax
00001A6F  2000              and [bx+si],al
00001A71  4E                dec si
00001A72  45                inc bp
00001A73  54                push sp
00001A74  57                push di
00001A75  4F                dec di
00001A76  52                push dx
00001A77  4B                dec bx
00001A78  5F                pop di
00001A79  54                push sp
00001A7A  41                inc cx
00001A7B  53                push bx
00001A7C  4B                dec bx
00001A7D  53                push bx
00001A7E  0041D9            add [bx+di-0x27],al
00001A81  0100              add [bx+si],ax
00001A83  0000              add [bx+si],al
00001A85  0000              add [bx+si],al
00001A87  004E4F            add [bp+0x4f],cl
00001A8A  5F                pop di
00001A8B  354400            xor ax,0x44
00001A8E  41                inc cx
00001A8F  801A00            sbb byte [bp+si],0x0
00001A92  0000              add [bx+si],al
00001A94  0000              add [bx+si],al
00001A96  004E4F            add [bp+0x4f],cl
00001A99  5F                pop di
00001A9A  55                push bp
00001A9B  4D                dec bp
00001A9C  42                inc dx
00001A9D  53                push bx
00001A9E  0001              add [bx+di],al
00001AA0  6A1A              push byte +0x1a
00001AA2  0000              add [bx+si],al
00001AA4  0000              add [bx+si],al
00001AA6  0000              add [bx+si],al
00001AA8  4E                dec si
00001AA9  4F                dec di
00001AAA  5F                pop di
00001AAB  41                inc cx
00001AAC  43                inc bx
00001AAD  43                inc bx
00001AAE  4F                dec di
00001AAF  55                push bp
00001AB0  4E                dec si
00001AB1  54                push sp
00001AB2  5F                pop di
00001AB3  53                push bx
00001AB4  45                inc bp
00001AB5  52                push dx
00001AB6  56                push si
00001AB7  45                inc bp
00001AB8  52                push dx
00001AB9  00933922          add [bp+di+0x2239],dl
00001ABD  0000              add [bx+si],al
00001ABF  0000              add [bx+si],al
00001AC1  60                pusha
00001AC2  094E4F            or [bp+0x4f],cx
00001AC5  4E                dec si
00001AC6  44                inc sp
00001AC7  4F                dec di
00001AC8  53                push bx
00001AC9  5F                pop di
00001ACA  4C                dec sp
00001ACB  4F                dec di
00001ACC  4F                dec di
00001ACD  4B                dec bx
00001ACE  55                push bp
00001ACF  50                push ax
00001AD0  53                push bx
00001AD1  00068A22          add [0x228a],al
00001AD5  0000              add [bx+si],al
00001AD7  AD                lodsw
00001AD8  1A00              sbb al,[bx+si]
00001ADA  004E4F            add [bp+0x4f],cl
00001ADD  54                push sp
00001ADE  49                dec cx
00001ADF  46                inc si
00001AE0  49                dec cx
00001AE1  43                inc bx
00001AE2  41                inc cx
00001AE3  54                push sp
00001AE4  49                dec cx
00001AE5  4F                dec di
00001AE6  4E                dec si
00001AE7  0001              add [bx+di],al
00001AE9  DA01              fiadd dword [bx+di]
00001AEB  0000              add [bx+si],al
00001AED  0000              add [bx+si],al
00001AEF  0000              add [bx+si],al
00001AF1  50                push ax
00001AF2  41                inc cx
00001AF3  52                push dx
00001AF4  4B                dec bx
00001AF5  00166021          add [0x2160],dl
00001AF9  0000              add [bx+si],al
00001AFB  301B              xor [bp+di],bl
00001AFD  0000              add [bx+si],al
00001AFF  50                push ax
00001B00  52                push dx
00001B01  49                dec cx
00001B02  4E                dec si
00001B03  54                push sp
00001B04  45                inc bp
00001B05  52                push dx
00001B06  5F                pop di
00001B07  42                inc dx
00001B08  55                push bp
00001B09  46                inc si
00001B0A  46                inc si
00001B0B  45                inc bp
00001B0C  52                push dx
00001B0D  5F                pop di
00001B0E  53                push bx
00001B0F  49                dec cx
00001B10  5A                pop dx
00001B11  45                inc bp
00001B12  00936221          add [bp+di+0x2162],dl
00001B16  0000              add [bx+si],al
00001B18  0000              add [bx+si],al
00001B1A  07                pop es
00001B1B  005052            add [bx+si+0x52],dl
00001B1E  49                dec cx
00001B1F  4E                dec si
00001B20  54                push sp
00001B21  45                inc bp
00001B22  52                push dx
00001B23  5F                pop di
00001B24  54                push sp
00001B25  41                inc cx
00001B26  53                push bx
00001B27  4B                dec bx
00001B28  53                push bx
00001B29  00068422          add [0x2284],al
00001B2D  0000              add [bx+si],al
00001B2F  AD                lodsw
00001B30  1A00              sbb al,[bx+si]
00001B32  005052            add [bx+si+0x52],dl
00001B35  49                dec cx
00001B36  4E                dec si
00001B37  54                push sp
00001B38  5F                pop di
00001B39  53                push bx
00001B3A  54                push sp
00001B3B  52                push dx
00001B3C  45                inc bp
00001B3D  41                inc cx
00001B3E  4D                dec bp
00001B3F  53                push bx
00001B40  00068222          add [0x2282],al
00001B44  0000              add [bx+si],al
00001B46  AD                lodsw
00001B47  1A00              sbb al,[bx+si]
00001B49  005052            add [bx+si+0x52],dl
00001B4C  49                dec cx
00001B4D  4E                dec si
00001B4E  54                push sp
00001B4F  49                dec cx
00001B50  4E                dec si
00001B51  47                inc di
00001B52  00068822          add [0x2288],al
00001B56  0000              add [bx+si],al
00001B58  AD                lodsw
00001B59  1A00              sbb al,[bx+si]
00001B5B  005250            add [bp+si+0x50],dl
00001B5E  53                push bx
00001B5F  5F                pop di
00001B60  53                push bx
00001B61  55                push bp
00001B62  50                push ax
00001B63  50                push ax
00001B64  4F                dec di
00001B65  52                push dx
00001B66  54                push sp
00001B67  0001              add [bx+di],al
00001B69  681A00            push word 0x1a
00001B6C  0000              add [bx+si],al
00001B6E  0000              add [bx+si],al
00001B70  005245            add [bp+si+0x45],dl
00001B73  4D                dec bp
00001B74  4F                dec di
00001B75  56                push si
00001B76  45                inc bp
00001B77  00936921          add [bp+di+0x2169],dl
00001B7B  0000              add [bx+si],al
00001B7D  2000              and [bx+si],al
00001B7F  FF                db 0xff
00001B80  FF5245            call [bp+si+0x45]
00001B83  51                push cx
00001B84  4D                dec bp
00001B85  7475              jz 0x1bfc
00001B87  1F                pop ds
00001B88  50                push ax
00001B89  5D                pop bp
00001B8A  5E                pop si
00001B8B  6F                outsw
00001B8C  7279              jc 0x1c07
00001B8E  5D                pop bp
00001B8F  20F6              and dh,dh
00001B91  6E                outsb
00001B92  0D4143            or ax,0x4341
00001B95  43                inc bx
00001B96  4F                dec di
00001B97  55                push bp
00001B98  07                pop es
00001B99  59                pop cx
00001B9A  42                inc dx
00001B9B  E84A5F            call 0x7ae8
00001B9E  0001              add [bx+di],al
00001BA0  43                inc bx
00001BA1  41                inc cx
00001BA2  43                inc bx
00001BA3  0006803E          add [0x3e80],al
00001BA7  5F                pop di
00001BA8  009400AD          add [si-0x5300],dl
00001BAC  1A00              sbb al,[bx+si]
00001BAE  004C00            add [si+0x0],cl
00001BB1  93                xchg ax,bx
00001BB2  6793              xchg ax,bx
00001BB4  6221              bound sp,[bx+di]
00001BB6  0000              add [bx+si],al
00001BB8  0004              add [si],al
00001BBA  52                push dx
00001BBB  55                push bp
00001BBC  4E                dec si
00001BBD  45                inc bp
00001BBE  52                push dx
00001BBF  5F                pop di
00001BC0  42                inc dx
00001BC1  55                push bp
00001BC2  46                inc si
00001BC3  46                inc si
00001BC4  45                inc bp
00001BC5  52                push dx
00001BC6  5F                pop di
00001BC7  53                push bx
00001BC8  49                dec cx
00001BC9  5A                pop dx
00001BCA  45                inc bp
00001BCB  6B5D20F6          imul bx,[di+0x20],byte -0xa
00001BCF  6E                outsb
00001BD0  0DFF00            or ax,0xff
00001BD3  52                push dx
00001BD4  55                push bp
00001BD5  4E                dec si
00001BD6  45                inc bp
00001BD7  52                push dx
00001BD8  5F                pop di
00001BD9  52                push dx
00001BDA  53                push bx
00001BDB  45                inc bp
00001BDC  43                inc bx
00001BDD  54                push sp
00001BDE  803E6D0093        cmp byte [0x6d],0x93
00001BE3  0030              add [bx+si],dh
00001BE5  1B5345            sbb dx,[bp+di+0x45]
00001BE8  45                inc bp
00001BE9  4B                dec bx
00001BEA  5F                pop di
00001BEB  0001              add [bx+di],al
00001BED  43                inc bx
00001BEE  41                inc cx
00001BEF  43                inc bx
00001BF0  00065E06          add [0x65e],al
00001BF4  7C21              jl 0x1c17
00001BF6  0000              add [bx+si],al
00001BF8  851A              test [bp+si],bx
00001BFA  53                push bx
00001BFB  45                inc bp
00001BFC  4E                dec si
00001BFD  44                inc sp
00001BFE  4E                dec si
00001BFF  54                push sp
00001C00  5F                pop di
00001C01  53                push bx
00001C02  45                inc bp
00001C03  52                push dx
00001C04  56                push si
00001C05  5F                pop di
00001C06  49                dec cx
00001C07  50                push ax
00001C08  45                inc bp
00001C09  44                inc sp
00001C0A  89068822          mov [0x2288],ax
00001C0E  0000              add [bx+si],al
00001C10  AD                lodsw
00001C11  1A545F            sbb dl,[si+0x5f]
00001C14  53                push bx
00001C15  45                inc bp
00001C16  52                push dx
00001C17  56                push si
00001C18  5F                pop di
00001C19  6E                outsb
00001C1A  204354            and [bp+di+0x54],al
00001C1D  52                push dx
00001C1E  4F                dec di
00001C1F  4C                dec sp
00001C20  00068B06          add [0x68b],al
00001C24  8822              mov [bp+si],ah
00001C26  0000              add [bx+si],al
00001C28  AD                lodsw
00001C29  1A5420            sbb dl,[si+0x20]
00001C2C  53                push bx
00001C2D  48                dec ax
00001C2E  41                inc cx
00001C2F  43                inc bx
00001C30  4C                dec sp
00001C31  5F                pop di
00001C32  53                push bx
00001C33  55                push bp
00001C34  50                push ax
00001C35  50                push ax
00001C36  4F                dec di
00001C37  52                push dx
00001C38  54                push sp
00001C39  3D933B            cmp ax,0x3b93
00001C3C  2200              and al,[bx+si]
00001C3E  0001              add [bx+di],al
00001C40  98                cbw
00001C41  54                push sp
00001C42  205348            and [bp+di+0x48],dl
00001C45  41                inc cx
00001C46  43                inc bx
00001C47  0000              add [bx+si],al
00001C49  4C                dec sp
00001C4A  4F                dec di
00001C4B  41                inc cx
00001C4C  4D                dec bp
00001C4D  53                push bx
00001C4E  DC01              fadd qword [bx+di]
00001C50  DA01              fiadd dword [bx+di]
00001C52  61                popa
00001C53  1CAD              sbb al,0xad
00001C55  1A5420            sbb dl,[si+0x20]
00001C58  55                push bp
00001C59  54                push sp
00001C5A  49                dec cx
00001C5B  4E                dec si
00001C5C  44                inc sp
00001C5D  4E                dec si
00001C5E  5F                pop di
00001C5F  4B                dec bx
00001C60  45                inc bp
00001C61  59                pop cx
00001C62  0001              add [bx+di],al
00001C64  6601681A          add [bx+si+0x1a],ebp
00001C68  0000              add [bx+si],al
00001C6A  0000              add [bx+si],al
00001C6C  45                inc bp
00001C6D  52                push dx
00001C6E  56                push si
00001C6F  42                inc dx
00001C70  4F                dec di
00001C71  53                push bx
00001C72  4E                dec si
00001C73  43                inc bx
00001C74  45                inc bp
00001C75  8101681A          add word [bx+di],0x1a68
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  6E                outsb
00001C7E  205749            and [bx+0x49],dl
00001C81  4E                dec si
00001C82  44                inc sp
00001C83  4F                dec di
00001C84  4C                dec sp
00001C85  53                push bx
00001C86  0001              add [bx+di],al
00001C88  791A              jns 0x1ca4
00001C8A  0000              add [bx+si],al
00001C8C  0000              add [bx+si],al
00001C8E  3F                aas
00001C8F  00953023          add [di+0x2330],dl
00001C93  0000              add [bx+si],al
00001C95  0000              add [bx+si],al
00001C97  E80340            call 0x5c9d
00001C9A  791A              jns 0x1cb6
00001C9C  0000              add [bx+si],al
00001C9E  0000              add [bx+si],al
00001CA0  1A067C21          sbb al,[0x217c]
00001CA4  3C00              cmp al,0x0
00001CA6  2A7406            sub dh,[si+0x6]
00001CA9  B200              mov dl,0x0
00001CAB  99                cwd
00001CAC  01B001B2          add [bx+si-0x4dff],si
00001CB0  200E0001          and [0x100],cl
00001CB4  0101              add [bx+di],ax
00001CB6  0467              add al,0x67
00001CB8  C3                ret
00001CB9  008804B0          add [bx+si-0x4ffc],cl
00001CBD  268025BF          and byte [es:di],0xbf
00001CC1  2E8026241DBF      and byte [cs:0x1d24],0xbf
00001CC7  2E8026BB1EBF      and byte [cs:0x1ebb],0xbf
00001CCD  2E8026E21DBF      and byte [cs:0x1de2],0xbf
00001CD3  2E80264D1EBF      and byte [cs:0x1e4d],0xbf
00001CD9  2E8026CA1EBF      and byte [cs:0x1eca],0xbf
00001CDF  2E8026B220BF      and byte [cs:0x20b2],0xbf
00001CE5  CB                retf
00001CE6  F9                stc
00001CE7  CB                retf
00001CE8  90                nop
00001CE9  002E8E06          add [0x68e],ch
00001CED  D56B              aad 0x6b
00001CEF  01BE711A          add [bp+0x1a71],di
00001CF3  E89301            call 0x1e89
00001CF6  7217              jc 0x1d0f
00001CF8  0000              add [bx+si],al
00001CFA  2E6B1A01          imul bx,[cs:bp+si],byte +0x1
00001CFE  06                push es
00001CFF  1F                pop ds
00001D00  8C00              mov [bx+si],es
00001D02  0E                push cs
00001D03  F7BFE80B          idiv word [bx+0xbe8]
00001D07  E8B306            call 0x23bd
00001D0A  F3A4              rep movsb
00001D0C  32C0              xor al,al
00001D0E  AA                stosb
00001D0F  07                pop es
00001D10  1F                pop ds
00001D11  BF26BE            mov di,0xbe26
00001D14  C3                ret
00001D15  CB                retf
00001D16  04F3              add al,0xf3
00001D18  26BEBF10          es mov si,0x10bf
00001D1C  23BA0200          and di,[bp+si+0x2]
00001D20  E84F04            call 0x2172
00001D23  F326BEBF90        es rep mov si,0x90bf
00001D28  22BA8000          and bh,[bp+si+0x80]
00001D2C  E88C03            call 0x20bb
00001D2F  8BD7              mov dx,di
00001D31  7409              jz 0x1d3c
00001D33  2E803E007418      cmp byte [cs:0x7400],0x18
00001D39  33C9              xor cx,cx
00001D3B  2E803E102310      cmp byte [cs:0x2310],0x10
00001D41  7409              jz 0x1d4c
00001D43  2E803E102308      cmp byte [cs:0x2310],0x8
00001D49  0200              add al,[bx+si]
00001D4B  2E803E107518      cmp byte [cs:0x7510],0x18
00001D51  33C9              xor cx,cx
00001D53  2E6B3E7E1A00      imul di,[cs:0x1a7e],byte +0x0
00001D59  BEE80B            mov si,0xbe8
00001D5C  EB1E              jmp short 0x1d7c
00001D5E  BE271A            mov si,0x1a27
00001D61  B90D00            mov cx,0xd
00001D64  F3A4              rep movsb
00001D66  32C0              xor al,al
00001D68  AA                stosb
00001D69  8BF2              mov si,dx
00001D6B  BFE80B            mov di,0xbe8
00001D6E  E84C06            call 0x23bd
00001D71  F3A4              rep movsb
00001D73  B80D0A            mov ax,0xa0d
00001D76  AB                stosw
00001D77  B000              mov al,0x0
00001D79  AA                stosb
00001D7A  8BF2              mov si,dx
00001D7C  06                push es
00001D7D  BF57E8            mov di,0xe857
00001D80  2A01              sub al,[bx+di]
00001D82  008EC0B8          add [bp-0x4740],cl
00001D86  0060CD            add [bx+si-0x33],ah
00001D89  21E8              and ax,bp
00001D8B  1F                pop ds
00001D8C  06                push es
00001D8D  7304              jnc 0x1d93
00001D8F  07                pop es
00001D90  EB70              jmp short 0x1e02
00001D92  90                nop
00001D93  03F9              add di,cx
00001D95  26893ED701        mov [es:0x1d7],di
00001D9A  1E                push ds
00001D9B  BA5701            mov dx,0x157
00001D9E  8CC0              mov ax,es
00001DA0  8ED8              mov ds,ax
00001DA2  B93700            mov cx,0x37
00001DA5  B44E              mov ah,0x4e
00001DA7  7E0A              jng 0x1db3
00001DA9  CD07              int 0x7
00001DAB  7255              jc 0x1e02
00001DAD  06                push es
00001DAE  2C90              sub al,0x90
00001DB0  2E8E0626F6        mov es,[cs:0xf626]
00001DB5  06                push es
00001DB6  95                xchg ax,bp
00001DB7  0010              add [bx+si],dl
00001DB9  07                pop es
00001DBA  F9                stc
00001DBB  7445              jz 0x1e02
00001DBD  0000              add [bx+si],al
00001DBF  2E803E6C1E06      cmp byte [cs:0x1e6c],0x6
00001DC5  2A01              sub al,[bx+di]
00001DC7  008EC026          add [bp+0x26c0],cl
00001DCB  8B3ED701          mov di,[0x1d7]
00001DCF  BE341A            mov si,0x1a34
00001DD2  B91200            mov cx,0x12
00001DD5  F3A4              rep movsb
00001DD7  06                push es
00001DD8  1F                pop ds
00001DD9  BA5701            mov dx,0x157
00001DDC  B8403D            mov ax,0x3d40
00001DDF  7E0A              jng 0x1deb
00001DE1  CD07              int 0x7
00001DE3  721D              jc 0x1e02
00001DE5  0000              add [bx+si],al
00001DE7  2E803E6D8BD8      cmp byte [cs:0x8b6d],0xd8
00001DED  BA5621            mov dx,0x2156
00001DF0  B93A01            mov cx,0x13a
00001DF3  B43F              mov ah,0x3f
00001DF5  FF5FCD            call far [bx-0x33]
00001DF8  033D              add di,[di]
00001DFA  61                popa
00001DFB  009C8BD8          add [si-0x2775],bl
00001DFF  B43E              mov ah,0x3e
00001E01  9D                popf
00001E02  E858C3            call 0xe15d
00001E05  57                push di
00001E06  56                push si
00001E07  03CE              add cx,si
00001E09  AC                lodsb
00001E0A  CD2F              int 0x2f
00001E0C  0A15              or dl,[di]
00001E0E  3BF1              cmp si,cx
00001E10  7311              jnc 0x1e23
00001E12  AE                scasb
00001E13  74F4              jz 0x1e09
00001E15  268A65FF          mov ah,[es:di-0x1]
00001E19  E80F00            call 0x1e2b
00001E1C  74EB              jz 0x1e09
00001E1E  5E                pop si
00001E1F  5F                pop di
00001E20  F8                clc
00001E21  5A                pop dx
00001E22  59                pop cx
00001E23  268A25            mov ah,[es:di]
00001E26  E80200            call 0x1e2b
00001E29  EBF3              jmp short 0x1e1e
00001E2B  3C61              cmp al,0x61
00001E2D  7206              jc 0x1e35
00001E2F  3C7A              cmp al,0x7a
00001E31  7702              ja 0x1e35
00001E33  245F              and al,0x5f
00001E35  80FC61            cmp ah,0x61
00001E38  7208              jc 0x1e42
00001E3A  80FC7A            cmp ah,0x7a
00001E3D  7703              ja 0x1e42
00001E3F  80E45F            and ah,0x5f
00001E42  3AC4              cmp al,ah
00001E44  E858C3            call 0xe19f
00001E47  B9FFFF            mov cx,0xffff
00001E4A  32C0              xor al,al
00001E4C  F2AE              repne scasb
00001E4E  4F                dec di
00001E4F  F8                clc
00001E50  5A                pop dx
00001E51  59                pop cx
00001E52  58                pop ax
00001E53  AC                lodsb
00001E54  AA                stosb
00001E55  26803CFA          cmp byte [es:si],0xfa
00001E59  5A                pop dx
00001E5A  59                pop cx
00001E5B  58                pop ax
00001E5C  1E                push ds
00001E5D  2EA16F1A          mov ax,[cs:0x1a6f]
00001E61  8EDA              mov ds,dx
00001E63  3B161600          cmp dx,[0x16]
00001E67  8B162C00          mov dx,[0x2c]
00001E6B  7519              jnz 0x1e86
00001E6D  85D2              test dx,dx
00001E6F  740A              jz 0x1e7b
00001E71  86C4              xchg al,ah
00001E73  2D1403            sub ax,0x314
00001E76  3D0A00            cmp ax,0xa
00001E79  7D0B              jnl 0x1e86
00001E7B  8CDA              mov dx,ds
00001E7D  4A                dec dx
00001E7E  8EDA              mov ds,dx
00001E80  03160300          add dx,[0x3]
00001E84  42                inc dx
00001E85  42                inc dx
00001E86  1F                pop ds
00001E87  5A                pop dx
00001E88  59                pop cx
00001E89  58                pop ax
00001E8A  53                push bx
00001E8B  51                push cx
00001E8C  06                push es
00001E8D  57                push di
00001E8E  8EC2              mov es,dx
00001E90  33FF              xor di,di
00001E92  E82805            call 0x23bd
00001E95  8BD9              mov bx,cx
00001E97  C6003D            mov byte [bx+si],0x3d
00001E9A  41                inc cx
00001E9B  E865FF            call 0x1e03
00001E9E  740A              jz 0x1eaa
00001EA0  E8A2FF            call 0x1e45
00001EA3  47                inc di
00001EA4  26803D01          cmp byte [es:di],0x1
00001EA8  73F1              jnc 0x1e9b
00001EAA  B03D              mov al,0x3d
00001EAC  E8FD04            call 0x23ac
00001EAF  E305              jcxz 0x1eb6
00001EB1  F2AE              repne scasb
00001EB3  58                pop ax
00001EB4  58                pop ax
00001EB5  41                inc cx
00001EB6  C60000            mov byte [bx+si],0x0
00001EB9  83F901            cmp cx,byte +0x1
00001EBC  7302              jnc 0x1ec0
00001EBE  5F                pop di
00001EBF  07                pop es
00001EC0  5E                pop si
00001EC1  5A                pop dx
00001EC2  59                pop cx
00001EC3  5B                pop bx
00001EC4  1E                push ds
00001EC5  50                push ax
00001EC6  51                push cx
00001EC7  B8C003            mov ax,0x3c0
00001ECA  8ED8              mov ds,ax
00001ECC  C606000000        mov byte [0x0],0x0
00001ED1  B121              mov cl,0x21
00001ED3  B001              mov al,0x1
00001ED5  D2E0              shl al,cl
00001ED7  7417              jz 0x1ef0
00001ED9  54                push sp
00001EDA  58                pop ax
00001EDB  3BC4              cmp ax,sp
00001EDD  7511              jnz 0x1ef0
00001EDF  B80070            mov ax,0x7000
00001EE2  50                push ax
00001EE3  9D                popf
00001EE4  9C                pushf
00001EE5  58                pop ax
00001EE6  250070            and ax,0x7000
00001EE9  7405              jz 0x1ef0
00001EEB  C606000001        mov byte [0x0],0x1
00001EF0  59                pop cx
00001EF1  58                pop ax
00001EF2  1F                pop ds
00001EF3  C3                ret
00001EF4  3420              xor al,0x20
00001EF6  41                inc cx
00001EF7  52                push dx
00001EF8  54                push sp
00001EF9  49                dec cx
00001EFA  53                push bx
00001EFB  4F                dec di
00001EFC  5C                pop sp
00001EFD  4C                dec sp
00001EFE  41                inc cx
00001EFF  4E                dec si
00001F00  7461              jz 0x1f63
00001F02  7374              jnc 0x1f78
00001F04  6974204E45        imul si,[si+0x20],word 0x454e
00001F09  54                push sp
00001F0A  42                inc dx
00001F0B  49                dec cx
00001F0C  66205245          o32 and [bp+si+0x45],dl
00001F10  44                inc sp
00001F11  54                push sp
00001F12  02B23008          add dh,[bp+si+0x830]
00001F16  00B02020          add [bx+si+0x2020],dh
00001F1A  0000              add [bx+si],al
00001F1C  006E00            add [bp+0x0],ch
00001F1F  0000              add [bx+si],al
00001F21  50                push ax
00001F22  53                push bx
00001F23  51                push cx
00001F24  57                push di
00001F25  06                push es
00001F26  1E                push ds
00001F27  B85C35            mov ax,0x355c
00001F2A  CD21              int 0x21
00001F2C  8000BF            add byte [bx+si],0xbf
00001F2F  E302              jcxz 0x1f33
00001F31  8CC8              mov ax,cs
00001F33  57                push di
00001F34  BE4F29            mov si,0x294f
00001F37  8600              xchg al,[bx+si]
00001F39  B90800            mov cx,0x8
00001F3C  5F                pop di
00001F3D  740A              jz 0x1f49
00001F3F  47                inc di
00001F40  83FF78            cmp di,byte +0x78
00001F43  76EE              jna 0x1f33
00001F45  F9                stc
00001F46  E9B5BE            jmp 0xddfe
00001F49  8000BF            add byte [bx+si],0xbf
00001F4C  C6067A2901        mov byte [0x297a],0x1
00001F51  57                push di
00001F52  BE5729            mov si,0x2957
00001F55  8600              xchg al,[bx+si]
00001F57  B90800            mov cx,0x8
00001F5A  5F                pop di
00001F5B  740B              jz 0x1f68
00001F5D  47                inc di
00001F5E  83FF70            cmp di,byte +0x70
00001F61  76EE              jna 0x1f51
00001F63  C6067A2900        mov byte [0x297a],0x0
00001F68  33D2              xor dx,dx
00001F6A  8C0EE020          mov [0x20e0],cs
00001F6E  88160A21          mov [0x210a],dl
00001F72  0E                push cs
00001F73  07                pop es
00001F74  BBDA20            mov bx,0x20da
00001F77  26C60733          mov byte [es:bx],0x33
00001F7B  CD5C              int 0x5c
00001F7D  CD2F              int 0x2f
00001F7F  8408              test [bx+si],cl
00001F81  3C23              cmp al,0x23
00001F83  7471              jz 0x1ff6
00001F85  3C06              cmp al,0x6
00001F87  75BC              jnz 0x1f45
00001F89  BE1A21            mov si,0x211a
00001F8C  BF7729            mov di,0x2977
00001F8F  B903B9            mov cx,0xb903
00001F92  0800              or [bx+si],al
00001F94  75AF              jnz 0x1f45
00001F96  803E7A2901        cmp byte [0x297a],0x1
00001F9B  7452              jz 0x1fef
00001F9D  8A262221          mov ah,[0x2122]
00001FA1  A02321            mov al,[0x2123]
00001FA4  3C63              cmp al,0x63
00001FA6  779D              ja 0x1f45
00001FA8  80FC01            cmp ah,0x1
00001FAB  7298              jc 0x1f45
00001FAD  7714              ja 0x1fc3
00001FAF  3C0F              cmp al,0xf
00001FB1  7310              jnc 0x1fc3
00001FB3  803E3F210F        cmp byte [0x213f],0xf
00001FB8  758B              jnz 0x1f45
00001FBA  803E40210C        cmp byte [0x2140],0xc
00001FBF  742E              jz 0x1fef
00001FC1  EB82              jmp short 0x1f45
00001FC3  56                push si
00001FC4  51                push cx
00001FC5  8D361A21          lea si,[0x211a]
00001FC9  B90636            mov cx,0x3606
00001FCC  3200              xor al,[bx+si]
00001FCE  AC                lodsb
00001FCF  02E0              add ah,al
00001FD1  E2FB              loop 0x1fce
00001FD3  8AC4              mov al,ah
00001FD5  B104              mov cl,0x4
00001FD7  D2EC              shr ah,cl
00001FD9  240F              and al,0xf
00001FDB  32C4              xor al,ah
00001FDD  8AE0              mov ah,al
00001FDF  D2E4              shl ah,cl
00001FE1  0AE0              or ah,al
00001FE3  80F4F0            xor ah,0xf0
00001FE6  3A24              cmp ah,[si]
00001FE8  59                pop cx
00001FE9  5E                pop si
00001FEA  1A01              sbb al,[bx+di]
00001FEC  7456              jz 0x2044
00001FEE  FF                db 0xff
00001FEF  FEC6              inc dh
00001FF1  80FE06            cmp dh,0x6
00001FF4  7307              jnc 0x1ffd
00001FF6  FEC2              inc dl
00001FF8  1A01              sbb al,[bx+di]
00001FFA  746D              jz 0x2069
00001FFC  FF                db 0xff
00001FFD  F8                clc
00001FFE  C6060A210E        mov byte [0x210a],0xe
00002003  0000              add [bx+si],al
00002005  07                pop es
00002006  07                pop es
00002007  1F                pop ds
00002008  5E                pop si
00002009  5A                pop dx
0000200A  59                pop cx
0000200B  5B                pop bx
0000200C  52                push dx
0000200D  33D2              xor dx,dx
0000200F  E80200            call 0x2014
00002012  5A                pop dx
00002013  59                pop cx
00002014  58                pop ax
00002015  53                push bx
00002016  51                push cx
00002017  52                push dx
00002018  B90A00            mov cx,0xa
0000201B  E80500            call 0x2023
0000201E  1F                pop ds
0000201F  5E                pop si
00002020  5A                pop dx
00002021  59                pop cx
00002022  5B                pop bx
00002023  E85905            call 0x257f
00002026  53                push bx
00002027  8BD8              mov bx,ax
00002029  0BDA              or bx,dx
0000202B  7403              jz 0x2030
0000202D  E8F3FF            call 0x2023
00002030  5B                pop bx
00002031  93                xchg ax,bx
00002032  0430              add al,0x30
00002034  AA                stosb
00002035  8BC3              mov ax,bx
00002037  C3                ret
00002038  2EFF36EA2F        push word [cs:0x2fea]
0000203D  2E8F06EE2F        pop word [cs:0x2fee]
00002042  E94404            jmp 0x2489
00002045  2EFF36EA2F        push word [cs:0x2fea]
0000204A  2E8F06EE2F        pop word [cs:0x2fee]
0000204F  E96104            jmp 0x24b3
00002052  56                push si
00002053  BE6932            mov si,0x3269
00002056  FE0C              dec byte [si]
00002058  1E                push ds
00002059  0E                push cs
0000205A  0C00              or al,0x0
0000205C  1F                pop ds
0000205D  5E                pop si
0000205E  C3                ret
0000205F  56                push si
00002060  BE7432            mov si,0x3274
00002063  EBF1              jmp short 0x2056
00002065  E8EAFF            call 0x2052
00002068  2EFF36EC2F        push word [cs:0x2fec]
0000206D  2E8F06EE2F        pop word [cs:0x2fee]
00002072  E91404            jmp 0x2489
00002075  E8DAFF            call 0x2052
00002078  2EFF36EC2F        push word [cs:0x2fec]
0000207D  2E8F06EE2F        pop word [cs:0x2fee]
00002082  E92E04            jmp 0x24b3
00002085  57                push di
00002086  51                push cx
00002087  26803D00          cmp byte [es:di],0x0
0000208B  740E              jz 0x209b
0000208D  E82F04            call 0x24bf
00002090  8D7D09            lea di,[di+0x9]
00002093  E81503            call 0x23ab
00002096  03F9              add di,cx
00002098  47                inc di
00002099  EBEC              jmp short 0x2087
0000209B  59                pop cx
0000209C  5F                pop di
0000209D  59                pop cx
0000209E  58                pop ax
0000209F  53                push bx
000020A0  51                push cx
000020A1  8BD8              mov bx,ax
000020A3  AD                lodsw
000020A4  5B                pop bx
000020A5  C3                ret
000020A6  803C0C            cmp byte [si],0xc
000020A9  3BD8              cmp bx,ax
000020AB  7408              jz 0x20b5
000020AD  E80C03            call 0x23bc
000020B0  03F1              add si,cx
000020B2  46                inc si
000020B3  EBEE              jmp short 0x20a3
000020B5  5E                pop si
000020B6  5A                pop dx
000020B7  59                pop cx
000020B8  5B                pop bx
000020B9  015053            add [bx+si+0x53],dx
000020BC  52                push dx
000020BD  B80037            mov ax,0x3700
000020C0  CD21              int 0x21
000020C2  8AFA              mov bh,dl
000020C4  5A                pop dx
000020C5  51                push cx
000020C6  52                push dx
000020C7  57                push di
000020C8  E8F102            call 0x23bc
000020CB  E354              jcxz 0x2121
000020CD  B320              mov bl,0x20
000020CF  383C              cmp [si],bh
000020D1  7404              jz 0x20d7
000020D3  381C              cmp [si],bl
000020D5  7705              ja 0x20dc
000020D7  46                inc si
000020D8  E2F5              loop 0x20cf
000020DA  EB45              jmp short 0x2121
000020DC  803C3B            cmp byte [si],0x3b
000020DF  750F              jnz 0x20f0
000020E1  AC                lodsb
000020E2  3C0D              cmp al,0xd
000020E4  74E9              jz 0x20cf
000020E6  3C0A              cmp al,0xa
000020E8  74E5              jz 0x20cf
000020EA  CD2F              int 0x2f
000020EC  843C              test [si],bh
000020EE  EBF1              jmp short 0x20e1
000020F0  8A04              mov al,[si]
000020F2  3AC7              cmp al,bh
000020F4  742B              jz 0x2121
000020F6  3AC3              cmp al,bl
000020F8  7627              jna 0x2121
000020FA  80FB00            cmp bl,0x0
000020FD  7413              jz 0x2112
000020FF  3C2C              cmp al,0x2c
00002101  7503              jnz 0x2106
00002103  46                inc si
00002104  EB1B              jmp short 0x2121
00002106  3C22              cmp al,0x22
00002108  7404              jz 0x210e
0000210A  3C27              cmp al,0x27
0000210C  7504              jnz 0x2112
0000210E  B300              mov bl,0x0
00002110  8AF8              mov bh,al
00002112  80FB00            cmp bl,0x0
00002115  7403              jz 0x211a
00002117  E89606            call 0x27b0
0000211A  AA                stosb
0000211B  46                inc si
0000211C  4A                dec dx
0000211D  7445              jz 0x2164
0000211F  E2CF              loop 0x20f0
00002121  3C22              cmp al,0x22
00002123  7404              jz 0x2129
00002125  3C27              cmp al,0x27
00002127  7501              jnz 0x212a
00002129  A4                movsb
0000212A  26C60500          mov byte [es:di],0x0
0000212E  5F                pop di
0000212F  56                push si
00002130  57                push di
00002131  5E                pop si
00002132  33C9              xor cx,cx
00002134  2E152B01          cs adc ax,0x12b
00002138  7508              jnz 0x2142
0000213A  E8B802            call 0x23f5
0000213D  7203              jc 0x2142
0000213F  E85A06            call 0x279c
00002142  8BF7              mov si,di
00002144  AC                lodsb
00002145  3C22              cmp al,0x22
00002147  7404              jz 0x214d
00002149  3C27              cmp al,0x27
0000214B  7511              jnz 0x215e
0000214D  8AE0              mov ah,al
0000214F  59                pop cx
00002150  51                push cx
00002151  E83706            call 0x278b
00002154  263865FF          cmp [es:di-0x1],ah
00002158  7504              jnz 0x215e
0000215A  4F                dec di
0000215B  B000              mov al,0x0
0000215D  AA                stosb
0000215E  07                pop es
0000215F  1F                pop ds
00002160  5E                pop si
00002161  5A                pop dx
00002162  59                pop cx
00002163  5B                pop bx
00002164  381C              cmp [si],bl
00002166  76B9              jna 0x2121
00002168  383C              cmp [si],bh
0000216A  74B5              jz 0x2121
0000216C  46                inc si
0000216D  E2F5              loop 0x2164
0000216F  EBB0              jmp short 0x2121
00002171  53                push bx
00002172  B32C              mov bl,0x2c
00002174  B720              mov bh,0x20
00002176  50                push ax
00002177  51                push cx
00002178  52                push dx
00002179  57                push di
0000217A  E83F02            call 0x23bc
0000217D  E326              jcxz 0x21a5
0000217F  383C              cmp [si],bh
00002181  7405              jz 0x2188
00002183  803C20            cmp byte [si],0x20
00002186  7705              ja 0x218d
00002188  46                inc si
00002189  E2F4              loop 0x217f
0000218B  EB18              jmp short 0x21a5
0000218D  8A04              mov al,[si]
0000218F  3AC3              cmp al,bl
00002191  7503              jnz 0x2196
00002193  46                inc si
00002194  EB0F              jmp short 0x21a5
00002196  3AC7              cmp al,bh
00002198  740B              jz 0x21a5
0000219A  3C20              cmp al,0x20
0000219C  7607              jna 0x21a5
0000219E  AA                stosb
0000219F  46                inc si
000021A0  4A                dec dx
000021A1  740C              jz 0x21af
000021A3  E2E8              loop 0x218d
000021A5  26C60500          mov byte [es:di],0x0
000021A9  5F                pop di
000021AA  E2F8              loop 0x21a4
000021AC  5A                pop dx
000021AD  1F                pop ds
000021AE  5A                pop dx
000021AF  5B                pop bx
000021B0  C3                ret
000021B1  2076F1            and [bp-0xf],dh
000021B4  381C              cmp [si],bl
000021B6  76ED              jna 0x21a5
000021B8  383C              cmp [si],bh
000021BA  74E9              jz 0x21a5
000021BC  46                inc si
000021BD  E2F0              loop 0x21af
000021BF  EBE4              jmp short 0x21a5
000021C1  51                push cx
000021C2  57                push di
000021C3  26803D00          cmp byte [es:di],0x0
000021C7  7415              jz 0x21de
000021C9  26394503          cmp [es:di+0x3],ax
000021CD  7504              jnz 0x21d3
000021CF  26895D03          mov [es:di+0x3],bx
000021D3  8D7D09            lea di,[di+0x9]
000021D6  E8D201            call 0x23ab
000021D9  03F9              add di,cx
000021DB  47                inc di
000021DC  EBE5              jmp short 0x21c3
000021DE  5F                pop di
000021DF  59                pop cx
000021E0  59                pop cx
000021E1  58                pop ax
000021E2  53                push bx
000021E3  51                push cx
000021E4  56                push si
000021E5  57                push di
000021E6  1E                push ds
000021E7  B462              mov ah,0x62
000021E9  CD21              int 0x21
000021EB  8EDB              mov ds,bx
000021ED  06                push es
000021EE  1F                pop ds
000021EF  BEAC8A            mov si,0x8aac
000021F2  C8B500F3          enter 0xb5,0xf3
000021F6  A4                movsb
000021F7  26880D            mov [es:di],cl
000021FA  0007              add [bx],al
000021FC  07                pop es
000021FD  5E                pop si
000021FE  5A                pop dx
000021FF  59                pop cx
00002200  5B                pop bx
00002201  50                push ax
00002202  240F              and al,0xf
00002204  0430              add al,0x30
00002206  3C39              cmp al,0x39
00002208  7602              jna 0x220c
0000220A  0407              add al,0x7
0000220C  AA                stosb
0000220D  8BE8              mov bp,ax
0000220F  58                pop ax
00002210  C3                ret
00002211  B104              mov cl,0x4
00002213  D2E8              shr al,cl
00002215  59                pop cx
00002216  E8E8FF            call 0x2201
00002219  58                pop ax
0000221A  E9E4FF            jmp 0x2201
0000221D  0503B2            add ax,0xb203
00002220  0000              add [bx+si],al
00002222  01B02EFF          add [bx+si-0xd2],si
00002226  36EA2F2EFF36      ss jmp 0x36ff:0x2e2f
0000222C  EC                in al,dx
0000222D  2F                das
0000222E  2E8F06EA2F        pop word [cs:0x2fea]
00002233  005053            add [bx+si+0x53],dl
00002236  51                push cx
00002237  52                push dx
00002238  BE792C            mov si,0x2c79
0000223B  8BDF              mov bx,di
0000223D  8CC2              mov dx,es
0000223F  0E                push cs
00002240  07                pop es
00002241  BF792C            mov di,0x2c79
00002244  E8A1FE            call 0x20e8
00002247  0E                push cs
00002248  1F                pop ds
00002249  2EA0152B          mov al,[cs:0x2b15]
0000224D  0000              add [bx+si],al
0000224F  2E152B00          cs adc ax,0x2b
00002253  E309              jcxz 0x225e
00002255  BFF92C            mov di,0x2cf9
00002258  E866FD            call 0x1fc1
0000225B  49                dec cx
0000225C  EBF5              jmp short 0x2253
0000225E  2EA2152B          mov [cs:0x2b15],al
00002262  8BFB              mov di,bx
00002264  8EC2              mov es,dx
00002266  E84203            call 0x25ab
00002269  F9                stc
0000226A  07                pop es
0000226B  1F                pop ds
0000226C  5E                pop si
0000226D  5A                pop dx
0000226E  2E8F06EA2F        pop word [cs:0x2fea]
00002273  C3                ret
00002274  2EFF36EA2F        push word [cs:0x2fea]
00002279  2EFF36EC2F        push word [cs:0x2fec]
0000227E  2E8F06EA2F        pop word [cs:0x2fea]
00002283  005053            add [bx+si+0x53],dl
00002286  51                push cx
00002287  52                push dx
00002288  EBB1              jmp short 0x223b
0000228A  50                push ax
0000228B  56                push si
0000228C  57                push di
0000228D  A6                cmpsb
0000228E  7506              jnz 0x2296
00002290  807CFF00          cmp byte [si-0x1],0x0
00002294  75F7              jnz 0x228d
00002296  5F                pop di
00002297  5E                pop si
00002298  58                pop ax
00002299  C3                ret
0000229A  51                push cx
0000229B  1E                push ds
0000229C  56                push si
0000229D  06                push es
0000229E  57                push di
0000229F  E8F003            call 0x2692
000022A2  5F                pop di
000022A3  07                pop es
000022A4  5E                pop si
000022A5  1F                pop ds
000022A6  59                pop cx
000022A7  C3                ret
000022A8  E81604            call 0x26c1
000022AB  E8ECFF            call 0x229a
000022AE  E81004            call 0x26c1
000022B1  C3                ret
000022B2  50                push ax
000022B3  57                push di
000022B4  06                push es
000022B5  B9FFFF            mov cx,0xffff
000022B8  32C0              xor al,al
000022BA  F2AE              repne scasb
000022BC  F7D1              not cx
000022BE  49                dec cx
000022BF  07                pop es
000022C0  5F                pop di
000022C1  58                pop ax
000022C2  C3                ret
000022C3  06                push es
000022C4  57                push di
000022C5  1E                push ds
000022C6  07                pop es
000022C7  8BFE              mov di,si
000022C9  E8E6FF            call 0x22b2
000022CC  5F                pop di
000022CD  07                pop es
000022CE  59                pop cx
000022CF  58                pop ax
000022D0  53                push bx
000022D1  06                push es
000022D2  B4C0              mov ah,0xc0
000022D4  33DB              xor bx,bx
000022D6  8EC3              mov es,bx
000022D8  CD15              int 0x15
000022DA  7214              jc 0x22f0
000022DC  8CC0              mov ax,es
000022DE  0BC3              or ax,bx
000022E0  740D              jz 0x22ef
000022E2  26833F06          cmp word [es:bx],byte +0x6
000022E6  7208              jc 0x22f0
000022E8  26F6470502        test byte [es:bx+0x5],0x2
000022ED  75F8              jnz 0x22e7
000022EF  EB01              jmp short 0x22f2
000022F1  5A                pop dx
000022F2  59                pop cx
000022F3  5B                pop bx
000022F4  0000              add [bx+si],al
000022F6  0400              add al,0x0
000022F8  0820              or [bx+si],ah
000022FA  0800              or [bx+si],al
000022FC  0000              add [bx+si],al
000022FE  50                push ax
000022FF  53                push bx
00002300  51                push cx
00002301  57                push di
00002302  55                push bp
00002303  8BEF              mov bp,di
00002305  AC                lodsb
00002306  3C3F              cmp al,0x3f
00002308  7435              jz 0x233f
0000230A  3C5E              cmp al,0x5e
0000230C  F9                stc
0000230D  7557              jnz 0x2366
0000230F  E85C00            call 0x236e
00002312  7252              jc 0x2366
00002314  B408              mov ah,0x8
00002316  8B0A              mov cx,[bp+si]
00002318  CD08              int 0x8
0000231A  750F              jnz 0x232b
0000231C  3BEF              cmp bp,di
0000231E  74F4              jz 0x2314
00002320  4F                dec di
00002321  56                push si
00002322  BE4D2E            mov si,0x2e4d
00002325  E86800            call 0x2390
00002328  5E                pop si
00002329  EBE9              jmp short 0x2314
0000232B  3C0D              cmp al,0xd
0000232D  7505              jnz 0x2334
0000232F  E81E05            call 0x2850
00002332  EB2E              jmp short 0x2362
00002334  AA                stosb
00002335  56                push si
00002336  BE4B2E            mov si,0x2e4b
00002339  E85400            call 0x2390
0000233C  5E                pop si
0000233D  EBD5              jmp short 0x2314
0000233F  E82C00            call 0x236e
00002342  7222              jc 0x2366
00002344  B98000            mov cx,0x80
00002347  8BD7              mov dx,di
00002349  748B              jz 0x22d6
0000234B  1E                push ds
0000234C  E82FB4            call 0xd77e
0000234F  3F                aas
00002350  FF5F03            call far [bx+0x3]
00002353  F8                clc
00002354  807DFF0A          cmp byte [di-0x1],0xa
00002358  7508              jnz 0x2362
0000235A  4F                dec di
0000235B  807DFF0D          cmp byte [di-0x1],0xd
0000235F  7501              jnz 0x2362
00002361  4F                dec di
00002362  B000              mov al,0x0
00002364  AA                stosb
00002365  F8                clc
00002366  5D                pop bp
00002367  07                pop es
00002368  07                pop es
00002369  1F                pop ds
0000236A  5E                pop si
0000236B  5A                pop dx
0000236C  59                pop cx
0000236D  5B                pop bx
0000236E  AC                lodsb
0000236F  3C22              cmp al,0x22
00002371  7405              jz 0x2378
00002373  3C27              cmp al,0x27
00002375  F9                stc
00002376  7517              jnz 0x238f
00002378  8AE0              mov ah,al
0000237A  AC                lodsb
0000237B  CD2F              int 0x2f
0000237D  8410              test [bx+si],dl
0000237F  3AC4              cmp al,ah
00002381  740C              jz 0x238f
00002383  56                push si
00002384  BE492E            mov si,0x2e49
00002387  8804              mov [si],al
00002389  E80400            call 0x2390
0000238C  5E                pop si
0000238D  EBEB              jmp short 0x237a
0000238F  59                pop cx
00002390  58                pop ax
00002391  53                push bx
00002392  51                push cx
00002393  E82DFF            call 0x22c3
00002396  E31E              jcxz 0x23b6
00002398  748B              jz 0x2325
0000239A  1E                push ds
0000239B  EE                out dx,al
0000239C  2F                das
0000239D  832A80            sub word [bp+si],byte -0x80
000023A0  FB                sti
000023A1  0C56              or al,0x56
000023A3  43                inc bx
000023A4  AC                lodsb
000023A5  B40E              mov ah,0xe
000023A7  CD10              int 0x10
000023A9  E2F9              loop 0x23a4
000023AB  5E                pop si
000023AC  EB08              jmp short 0x23b6
000023AE  52                push dx
000023AF  8BD6              mov dx,si
000023B1  B440              mov ah,0x40
000023B3  CD21              int 0x21
000023B5  1F                pop ds
000023B6  5E                pop si
000023B7  5A                pop dx
000023B8  59                pop cx
000023B9  5B                pop bx
000023BA  1E                push ds
000023BB  06                push es
000023BC  1F                pop ds
000023BD  87F7              xchg si,di
000023BF  E8CEFF            call 0x2390
000023C2  87F7              xchg si,di
000023C4  1F                pop ds
000023C5  C3                ret
000023C6  26F60540          test byte [es:di],0x40
000023CA  1A01              sbb al,[bx+di]
000023CC  74B6              jz 0x2384
000023CE  0000              add [bx+si],al
000023D0  005056            add [bx+si+0x56],dl
000023D3  8BFB              mov di,bx
000023D5  1E                push ds
000023D6  0E                push cs
000023D7  7C32              jl 0x240b
000023D9  E863FB            call 0x1f3f
000023DC  57                push di
000023DD  8D7D09            lea di,[di+0x9]
000023E0  E869FB            call 0x1f4c
000023E3  5F                pop di
000023E4  268A0D            mov cl,[es:di]
000023E7  8AE9              mov ch,cl
000023E9  80E10F            and cl,0xf
000023EC  80E530            and ch,0x30
000023EF  80F901            cmp cl,0x1
000023F2  742B              jz 0x241f
000023F4  80F908            cmp cl,0x8
000023F7  7426              jz 0x241f
000023F9  80F905            cmp cl,0x5
000023FC  7423              jz 0x2421
000023FE  BE8132            mov si,0x3281
00002401  E83BFB            call 0x1f3f
00002404  80F907            cmp cl,0x7
00002407  7508              jnz 0x2411
00002409  BEE032            mov si,0x32e0
0000240C  E830FB            call 0x1f3f
0000240F  EB6C              jmp short 0x247d
00002411  80F906            cmp cl,0x6
00002414  750B              jnz 0x2421
00002416  BEC132            mov si,0x32c1
00002419  E823FB            call 0x1f3f
0000241C  E8CA03            call 0x27e9
0000241F  EB5C              jmp short 0x247d
00002421  26F60580          test byte [es:di],0x80
00002425  7438              jz 0x245f
00002427  BE8332            mov si,0x3283
0000242A  E812FB            call 0x1f3f
0000242D  BE0D33            mov si,0x330d
00002430  268B4505          mov ax,[es:di+0x5]
00002434  268B5D07          mov bx,[es:di+0x7]
00002438  80F904            cmp cl,0x4
0000243B  740A              jz 0x2447
0000243D  80F905            cmp cl,0x5
00002440  7405              jz 0x2447
00002442  80F903            cmp cl,0x3
00002445  750D              jnz 0x2454
00002447  E89103            call 0x27db
0000244A  E8F2FA            call 0x1f3f
0000244D  8BC3              mov ax,bx
0000244F  E88903            call 0x27db
00002452  EB0B              jmp short 0x245f
00002454  E83002            call 0x2687
00002457  E8E5FA            call 0x1f3f
0000245A  8BC3              mov ax,bx
0000245C  E82802            call 0x2687
0000245F  BE8B32            mov si,0x328b
00002462  80F903            cmp cl,0x3
00002465  7413              jz 0x247a
00002467  BE9532            mov si,0x3295
0000246A  80F902            cmp cl,0x2
0000246D  740B              jz 0x247a
0000246F  BE9B32            mov si,0x329b
00002472  80F904            cmp cl,0x4
00002475  7403              jz 0x247a
00002477  BEAE32            mov si,0x32ae
0000247A  E8C2FA            call 0x1f3f
0000247D  E8D003            call 0x2850
00002480  F9                stc
00002481  07                pop es
00002482  5E                pop si
00002483  5A                pop dx
00002484  59                pop cx
00002485  5B                pop bx
00002486  92                xchg ax,dx
00002487  8BDA              mov bx,dx
00002489  33D2              xor dx,dx
0000248B  F7F1              div cx
0000248D  93                xchg ax,bx
0000248E  F7F1              div cx
00002490  87DA              xchg bx,dx
00002492  C3                ret
00002493  3B22              cmp sp,[bp+si]
00002495  0000              add [bx+si],al
00002497  0200              add al,[bx+si]
00002499  017602            add [bp+0x2],si
0000249C  B200              mov dl,0x0
0000249E  1101              adc [bx+di],ax
000024A0  B02E              mov al,0x2e
000024A2  FF36EA2F          push word [0x2fea]
000024A6  2EFF36EC2F        push word [cs:0x2fec]
000024AB  2E8F06EA2F        pop word [cs:0x2fea]
000024B0  005053            add [bx+si+0x53],dl
000024B3  51                push cx
000024B4  52                push dx
000024B5  8BDF              mov bx,di
000024B7  8CC2              mov dx,es
000024B9  8BCE              mov cx,si
000024BB  8BF1              mov si,cx
000024BD  0E                push cs
000024BE  07                pop es
000024BF  BF7030            mov di,0x3070
000024C2  52                push dx
000024C3  BA8000            mov dx,0x80
000024C6  E8EEF9            call 0x1eb7
000024C9  5A                pop dx
000024CA  8BFB              mov di,bx
000024CC  8BCE              mov cx,si
000024CE  BE7030            mov si,0x3070
000024D1  E31F              jcxz 0x24f2
000024D3  26808EC2740B      or byte [es:bp+0x74c2],0xb
000024D9  FE0C              dec byte [si]
000024DB  1E                push ds
000024DC  0E                push cs
000024DD  7802              js 0x24e1
000024DF  1F                pop ds
000024E0  7205              jc 0x24e7
000024E2  EBD7              jmp short 0x24bb
000024E4  EB6A              jmp short 0x2550
000024E6  90                nop
000024E7  53                push bx
000024E8  52                push dx
000024E9  3D0800            cmp ax,0x8
000024EC  745F              jz 0x254d
000024EE  E88000            call 0x2571
000024F1  268B5505          mov dx,[es:di+0x5]
000024F5  268B5D07          mov bx,[es:di+0x7]
000024F9  2E893EFC30        mov [cs:0x30fc],di
000024FE  E8E003            call 0x28e1
00002501  E86EF9            call 0x1e72
00002504  FB                sti
00002505  1E                push ds
00002506  0E                push cs
00002507  F9                stc
00002508  32E8              xor ch,al
0000250A  59                pop cx
0000250B  F9                stc
0000250C  BE7030            mov si,0x3070
0000250F  E853F9            call 0x1e65
00002512  E83102            call 0x2746
00002515  3D0200            cmp ax,0x2
00002518  7533              jnz 0x254d
0000251A  E83FF9            call 0x1e5c
0000251D  BEFD32            mov si,0x32fd
00002520  E842F9            call 0x1e65
00002523  80F906            cmp cl,0x6
00002526  7437              jz 0x255f
00002528  BE0D33            mov si,0x330d
0000252B  8BC2              mov ax,dx
0000252D  80F902            cmp cl,0x2
00002530  740D              jz 0x253f
00002532  E89C01            call 0x26d1
00002535  E82DF9            call 0x1e65
00002538  8BC3              mov ax,bx
0000253A  E89401            call 0x26d1
0000253D  EB0B              jmp short 0x254a
0000253F  E83B00            call 0x257d
00002542  E820F9            call 0x1e65
00002545  8BC3              mov ax,bx
00002547  E83300            call 0x257d
0000254A  E8F901            call 0x2746
0000254D  5A                pop dx
0000254E  5B                pop bx
0000254F  F9                stc
00002550  8BFB              mov di,bx
00002552  8EC2              mov es,dx
00002554  F9                stc
00002555  07                pop es
00002556  1F                pop ds
00002557  5E                pop si
00002558  5A                pop dx
00002559  2E8F06EA2F        pop word [cs:0x2fea]
0000255E  C3                ret
0000255F  BF1233            mov di,0x3312
00002562  E810F9            call 0x1e75
00002565  07                pop es
00002566  CB                retf
00002567  90                nop
00002568  003EFC30          add [0x30fc],bh
0000256C  E87001            call 0x26df
0000256F  EBD9              jmp short 0x254a
00002571  268A0D            mov cl,[es:di]
00002574  8AE9              mov ch,cl
00002576  80E10F            and cl,0xf
00002579  80E530            and ch,0x30
0000257C  C3                ret
0000257D  80FD82            cmp ch,0x82
00002580  0A00              or al,[bx+si]
00002582  75A2              jnz 0x2526
00002584  01E9              add cx,bp
00002586  AD                lodsw
00002587  0150E3            add [bx+si-0x1d],dx
0000258A  08ACCD2F          or [si+0x2fcd],ch
0000258E  8403              test [bp+di],al
00002590  AA                stosb
00002591  E2F8              loop 0x258b
00002593  26C60500          mov byte [es:di],0x0
00002597  8BE8              mov bp,ax
00002599  58                pop ax
0000259A  C3                ret
0000259B  56                push si
0000259C  57                push di
0000259D  E819FC            call 0x21b9
000025A0  41                inc cx
000025A1  AC                lodsb
000025A2  E80800            call 0x25ad
000025A5  AA                stosb
000025A6  E2F9              loop 0x25a1
000025A8  07                pop es
000025A9  07                pop es
000025AA  5E                pop si
000025AB  8BE8              mov bp,ax
000025AD  58                pop ax
000025AE  B81312            mov ax,0x1213
000025B1  CD2F              int 0x2f
000025B3  83C402            add sp,byte +0x2
000025B6  5B                pop bx
000025B7  1E                push ds
000025B8  06                push es
000025B9  1F                pop ds
000025BA  07                pop es
000025BB  87FE              xchg di,si
000025BD  C3                ret
000025BE  0100              add [bx+si],ax
000025C0  4A                dec dx
000025C1  61                popa
000025C2  6E                outsb
000025C3  0002              add [bp+si],al
000025C5  004665            add [bp+0x65],al
000025C8  6200              bound ax,[bx+si]
000025CA  3200              xor al,[bx+si]
000025CC  4D                dec bp
000025CD  61                popa
000025CE  7200              jc 0x25d0
000025D0  0400              add al,0x0
000025D2  41                inc cx
000025D3  7072              jo 0x2647
000025D5  0034              add [si],dh
000025D7  003A              add [bp+si],bh
000025D9  204D00            and [di+0x0],cl
000025DC  0100              add [bx+si],ax
000025DE  4A                dec dx
000025DF  756E              jnz 0x264f
000025E1  0000              add [bx+si],al
000025E3  004A75            add [bp+si+0x75],cl
000025E6  6C                insb
000025E7  344B              xor al,0x4b
000025E9  004175            add [bx+di+0x75],al
000025EC  67003500536570    add [dword 0x70655300],dh
000025F3  08B2004F          or [bp+si+0x4f00],dh
000025F7  637400            arpl [si+0x0],si
000025FA  0B0D              or cx,[di]
000025FC  0A00              or al,[bx+si]
000025FE  7638              jna 0x2638
00002600  4B                dec bx
00002601  004465            add [si+0x65],al
00002604  631A              arpl [bp+si],bx
00002606  0000              add [bx+si],al
00002608  0000              add [bx+si],al
0000260A  0D0A45            or ax,0x450a
0000260D  52                push dx
0000260E  52                push dx
0000260F  4F                dec di
00002610  52                push dx
00002611  3A20              cmp ah,[bx+si]
00002613  07                pop es
00002614  0020              add [bx+si],ah
00002616  2D2020            sub ax,0x2020
00002619  2020              and [bx+si],ah
0000261B  2000              and [bx+si],al
0000261D  202D              and [di],ch
0000261F  2020              and [bx+si],ah
00002621  003D              add [di],bh
00002623  0020              add [bx+si],ah
00002625  0D0A52            or ax,0x520a
00002628  67652000          and [gs:eax],al
0000262C  206465            and [si+0x65],ah
0000262F  63696D            arpl [bx+di+0x6d],bp
00002632  726E              jc 0x26a2
00002634  61                popa
00002635  0020              add [bx+si],ah
00002637  686578            push word 0x7865
0000263A  61                popa
0000263B  0020              add [bx+si],ah
0000263D  636861            arpl [bx+si+0x61],bp
00002640  7261              jc 0x26a3
00002642  63696E            arpl [bx+di+0x6e],bp
00002645  7465              jz 0x26ac
00002647  7374              jnc 0x26bd
00002649  726E              jc 0x26b9
0000264B  7469              jz 0x26b6
0000264D  6E                outsb
0000264E  0020              add [bx+si],ah
00002650  6220              bound sp,[bx+si]
00002652  42                inc dx
00002653  796E              jns 0x26c3
00002655  65207377          and [gs:bp+di+0x77],dh
00002659  69746F6C20        imul si,[si+0x6f],word 0x206c
0000265E  66696C00204F6869  imul ebp,[si+0x0],dword 0x69684f20
00002666  6E                outsb
00002667  7320              jnc 0x2689
00002669  6F                outsw
0000266A  7461              jz 0x26cd
0000266C  636866            arpl [bx+si+0x66],bp
0000266F  6F                outsw
00002670  20616C            and [bx+di+0x6c],ah
00002673  6C                insb
00002674  6E                outsb
00002675  7469              jz 0x26e0
00002677  6E                outsb
00002678  63686F            arpl [bx+si+0x6f],bp
0000267B  696163633A        imul sp,[bx+di+0x63],word 0x3a63
00002680  0020              add [bx+si],ah
00002682  50                push ax
00002683  657279            gs jc 0x26ff
00002686  20666F            and [bp+0x6f],ah
00002689  686973            push word 0x7369
0000268C  7065              jo 0x26f3
0000268E  636972            arpl [bx+di+0x72],bp
00002691  6E                outsb
00002692  61                popa
00002693  61                popa
00002694  636961            arpl [bx+di+0x61],bp
00002697  7469              jz 0x2702
00002699  0D0A00            or ax,0xa
0000269C  2000              and [bx+si],al
0000269E  0D0A56            or ax,0x560a
000026A1  61                popa
000026A2  6C                insb
000026A3  69720A5267        imul si,[bp+si+0xa],word 0x6752
000026A8  65207468          and [gs:si+0x68],dh
000026AC  69006564          imul ax,[bx+si],word 0x6465
000026B0  207400            and [si+0x0],dh
000026B3  6F                outsw
000026B4  68696E            push word 0x6e69
000026B7  7320              jnc 0x26d9
000026B9  6F                outsw
000026BA  7461              jz 0x271d
000026BC  636866            arpl [bx+si+0x66],bp
000026BF  6F                outsw
000026C0  20616C            and [bx+di+0x6c],ah
000026C3  6C                insb
000026C4  6E                outsb
000026C5  7469              jz 0x2730
000026C7  6E                outsb
000026C8  63686F            arpl [bx+si+0x6f],bp
000026CB  696163633A        imul sp,[bx+di+0x63],word 0x3a63
000026D0  005706            add [bx+0x6],dl
000026D3  0E                push cs
000026D4  07                pop es
000026D5  BF3939            mov di,0x3939
000026D8  57                push di
000026D9  E82DF7            call 0x1e09
000026DC  E92402            jmp 0x2903
000026DF  58                pop ax
000026E0  C3                ret
000026E1  56                push si
000026E2  57                push di
000026E3  1E                push ds
000026E4  06                push es
000026E5  26C57505          lds si,[es:di+0x5]
000026E9  0E                push cs
000026EA  07                pop es
000026EB  AD                lodsw
000026EC  E85700            call 0x2746
000026EF  BF7432            mov di,0x3274
000026F2  E84DF7            call 0x1e42
000026F5  BF3938            mov di,0x3839
000026F8  26C60500          mov byte [es:di],0x0
000026FC  5B                pop bx
000026FD  C3                ret
000026FE  803C14            cmp byte [si],0x14
00002701  E8B5FA            call 0x21b9
00002704  F3A4              rep movsb
00002706  46                inc si
00002707  AD                lodsw
00002708  B020              mov al,0x20
0000270A  AA                stosb
0000270B  26C60500          mov byte [es:di],0x0
0000270F  81FF7338          cmp di,0x3873
00002713  72E7              jc 0x26fc
00002715  BF3938            mov di,0x3839
00002718  E827F7            call 0x1e42
0000271B  1F                pop ds
0000271C  26803CCC          cmp byte [es:si],0xcc
00002720  0000              add [bx+si],al
00002722  07                pop es
00002723  07                pop es
00002724  5E                pop si
00002725  8BE8              mov bp,ax
00002727  57                push di
00002728  06                push es
00002729  0E                push cs
0000272A  07                pop es
0000272B  BF3939            mov di,0x3939
0000272E  57                push di
0000272F  E8DAF8            call 0x200c
00002732  E9CE01            jmp 0x2903
00002735  57                push di
00002736  06                push es
00002737  0E                push cs
00002738  07                pop es
00002739  BF3939            mov di,0x3939
0000273C  57                push di
0000273D  E8CD01            call 0x290d
00002740  E9C001            jmp 0x2903
00002743  53                push bx
00002744  2E0D568B          cs or ax,0x8b56
00002748  FB                sti
00002749  1E                push ds
0000274A  0E                push cs
0000274B  A233E8            mov [0xe833],al
0000274E  E5F6              in ax,0xf6
00002750  1F                pop ds
00002751  5E                pop si
00002752  C3                ret
00002753  0000              add [bx+si],al
00002755  0000              add [bx+si],al
00002757  2E893EB233        mov [cs:0x33b2],di
0000275C  2E8C06B433        mov [cs:0x33b4],es
00002761  005053            add [bx+si+0x53],dl
00002764  55                push bp
00002765  8BEF              mov bp,di
00002767  26803D00          cmp byte [es:di],0x0
0000276B  7419              jz 0x2786
0000276D  8BD6              mov dx,si
0000276F  E8CD02            call 0x2a3f
00002772  7366              jnc 0x27da
00002774  3D0080            cmp ax,0x8000
00002777  3C00              cmp al,0x0
00002779  8BF2              mov si,dx
0000277B  8D7D09            lea di,[di+0x9]
0000277E  E827FA            call 0x21a8
00002781  03F9              add di,cx
00002783  47                inc di
00002784  EBE1              jmp short 0x2767
00002786  8BFD              mov di,bp
00002788  33DB              xor bx,bx
0000278A  33C9              xor cx,cx
0000278C  56                push si
0000278D  AC                lodsb
0000278E  CD2F              int 0x2f
00002790  840B              test [bp+di],cl
00002792  3C3D              cmp al,0x3d
00002794  7407              jz 0x279d
00002796  3C3A              cmp al,0x3a
00002798  7403              jz 0x279d
0000279A  41                inc cx
0000279B  EBF0              jmp short 0x278d
0000279D  5E                pop si
0000279E  26803D00          cmp byte [es:di],0x0
000027A2  741D              jz 0x27c1
000027A4  C3                ret
000027A5  56                push si
000027A6  57                push di
000027A7  8D7D09            lea di,[di+0x9]
000027AA  0800              or [bx+si],al
000027AC  5F                pop di
000027AD  5E                pop si
000027AE  59                pop cx
000027AF  7503              jnz 0x27b4
000027B1  8BEF              mov bp,di
000027B3  43                inc bx
000027B4  8D7D09            lea di,[di+0x9]
000027B7  51                push cx
000027B8  E8EDF9            call 0x21a8
000027BB  03F9              add di,cx
000027BD  59                pop cx
000027BE  47                inc di
000027BF  EBDD              jmp short 0x279e
000027C1  85DB              test bx,bx
000027C3  7411              jz 0x27d6
000027C5  4B                dec bx
000027C6  7509              jnz 0x27d1
000027C8  8BFD              mov di,bp
000027CA  03F1              add si,cx
000027CC  E88302            call 0x2a52
000027CF  EB09              jmp short 0x27da
000027D1  B80700            mov ax,0x7
000027D4  EB03              jmp short 0x27d9
000027D6  2A01              sub al,[bx+di]
000027D8  00F9              add cl,bh
000027DA  5D                pop bp
000027DB  1F                pop ds
000027DC  5E                pop si
000027DD  5A                pop dx
000027DE  C3                ret
000027DF  49                dec cx
000027E0  7461              jz 0x2843
000027E2  6C                insb
000027E3  67726E            jc 0x2854
000027E6  61                popa
000027E7  65207377          and [gs:bp+di+0x77],dh
000027EB  6974004974        imul si,[si+0x0],word 0x7449
000027F0  61                popa
000027F1  6C                insb
000027F2  67726E            jc 0x2863
000027F5  61                popa
000027F6  636861            arpl [bx+si+0x61],bp
000027F9  7261              jc 0x285c
000027FB  63696E            arpl [bx+di+0x6e],bp
000027FE  7465              jz 0x2865
00002800  64206166          and [fs:bx+di+0x66],ah
00002804  7465              jz 0x286b
00002806  65207377          and [gs:bp+di+0x77],dh
0000280A  69746F6520        imul si,[si+0x6f],word 0x2065
0000280F  6E                outsb
00002810  61                popa
00002811  005320            add [bp+di+0x20],dl
00002814  7377              jnc 0x288d
00002816  69746F7661        imul si,[si+0x6f],word 0x6176
0000281B  6C                insb
0000281C  7569              jnz 0x2887
0000281E  6C                insb
0000281F  65206E6F          and [gs:bp+0x6f],ch
00002823  0A00              or al,[bx+si]
00002825  69720A5267        imul si,[bp+si+0xa],word 0x6752
0000282A  65004974          add [gs:bx+di+0x74],cl
0000282E  61                popa
0000282F  6C                insb
00002830  67726E            jc 0x28a1
00002833  61                popa
00002834  646967696E6F      imul sp,[fs:bx+0x69],word 0x6f6e
0000283A  0A00              or al,[bx+si]
0000283C  6973207377        imul si,[bp+di+0x20],word 0x7773
00002841  69746F7661        imul si,[si+0x6f],word 0x6176
00002846  6C                insb
00002847  7569              jnz 0x28b2
00002849  003A              add [bp+si],bh
0000284B  20496E            and [bx+di+0x6e],cl
0000284E  7465              jz 0x28b5
00002850  726E              jc 0x28c0
00002852  61                popa
00002853  7320              jnc 0x2875
00002855  7377              jnc 0x28ce
00002857  69746F6369        imul si,[si+0x6f],word 0x6963
0000285C  656D              gs insw
0000285E  6F                outsw
0000285F  7274              jc 0x28d5
00002861  7970              jns 0x28d3
00002863  65207468          and [gs:si+0x68],dh
00002867  696261640D        imul sp,[bp+si+0x61],word 0xd64
0000286C  0A00              or al,[bx+si]
0000286E  43                inc bx
0000286F  65206E6F          and [gs:bp+0x6f],ch
00002873  6D                insw
00002874  206F70            and [bx+0x70],ch
00002877  6565207377        and [gs:bp+di+0x77],dh
0000287C  69746F6C20        imul si,[si+0x6f],word 0x206c
00002881  66690D0A004365    imul ecx,[di],dword 0x6543000a
00002888  206E6F            and [bp+0x6f],ch
0000288B  7065              jo 0x28f2
0000288D  7279              jc 0x2908
0000288F  20666F            and [bp+0x6f],ah
00002892  6973706563        imul si,[bp+di+0x70],word 0x6365
00002897  69726E6161        imul si,[bp+si+0x6e],word 0x6161
0000289C  636961            arpl [bx+di+0x61],bp
0000289F  7469              jz 0x290a
000028A1  53                push bx
000028A2  207377            and [bp+di+0x77],dh
000028A5  69746F4520        imul si,[si+0x6f],word 0x2045
000028AA  69736D626E        imul si,[bp+di+0x6d],word 0x6e62
000028AF  666976696F004661  imul esi,[bp+0x69],dword 0x6146006f
000028B7  696C757265        imul bp,[si+0x75],word 0x6572
000028BC  6F                outsw
000028BD  0A00              or al,[bx+si]
000028BF  6973207377        imul si,[bp+di+0x20],word 0x7773
000028C4  69746F6C20        imul si,[si+0x6f],word 0x206c
000028C9  66690D003E344D    imul ecx,[di],dword 0x4d343e00
000028D0  3471              xor al,0x71
000028D2  348B              xor al,0x8b
000028D4  34A9              xor al,0xa9
000028D6  34CB              xor al,0xcb
000028D8  34E3              xor al,0xe3
000028DA  3400              xor al,0x0
000028DC  351435            xor ax,0x3514
000028DF  0000              add [bx+si],al
000028E1  0E                push cs
000028E2  07                pop es
000028E3  3D0900            cmp ax,0x9
000028E6  770B              ja 0x28f3
000028E8  8BF8              mov di,ax
000028EA  03FF              add di,di
000028EC  2E8BBD2C35        mov di,[cs:di+0x352c]
000028F1  F8                clc
000028F2  C3                ret
000028F3  BF2B35            mov di,0x352b
000028F6  F9                stc
000028F7  E85706            call 0x2f51
000028FA  0E                push cs
000028FB  07                pop es
000028FC  BF3939            mov di,0x3939
000028FF  57                push di
00002900  E80EF5            call 0x1e11
00002903  B000              mov al,0x0
00002905  AA                stosb
00002906  5F                pop di
00002907  E838F5            call 0x1e42
0000290A  07                pop es
0000290B  5F                pop di
0000290C  59                pop cx
0000290D  58                pop ax
0000290E  8AC4              mov al,ah
00002910  E8F9F6            call 0x200c
00002913  58                pop ax
00002914  E9F5F6            jmp 0x200c
00002917  7604              jna 0x291d
00002919  B200              mov dl,0x0
0000291B  53                push bx
0000291C  00B00101          add [bx+si+0x101],dh
00002920  53                push bx
00002921  51                push cx
00002922  56                push si
00002923  57                push di
00002924  1E                push ds
00002925  06                push es
00002926  E302              jcxz 0x292a
00002928  8CC8              mov ax,cs
0000292A  8EC0              mov es,ax
0000292C  BF3938            mov di,0x3839
0000292F  B95000            mov cx,0x50
00002932  E8A403            call 0x2cd9
00002935  E863F8            call 0x219b
00002938  03F9              add di,cx
0000293A  81FF3938          cmp di,0x3839
0000293E  7616              jna 0x2956
00002940  803D2E            cmp byte [di],0x2e
00002943  7503              jnz 0x2948
00002945  C60500            mov byte [di],0x0
00002948  8A45FF            mov al,[di-0x1]
0000294B  3C5C              cmp al,0x5c
0000294D  7407              jz 0x2956
0000294F  3C3A              cmp al,0x3a
00002951  7403              jz 0x2956
00002953  4F                dec di
00002954  EBE4              jmp short 0x293a
00002956  0E                push cs
00002957  F7BF7635          idiv word [bx+0x3576]
0000295B  8600              xchg al,[bx+si]
0000295D  B9E81A            mov cx,0x1ae8
00002960  FC                cld
00002961  0000              add [bx+si],al
00002963  2E7E35            cs jng 0x299b
00002966  0E                push cs
00002967  0000              add [bx+si],al
00002969  07                pop es
0000296A  07                pop es
0000296B  59                pop cx
0000296C  5B                pop bx
0000296D  57                push di
0000296E  06                push es
0000296F  268B4D07          mov cx,[es:di+0x7]
00002973  26C47D01          les di,[es:di+0x1]
00002977  0000              add [bx+si],al
00002979  2E8B35            mov si,[cs:di]
0000297C  0100              add [bx+si],ax
0000297E  002E8A35          add [0x358a],ch
00002982  01E8              add ax,bp
00002984  8E00              mov es,[bx+si]
00002986  727F              jc 0x2a07
00002988  33C9              xor cx,cx
0000298A  2E8B35            mov si,[cs:di]
0000298D  017554            add [di+0x54],si
00002990  3C5B              cmp al,0x5b
00002992  7550              jnz 0x29e4
00002994  53                push bx
00002995  51                push cx
00002996  56                push si
00002997  57                push di
00002998  1E                push ds
00002999  06                push es
0000299A  E302              jcxz 0x299e
0000299C  8CC8              mov ax,cs
0000299E  8EC0              mov es,ax
000029A0  BE7F35            mov si,0x357f
000029A3  8BFE              mov di,si
000029A5  B90A00            mov cx,0xa
000029A8  E86900            call 0x2a14
000029AB  7213              jc 0x29c0
000029AD  3C5D              cmp al,0x5d
000029AF  740F              jz 0x29c0
000029B1  3C20              cmp al,0x20
000029B3  840B              test [bp+di],cl
000029B5  3C0D              cmp al,0xd
000029B7  7407              jz 0x29c0
000029B9  3C0A              cmp al,0xa
000029BB  8403              test [bp+di],al
000029BD  AA                stosb
000029BE  E2E8              loop 0x29a8
000029C0  33C0              xor ax,ax
000029C2  AA                stosb
000029C3  8BFE              mov di,si
000029C5  E8C4FB            call 0x258c
000029C8  BF7635            mov di,0x3576
000029CB  E8A5F7            call 0x2173
000029CE  0000              add [bx+si],al
000029D0  07                pop es
000029D1  07                pop es
000029D2  59                pop cx
000029D3  5B                pop bx
000029D4  B00D              mov al,0xd
000029D6  0000              add [bx+si],al
000029D8  2E8A35            mov dh,[cs:di]
000029DB  007506            add [di+0x6],dh
000029DE  0000              add [bx+si],al
000029E0  2E8A35            mov dh,[cs:di]
000029E3  0100              add [bx+si],ax
000029E5  002E8B35          add [0x358b],ch
000029E9  013C              add [si],di
000029EB  0D740A            or ax,0xa74
000029EE  3C0A              cmp al,0xa
000029F0  84060000          test [0x0],al
000029F4  2E8B35            mov si,[cs:di]
000029F7  0033              add [bp+di],dh
000029F9  C9                leave
000029FA  2E8A35            mov dh,[cs:di]
000029FD  017504            add [di+0x4],si
00002A00  AA                stosb
00002A01  49                dec cx
00002A02  E303              jcxz 0x2a07
00002A04  E97CFF            jmp 0x2983
00002A07  33C0              xor ax,ax
00002A09  AA                stosb
00002A0A  07                pop es
00002A0B  5F                pop di
00002A0C  262B4D07          sub cx,[es:di+0x7]
00002A10  F7D9              neg cx
00002A12  C3                ret
00002A13  005152            add [bx+di+0x52],dl
00002A16  1E                push ds
00002A17  BA7F36            mov dx,0x367f
00002A1A  0E                push cs
00002A1B  1F                pop ds
00002A1C  B90100            mov cx,0x1
00002A1F  B43F              mov ah,0x3f
00002A21  FF5FCD            call far [bx-0x33]
00002A24  093D              or [di],di
00002A26  0100              add [bx+si],ax
00002A28  7204              jc 0x2a2e
00002A2A  2EA07F36          mov al,[cs:0x367f]
00002A2E  1F                pop ds
00002A2F  5A                pop dx
00002A30  59                pop cx
00002A31  C3                ret
00002A32  51                push cx
00002A33  57                push di
00002A34  8D7D09            lea di,[di+0x9]
00002A37  E861F7            call 0x219b
00002A3A  0800              or [bx+si],al
00002A3C  5F                pop di
00002A3D  59                pop cx
00002A3E  7405              jz 0x2a45
00002A40  2A01              sub al,[bx+di]
00002A42  00F9              add cl,bh
00002A44  C3                ret
00002A45  53                push bx
00002A46  52                push dx
00002A47  268A15            mov dl,[es:di]
00002A4A  8AF2              mov dh,dl
00002A4C  80E60F            and dh,0xf
00002A4F  8A04              mov al,[si]
00002A51  C3                ret
00002A52  803C12            cmp byte [si],0x12
00002A55  AC                lodsb
00002A56  3C3D              cmp al,0x3d
00002A58  740D              jz 0x2a67
00002A5A  3C3A              cmp al,0x3a
00002A5C  7409              jz 0x2a67
00002A5E  80FE05            cmp dh,0x5
00002A61  742C              jz 0x2a8f
00002A63  5A                pop dx
00002A64  5B                pop bx
00002A65  EBD9              jmp short 0x2a40
00002A67  80FE07            cmp dh,0x7
00002A6A  7565              jnz 0x2ad1
00002A6C  51                push cx
00002A6D  57                push di
00002A6E  06                push es
00002A6F  55                push bp
00002A70  2EFF36B433        push word [cs:0x33b4]
00002A75  2EFF36B233        push word [cs:0x33b2]
00002A7A  26FF5D01          call far [es:di+0x1]
00002A7E  2E8F06B233        pop word [cs:0x33b2]
00002A83  2E8F06B433        pop word [cs:0x33b4]
00002A88  5D                pop bp
00002A89  07                pop es
00002A8A  5F                pop di
00002A8B  59                pop cx
00002A8C  5A                pop dx
00002A8D  5B                pop bx
00002A8E  C3                ret
00002A8F  3C3A              cmp al,0x3a
00002A91  7405              jz 0x2a98
00002A93  3C3D              cmp al,0x3d
00002A95  7401              jz 0x2a98
00002A97  4E                dec si
00002A98  8BD6              mov dx,si
00002A9A  B8003D            mov ax,0x3d00
00002A9D  7E0A              jng 0x2aa9
00002A9F  8BD8              mov bx,ax
00002AA1  B80500            mov ax,0x5
00002AA4  7252              jc 0x2af8
00002AA6  51                push cx
00002AA7  E876FE            call 0x2920
00002AAA  8BD8              mov bx,ax
00002AAC  B43E              mov ah,0x3e
00002AAE  59                pop cx
00002AAF  56                push si
00002AB0  1E                push ds
00002AB1  57                push di
00002AB2  06                push es
00002AB3  26C57501          lds si,[es:di+0x1]
00002AB7  2EC43EB233        les di,[cs:0x33b2]
00002ABC  E8D5F9            call 0x2494
00002ABF  07                pop es
00002AC0  5F                pop di
00002AC1  1F                pop ds
00002AC2  5E                pop si
00002AC3  B80800            mov ax,0x8
00002AC6  7230              jc 0x2af8
00002AC8  51                push cx
00002AC9  E8E0F6            call 0x21ac
00002ACC  03F1              add si,cx
00002ACE  59                pop cx
00002ACF  EBBB              jmp short 0x2a8c
00002AD1  80FE08            cmp dh,0x8
00002AD4  7405              jz 0x2adb
00002AD6  80FE01            cmp dh,0x1
00002AD9  7512              jnz 0x2aed
00002ADB  84C0              test al,al
00002ADD  BB0100            mov bx,0x1
00002AE0  7581              jnz 0x2a63
00002AE2  80FE08            cmp dh,0x8
00002AE5  7503              jnz 0x2aea
00002AE7  BB0000            mov bx,0x0
00002AEA  E9B000            jmp 0x2b9d
00002AED  3C3D              cmp al,0x3d
00002AEF  740A              jz 0x2afb
00002AF1  3C3A              cmp al,0x3a
00002AF3  7406              jz 0x2afb
00002AF5  B80100            mov ax,0x1
00002AF8  F9                stc
00002AF9  EB91              jmp short 0x2a8c
00002AFB  80FE04            cmp dh,0x4
00002AFE  7533              jnz 0x2b33
00002B00  51                push cx
00002B01  06                push es
00002B02  57                push di
00002B03  268B4D07          mov cx,[es:di+0x7]
00002B07  26C47D01          les di,[es:di+0x1]
00002B0B  E315              jcxz 0x2b22
00002B0D  803C22            cmp byte [si],0x22
00002B10  7405              jz 0x2b17
00002B12  803C27            cmp byte [si],0x27
00002B15  7510              jnz 0x2b27
00002B17  AC                lodsb
00002B18  8AE0              mov ah,al
00002B1A  AC                lodsb
00002B1B  3AC4              cmp al,ah
00002B1D  7403              jz 0x2b22
00002B1F  AA                stosb
00002B20  E2F8              loop 0x2b1a
00002B22  B000              mov al,0x0
00002B24  AA                stosb
00002B25  EB05              jmp short 0x2b2c
00002B27  8BD1              mov dx,cx
00002B29  E87EF3            call 0x1eaa
00002B2C  5F                pop di
00002B2D  07                pop es
00002B2E  5E                pop si
00002B2F  F8                clc
00002B30  E959FF            jmp 0x2a8c
00002B33  80FE06            cmp dh,0x6
00002B36  7543              jnz 0x2b7b
00002B38  50                push ax
00002B39  53                push bx
00002B3A  51                push cx
00002B3B  57                push di
00002B3C  1E                push ds
00002B3D  06                push es
00002B3E  57                push di
00002B3F  06                push es
00002B40  0E                push cs
00002B41  07                pop es
00002B42  BF3938            mov di,0x3839
00002B45  BAFF00            mov dx,0xff
00002B48  E85FF3            call 0x1eaa
00002B4B  07                pop es
00002B4C  5F                pop di
00002B4D  26C57505          lds si,[es:di+0x5]
00002B51  0E                push cs
00002B52  07                pop es
00002B53  BF3938            mov di,0x3839
00002B56  AD                lodsw
00002B57  5B                pop bx
00002B58  C3                ret
00002B59  803C0D            cmp byte [si],0xd
00002B5C  E814F6            call 0x2173
00002B5F  7410              jz 0x2b71
00002B61  E848F6            call 0x21ac
00002B64  03F1              add si,cx
00002B66  46                inc si
00002B67  EBED              jmp short 0x2b56
00002B69  0000              add [bx+si],al
00002B6B  07                pop es
00002B6C  07                pop es
00002B6D  1F                pop ds
00002B6E  5E                pop si
00002B6F  EB37              jmp short 0x2ba8
00002B71  0000              add [bx+si],al
00002B73  07                pop es
00002B74  07                pop es
00002B75  1F                pop ds
00002B76  5E                pop si
00002B77  8BD8              mov bx,ax
00002B79  EB39              jmp short 0x2bb4
00002B7B  80FE02            cmp dh,0x2
00002B7E  740B              jz 0x2b8b
00002B80  80FE03            cmp dh,0x3
00002B83  7411              jz 0x2b96
00002B85  B80400            mov ax,0x4
00002B88  746D              jz 0x2bf7
00002B8A  FF                db 0xff
00002B8B  E8A901            call 0x2d37
00002B8E  730D              jnc 0x2b9d
00002B90  B80300            mov ax,0x3
00002B93  E962FF            jmp 0x2af8
00002B96  E86901            call 0x2d02
00002B99  700D              jo 0x2ba8
00002B9B  72F3              jc 0x2b90
00002B9D  F6C280            test dl,0x80
00002BA0  7412              jz 0x2bb4
00002BA2  263B5D05          cmp bx,[es:di+0x5]
00002BA6  7306              jnc 0x2bae
00002BA8  B80200            mov ax,0x2
00002BAB  E94AFF            jmp 0x2af8
00002BAE  263B5D07          cmp bx,[es:di+0x7]
00002BB2  77F4              ja 0x2ba8
00002BB4  80E230            and dl,0x30
00002BB7  56                push si
00002BB8  1E                push ds
00002BB9  26C57501          lds si,[es:di+0x1]
00002BBD  881C              mov [si],bl
00002BBF  80FA10            cmp dl,0x10
00002BC2  7503              jnz 0x2bc7
00002BC4  887C01            mov [si+0x1],bh
00002BC7  1F                pop ds
00002BC8  5E                pop si
00002BC9  F8                clc
00002BCA  E9BFFE            jmp 0x2a8c
00002BCD  AF                scasw
00002BCE  02B2000C          add dh,[bp+si+0xc00]
00002BD2  01B05053          add [bx+si+0x5350],si
00002BD6  B462              mov ah,0x62
00002BD8  CD21              int 0x21
00002BDA  E80300            call 0x2be0
00002BDD  5A                pop dx
00002BDE  59                pop cx
00002BDF  5B                pop bx
00002BE0  56                push si
00002BE1  1E                push ds
00002BE2  8EDB              mov ds,bx
00002BE4  8E1E2C00          mov ds,[0x2c]
00002BE8  33F6              xor si,si
00002BEA  83C380            add bx,byte -0x80
00002BED  3C03              cmp al,0x3
00002BEF  46                inc si
00002BF0  EBF8              jmp short 0x2bea
00002BF2  83C604            add si,byte +0x4
00002BF5  E886F4            call 0x207e
00002BF8  1F                pop ds
00002BF9  5E                pop si
00002BFA  C3                ret
00002BFB  0A00              or al,[bx+si]
00002BFD  50                push ax
00002BFE  51                push cx
00002BFF  52                push dx
00002C00  33C9              xor cx,cx
00002C02  33DB              xor bx,bx
00002C04  1F                pop ds
00002C05  26803C0B          cmp byte [es:si],0xb
00002C09  F9                stc
00002C0A  E304              jcxz 0x2c10
00002C0C  9C                pushf
00002C0D  F7DB              neg bx
00002C0F  9D                popf
00002C10  E2F8              loop 0x2c0a
00002C12  5A                pop dx
00002C13  5A                pop dx
00002C14  5B                pop bx
00002C15  C3                ret
00002C16  2D7406            sub ax,0x674
00002C19  803C2B            cmp byte [si],0x2b
00002C1C  7503              jnz 0x2c21
00002C1E  49                dec cx
00002C1F  46                inc si
00002C20  41                inc cx
00002C21  E85900            call 0x2c7d
00002C24  76E4              jna 0x2c0a
00002C26  93                xchg ax,bx
00002C27  2EF7266C39        mul word [cs:0x396c]
00002C2C  70DC              jo 0x2c0a
00002C2E  03D8              add bx,ax
00002C30  EBEF              jmp short 0x2c21
00002C32  51                push cx
00002C33  50                push ax
00002C34  33DB              xor bx,bx
00002C36  1F                pop ds
00002C37  2680F974          es cmp cl,0x74
00002C3B  0DB104            or ax,0x4b1
00002C3E  E80B00            call 0x2c4c
00002C41  7606              jna 0x2c49
00002C43  D3E3              shl bx,cl
00002C45  0BD8              or bx,ax
00002C47  EBF5              jmp short 0x2c3e
00002C49  58                pop ax
00002C4A  59                pop cx
00002C4B  C3                ret
00002C4C  8A04              mov al,[si]
00002C4E  C3                ret
00002C4F  207628            and [bp+0x28],dh
00002C52  3C30              cmp al,0x30
00002C54  7222              jc 0x2c78
00002C56  3C39              cmp al,0x39
00002C58  7704              ja 0x2c5e
00002C5A  2C30              sub al,0x30
00002C5C  EB14              jmp short 0x2c72
00002C5E  3C41              cmp al,0x41
00002C60  7216              jc 0x2c78
00002C62  3C46              cmp al,0x46
00002C64  760A              jna 0x2c70
00002C66  3C61              cmp al,0x61
00002C68  720E              jc 0x2c78
00002C6A  3C66              cmp al,0x66
00002C6C  770A              ja 0x2c78
00002C6E  04E0              add al,0xe0
00002C70  04C9              add al,0xc9
00002C72  98                cbw
00002C73  46                inc si
00002C74  0BF6              or si,si
00002C76  F8                clc
00002C77  C3                ret
00002C78  F9                stc
00002C79  C3                ret
00002C7A  3AC0              cmp al,al
00002C7C  C3                ret
00002C7D  E8CCFF            call 0x2c4c
00002C80  7607              jna 0x2c89
00002C82  3D0900            cmp ax,0x9
00002C85  7703              ja 0x2c8a
00002C87  0BF6              or si,si
00002C89  C3                ret
00002C8A  4E                dec si
00002C8B  F9                stc
00002C8C  C3                ret
00002C8D  B967C3            mov cx,0xc367
00002C90  0012              add [bp+si],dl
00002C92  02B0E98A          add dh,[bx+si-0x7517]
00002C96  08900467          or [bx+si+0x6704],dl
00002C9A  C3                ret
00002C9B  00C5              add ch,al
00002C9D  00B00100          add [bx+si+0x1],dh
00002CA1  0D0A0A            or ax,0xa0a
00002CA4  45                inc bp
00002CA5  52                push dx
00002CA6  52                push dx
00002CA7  4F                dec di
00002CA8  52                push dx
00002CA9  3A20              cmp ah,[bx+si]
00002CAB  00556E            add [di+0x6e],dl
00002CAE  7574              jnz 0x2d24
00002CB0  61                popa
00002CB1  626C64            bound bp,[si+0x64]
00002CB4  207464            and [si+0x64],dh
00002CB7  206C64            and [si+0x64],ch
00002CBA  6961746F6D        imul sp,[bx+di+0x74],word 0x6d6f
00002CBF  6D                insw
00002CC0  7566              jnz 0x2d28
00002CC2  696C004520        imul bp,[si+0x0],word 0x2045
00002CC7  657272            gs jc 0x2d3c
00002CCA  6F                outsw
00002CCB  61                popa
00002CCC  6C                insb
00002CCD  7265              jc 0x2d34
00002CCF  6E                outsb
00002CD0  7469              jz 0x2d3b
00002CD2  6E                outsb
00002CD3  6F                outsw
00002CD4  6D                insw
00002CD5  6D                insw
00002CD6  7566              jnz 0x2d3e
00002CD8  696C6C2066        imul bp,[si+0x6c],word 0x6620
00002CDD  696C00496E        imul bp,[si+0x0],word 0x6e49
00002CE2  760A              jna 0x2cee
00002CE4  56                push si
00002CE5  61                popa
00002CE6  6C                insb
00002CE7  696F6D6D75        imul bp,[bx+0x6d],word 0x756d
00002CEC  66696C004475706C  imul ebp,[si+0x0],dword 0x6c707544
00002CF4  696C646961        imul bp,[si+0x64],word 0x6169
00002CF9  746F              jz 0x2d6a
00002CFB  6D                insw
00002CFC  6D                insw
00002CFD  7566              jnz 0x2d65
00002CFF  696C65206E        imul bp,[si+0x65],word 0x6e20
00002D04  61                popa
00002D05  68666F            push word 0x6f66
00002D08  64207565          and [fs:di+0x65],dh
00002D0C  7320              jnc 0x2d2e
00002D0E  666F              outsd
00002D10  00556E            add [di+0x6e],dl
00002D13  7574              jnz 0x2d89
00002D15  61                popa
00002D16  626C64            bound bp,[si+0x64]
00002D19  20746D            and [si+0x6d],dh
00002D1C  206F70            and [bx+0x70],ch
00002D1F  656F              gs outsw
00002D21  6D                insw
00002D22  6D                insw
00002D23  7566              jnz 0x2d8b
00002D25  696C670A47        imul bp,[si+0x67],word 0x470a
00002D2A  726F              jc 0x2d9b
00002D2C  756C              jnz 0x2d9a
00002D2E  206669            and [bp+0x69],ah
00002D31  2E0D0A00          cs or ax,0xa
00002D35  656F              gs outsw
00002D37  6D                insw
00002D38  6D                insw
00002D39  7566              jnz 0x2da1
00002D3B  6973206861        imul si,[bp+di+0x20],word 0x6168
00002D40  7269              jc 0x2dab
00002D42  7662              jna 0x2da6
00002D44  656F              gs outsw
00002D46  7065              jo 0x2dad
00002D48  626F64            bound bp,[bx+0x64]
00002D4B  207565            and [di+0x65],dh
00002D4E  64207472          and [fs:si+0x72],dh
00002D52  207468            and [si+0x68],dh
00002D55  696578B053        imul sp,[di+0x78],word 0x53b0
00002D5A  657475            gs jz 0x2dd2
00002D5D  7461              jz 0x2dc0
00002D5F  622E0D0A          bound bp,[0xa0d]
00002D63  006552            add [di+0x52],ah
00002D66  657374            gs jnc 0x2ddd
00002D69  61                popa
00002D6A  6E                outsb
00002D6B  7469              jz 0x2dd6
00002D6D  6E                outsb
00002D6E  61                popa
00002D6F  64647263          fs jc 0x2dd6
00002D73  636573            arpl [di+0x73],sp
00002D76  666F              outsd
00002D78  6420752E          and [fs:di+0x2e],dh
00002D7C  004D6D            add [di+0x6d],cl
00002D7F  6D                insw
00002D80  7566              jnz 0x2de8
00002D82  696C6D7575        imul bp,[si+0x6d],word 0x7575
00002D87  65736B            gs jnc 0x2df5
00002D8A  2D636F            sub ax,0x6f63
00002D8D  61                popa
00002D8E  0A00              or al,[bx+si]
00002D90  6961655265        imul sp,[bx+di+0x65],word 0x6552
00002D95  7363              jnc 0x2dfa
00002D97  6B2E0D0A00        imul bp,[0xa0d],byte +0x0
00002D9C  4E                dec si
00002D9D  6F                outsw
00002D9E  7420              jz 0x2dc0
00002DA0  656E              gs outsb
00002DA2  6F                outsw
00002DA3  7567              jnz 0x2e0c
00002DA5  68206D            push word 0x6d20
00002DA8  656D              gs insw
00002DAA  6F                outsw
00002DAB  7261              jc 0x2e0e
00002DAD  7661              jna 0x2e10
00002DAF  696C757461        imul bp,[si+0x75],word 0x6174
00002DB4  626C64            bound bp,[si+0x64]
00002DB7  207464            and [si+0x64],dh
00002DBA  206164            and [bx+di+0x64],ah
00002DBD  7465              jz 0x2e24
00002DBF  207072            and [bx+si+0x72],dh
00002DC2  6F                outsw
00002DC3  67722E            jc 0x2df4
00002DC6  004165            add [bx+di+0x65],al
00002DC9  6F                outsw
00002DCA  6D                insw
00002DCB  6D                insw
00002DCC  7566              jnz 0x2e34
00002DCE  696C6B2D63        imul bp,[si+0x6b],word 0x632d
00002DD3  6F                outsw
00002DD4  61                popa
00002DD5  0A00              or al,[bx+si]
00002DD7  6F                outsw
00002DD8  6E                outsb
00002DD9  7320              jnc 0x2dfb
00002DDB  6F                outsw
00002DDC  0A00              or al,[bx+si]
00002DDE  760A              jna 0x2dea
00002DE0  56                push si
00002DE1  61                popa
00002DE2  6C                insb
00002DE3  6965787570        imul sp,[di+0x78],word 0x7075
00002DE8  706F              jo 0x2e59
00002DEA  2E000D            add [cs:di],cl
00002DED  0A0A              or cl,[bp+si]
00002DEF  46                inc si
00002DF0  49                dec cx
00002DF1  58                pop ax
00002DF2  55                push bp
00002DF3  50                push ax
00002DF4  204552            and [di+0x52],al
00002DF7  52                push dx
00002DF8  4F                dec di
00002DF9  52                push dx
00002DFA  3A20              cmp ah,[bx+si]
00002DFC  006F6E            add [bx+0x6e],ch
00002DFF  0D0A20            or ax,0x200a
00002E02  53                push bx
00002E03  65736F            gs jnc 0x2e75
00002E06  7572              jnz 0x2e7a
00002E08  634D6D            arpl [di+0x6d],cx
00002E0B  6D                insw
00002E0C  7566              jnz 0x2e74
00002E0E  693A2000          imul di,[bp+si],word 0x20
00002E12  6F                outsw
00002E13  6E                outsb
00002E14  0D0A20            or ax,0x200a
00002E17  54                push sp
00002E18  61                popa
00002E19  7267              jc 0x2e82
00002E1B  657463            gs jz 0x2e81
00002E1E  4D                dec bp
00002E1F  6D                insw
00002E20  6D                insw
00002E21  7566              jnz 0x2e89
00002E23  693A2000          imul di,[bp+si],word 0x20
00002E27  6F                outsw
00002E28  6E                outsb
00002E29  8A01              mov al,[bx+di]
00002E2B  0F00B2200A        jmpe word [bp+si+0xa20]
00002E30  49                dec cx
00002E31  6D                insw
00002E32  7570              jnz 0x2ea4
00002E34  706F              jo 0x2ea5
00002E36  3A20              cmp ah,[bx+si]
00002E38  006F6E            add [bx+0x6e],ch
00002E3B  0D0A49            or ax,0x490a
00002E3E  6D                insw
00002E3F  7570              jnz 0x2eb1
00002E41  706F              jo 0x2eb2
00002E43  204F72            and [bx+0x72],cl
00002E46  656E              gs outsb
00002E48  7461              jz 0x2eab
00002E4A  6C                insb
00002E4B  3A20              cmp ah,[bx+si]
00002E4D  004D6D            add [di+0x6d],cl
00002E50  6D                insw
00002E51  7566              jnz 0x2eb9
00002E53  696C6B2D63        imul bp,[si+0x6b],word 0x632d
00002E58  6F                outsw
00002E59  61                popa
00002E5A  0A00              or al,[bx+si]
00002E5C  6F                outsw
00002E5D  6E                outsb
00002E5E  0A00              or al,[bx+si]
00002E60  760A              jna 0x2e6c
00002E62  56                push si
00002E63  61                popa
00002E64  6C                insb
00002E65  6966697872        imul sp,[bp+0x69],word 0x7278
00002E6A  6F                outsw
00002E6B  7569              jnz 0x2ed6
00002E6D  6E                outsb
00002E6E  7920              jns 0x2e90
00002E70  666F              outsd
00002E72  6963617469        imul sp,[bp+di+0x61],word 0x6974
00002E77  2E0D0A65          cs or ax,0x650a
00002E7B  61                popa
00002E7C  726F              jc 0x2eed
00002E7E  61                popa
00002E7F  6C                insb
00002E80  7566              jnz 0x2ee8
00002E82  66656E            gs o32 outsb
00002E85  7572              jnz 0x2ef9
00002E87  637761            arpl [bx+0x61],si
00002E8A  736F              jnc 0x2efb
00002E8C  7420              jz 0x2eae
00002E8E  64626C64          bound bp,[fs:si+0x64]
00002E92  207461            and [si+0x61],dh
00002E95  206661            and [bp+0x61],ah
00002E98  726F              jc 0x2f09
00002E9A  6F                outsw
00002E9B  626A69            bound bp,[bp+si+0x69]
00002E9E  7265              jc 0x2f05
00002EA0  2E005461          add [cs:si+0x61],dl
00002EA4  7267              jc 0x2f0d
00002EA6  657463            gs jz 0x2f0c
00002EA9  6F                outsw
00002EAA  6D                insw
00002EAB  6D                insw
00002EAC  7566              jnz 0x2f14
00002EAE  696C65004E        imul bp,[si+0x65],word 0x4e00
00002EB3  6F                outsw
00002EB4  666F              outsd
00002EB6  6420752E          and [fs:di+0x2e],dh
00002EBA  005461            add [si+0x61],dl
00002EBD  7267              jc 0x2f26
00002EBF  657463            gs jz 0x2f25
00002EC2  696D757070        imul bp,[di+0x75],word 0x7070
00002EC7  6F                outsw
00002EC8  206500            and [di+0x0],ah
00002ECB  4E                dec si
00002ECC  6F                outsw
00002ECD  666F              outsd
00002ECF  6420752E          and [fs:di+0x2e],dh
00002ED3  0000              add [bx+si],al
00002ED5  6F                outsw
00002ED6  6E                outsb
00002ED7  A7                cmpsw
00002ED8  00B22AB2          add [bp+si-0x4dd6],dh
00002EDC  200F              and [bx],cl
00002EDE  204445            and [si+0x45],al
00002EE1  42                inc dx
00002EE2  55                push bp
00002EE3  47                inc di
00002EE4  20456E            and [di+0x6e],al
00002EE7  7574              jnz 0x2f5d
00002EE9  61                popa
00002EEA  626400            bound sp,[si+0x0]
00002EED  B220              mov dl,0x20
00002EEF  B22A              mov dl,0x2a
00002EF1  1220              adc ah,[bx+si]
00002EF3  1100              adc [bx+si],ax
00002EF5  B02A              mov al,0x2a
00002EF7  2A04              sub al,[si]
00002EF9  650F00B2200A      jmpe word [gs:bp+si+0xa20]
00002EFF  4F                dec di
00002F00  4E                dec si
00002F01  44                inc sp
00002F02  4C                dec sp
00002F03  4F                dec di
00002F04  41                inc cx
00002F05  44                inc sp
00002F06  205631            and [bp+0x31],dl
00002F09  2E3033            xor [cs:bp+di],dh
00002F0C  0D6515            or ax,0x1565
00002F0F  00B22014          add [bp+si+0x1420],dh
00002F13  2A2A              sub ch,[bp+si]
00002F15  00B02A2A          add [bx+si+0x2a2a],dh
00002F19  202D              and [di],ch
00002F1B  2020              and [bx+si],ah
00002F1D  2020              and [bx+si],ah
00002F1F  204F4E            and [bx+0x4e],cl
00002F22  44                inc sp
00002F23  4C                dec sp
00002F24  4F                dec di
00002F25  41                inc cx
00002F26  44                inc sp
00002F27  2E0000            add [cs:bx+si],al
00002F2A  4D                dec bp
00002F2B  6F                outsw
00002F2C  7420              jz 0x2f4e
00002F2E  6F                outsw
00002F2F  756C              jnz 0x2f9d
00002F31  206669            and [bp+0x69],ah
00002F34  6C                insb
00002F35  7920              jns 0x2f57
00002F37  637265            arpl [bp+si+0x65],si
00002F3A  61                popa
00002F3B  7429              jz 0x2f66
00002F3D  009602B2          add [bp-0x4dfe],dl
00002F41  2009              and [bx+di],cl
00002F43  2A2A              sub ch,[bp+si]
00002F45  00B00465          add [bx+si+0x6504],dh
00002F49  0F2A30            cvtpi2ps xmm6,qword [bx+si]
00002F4C  2011              and [bx+di],dl
00002F4E  00B00D6F          add [bx+si+0x6f0d],dh
00002F52  6E                outsb
00002F53  0D5365            or ax,0x6553
00002F56  7374              jnc 0x2fcc
00002F58  61                popa
00002F59  7272              jc 0x2fcd
00002F5B  7272              jc 0x2fcf
00002F5D  724C              jc 0x2fab
00002F5F  656E              gs outsb
00002F61  677769            ja 0x2fcd
00002F64  7474              jz 0x2fda
00002F66  7474              jz 0x2fdc
00002F68  7472              jz 0x2fdc
00002F6A  204E61            and [bp+0x61],cl
00002F6D  1F                pop ds
00002F6E  730F              jnc 0x2f7f
00002F70  00B22013          add [bp+si+0x1320],dh
00002F74  43                inc bx
00002F75  6C                insb
00002F76  61                popa
00002F77  7373              jnc 0x2fec
00002F79  00B00D0A          add [bx+si+0xa0d],dh
00002F7D  206572            and [di+0x72],ah
00002F80  206472            and [si+0x72],ah
00002F83  636365            arpl [bp+di+0x65],sp
00002F86  1200              adc al,[bx+si]
00002F88  96                xchg ax,si
00002F89  02B22009          add dh,[bp+si+0x920]
00002F8D  50                push ax
00002F8E  7562              jnz 0x2ff2
00002F90  6C                insb
00002F91  696C686962        imul bp,[si+0x68],word 0x6269
00002F96  7974              jns 0x300c
00002F98  7220              jc 0x2fba
00002F9A  4E                dec si
00002F9B  61                popa
00002F9C  00B00D0A          add [bx+si+0xa0d],dh
00002FA0  206572            and [di+0x72],ah
00002FA3  206472            and [si+0x72],ah
00002FA6  636365            arpl [bp+di+0x65],sp
00002FA9  1C00              sbb al,0x0
00002FAB  96                xchg ax,si
00002FAC  02B22009          add dh,[bp+si+0x920]
00002FB0  50                push ax
00002FB1  7562              jnz 0x3015
00002FB3  6C                insb
00002FB4  696C686962        imul bp,[si+0x68],word 0x6269
00002FB9  7974              jns 0x302f
00002FBB  56                push si
00002FBC  61                popa
00002FBD  6C                insb
00002FBE  7569              jnz 0x3029
00002FC0  00B00D0A          add [bx+si+0xa0d],dh
00002FC4  0020              add [bx+si],ah
00002FC6  2D2020            sub ax,0x2020
00002FC9  2020              and [bx+si],ah
00002FCB  2000              and [bx+si],al
00002FCD  3A00              cmp al,[bx+si]
00002FCF  4F                dec di
00002FD0  4E                dec si
00002FD1  44                inc sp
00002FD2  4C                dec sp
00002FD3  4F                dec di
00002FD4  41                inc cx
00002FD5  44                inc sp
00002FD6  2E0000            add [cs:bx+si],al
00002FD9  4D                dec bp
00002FDA  00901E13          add [bx+si+0x131e],dl
00002FDE  4D                dec bp
00002FDF  1323              adc sp,[bp+di]
00002FE1  1328              adc bp,[bx+si]
00002FE3  134D13            adc cx,[di+0x13]
00002FE6  3113              xor [bp+di],dx
00002FE8  2813              sub [bp+di],dl
00002FEA  36133F            adc di,[ss:bx]
00002FED  134D12            adc cx,[di+0x12]
00002FF0  6B127C            imul dx,[bp+si],byte +0x7c
00002FF3  129C12DA          adc bl,[si-0x25ee]
00002FF7  14E0              adc al,0xe0
00002FF9  14DA              adc al,0xda
00002FFB  14E0              adc al,0xe0
00002FFD  14DA              adc al,0xda
00002FFF  1453              adc al,0x53
00003001  54                push sp
00003002  41                inc cx
00003003  43                inc bx
00003004  53                push bx
00003005  54                push sp
00003006  41                inc cx
00003007  43                inc bx
00003008  53                push bx
00003009  54                push sp
0000300A  41                inc cx
0000300B  43                inc bx
0000300C  53                push bx
0000300D  54                push sp
0000300E  41                inc cx
0000300F  43                inc bx
00003010  53                push bx
00003011  54                push sp
00003012  41                inc cx
00003013  43                inc bx
00003014  53                push bx
00003015  54                push sp
00003016  41                inc cx
00003017  43                inc bx
00003018  53                push bx
00003019  54                push sp
0000301A  41                inc cx
0000301B  43                inc bx
0000301C  53                push bx
0000301D  54                push sp
0000301E  41                inc cx
0000301F  43                inc bx
00003020  53                push bx
00003021  54                push sp
00003022  41                inc cx
00003023  43                inc bx
00003024  53                push bx
00003025  54                push sp
00003026  41                inc cx
00003027  43                inc bx
00003028  53                push bx
00003029  54                push sp
0000302A  41                inc cx
0000302B  43                inc bx
0000302C  53                push bx
0000302D  54                push sp
0000302E  41                inc cx
0000302F  43                inc bx
00003030  53                push bx
00003031  54                push sp
00003032  41                inc cx
00003033  43                inc bx
00003034  53                push bx
00003035  54                push sp
00003036  41                inc cx
00003037  43                inc bx
00003038  53                push bx
00003039  54                push sp
0000303A  41                inc cx
0000303B  43                inc bx
0000303C  53                push bx
0000303D  54                push sp
0000303E  41                inc cx
0000303F  43                inc bx
00003040  53                push bx
00003041  54                push sp
00003042  41                inc cx
00003043  43                inc bx
00003044  53                push bx
00003045  54                push sp
00003046  41                inc cx
00003047  43                inc bx
00003048  53                push bx
00003049  54                push sp
0000304A  41                inc cx
0000304B  43                inc bx
0000304C  53                push bx
0000304D  54                push sp
0000304E  41                inc cx
0000304F  43                inc bx
00003050  53                push bx
00003051  54                push sp
00003052  41                inc cx
00003053  43                inc bx
00003054  53                push bx
00003055  54                push sp
00003056  41                inc cx
00003057  43                inc bx
00003058  53                push bx
00003059  54                push sp
0000305A  41                inc cx
0000305B  43                inc bx
0000305C  53                push bx
0000305D  54                push sp
0000305E  41                inc cx
0000305F  43                inc bx
00003060  53                push bx
00003061  54                push sp
00003062  41                inc cx
00003063  43                inc bx
00003064  53                push bx
00003065  54                push sp
00003066  41                inc cx
00003067  43                inc bx
00003068  53                push bx
00003069  54                push sp
0000306A  41                inc cx
0000306B  43                inc bx
0000306C  53                push bx
0000306D  54                push sp
0000306E  41                inc cx
0000306F  43                inc bx
00003070  53                push bx
00003071  54                push sp
00003072  41                inc cx
00003073  43                inc bx
00003074  53                push bx
00003075  54                push sp
00003076  41                inc cx
00003077  43                inc bx
00003078  53                push bx
00003079  54                push sp
0000307A  41                inc cx
0000307B  43                inc bx
0000307C  53                push bx
0000307D  54                push sp
0000307E  41                inc cx
0000307F  43                inc bx
00003080  53                push bx
00003081  54                push sp
00003082  41                inc cx
00003083  43                inc bx
00003084  53                push bx
00003085  54                push sp
00003086  41                inc cx
00003087  43                inc bx
00003088  53                push bx
00003089  54                push sp
0000308A  41                inc cx
0000308B  43                inc bx
0000308C  53                push bx
0000308D  54                push sp
0000308E  41                inc cx
0000308F  43                inc bx
00003090  53                push bx
00003091  54                push sp
00003092  41                inc cx
00003093  43                inc bx
00003094  53                push bx
00003095  54                push sp
00003096  41                inc cx
00003097  43                inc bx
00003098  53                push bx
00003099  54                push sp
0000309A  41                inc cx
0000309B  43                inc bx
0000309C  53                push bx
0000309D  54                push sp
0000309E  41                inc cx
0000309F  43                inc bx
000030A0  53                push bx
000030A1  54                push sp
000030A2  41                inc cx
000030A3  43                inc bx
000030A4  53                push bx
000030A5  54                push sp
000030A6  41                inc cx
000030A7  43                inc bx
000030A8  53                push bx
000030A9  54                push sp
000030AA  41                inc cx
000030AB  43                inc bx
000030AC  53                push bx
000030AD  54                push sp
000030AE  41                inc cx
000030AF  43                inc bx
000030B0  53                push bx
000030B1  54                push sp
000030B2  41                inc cx
000030B3  43                inc bx
000030B4  53                push bx
000030B5  54                push sp
000030B6  41                inc cx
000030B7  43                inc bx
000030B8  53                push bx
000030B9  54                push sp
000030BA  41                inc cx
000030BB  43                inc bx
000030BC  53                push bx
000030BD  54                push sp
000030BE  41                inc cx
000030BF  43                inc bx
000030C0  53                push bx
000030C1  54                push sp
000030C2  41                inc cx
000030C3  43                inc bx
000030C4  53                push bx
000030C5  54                push sp
000030C6  41                inc cx
000030C7  43                inc bx
000030C8  53                push bx
000030C9  54                push sp
000030CA  41                inc cx
000030CB  43                inc bx
000030CC  53                push bx
000030CD  54                push sp
000030CE  41                inc cx
000030CF  43                inc bx
000030D0  53                push bx
000030D1  54                push sp
000030D2  41                inc cx
000030D3  43                inc bx
000030D4  53                push bx
000030D5  54                push sp
000030D6  41                inc cx
000030D7  43                inc bx
000030D8  53                push bx
000030D9  54                push sp
000030DA  41                inc cx
000030DB  43                inc bx
000030DC  53                push bx
000030DD  54                push sp
000030DE  41                inc cx
000030DF  43                inc bx
000030E0  53                push bx
000030E1  54                push sp
000030E2  41                inc cx
000030E3  43                inc bx
000030E4  53                push bx
000030E5  54                push sp
000030E6  41                inc cx
000030E7  43                inc bx
000030E8  53                push bx
000030E9  54                push sp
000030EA  41                inc cx
000030EB  43                inc bx
000030EC  53                push bx
000030ED  54                push sp
000030EE  41                inc cx
000030EF  43                inc bx
000030F0  53                push bx
000030F1  54                push sp
000030F2  41                inc cx
000030F3  43                inc bx
000030F4  53                push bx
000030F5  54                push sp
000030F6  41                inc cx
000030F7  43                inc bx
000030F8  53                push bx
000030F9  54                push sp
000030FA  41                inc cx
000030FB  43                inc bx
000030FC  53                push bx
000030FD  54                push sp
000030FE  41                inc cx
000030FF  43                inc bx
00003100  53                push bx
00003101  54                push sp
00003102  41                inc cx
00003103  43                inc bx
00003104  53                push bx
00003105  54                push sp
00003106  41                inc cx
00003107  43                inc bx
00003108  53                push bx
00003109  54                push sp
0000310A  41                inc cx
0000310B  43                inc bx
0000310C  53                push bx
0000310D  54                push sp
0000310E  41                inc cx
0000310F  43                inc bx
00003110  53                push bx
00003111  54                push sp
00003112  41                inc cx
00003113  43                inc bx
00003114  53                push bx
00003115  54                push sp
00003116  41                inc cx
00003117  43                inc bx
00003118  53                push bx
00003119  54                push sp
0000311A  41                inc cx
0000311B  43                inc bx
0000311C  53                push bx
0000311D  54                push sp
0000311E  41                inc cx
0000311F  43                inc bx
00003120  53                push bx
00003121  54                push sp
00003122  41                inc cx
00003123  43                inc bx
00003124  53                push bx
00003125  54                push sp
00003126  41                inc cx
00003127  43                inc bx
00003128  53                push bx
00003129  54                push sp
0000312A  41                inc cx
0000312B  43                inc bx
0000312C  53                push bx
0000312D  54                push sp
0000312E  41                inc cx
0000312F  43                inc bx
00003130  53                push bx
00003131  54                push sp
00003132  41                inc cx
00003133  43                inc bx
00003134  53                push bx
00003135  54                push sp
00003136  41                inc cx
00003137  43                inc bx
00003138  53                push bx
00003139  54                push sp
0000313A  41                inc cx
0000313B  43                inc bx
0000313C  53                push bx
0000313D  54                push sp
0000313E  41                inc cx
0000313F  43                inc bx
00003140  53                push bx
00003141  54                push sp
00003142  41                inc cx
00003143  43                inc bx
00003144  53                push bx
00003145  54                push sp
00003146  41                inc cx
00003147  43                inc bx
00003148  53                push bx
00003149  54                push sp
0000314A  41                inc cx
0000314B  43                inc bx
0000314C  53                push bx
0000314D  54                push sp
0000314E  41                inc cx
0000314F  43                inc bx
00003150  53                push bx
00003151  54                push sp
00003152  41                inc cx
00003153  43                inc bx
00003154  53                push bx
00003155  54                push sp
00003156  41                inc cx
00003157  43                inc bx
00003158  53                push bx
00003159  54                push sp
0000315A  41                inc cx
0000315B  43                inc bx
0000315C  53                push bx
0000315D  54                push sp
0000315E  41                inc cx
0000315F  43                inc bx
00003160  53                push bx
00003161  54                push sp
00003162  41                inc cx
00003163  43                inc bx
00003164  53                push bx
00003165  54                push sp
00003166  41                inc cx
00003167  43                inc bx
00003168  53                push bx
00003169  54                push sp
0000316A  41                inc cx
0000316B  43                inc bx
0000316C  53                push bx
0000316D  54                push sp
0000316E  41                inc cx
0000316F  43                inc bx
00003170  53                push bx
00003171  54                push sp
00003172  41                inc cx
00003173  43                inc bx
00003174  53                push bx
00003175  54                push sp
00003176  41                inc cx
00003177  43                inc bx
00003178  53                push bx
00003179  54                push sp
0000317A  41                inc cx
0000317B  43                inc bx
0000317C  53                push bx
0000317D  54                push sp
0000317E  41                inc cx
0000317F  43                inc bx
00003180  53                push bx
00003181  54                push sp
00003182  41                inc cx
00003183  43                inc bx
00003184  53                push bx
00003185  54                push sp
00003186  41                inc cx
00003187  43                inc bx
00003188  53                push bx
00003189  54                push sp
0000318A  41                inc cx
0000318B  43                inc bx
0000318C  53                push bx
0000318D  54                push sp
0000318E  41                inc cx
0000318F  43                inc bx
00003190  53                push bx
00003191  54                push sp
00003192  41                inc cx
00003193  43                inc bx
00003194  53                push bx
00003195  54                push sp
00003196  41                inc cx
00003197  43                inc bx
00003198  53                push bx
00003199  54                push sp
0000319A  41                inc cx
0000319B  43                inc bx
0000319C  53                push bx
0000319D  54                push sp
0000319E  41                inc cx
0000319F  43                inc bx
000031A0  53                push bx
000031A1  54                push sp
000031A2  41                inc cx
000031A3  43                inc bx
000031A4  53                push bx
000031A5  54                push sp
000031A6  41                inc cx
000031A7  43                inc bx
000031A8  53                push bx
000031A9  54                push sp
000031AA  41                inc cx
000031AB  43                inc bx
000031AC  53                push bx
000031AD  54                push sp
000031AE  41                inc cx
000031AF  43                inc bx
000031B0  53                push bx
000031B1  54                push sp
000031B2  41                inc cx
000031B3  43                inc bx
000031B4  53                push bx
000031B5  54                push sp
000031B6  41                inc cx
000031B7  43                inc bx
000031B8  53                push bx
000031B9  54                push sp
000031BA  41                inc cx
000031BB  43                inc bx
000031BC  53                push bx
000031BD  54                push sp
000031BE  41                inc cx
000031BF  43                inc bx
000031C0  53                push bx
000031C1  54                push sp
000031C2  41                inc cx
000031C3  43                inc bx
000031C4  53                push bx
000031C5  54                push sp
000031C6  41                inc cx
000031C7  43                inc bx
000031C8  53                push bx
000031C9  54                push sp
000031CA  41                inc cx
000031CB  43                inc bx
000031CC  53                push bx
000031CD  54                push sp
000031CE  41                inc cx
000031CF  43                inc bx
000031D0  53                push bx
000031D1  54                push sp
000031D2  41                inc cx
000031D3  43                inc bx
000031D4  53                push bx
000031D5  54                push sp
000031D6  41                inc cx
000031D7  43                inc bx
000031D8  53                push bx
000031D9  54                push sp
000031DA  41                inc cx
000031DB  43                inc bx
000031DC  53                push bx
000031DD  54                push sp
000031DE  41                inc cx
000031DF  43                inc bx
000031E0  53                push bx
000031E1  54                push sp
000031E2  41                inc cx
000031E3  43                inc bx
000031E4  53                push bx
000031E5  54                push sp
000031E6  41                inc cx
000031E7  43                inc bx
000031E8  53                push bx
000031E9  54                push sp
000031EA  41                inc cx
000031EB  43                inc bx
000031EC  53                push bx
000031ED  54                push sp
000031EE  41                inc cx
000031EF  43                inc bx
000031F0  53                push bx
000031F1  54                push sp
000031F2  41                inc cx
000031F3  43                inc bx
000031F4  53                push bx
000031F5  54                push sp
000031F6  41                inc cx
000031F7  43                inc bx
000031F8  53                push bx
000031F9  54                push sp
000031FA  41                inc cx
000031FB  43                inc bx
000031FC  53                push bx
000031FD  54                push sp
000031FE  41                inc cx
000031FF  43                inc bx
00003200  53                push bx
00003201  54                push sp
00003202  41                inc cx
00003203  43                inc bx
00003204  53                push bx
00003205  54                push sp
00003206  41                inc cx
00003207  43                inc bx
00003208  53                push bx
00003209  54                push sp
0000320A  41                inc cx
0000320B  43                inc bx
0000320C  53                push bx
0000320D  54                push sp
0000320E  41                inc cx
0000320F  43                inc bx
00003210  53                push bx
00003211  54                push sp
00003212  41                inc cx
00003213  43                inc bx
00003214  53                push bx
00003215  54                push sp
00003216  41                inc cx
00003217  43                inc bx
00003218  53                push bx
00003219  54                push sp
0000321A  41                inc cx
0000321B  43                inc bx
0000321C  53                push bx
0000321D  54                push sp
0000321E  41                inc cx
0000321F  43                inc bx
00003220  53                push bx
00003221  54                push sp
00003222  41                inc cx
00003223  43                inc bx
00003224  53                push bx
00003225  54                push sp
00003226  41                inc cx
00003227  43                inc bx
00003228  53                push bx
00003229  54                push sp
0000322A  41                inc cx
0000322B  43                inc bx
0000322C  53                push bx
0000322D  54                push sp
0000322E  41                inc cx
0000322F  43                inc bx
00003230  53                push bx
00003231  54                push sp
00003232  41                inc cx
00003233  43                inc bx
00003234  53                push bx
00003235  54                push sp
00003236  41                inc cx
00003237  43                inc bx
00003238  53                push bx
00003239  54                push sp
0000323A  41                inc cx
0000323B  43                inc bx
0000323C  53                push bx
0000323D  54                push sp
0000323E  41                inc cx
0000323F  43                inc bx
00003240  53                push bx
00003241  54                push sp
00003242  41                inc cx
00003243  43                inc bx
00003244  53                push bx
00003245  54                push sp
00003246  41                inc cx
00003247  43                inc bx
00003248  53                push bx
00003249  54                push sp
0000324A  41                inc cx
0000324B  43                inc bx
0000324C  53                push bx
0000324D  54                push sp
0000324E  41                inc cx
0000324F  43                inc bx
00003250  53                push bx
00003251  54                push sp
00003252  41                inc cx
00003253  43                inc bx
00003254  53                push bx
00003255  54                push sp
00003256  41                inc cx
00003257  43                inc bx
00003258  53                push bx
00003259  54                push sp
0000325A  41                inc cx
0000325B  43                inc bx
0000325C  53                push bx
0000325D  54                push sp
0000325E  41                inc cx
0000325F  43                inc bx
00003260  53                push bx
00003261  54                push sp
00003262  41                inc cx
00003263  43                inc bx
00003264  53                push bx
00003265  54                push sp
00003266  41                inc cx
00003267  43                inc bx
00003268  53                push bx
00003269  54                push sp
0000326A  41                inc cx
0000326B  43                inc bx
0000326C  53                push bx
0000326D  54                push sp
0000326E  41                inc cx
0000326F  43                inc bx
00003270  53                push bx
00003271  54                push sp
00003272  41                inc cx
00003273  43                inc bx
00003274  53                push bx
00003275  54                push sp
00003276  41                inc cx
00003277  43                inc bx
00003278  53                push bx
00003279  54                push sp
0000327A  41                inc cx
0000327B  43                inc bx
0000327C  53                push bx
0000327D  54                push sp
0000327E  41                inc cx
0000327F  43                inc bx
00003280  53                push bx
00003281  54                push sp
00003282  41                inc cx
00003283  43                inc bx
00003284  53                push bx
00003285  54                push sp
00003286  41                inc cx
00003287  43                inc bx
00003288  53                push bx
00003289  54                push sp
0000328A  41                inc cx
0000328B  43                inc bx
0000328C  53                push bx
0000328D  54                push sp
0000328E  41                inc cx
0000328F  43                inc bx
00003290  53                push bx
00003291  54                push sp
00003292  41                inc cx
00003293  43                inc bx
00003294  53                push bx
00003295  54                push sp
00003296  41                inc cx
00003297  43                inc bx
00003298  53                push bx
00003299  54                push sp
0000329A  41                inc cx
0000329B  43                inc bx
0000329C  53                push bx
0000329D  54                push sp
0000329E  41                inc cx
0000329F  43                inc bx
000032A0  53                push bx
000032A1  54                push sp
000032A2  41                inc cx
000032A3  43                inc bx
000032A4  53                push bx
000032A5  54                push sp
000032A6  41                inc cx
000032A7  43                inc bx
000032A8  53                push bx
000032A9  54                push sp
000032AA  41                inc cx
000032AB  43                inc bx
000032AC  53                push bx
000032AD  54                push sp
000032AE  41                inc cx
000032AF  43                inc bx
000032B0  53                push bx
000032B1  54                push sp
000032B2  41                inc cx
000032B3  43                inc bx
000032B4  53                push bx
000032B5  54                push sp
000032B6  41                inc cx
000032B7  43                inc bx
000032B8  53                push bx
000032B9  54                push sp
000032BA  41                inc cx
000032BB  43                inc bx
000032BC  53                push bx
000032BD  54                push sp
000032BE  41                inc cx
000032BF  43                inc bx
000032C0  53                push bx
000032C1  54                push sp
000032C2  41                inc cx
000032C3  43                inc bx
000032C4  53                push bx
000032C5  54                push sp
000032C6  41                inc cx
000032C7  43                inc bx
000032C8  53                push bx
000032C9  54                push sp
000032CA  41                inc cx
000032CB  43                inc bx
000032CC  53                push bx
000032CD  54                push sp
000032CE  41                inc cx
000032CF  43                inc bx
000032D0  53                push bx
000032D1  54                push sp
000032D2  41                inc cx
000032D3  43                inc bx
000032D4  53                push bx
000032D5  54                push sp
000032D6  41                inc cx
000032D7  43                inc bx
000032D8  53                push bx
000032D9  54                push sp
000032DA  41                inc cx
000032DB  43                inc bx
000032DC  53                push bx
000032DD  54                push sp
000032DE  41                inc cx
000032DF  43                inc bx
000032E0  53                push bx
000032E1  54                push sp
000032E2  41                inc cx
000032E3  43                inc bx
000032E4  53                push bx
000032E5  54                push sp
000032E6  41                inc cx
000032E7  43                inc bx
000032E8  53                push bx
000032E9  54                push sp
000032EA  41                inc cx
000032EB  43                inc bx
000032EC  53                push bx
000032ED  54                push sp
000032EE  41                inc cx
000032EF  43                inc bx
000032F0  53                push bx
000032F1  54                push sp
000032F2  41                inc cx
000032F3  43                inc bx
000032F4  53                push bx
000032F5  54                push sp
000032F6  41                inc cx
000032F7  43                inc bx
000032F8  53                push bx
000032F9  54                push sp
000032FA  41                inc cx
000032FB  43                inc bx
000032FC  53                push bx
000032FD  54                push sp
000032FE  41                inc cx
000032FF  43                inc bx
00003300  53                push bx
00003301  54                push sp
00003302  41                inc cx
00003303  43                inc bx
00003304  53                push bx
00003305  54                push sp
00003306  41                inc cx
00003307  43                inc bx
00003308  53                push bx
00003309  54                push sp
0000330A  41                inc cx
0000330B  43                inc bx
0000330C  53                push bx
0000330D  54                push sp
0000330E  41                inc cx
0000330F  43                inc bx
00003310  53                push bx
00003311  54                push sp
00003312  41                inc cx
00003313  43                inc bx
00003314  53                push bx
00003315  54                push sp
00003316  41                inc cx
00003317  43                inc bx
00003318  53                push bx
00003319  54                push sp
0000331A  41                inc cx
0000331B  43                inc bx
0000331C  53                push bx
0000331D  54                push sp
0000331E  41                inc cx
0000331F  43                inc bx
00003320  53                push bx
00003321  54                push sp
00003322  41                inc cx
00003323  43                inc bx
00003324  53                push bx
00003325  54                push sp
00003326  41                inc cx
00003327  43                inc bx
00003328  53                push bx
00003329  54                push sp
0000332A  41                inc cx
0000332B  43                inc bx
0000332C  53                push bx
0000332D  54                push sp
0000332E  41                inc cx
0000332F  43                inc bx
00003330  53                push bx
00003331  54                push sp
00003332  41                inc cx
00003333  43                inc bx
00003334  53                push bx
00003335  54                push sp
00003336  41                inc cx
00003337  43                inc bx
00003338  53                push bx
00003339  54                push sp
0000333A  41                inc cx
0000333B  43                inc bx
0000333C  53                push bx
0000333D  54                push sp
0000333E  41                inc cx
0000333F  43                inc bx
00003340  53                push bx
00003341  54                push sp
00003342  41                inc cx
00003343  43                inc bx
00003344  53                push bx
00003345  54                push sp
00003346  41                inc cx
00003347  43                inc bx
00003348  53                push bx
00003349  54                push sp
0000334A  41                inc cx
0000334B  43                inc bx
0000334C  53                push bx
0000334D  54                push sp
0000334E  41                inc cx
0000334F  43                inc bx
00003350  53                push bx
00003351  54                push sp
00003352  41                inc cx
00003353  43                inc bx
00003354  53                push bx
00003355  54                push sp
00003356  41                inc cx
00003357  43                inc bx
00003358  53                push bx
00003359  54                push sp
0000335A  41                inc cx
0000335B  43                inc bx
0000335C  53                push bx
0000335D  54                push sp
0000335E  41                inc cx
0000335F  43                inc bx
00003360  53                push bx
00003361  54                push sp
00003362  41                inc cx
00003363  43                inc bx
00003364  53                push bx
00003365  54                push sp
00003366  41                inc cx
00003367  43                inc bx
00003368  53                push bx
00003369  54                push sp
0000336A  41                inc cx
0000336B  43                inc bx
0000336C  53                push bx
0000336D  54                push sp
0000336E  41                inc cx
0000336F  43                inc bx
00003370  53                push bx
00003371  54                push sp
00003372  41                inc cx
00003373  43                inc bx
00003374  53                push bx
00003375  54                push sp
00003376  41                inc cx
00003377  43                inc bx
00003378  53                push bx
00003379  54                push sp
0000337A  41                inc cx
0000337B  43                inc bx
0000337C  53                push bx
0000337D  54                push sp
0000337E  41                inc cx
0000337F  43                inc bx
00003380  53                push bx
00003381  54                push sp
00003382  41                inc cx
00003383  43                inc bx
00003384  53                push bx
00003385  54                push sp
00003386  41                inc cx
00003387  43                inc bx
00003388  53                push bx
00003389  54                push sp
0000338A  41                inc cx
0000338B  43                inc bx
0000338C  53                push bx
0000338D  54                push sp
0000338E  41                inc cx
0000338F  43                inc bx
00003390  53                push bx
00003391  54                push sp
00003392  41                inc cx
00003393  43                inc bx
00003394  53                push bx
00003395  54                push sp
00003396  41                inc cx
00003397  43                inc bx
00003398  53                push bx
00003399  54                push sp
0000339A  41                inc cx
0000339B  43                inc bx
0000339C  53                push bx
0000339D  54                push sp
0000339E  41                inc cx
0000339F  43                inc bx
000033A0  53                push bx
000033A1  54                push sp
000033A2  41                inc cx
000033A3  43                inc bx
000033A4  53                push bx
000033A5  54                push sp
000033A6  41                inc cx
000033A7  43                inc bx
000033A8  53                push bx
000033A9  54                push sp
000033AA  41                inc cx
000033AB  43                inc bx
000033AC  53                push bx
000033AD  54                push sp
000033AE  41                inc cx
000033AF  43                inc bx
000033B0  53                push bx
000033B1  54                push sp
000033B2  41                inc cx
000033B3  43                inc bx
000033B4  53                push bx
000033B5  54                push sp
000033B6  41                inc cx
000033B7  43                inc bx
000033B8  53                push bx
000033B9  54                push sp
000033BA  41                inc cx
000033BB  43                inc bx
000033BC  53                push bx
000033BD  54                push sp
000033BE  41                inc cx
000033BF  43                inc bx
000033C0  53                push bx
000033C1  54                push sp
000033C2  41                inc cx
000033C3  43                inc bx
000033C4  53                push bx
000033C5  54                push sp
000033C6  41                inc cx
000033C7  43                inc bx
000033C8  53                push bx
000033C9  54                push sp
000033CA  41                inc cx
000033CB  43                inc bx
000033CC  53                push bx
000033CD  54                push sp
000033CE  41                inc cx
000033CF  43                inc bx
000033D0  53                push bx
000033D1  54                push sp
000033D2  41                inc cx
000033D3  43                inc bx
000033D4  53                push bx
000033D5  54                push sp
000033D6  41                inc cx
000033D7  43                inc bx
000033D8  53                push bx
000033D9  54                push sp
000033DA  41                inc cx
000033DB  43                inc bx
000033DC  53                push bx
000033DD  54                push sp
000033DE  41                inc cx
000033DF  43                inc bx
000033E0  53                push bx
000033E1  54                push sp
000033E2  41                inc cx
000033E3  43                inc bx
000033E4  53                push bx
000033E5  54                push sp
000033E6  41                inc cx
000033E7  43                inc bx
000033E8  53                push bx
000033E9  54                push sp
000033EA  41                inc cx
000033EB  43                inc bx
000033EC  53                push bx
000033ED  54                push sp
000033EE  41                inc cx
000033EF  43                inc bx
000033F0  53                push bx
000033F1  54                push sp
000033F2  41                inc cx
000033F3  43                inc bx
000033F4  53                push bx
000033F5  54                push sp
000033F6  41                inc cx
000033F7  43                inc bx
000033F8  53                push bx
000033F9  54                push sp
000033FA  41                inc cx
000033FB  43                inc bx
000033FC  53                push bx
000033FD  54                push sp
000033FE  41                inc cx
000033FF  43                inc bx
00003400  54                push sp
00003401  53                push bx
00003402  2E89360800        mov [cs:0x8],si
00003407  2E8C1E0A00        mov [cs:0xa],ds
0000340C  2E890E0C00        mov [cs:0xc],cx
00003411  2EA20103          mov [cs:0x301],al
00003415  E302              jcxz 0x3419
00003417  8CC8              mov ax,cs
00003419  8ED0              mov ss,ax
0000341B  BC8B08            mov sp,0x88b
0000341E  B462              mov ah,0x62
00003420  CD21              int 0x21
00003422  891E0E00          mov [0xe],bx
00003426  E82C00            call 0x3455
00003429  E85400            call 0x3480
0000342C  E84103            call 0x3770
0000342F  E85903            call 0x378b
00003432  E81A04            call 0x384f
00003435  FF36BB00          push word [0xbb]
00003439  E89810            call 0x44d4
0000343C  C706BB000000      mov word [0xbb],0x0
00003442  E96603            jmp 0x37ab
00003445  A1BB00            mov ax,[0xbb]
00003448  0BC0              or ax,ax
0000344A  7404              jz 0x3450
0000344C  50                push ax
0000344D  E88410            call 0x44d4
00003450  B8014C            mov ax,0x4c01
00003453  CD21              int 0x21
00003455  8E060E00          mov es,[0xe]
00003459  268E062C00        mov es,[es:0x2c]
0000345E  33FF              xor di,di
00003460  33C0              xor ax,ax
00003462  B9FFFF            mov cx,0xffff
00003465  F2AE              repne scasb
00003467  AE                scasb
00003468  75FB              jnz 0x3465
0000346A  83C702            add di,byte +0x2
0000346D  06                push es
0000346E  57                push di
0000346F  E84D10            call 0x44bf
00003472  0BC0              or ax,ax
00003474  7404              jz 0x347a
00003476  A3BB00            mov [0xbb],ax
00003479  C3                ret
0000347A  BA3B01            mov dx,0x13b
0000347D  E99B0E            jmp 0x431b
00003480  E81900            call 0x349c
00003483  B84209            mov ax,0x942
00003486  50                push ax
00003487  FF360A00          push word [0xa]
0000348B  FF360800          push word [0x8]
0000348F  E84F01            call 0x35e1
00003492  E82001            call 0x35b5
00003495  A1B600            mov ax,[0xb6]
00003498  A3B800            mov [0xb8],ax
0000349B  C3                ret
0000349C  A10E00            mov ax,[0xe]
0000349F  83C010            add ax,byte +0x10
000034A2  C706B2000000      mov word [0xb2],0x0
000034A8  A3B400            mov [0xb4],ax
000034AB  8E060E00          mov es,[0xe]
000034AF  26A10200          mov ax,[es:0x2]
000034B3  A3B600            mov [0xb6],ax
000034B6  C3                ret
000034B7  55                push bp
000034B8  8BEC              mov bp,sp
000034BA  83C4F2            add sp,byte -0xe
000034BD  A1C500            mov ax,[0xc5]
000034C0  8B16C700          mov dx,[0xc7]
000034C4  83C040            add ax,byte +0x40
000034C7  83D200            adc dx,byte +0x0
000034CA  FF36BB00          push word [0xbb]
000034CE  52                push dx
000034CF  50                push ax
000034D0  E82D10            call 0x4500
000034D3  FF36BB00          push word [0xbb]
000034D7  16                push ss
000034D8  8D46FC            lea ax,[bp-0x4]
000034DB  50                push ax
000034DC  B80400            mov ax,0x4
000034DF  50                push ax
000034E0  E80310            call 0x44e6
000034E3  0BC0              or ax,ax
000034E5  0A00              or al,[bx+si]
000034E7  75C3              jnz 0x34ac
000034E9  00A1C500          add [bx+di+0xc5],ah
000034ED  8B16C700          mov dx,[0xc7]
000034F1  83C044            add ax,byte +0x44
000034F4  83D200            adc dx,byte +0x0
000034F7  FF36BB00          push word [0xbb]
000034FB  52                push dx
000034FC  50                push ax
000034FD  E80010            call 0x4500
00003500  FF36BB00          push word [0xbb]
00003504  16                push ss
00003505  8D46FA            lea ax,[bp-0x6]
00003508  50                push ax
00003509  B80200            mov ax,0x2
0000350C  50                push ax
0000350D  E8D60F            call 0x44e6
00003510  0BC0              or ax,ax
00003512  0A00              or al,[bx+si]
00003514  7596              jnz 0x34ac
00003516  008B4EFA          add [bp+di-0x5b2],cl
0000351A  390E1000          cmp [0x10],cx
0000351E  7704              ja 0x3524
00003520  890E1000          mov [0x10],cx
00003524  BF1200            mov di,0x12
00003527  A1C500            mov ax,[0xc5]
0000352A  8B16C700          mov dx,[0xc7]
0000352E  0146FC            add [bp-0x4],ax
00003531  1156FE            adc [bp-0x2],dx
00003534  51                push cx
00003535  FF36BB00          push word [0xbb]
00003539  FF76FE            push word [bp-0x2]
0000353C  FF76FC            push word [bp-0x4]
0000353F  E8BE0F            call 0x4500
00003542  FF36BB00          push word [0xbb]
00003546  16                push ss
00003547  8D46F6            lea ax,[bp-0xa]
0000354A  50                push ax
0000354B  B80400            mov ax,0x4
0000354E  50                push ax
0000354F  E8940F            call 0x44e6
00003552  0BC0              or ax,ax
00003554  7457              jz 0x35ad
00003556  8B46FC            mov ax,[bp-0x4]
00003559  8B56FE            mov dx,[bp-0x2]
0000355C  83C008            add ax,byte +0x8
0000355F  83D200            adc dx,byte +0x0
00003562  FF36BB00          push word [0xbb]
00003566  52                push dx
00003567  50                push ax
00003568  E8950F            call 0x4500
0000356B  FF36BB00          push word [0xbb]
0000356F  16                push ss
00003570  8D46F2            lea ax,[bp-0xe]
00003573  50                push ax
00003574  B80400            mov ax,0x4
00003577  50                push ax
00003578  E86B0F            call 0x44e6
0000357B  0BC0              or ax,ax
0000357D  742E              jz 0x35ad
0000357F  8B46F2            mov ax,[bp-0xe]
00003582  0905              or [di],ax
00003584  83450203          add word [di+0x2],byte +0x3
00003588  836502FC          and word [di+0x2],byte -0x4
0000358C  8B46F6            mov ax,[bp-0xa]
0000358F  8B56F8            mov dx,[bp-0x8]
00003592  0BD8              or bx,ax
00003594  00FE              add dh,bh
00003596  FC                cld
00003597  53                push bx
00003598  655F              gs pop di
0000359A  54                push sp
0000359B  41                inc cx
0000359C  53                push bx
0000359D  4B                dec bx
0000359E  53                push bx
0000359F  0041D9            add [bx+di-0x27],al
000035A2  01C6              add si,ax
000035A4  0407              add al,0x7
000035A6  01E8              add ax,bp
000035A8  0024              add [si],ah
000035AA  004A00            add [bp+si+0x0],cl
000035AD  0E                push cs
000035AE  7483              jz 0x3533
000035B0  C7                db 0xc7
000035B1  0859E2            or [bx+di-0x1e],bl
000035B4  8B8BE55D          mov cx,[bp+di+0x5de5]
000035B8  C3                ret
000035B9  0E                push cs
000035BA  B8EF09            mov ax,0x9ef
000035BD  05837C            add ax,0x7c83
000035C0  0D8B00            or ax,0x8b
000035C3  0146FC            add [bp-0x4],ax
000035C6  115651            adc [bp+0x51],dx
000035C9  F7054000          test word [di],0x40
000035CD  7516              jnz 0x35e5
000035CF  E8150D            call 0x42e7
000035D2  FF7502            push word [di+0x2]
000035D5  E8570C            call 0x422f
000035D8  894504            mov [di+0x4],ax
000035DB  895506            mov [di+0x6],dx
000035DE  83C708            add di,byte +0x8
000035E1  59                pop cx
000035E2  E2E4              loop 0x35c8
000035E4  C3                ret
000035E5  FF7502            push word [di+0x2]
000035E8  E8750C            call 0x4260
000035EB  EBEB              jmp short 0x35d8
000035ED  0083C0C4          add [bp+di-0x3b40],al
000035F1  7E04              jng 0x35f7
000035F3  268A05            mov al,[es:di]
000035F6  8A65FF            mov ah,[di-0x1]
000035F9  183C              sbb [si],bh
000035FB  FF7424            push word [si+0x24]
000035FE  47                inc di
000035FF  893EBD00          mov [0xbd],di
00003603  8C06BF00          mov [0xbf],es
00003607  C3                ret
00003608  BA3B1A            mov dx,0x1a3b
0000360B  00E8              add al,ch
0000360D  BE00FF            mov si,0xff00
00003610  56                push si
00003611  0802              or [bp+si],al
00003613  06                push es
00003614  57                push di
00003615  E84DC4            call 0xfa65
00003618  7E04              jng 0x361e
0000361A  47                inc di
0000361B  F2AE              repne scasb
0000361D  897E04            mov [bp+0x4],di
00003620  EBD1              jmp short 0x35f3
00003622  5D                pop bp
00003623  C20600            ret 0x6
00003626  0083C040          add [bp+di+0x40c0],al
0000362A  83E602            and si,byte +0x2
0000362D  06                push es
0000362E  57                push di
0000362F  E84DC4            call 0xfa7f
00003632  7E04              jng 0x3638
00003634  07                pop es
00003635  8BFE              mov di,si
00003637  D9                db 0xd9
00003638  49                dec cx
00003639  894EFE            mov [bp-0x2],cx
0000363C  50                push ax
0000363D  E86B0F            call 0x45ab
00003640  33C0              xor ax,ax
00003642  50                push ax
00003643  B83C09            mov ax,0x93c
00003646  0583C2            add ax,0xc283
00003649  0E                push cs
0000364A  50                push ax
0000364B  E8D60F            call 0x4624
0000364E  0BC0              or ax,ax
00003650  0A00              or al,[bx+si]
00003652  7596              jnz 0x35ea
00003654  F20905            repne or [di],ax
00003657  83980E8B46        sbb word [bx+si-0x74f2],byte +0x46
0000365C  FA                cli
0000365D  0B46FC            or ax,[bp-0x4]
00003660  7465              jz 0x36c7
00003662  0FFF              ud0
00003664  36BB0016          ss mov bx,0x1600
00003668  FC                cld
00003669  FF76FA            push word [bp-0x6]
0000366C  E89D0E            call 0x450c
0000366F  50                push ax
00003670  E8D60F            call 0x4649
00003673  0BC0              or ax,ax
00003675  0AF8              or bh,al
00003677  7596              jnz 0x360f
00003679  008B4EFA          add [bp+di-0x5b2],cl
0000367D  730E              jnc 0x368d
0000367F  50                push ax
00003680  E8D60F            call 0x4659
00003683  0BC0              or ax,ax
00003685  0AE6              or ah,dh
00003687  50                push ax
00003688  B8128B            mov ax,0x8b12
0000368B  4E                dec si
0000368C  FA                cli
0000368D  630E8CD0          arpl [0xd08c],cx
00003691  8EC0              mov es,ax
00003693  8D7EEA            lea di,[bp-0x16]
00003696  1E                push ds
00003697  C57604            lds si,[bp+0x4]
0000369A  8B4EFE            mov cx,[bp-0x2]
0000369D  F3A6              repe cmpsb
0000369F  1F                pop ds
000036A0  740D              jz 0x36af
000036A2  FF4EF8            dec word [bp-0x8]
000036A5  75D8              jnz 0x367f
000036A7  0E                push cs
000036A8  B8D68B            mov ax,0x8bd6
000036AB  4E                dec si
000036AC  FA                cli
000036AD  8E0C              mov cs,[si]
000036AF  8B46E6            mov ax,[bp-0x1a]
000036B2  A3C100            mov [0xc1],ax
000036B5  A351FF            mov [0xff51],ax
000036B8  3646              ss inc si
000036BA  E8A3C3            call 0xfa60
000036BD  00A3C700          add [bp+di+0xc7],ah
000036C1  8BE5              mov sp,bp
000036C3  5D                pop bp
000036C4  C20400            ret 0x4
000036C7  BA5D01            mov dx,0x15d
000036CA  E95A0C            jmp 0x4327
000036CD  0083C040          add [bp+di+0x40c0],al
000036D1  83FE50            cmp si,byte +0x50
000036D4  E86B0F            call 0x4642
000036D7  FF36C30F          push word [0xfc3]
000036DB  FF36C100          push word [0xc1]
000036DF  E82A0E            call 0x450c
000036E2  50                push ax
000036E3  E8D60F            call 0x46bc
000036E6  0BC0              or ax,ax
000036E8  0AFE              or bh,dh
000036EA  7596              jnz 0x3682
000036EC  008B4EFA          add [bp+di-0x5b2],cl
000036F0  000E0383          add [0x8303],cl
000036F4  657681            gs jna 0x3678
000036F7  7EFE              jng 0x36f7
000036F9  4D                dec bp
000036FA  5A                pop dx
000036FB  7564              jnz 0x3761
000036FD  B83C09            mov ax,0x93c
00003700  33D2              xor dx,dx
00003702  0306C100          add ax,[0xc1]
00003706  1316C3BB          adc dx,[0xbbc3]
0000370A  00168D46          add [0x468d],dl
0000370E  F250              repne push ax
00003710  B8F90D            mov ax,0xdf9
00003713  00168D46          add [0x468d],dl
00003717  0E                push cs
00003718  B8C500            mov ax,0xc5
0000371B  7596              jnz 0x36b3
0000371D  F20905            repne or [di],ax
00003720  83CF0D            or di,byte +0xd
00003723  03836545          add ax,[bp+di+0x4565]
00003727  FE                db 0xfe
00003728  51                push cx
00003729  FF0B              dec word [bp+di]
0000372B  BB00FF            mov bx,0xff00
0000372E  7444              jz 0x3774
00003730  A1C100            mov ax,[0xc1]
00003733  0106C500          add [0xc5],ax
00003737  A1C300            mov ax,[0xc3]
0000373A  0106C700          add [0xc7],ax
0000373E  50                push ax
0000373F  E86B0F            call 0x46ad
00003742  FF36C700          push word [0xc7]
00003746  50                push ax
00003747  E8C500            call 0x380f
0000374A  E8BF0D            call 0x450c
0000374D  50                push ax
0000374E  E8D60F            call 0x4727
00003751  0BC0              or ax,ax
00003753  0AFE              or bh,dh
00003755  7596              jnz 0x36ed
00003757  008B4EFA          add [bp+di-0x5b2],cl
0000375B  95                xchg ax,bp
0000375C  0D0383            or ax,0x8303
0000375F  650B817EFE        or ax,[gs:bx+di-0x182]
00003764  4C                dec sp
00003765  58                pop ax
00003766  750C              jnz 0x3774
00003768  8BE5              mov sp,bp
0000376A  5D                pop bp
0000376B  C3                ret
0000376C  0E                push cs
0000376D  B8EF09            mov ax,0x9ef
00003770  0583C9            add ax,0xc983
00003773  0B0EB80A          or cx,[0xab8]
00003777  0150E8            add [bx+si-0x18],dx
0000377A  C10BB8            ror word [bp+di],byte 0xb8
0000377D  A01950            mov al,[0x5019]
00003780  E8DD0A            call 0x4260
00003783  41                inc cx
00003784  E865FF            call 0x36ec
00003787  33F6              xor si,si
00003789  B9A019            mov cx,0x19a0
0000378C  FC                cld
0000378D  F3A4              rep movsb
0000378F  8ED2              mov ss,dx
00003791  8EDA              mov ds,dx
00003793  58                pop ax
00003794  52                push dx
00003795  50                push ax
00003796  CB                retf
00003797  1E                push ds
00003798  FF360C00          push word [0xc]
0000379C  E8C10A            call 0x4260
0000379F  41                inc cx
000037A0  E88BF8            call 0x302e
000037A3  87060800          xchg ax,[0x8]
000037A7  87160A00          xchg dx,[0xa]
000037AB  8BD0              mov dx,ax
000037AD  BC8B8E            mov sp,0x8e8b
000037B0  DA8BF0F3          fimul dword [bp+di-0xc10]
000037B4  A4                movsb
000037B5  1F                pop ds
000037B6  C70083C0          mov word [bx+si],0xc083
000037BA  40                inc ax
000037BB  83F8C4            cmp ax,byte -0x3c
000037BE  1E                push ds
000037BF  0400              add al,0x0
000037C1  26F6470577        test byte [es:bx+0x5],0x77
000037C6  0489              add al,0x89
000037C8  87FC              xchg di,sp
000037CA  26C45F04          les bx,[es:bx+0x4]
000037CE  268B4718          mov ax,[es:bx+0x18]
000037D2  03836579          add ax,[bp+di+0x7965]
000037D6  268B571C          mov dx,[es:bx+0x1c]
000037DA  8956FC            mov [bp-0x4],dx
000037DD  26FF7742          push word [es:bx+0x42]
000037E1  26FF7740          push word [es:bx+0x40]
000037E5  50                push ax
000037E6  E8FA08            call 0x40e3
000037E9  268B4704          mov ax,[es:bx+0x4]
000037ED  76FE              jna 0x37ed
000037EF  FF268B57          jmp [0x578b]
000037F3  06                push es
000037F4  8956FE            mov [bp-0x2],dx
000037F7  C41E0400          les bx,[0x4]
000037FB  26C45F04          les bx,[es:bx+0x4]
000037FF  268B4720          mov ax,[es:bx+0x20]
00003803  0383654E          add ax,[bp+di+0x4e65]
00003807  26FF7742          push word [es:bx+0x42]
0000380B  26FF7740          push word [es:bx+0x40]
0000380F  50                push ax
00003810  E8D008            call 0x40e3
00003813  268B4704          mov ax,[es:bx+0x4]
00003817  268B5706          mov dx,[es:bx+0x6]
0000381B  C41E0400          les bx,[0x4]
0000381F  26C45F04          les bx,[es:bx+0x4]
00003823  26034724          add ax,[es:bx+0x24]
00003827  8946F8            mov [bp-0x8],ax
0000382A  8956FA            mov [bp-0x6],dx
0000382D  E84A09            call 0x417a
00003830  A1B8C3            mov ax,[0xc3b8]
00003833  55                push bp
00003834  8BEC              mov bp,sp
00003836  838EE85903        or word [bp+0x59e8],byte +0x3
0000383B  A30200            mov [0x2],ax
0000383E  FF36BB00          push word [0xbb]
00003842  52                push dx
00003843  50                push ax
00003844  8B7EF8            mov di,[bp-0x8]
00003847  8E56FA            mov ss,[bp-0x6]
0000384A  8BE7              mov sp,di
0000384C  52                push dx
0000384D  50                push ax
0000384E  CB                retf
0000384F  BA8C01            mov dx,0x18c
00003852  E9D20A            jmp 0x4327
00003855  BAA701            mov dx,0x1a7
00003858  E9CC0A            jmp 0x4327
0000385B  B8010D            mov ax,0xd01
0000385E  E82001            call 0x3981
00003861  A1B600            mov ax,[0xb6]
00003864  A3B800            mov [0xb8],ax
00003867  C3                ret
00003868  83FDF6            cmp bp,byte -0xa
0000386B  06                push es
0000386C  0103              add [bp+di],ax
0000386E  013C              add [si],di
00003870  2274F0            and dh,[si-0x10]
00003873  02E8              add ch,al
00003875  D503              aad 0x3
00003877  803EBA001F        cmp byte [0xba],0x1f
0000387C  5E                pop si
0000387D  C3                ret
0000387E  E9D0FB            jmp 0x3451
00003881  C70083C0          mov word [bx+si],0xc083
00003885  40                inc ax
00003886  83FCB8            cmp sp,byte -0x48
00003889  1809              sbb [bx+di],cl
0000388B  0583D1            add ax,0xd183
0000388E  098946FC          or [bx+di-0x3ba],cx
00003892  8956FE            mov [bp-0x2],dx
00003895  00168D46          add [0x468d],dl
00003899  F650B8            not byte [bx+si-0x48]
0000389C  1F                pop ds
0000389D  BB0016            mov bx,0x1600
000038A0  8D46F6            lea ax,[bp-0xa]
000038A3  50                push ax
000038A4  B85701            mov ax,0x157
000038A7  00168D46          add [0x468d],dl
000038AB  F650B8            not byte [bx+si-0x48]
000038AE  C60100            mov byte [bx+di],0x0
000038B1  16                push ss
000038B2  8D46F6            lea ax,[bp-0xa]
000038B5  50                push ax
000038B6  B89608            mov ax,0x896
000038B9  8BE5              mov sp,bp
000038BB  5D                pop bp
000038BC  C3                ret
000038BD  0083C040          add [bp+di+0x40c0],al
000038C1  83FC50            cmp sp,byte +0x50
000038C4  E86B0F            call 0x4832
000038C7  FF36C700          push word [0xc7]
000038CB  50                push ax
000038CC  E8C500            call 0x3994
000038CF  E83A0C            call 0x450c
000038D2  B8B009            mov ax,0x9b0
000038D5  058387            add ax,0x8783
000038D8  098946FC          or [bx+di-0x3ba],cx
000038DC  8956FE            mov [bp-0x2],dx
000038DF  00168D46          add [0x468d],dl
000038E3  F250              repne push ax
000038E5  B8B009            mov ax,0x9b0
000038E8  058306            add ax,0x683
000038EB  0C10              or al,0x10
000038ED  007704            add [bx+0x4],dh
000038F0  89DF              mov di,bx
000038F2  00C4              add ah,al
000038F4  5E                pop si
000038F5  FF268B47          jmp [0x478b]
000038F9  40                inc ax
000038FA  268B5742          mov dx,[es:bx+0x42]
000038FE  0306C500          add ax,[0xc5]
00003902  1316C7BB          adc dx,[0xbbc7]
00003906  00168D46          add [0x468d],dl
0000390A  F250              repne push ax
0000390C  B8FD0B            mov ax,0xbfd
0000390F  C45EFF            les bx,[bp-0x1]
00003912  268B4738          mov ax,[es:bx+0x38]
00003916  262B4730          sub ax,[es:bx+0x30]
0000391A  50                push ax
0000391B  E84209            call 0x4260
0000391E  8BC8              mov cx,ax
00003920  C45EFF            les bx,[bp-0x1]
00003923  262B4F40          sub cx,[es:bx+0x40]
00003927  26014F40          add [es:bx+0x40],cx
0000392B  26895742          mov [es:bx+0x42],dx
0000392F  26014F48          add [es:bx+0x48],cx
00003933  2689574A          mov [es:bx+0x4a],dx
00003937  26014F58          add [es:bx+0x58],cx
0000393B  2689575A          mov [es:bx+0x5a],dx
0000393F  26014F5C          add [es:bx+0x5c],cx
00003943  2689575E          mov [es:bx+0x5e],dx
00003947  268B4F38          mov cx,[es:bx+0x38]
0000394B  262B4F30          sub cx,[es:bx+0x30]
0000394F  00168D46          add [0x468d],dl
00003953  F250              repne push ax
00003955  51                push cx
00003956  E8990B            call 0x44f2
00003959  03836575          add ax,[bp+di+0x7565]
0000395D  C45EFF            les bx,[bp-0x1]
00003960  26FF7730          push word [es:bx+0x30]
00003964  E8F908            call 0x4260
00003967  8BC8              mov cx,ax
00003969  C45EFF            les bx,[bp-0x1]
0000396C  262B4F68          sub cx,[es:bx+0x68]
00003970  26014F68          add [es:bx+0x68],cx
00003974  2689576A          mov [es:bx+0x6a],dx
00003978  26014F6C          add [es:bx+0x6c],cx
0000397C  2689576E          mov [es:bx+0x6e],dx
00003980  26014F70          add [es:bx+0x70],cx
00003984  26895772          mov [es:bx+0x72],dx
00003988  26014F78          add [es:bx+0x78],cx
0000398C  2689577A          mov [es:bx+0x7a],dx
00003990  00168D46          add [0x468d],dl
00003994  F250              repne push ax
00003996  26FF7730          push word [es:bx+0x30]
0000399A  E8550B            call 0x44f2
0000399D  03836531          add ax,[bp+di+0x3165]
000039A1  C45E04            les bx,[bp+0x4]
000039A4  FF36BB26          push word [0x26bb]
000039A8  894704            mov [bx+0x4],ax
000039AB  FF36FE26          push word [0x26fe]
000039AF  894706            mov [bx+0x6],ax
000039B2  06                push es
000039B3  53                push bx
000039B4  00168D46          add [0x468d],dl
000039B8  F650B8            not byte [bx+si-0x48]
000039BB  2500C4            and ax,0xc400
000039BE  5E                pop si
000039BF  0406              add al,0x6
000039C1  8D4708            lea ax,[bx+0x8]
000039C4  50                push ax
000039C5  E84F07            call 0x4117
000039C8  0BC2              or ax,dx
000039CA  750E              jnz 0x39da
000039CC  8BE5              mov sp,bp
000039CE  5D                pop bp
000039CF  C20400            ret 0x4
000039D2  0E                push cs
000039D3  B8EF09            mov ax,0x9ef
000039D6  058363            add ax,0x6383
000039D9  090EB81A          or [0x1ab8],cx
000039DD  0150E8            add [bx+si-0x18],dx
000039E0  5B                pop bx
000039E1  0900              or [bx+si],ax
000039E3  83C01E            add ax,byte +0x1e
000039E6  C57604            lds si,[bp+0x4]
000039E9  C57458            lds si,[si+0x58]
000039EC  8A0C              mov cl,[si]
000039EE  32ED              xor ch,ch
000039F0  41                inc cx
000039F1  C47E08            les di,[bp+0x8]
000039F4  8D7D08            lea di,[di+0x8]
000039F7  F3A4              rep movsb
000039F9  1F                pop ds
000039FA  5D                pop bp
000039FB  C20800            ret 0x8
000039FE  0083C040          add [bp+di+0x40c0],al
00003A02  83FAC7            cmp dx,byte -0x39
00003A05  46                inc si
00003A06  FE01              inc byte [bx+di]
00003A08  00C4              add ah,al
00003A0A  7E04              jng 0x3a10
00003A0C  26C45D04          les bx,[es:di+0x4]
00003A10  268B4F44          mov cx,[es:bx+0x44]
00003A14  E31D              jcxz 0x3a33
00003A16  26C45F40          les bx,[es:bx+0x40]
00003A1A  895EFA            mov [bp-0x6],bx
00003A1D  8C46FC            mov [bp-0x4],es
00003A20  51                push cx
00003A21  0016FCFF          add [0xfffc],dl
00003A25  76FA              jna 0x3a21
00003A27  00168DE8          add [0xe88d],dl
00003A2B  EAFFFF46FE        jmp 0xfe46:0xffff
00003A30  59                pop cx
00003A31  E2ED              loop 0x3a20
00003A33  8BE5              mov sp,bp
00003A35  5D                pop bp
00003A36  C20400            ret 0x4
00003A39  0083C0FF          add [bp+di-0x40],al
00003A3D  7608              jna 0x3a47
00003A3F  FF7606            push word [bp+0x6]
00003A42  FF7604            push word [bp+0x4]
00003A45  E89B06            call 0x40e3
00003A48  FC                cld
00003A49  11568B            adc [bp-0x75],dx
00003A4C  4E                dec si
00003A4D  0449              add al,0x49
00003A4F  E305              jcxz 0x3a56
00003A51  83C708            add di,byte +0x8
00003A54  E2FB              loop 0x3a51
00003A56  834504D8          add word [di+0x4],byte -0x28
00003A5A  00FE              add dh,bh
00003A5C  04FC              add al,0xfc
00003A5E  8B4504            mov ax,[di+0x4]
00003A61  26894704          mov [es:bx+0x4],ax
00003A65  FF4506            inc word [di+0x6]
00003A68  26894706          mov [es:bx+0x6],ax
00003A6C  268B07            mov ax,[es:bx]
00003A6F  014504            add [di+0x4],ax
00003A72  5D                pop bp
00003A73  C20600            ret 0x6
00003A76  0083C040          add [bp+di+0x40c0],al
00003A7A  83F4C4            xor sp,byte -0x3c
00003A7D  5E                pop si
00003A7E  0426              add al,0x26
00003A80  C45F04            les bx,[bx+0x4]
00003A83  895EFC            mov [bp-0x4],bx
00003A86  8C36FE26          mov [0x26fe],segr6
00003A8A  8B4F44            mov cx,[bx+0x44]
00003A8D  E33C              jcxz 0x3acb
00003A8F  268B7748          mov si,[es:bx+0x48]
00003A93  26C45F40          les bx,[es:bx+0x40]
00003A97  8976F4            mov [bp-0xc],si
00003A9A  8C46F6            mov [bp-0xa],es
00003A9D  895EF8            mov [bp-0x8],bx
00003AA0  8C46FA            mov [bp-0x6],es
00003AA3  51                push cx
00003AA4  C45EF8            les bx,[bp-0x8]
00003AA7  8B76F4            mov si,[bp-0xc]
00003AAA  268B470C          mov ax,[es:bx+0xc]
00003AAE  48                dec ax
00003AAF  D1E0              shl ax,1
00003AB1  D1E0              shl ax,1
00003AB3  D1E0              shl ax,1
00003AB5  03F0              add si,ax
00003AB7  00168D46          add [0x468d],dl
00003ABB  F65006            not byte [bx+si+0x6]
00003ABE  53                push bx
00003ABF  06                push es
00003AC0  56                push si
00003AC1  E80D00            call 0x3ad1
00003AC4  8346F818          add word [bp-0x8],byte +0x18
00003AC8  59                pop cx
00003AC9  E2D8              loop 0x3aa3
00003ACB  8BE5              mov sp,bp
00003ACD  5D                pop bp
00003ACE  C20400            ret 0x4
00003AD1  0083C040          add [bp+di+0x40c0],al
00003AD5  83F8C4            cmp ax,byte -0x3c
00003AD8  5E                pop si
00003AD9  08268B47          or [0x478b],ah
00003ADD  0489              add al,0x89
00003ADF  46                inc si
00003AE0  FA                cli
00003AE1  268B4706          mov ax,[es:bx+0x6]
00003AE5  89FE              mov si,di
00003AE7  FF268B07          jmp [0x78b]
00003AEB  8946F8            mov [bp-0x8],ax
00003AEE  268B4F10          mov cx,[es:bx+0x10]
00003AF2  E35E              jcxz 0x3b52
00003AF4  51                push cx
00003AF5  C47604            les si,[bp+0x4]
00003AF8  268B14            mov dx,[es:si]
00003AFB  268B4C02          mov cx,[es:si+0x2]
00003AFF  C45E0C            les bx,[bp+0xc]
00003B02  268B472C          mov ax,[es:bx+0x2c]
00003B06  D1E2              shl dx,1
00003B08  D1D1              rcl cx,1
00003B0A  48                dec ax
00003B0B  75F9              jnz 0x3b06
00003B0D  2603973EFC        add dx,[es:bx-0x3c2]
00003B12  3013              xor [bp+di],dl
00003B14  8F82BB00          pop word [bp+si+0xbb]
00003B18  16                push ss
00003B19  8D4651            lea ax,[bp+0x51]
00003B1C  52                push dx
00003B1D  E8EC09            call 0x450c
00003B20  C47604            les si,[bp+0x4]
00003B23  268B4C04          mov cx,[es:si+0x4]
00003B27  3B4EF8            cmp cx,[bp-0x8]
00003B2A  7203              jc 0x3b2f
00003B2C  8B4EF8            mov cx,[bp-0x8]
00003B2F  894EFE            mov [bp-0x2],cx
00003B32  50                push ax
00003B33  E86B0F            call 0x4aa1
00003B36  0016FCFF          add [0xfffc],dl
00003B3A  76FA              jna 0x3b36
00003B3C  00168DE8          add [0xe88d],dl
00003B40  B009              mov al,0x9
00003B42  FF36FE01          push word [0x1fe]
00003B46  46                inc si
00003B47  FA                cli
00003B48  2946F8            sub [bp-0x8],ax
00003B4B  83460408          add word [bp+0x4],byte +0x8
00003B4F  59                pop cx
00003B50  E2A2              loop 0x3af4
00003B52  8B4EF8            mov cx,[bp-0x8]
00003B55  E307              jcxz 0x3b5e
00003B57  C47EFA            les di,[bp-0x6]
00003B5A  32C0              xor al,al
00003B5C  F3AA              rep stosb
00003B5E  8BE5              mov sp,bp
00003B60  5D                pop bp
00003B61  C20C00            ret 0xc
00003B64  0083C040          add [bp+di+0x40c0],al
00003B68  83FE50            cmp si,byte +0x50
00003B6B  E8C900            call 0x3c37
00003B6E  0E                push cs
00003B6F  B80203            mov ax,0x302
00003B72  50                push ax
00003B73  E8E408            call 0x445a
00003B76  0E                push cs
00003B77  B85A0E            mov ax,0xe5a
00003B7A  00263609          add [0x936],ah
00003B7E  03836532          add ax,[bp+di+0x3265]
00003B82  A3C900            mov [0xc9],ax
00003B85  0E                push cs
00003B86  B8CC03            mov ax,0x3cc
00003B89  50                push ax
00003B8A  E8CD08            call 0x445a
00003B8D  FC                cld
00003B8E  1156C7            adc [bp-0x39],dx
00003B91  46                inc si
00003B92  FE01              inc byte [bx+di]
00003B94  008B0001          add [bp+di+0x100],cl
00003B98  46                inc si
00003B99  FF4506            inc word [di+0x6]
00003B9C  51                push cx
00003B9D  0016FE50          add [0x50fe],dl
00003BA1  E81800            call 0x3bbc
00003BA4  59                pop cx
00003BA5  FF46FE            inc word [bp-0x2]
00003BA8  83C708            add di,byte +0x8
00003BAB  E2EC              loop 0x3b99
00003BAD  50                push ax
00003BAE  E8C900            call 0x3c7a
00003BB1  E82C09            call 0x44e0
00003BB4  8F06C900          pop word [0xc9]
00003BB8  8BE5              mov sp,bp
00003BBA  5D                pop bp
00003BBB  C3                ret
00003BBC  0083C01E          add [bp+di+0x1ec0],al
00003BC0  57                push di
00003BC1  56                push si
00003BC2  C43E0400          les di,[0x4]
00003BC6  26F647C774        test byte [es:bx-0x39],0x74
00003BCB  7980              jns 0x3b4d
00003BCD  3C22              cmp al,0x22
00003BCF  C47D04            les di,[di+0x4]
00003BD2  268B4544          mov ax,[es:di+0x44]
00003BD6  3B4606            cmp ax,[bp+0x6]
00003BD9  7263              jc 0x3c3e
00003BDB  7C01              jl 0x3bde
00003BDD  1F                pop ds
00003BDE  58                pop ax
00003BDF  8A1C              mov bl,[si]
00003BE1  0ADB              or bl,bl
00003BE3  7459              jz 0x3c3e
00003BE5  32FF              xor bh,bh
00003BE7  8B4001            mov ax,[bx+si+0x1]
00003BEA  03836545          add ax,[bp+di+0x4565]
00003BEE  26FF7542          push word [es:di+0x42]
00003BF2  26FF7540          push word [es:di+0x40]
00003BF6  26FF755E          push word [es:di+0x5e]
00003BFA  26FF755C          push word [es:di+0x5c]
00003BFE  50                push ax
00003BFF  E82304            call 0x4025
00003C02  3B5604            cmp dx,[bp+0x4]
00003C05  752C              jnz 0x3c33
00003C07  50                push ax
00003C08  52                push dx
00003C09  0E                push cs
00003C0A  B8500E            mov ax,0xe50
00003C0D  00264908          add [0x849],ah
00003C11  5A                pop dx
00003C12  52                push dx
00003C13  E8D407            call 0x43ea
00003C16  0E                push cs
00003C17  B8580E            mov ax,0xe58
00003C1A  00263C08          add [0x83c],ah
00003C1E  58                pop ax
00003C1F  50                push ax
00003C20  E8C707            call 0x43ea
00003C23  0E                push cs
00003C24  B8500E            mov ax,0xe50
00003C27  00262F08          add [0x82f],ah
00003C2B  1E                push ds
00003C2C  56                push si
00003C2D  E80D08            call 0x443d
00003C30  E84308            call 0x4476
00003C33  8A04              mov al,[si]
00003C35  32E4              xor ah,ah
00003C37  03F0              add si,ax
00003C39  83C603            add si,byte +0x3
00003C3C  EBA1              jmp short 0x3bdf
00003C3E  5F                pop di
00003C3F  803C27            cmp byte [si],0x27
00003C42  3DEB81            cmp ax,0x81eb
00003C45  5E                pop si
00003C46  5F                pop di
00003C47  1F                pop ds
00003C48  5D                pop bp
00003C49  C20400            ret 0x4
00003C4C  C43E0400          les di,[0x4]
00003C50  26F647C774        test byte [es:bx-0x39],0x74
00003C55  1480              adc al,0x80
00003C57  3C22              cmp al,0x22
00003C59  FF7506            push word [di+0x6]
00003C5C  22FF              and bh,bh
00003C5E  7504              jnz 0x3c64
00003C60  B81312            mov ax,0x1213
00003C63  5F                pop di
00003C64  803C27            cmp byte [si],0x27
00003C67  3DEBE6            cmp ax,0xe6eb
00003C6A  C3                ret
00003C6B  0083C040          add [bp+di+0x40c0],al
00003C6F  83FCC4            cmp sp,byte -0x3c
00003C72  5E                pop si
00003C73  0426              add al,0x26
00003C75  8B4F44            mov cx,[bx+0x44]
00003C78  26C45F40          les bx,[es:bx+0x40]
00003C7C  895EFC            mov [bp-0x4],bx
00003C7F  8C36FE51          mov [0x51fe],segr6
00003C83  FF7606            push word [bp+0x6]
00003C86  FF7604            push word [bp+0x4]
00003C89  00168D46          add [0x468d],dl
00003C8D  F650B8            not byte [bx+si-0x48]
00003C90  0D0083            or ax,0x8300
00003C93  46                inc si
00003C94  FC                cld
00003C95  1859E2            sbb [bx+di-0x1e],bl
00003C98  E98BE5            jmp 0x2226
00003C9B  5D                pop bp
00003C9C  C20400            ret 0x4
00003C9F  0083C040          add [bp+di+0x40c0],al
00003CA3  83F8C4            cmp ax,byte -0x3c
00003CA6  5E                pop si
00003CA7  0426              add al,0x26
00003CA9  8B4F10            mov cx,[bx+0x10]
00003CAC  E34D              jcxz 0x3cfb
00003CAE  268B4704          mov ax,[es:bx+0x4]
00003CB2  8946FC            mov [bp-0x4],ax
00003CB5  268B4706          mov ax,[es:bx+0x6]
00003CB9  89FE              mov si,di
00003CBB  FE                db 0xfe
00003CBC  268B570C          mov dx,[es:bx+0xc]
00003CC0  4A                dec dx
00003CC1  D1E2              shl dx,1
00003CC3  D1E2              shl dx,1
00003CC5  C45E08            les bx,[bp+0x8]
00003CC8  26C45F68          les bx,[es:bx+0x68]
00003CCC  03D3              add dx,bx
00003CCE  8956F8            mov [bp-0x8],dx
00003CD1  8C46FA            mov [bp-0x6],es
00003CD4  51                push cx
00003CD5  FF760A            push word [bp+0xa]
00003CD8  FF7608            push word [bp+0x8]
00003CDB  FF76FA            push word [bp-0x6]
00003CDE  0016F800          add [0xf8],dl
00003CE2  16                push ss
00003CE3  8D46F6            lea ax,[bp-0xa]
00003CE6  50                push ax
00003CE7  B81700            mov ax,0x17
00003CEA  C45E08            les bx,[bp+0x8]
00003CED  268B4728          mov ax,[es:bx+0x28]
00003CF1  76FE              jna 0x3cf1
00003CF3  FF8346F8          inc word [bp+di-0x7ba]
00003CF7  0459              add al,0x59
00003CF9  E2D9              loop 0x3cd4
00003CFB  8BE5              mov sp,bp
00003CFD  5D                pop bp
00003CFE  C20800            ret 0x8
00003D01  0083C040          add [bp+di+0x40c0],al
00003D05  83FCC4            cmp sp,byte -0x3c
00003D08  5E                pop si
00003D09  0C26              or al,0x26
00003D0B  8B476C            mov ax,[bx+0x6c]
00003D0E  C47608            les si,[bp+0x8]
00003D11  268B14            mov dx,[es:si]
00003D14  03D0              add dx,ax
00003D16  8956FE            mov [bp-0x2],dx
00003D19  268B5404          mov dx,[es:si+0x4]
00003D1D  03D0              add dx,ax
00003D1F  8956FC            mov [bp-0x4],dx
00003D22  8B76FE            mov si,[bp-0x2]
00003D25  3B76FC            cmp si,[bp-0x4]
00003D28  7319              jnc 0x3d43
00003D2A  8B460A            mov ax,[bp+0xa]
00003D2D  FF760E            push word [bp+0xe]
00003D30  FF760C            push word [bp+0xc]
00003D33  50                push ax
00003D34  56                push si
00003D35  FF7606            push word [bp+0x6]
00003D38  FF7604            push word [bp+0x4]
00003D3B  E80B00            call 0x3d49
00003D3E  89FE              mov si,di
00003D40  FE                db 0xfe
00003D41  EBDF              jmp short 0x3d22
00003D43  8BE5              mov sp,bp
00003D45  5D                pop bp
00003D46  C20C00            ret 0xc
00003D49  0083C040          add [bp+di+0x40c0],al
00003D4D  83EE1E            sub si,byte +0x1e
00003D50  C57608            lds si,[bp+0x8]
00003D53  AC                lodsb
00003D54  8846F9            mov [bp-0x7],al
00003D57  AC                lodsb
00003D58  8846F8            mov [bp-0x8],al
00003D5B  F646F920          test byte [bp-0x7],0x20
00003D5F  7408              jz 0x3d69
00003D61  0206AC89          add al,[0x89ac]
00003D65  46                inc si
00003D66  F6EB              imul bl
00003D68  0CC7              or al,0xc7
00003D6A  46                inc si
00003D6B  F60100            test byte [bx+di],0x0
00003D6E  8976F2            mov [bp-0xe],si
00003D71  8C5EF4            mov [bp-0xc],ds
00003D74  AD                lodsw
00003D75  F646F81E          test byte [bp-0x8],0x1e
00003D79  0E                push cs
00003D7A  7CAD              jl 0x3d29
00003D7C  EB03              jmp short 0x3d81
00003D7E  AC                lodsb
00003D7F  32E4              xor ah,ah
00003D81  89FE              mov si,di
00003D83  FE                db 0xfe
00003D84  33C0              xor ax,ax
00003D86  33D2              xor dx,dx
00003D88  8A5EF8            mov bl,[bp-0x8]
00003D8B  80E303            and bl,0x3
00003D8E  45                inc bp
00003D8F  E2CF              loop 0x3d60
00003D91  750B              jnz 0x3d9e
00003D93  8A5EF9            mov bl,[bp-0x7]
00003D96  80E30F            and bl,0xf
00003D99  80FB02            cmp bl,0x2
00003D9C  7417              jz 0x3db5
00003D9E  F646F880          test byte [bp-0x8],0x80
00003DA2  7510              jnz 0x3db4
00003DA4  F646F8AF          test byte [bp-0x8],0xaf
00003DA8  02B2ADEB          add dh,[bp+si-0x1453]
00003DAC  08AD8BD0          or [di-0x2f75],ch
00003DB0  AD                lodsw
00003DB1  92                xchg ax,dx
00003DB2  EB01              jmp short 0x3db5
00003DB4  AC                lodsb
00003DB5  8946FA            mov [bp-0x6],ax
00003DB8  8956FC            mov [bp-0x4],dx
00003DBB  897608            mov [bp+0x8],si
00003DBE  21891E0E          and [bx+di+0xe1e],cx
00003DC2  8A5EF8            mov bl,[bp-0x8]
00003DC5  83E303            and bx,byte +0x3
00003DC8  D1E3              shl bx,1
00003DCA  FFA77904          jmp [bx+0x479]
00003DCE  C45E0C            les bx,[bp+0xc]
00003DD1  26FF7742          push word [es:bx+0x42]
00003DD5  26FF7740          push word [es:bx+0x40]
00003DD9  00168DE8          add [0xe88d],dl
00003DDD  0403              add al,0x3
00003DDF  268B4704          mov ax,[es:bx+0x4]
00003DE3  0346FA            add ax,[bp-0x6]
00003DE6  268B5706          mov dx,[es:bx+0x6]
00003DEA  EB4A              jmp short 0x3e36
00003DEC  FF760E            push word [bp+0xe]
00003DEF  FF760C            push word [bp+0xc]
00003DF2  00168D46          add [0x468d],dl
00003DF6  F6FA              idiv dl
00003DF8  E87701            call 0x3f72
00003DFB  EB39              jmp short 0x3e36
00003DFD  C45E0C            les bx,[bp+0xc]
00003E00  26C45F78          les bx,[es:bx+0x78]
00003E04  035EFA            add bx,[bp-0x6]
00003E07  895EFA            mov [bp-0x6],bx
00003E0A  8C46FC            mov [bp-0x4],es
00003E0D  FF760E            push word [bp+0xe]
00003E10  FF760C            push word [bp+0xc]
00003E13  00168D06          add [0x68d],dl
00003E17  53                push bx
00003E18  E8DB00            call 0x3ef6
00003E1B  EB19              jmp short 0x3e36
00003E1D  C45E0C            les bx,[bp+0xc]
00003E20  26FF7742          push word [es:bx+0x42]
00003E24  26FF7740          push word [es:bx+0x40]
00003E28  26FF775E          push word [es:bx+0x5e]
00003E2C  26FF775C          push word [es:bx+0x5c]
00003E30  00168DE8          add [0xe88d],dl
00003E34  EF                out dx,ax
00003E35  018946EE          add [bx+di-0x11ba],cx
00003E39  8956F0            mov [bp-0x10],dx
00003E3C  C57608            lds si,[bp+0x8]
00003E3F  F646F804          test byte [bp-0x8],0x4
00003E43  7416              jz 0x3e5b
00003E45  33D2              xor dx,dx
00003E47  F646F820          test byte [bp-0x8],0x20
00003E4B  7407              jz 0x3e54
00003E4D  AD                lodsw
00003E4E  8BD0              mov dx,ax
00003E50  AD                lodsw
00003E51  92                xchg ax,dx
00003E52  EB01              jmp short 0x3e55
00003E54  AD                lodsw
00003E55  0146EE            add [bp-0x12],ax
00003E58  1156F0            adc [bp-0x10],dx
00003E5B  F646F920          test byte [bp-0x7],0x20
00003E5F  740D              jz 0x3e6e
00003E61  8976F2            mov [bp-0xe],si
00003E64  8C5EF4            mov [bp-0xc],ds
00003E67  655F              gs pop di
00003E69  54                push sp
00003E6A  D1E0              shl ax,1
00003E6C  03F0              add si,ax
00003E6E  897608            mov [bp+0x8],si
00003E71  21891E0E          and [bx+di+0xe1e],cx
00003E75  803EBA001F        cmp byte [0xba],0x1f
00003E7A  7570              jnz 0x3eec
00003E7C  8B46EE            mov ax,[bp-0x12]
00003E7F  8B56F0            mov dx,[bp-0x10]
00003E82  8A5EF9            mov bl,[bp-0x7]
00003E85  83E30F            and bx,byte +0xf
00003E88  D1E3              shl bx,1
00003E8A  8B9F6704          mov bx,[bx+0x467]
00003E8E  8B4EF6            mov cx,[bp-0xa]
00003E91  51                push cx
00003E92  C47EF2            les di,[bp-0xe]
00003E95  268B35            mov si,[es:di]
00003E98  C47E04            les di,[bp+0x4]
00003E9B  03FE              add di,si
00003E9D  FFE3              jmp bx
00003E9F  268805            mov [es:di],al
00003EA2  EB41              jmp short 0x3ee5
00003EA4  268915            mov [es:di],dx
00003EA7  EB3C              jmp short 0x3ee5
00003EA9  268905            mov [es:di],ax
00003EAC  26895502          mov [es:di+0x2],dx
00003EB0  EB33              jmp short 0x3ee5
00003EB2  268905            mov [es:di],ax
00003EB5  EB2E              jmp short 0x3ee5
00003EB7  268905            mov [es:di],ax
00003EBA  26895502          mov [es:di+0x2],dx
00003EBE  EB25              jmp short 0x3ee5
00003EC0  2BC7              sub ax,di
00003EC2  83E802            sub ax,byte +0x2
00003EC5  268905            mov [es:di],ax
00003EC8  8CC0              mov ax,es
00003ECA  3BC2              cmp ax,dx
00003ECC  7417              jz 0x3ee5
00003ECE  0E                push cs
00003ECF  B8A602            mov ax,0x2a6
00003ED2  50                push ax
00003ED3  FF760E            push word [bp+0xe]
00003ED6  FF760C            push word [bp+0xc]
00003ED9  00168D46          add [0x468d],dl
00003EDD  F6FC              idiv ah
00003EDF  FF76FA            push word [bp-0x6]
00003EE2  E88504            call 0x436a
00003EE5  8346F202          add word [bp-0xe],byte +0x2
00003EE9  59                pop cx
00003EEA  E2A5              loop 0x3e91
00003EEC  8B4608            mov ax,[bp+0x8]
00003EEF  1F                pop ds
00003EF0  8BE5              mov sp,bp
00003EF2  5D                pop bp
00003EF3  C20C00            ret 0xc
00003EF6  0083C040          add [bp+di+0x40c0],al
00003EFA  83FCFF            cmp sp,byte -0x1
00003EFD  760C              jna 0x3f0b
00003EFF  00160AFF          add [0xff0a],dl
00003F03  7608              jna 0x3f0d
00003F05  E8F001            call 0x40f8
00003F08  30AA8BC2          xor [bp+si-0x3d75],ch
00003F0C  744B              jz 0x3f59
00003F0E  8EC2              mov es,dx
00003F10  895EFC            mov [bp-0x4],bx
00003F13  8C36FE26          mov [0x26fe],segr6
00003F17  C45F04            les bx,[bx+0x4]
00003F1A  FF760C            push word [bp+0xc]
00003F1D  00160AFF          add [0xff0a],dl
00003F21  7608              jna 0x3f2b
00003F23  26FF775A          push word [es:bx+0x5a]
00003F27  26FF7758          push word [es:bx+0x58]
00003F2B  FF7606            push word [bp+0x6]
00003F2E  FF7604            push word [bp+0x4]
00003F31  E8A9CD            call 0xcdd
00003F34  218E061B          and [bp+0x1b06],cx
00003F38  C45EFF            les bx,[bp-0x1]
00003F3B  26C45F04          les bx,[es:bx+0x4]
00003F3F  26FF7742          push word [es:bx+0x42]
00003F43  26FF7740          push word [es:bx+0x40]
00003F47  26FF775E          push word [es:bx+0x5e]
00003F4B  26FF775C          push word [es:bx+0x5c]
00003F4F  50                push ax
00003F50  E8D200            call 0x4025
00003F53  8BE5              mov sp,bp
00003F55  5D                pop bp
00003F56  C20A00            ret 0xa
00003F59  0E                push cs
00003F5A  B8CF02            mov ax,0x2cf
00003F5D  50                push ax
00003F5E  FF760C            push word [bp+0xc]
00003F61  FF760A            push word [bp+0xa]
00003F64  FF7608            push word [bp+0x8]
00003F67  FF7606            push word [bp+0x6]
00003F6A  FF7604            push word [bp+0x4]
00003F6D  E8FA03            call 0x436a
00003F70  EBE1              jmp short 0x3f53
00003F72  0083C0FF          add [bp+di-0x40],al
00003F76  760A              jna 0x3f82
00003F78  FF7608            push word [bp+0x8]
00003F7B  FF7606            push word [bp+0x6]
00003F7E  E87701            call 0x40f8
00003F81  30AA8BC2          xor [bp+si-0x3d75],ch
00003F85  7420              jz 0x3fa7
00003F87  8EC2              mov es,dx
00003F89  26C45F04          les bx,[es:bx+0x4]
00003F8D  26FF7742          push word [es:bx+0x42]
00003F91  26FF7740          push word [es:bx+0x40]
00003F95  26FF775E          push word [es:bx+0x5e]
00003F99  26FF775C          push word [es:bx+0x5c]
00003F9D  FF7604            push word [bp+0x4]
00003FA0  E88200            call 0x4025
00003FA3  5D                pop bp
00003FA4  C20800            ret 0x8
00003FA7  8B4604            mov ax,[bp+0x4]
00003FAA  33D2              xor dx,dx
00003FAC  0E                push cs
00003FAD  B8CF02            mov ax,0x2cf
00003FB0  50                push ax
00003FB1  FF760A            push word [bp+0xa]
00003FB4  FF7608            push word [bp+0x8]
00003FB7  FF7606            push word [bp+0x6]
00003FBA  F250              repne push ax
00003FBC  B8AB03            mov ax,0x3ab
00003FBF  EBE2              jmp short 0x3fa3
00003FC1  0083C01E          add [bp+di+0x1ec0],al
00003FC5  C57606            lds si,[bp+0x6]
00003FC8  32E4              xor ah,ah
00003FCA  8B4E04            mov cx,[bp+0x4]
00003FCD  E305              jcxz 0x3fd4
00003FCF  AC                lodsb
00003FD0  03F0              add si,ax
00003FD2  E2FB              loop 0x3fcf
00003FD4  8BC6              mov ax,si
00003FD6  8CDA              mov dx,ds
00003FD8  1F                pop ds
00003FD9  5D                pop bp
00003FDA  C20600            ret 0x6
00003FDD  0083C01E          add [bp+di+0x1ec0],al
00003FE1  C57604            lds si,[bp+0x4]
00003FE4  C47E08            les di,[bp+0x8]
00003FE7  8BD6              mov dx,si
00003FE9  80FD82            cmp ch,0x82
00003FEC  32ED              xor ch,ch
00003FEE  E316              jcxz 0x4006
00003FF0  41                inc cx
00003FF1  F3A6              repe cmpsb
00003FF3  7409              jz 0x3ffe
00003FF5  03F9              add di,cx
00003FF7  A3BB00            mov [0xbb],ax
00003FFA  8BF2              mov si,dx
00003FFC  EBEB              jmp short 0x3fe9
00003FFE  268B05            mov ax,[es:di]
00004001  1F                pop ds
00004002  5D                pop bp
00004003  C20E00            ret 0xe
00004006  21891E0E          and [bx+di+0xe1e],cx
0000400A  0E                push cs
0000400B  B8E802            mov ax,0x2e8
0000400E  50                push ax
0000400F  FF7610            push word [bp+0x10]
00004012  FF760E            push word [bp+0xe]
00004015  FF760C            push word [bp+0xc]
00004018  001606FF          add [0xff06],dl
0000401C  7604              jna 0x4022
0000401E  E84903            call 0x436a
00004021  33C0              xor ax,ax
00004023  EBDC              jmp short 0x4001
00004025  0083C040          add [bp+di+0x40c0],al
00004029  83FAE8            cmp dx,byte -0x18
0000402C  5F                pop di
0000402D  F356              rep push si
0000402F  FF7608            push word [bp+0x8]
00004032  FF7606            push word [bp+0x6]
00004035  FF7604            push word [bp+0x4]
00004038  0BC0              or ax,ax
0000403A  0AFE              or bh,dh
0000403C  750B              jnz 0x4049
0000403E  C00A00            ror byte [bp+si],byte 0x0
00004041  75E8              jnz 0x402b
00004043  56                push si
00004044  8B8EDA8B          mov cx,[bp-0x7426]
00004048  F0AC              lock lodsb
0000404A  AD                lodsw
0000404B  8946FA            mov [bp-0x6],ax
0000404E  8B5EFE            mov bx,[bp-0x2]
00004051  83E30F            and bx,byte +0xf
00004054  D1E3              shl bx,1
00004056  2EFFA78104        jmp [cs:bx+0x481]
0000405B  33C0              xor ax,ax
0000405D  8BD0              mov dx,ax
0000405F  EB23              jmp short 0x4084
00004061  837EFC00          cmp word [bp-0x4],byte +0x0
00004065  7427              jz 0x408e
00004067  837EFCFF          cmp word [bp-0x4],byte -0x1
0000406B  7428              jz 0x4095
0000406D  FF760C            push word [bp+0xc]
00004070  FF760A            push word [bp+0xa]
00004073  FF76FC            push word [bp-0x4]
00004076  E86A00            call 0x40e3
00004079  268B4704          mov ax,[es:bx+0x4]
0000407D  268B5706          mov dx,[es:bx+0x6]
00004081  0346FA            add ax,[bp-0x6]
00004084  5E                pop si
00004085  5F                pop di
00004086  07                pop es
00004087  1F                pop ds
00004088  8BE5              mov sp,bp
0000408A  5D                pop bp
0000408B  C20A00            ret 0xa
0000408E  33D2              xor dx,dx
00004090  8B46FA            mov ax,[bp-0x6]
00004093  EBEF              jmp short 0x4084
00004095  BAF101            mov dx,0x1f1
00004098  E98C02            jmp 0x4327
0000409B  0083C01E          add [bp+di+0x1ec0],al
0000409F  C5760E            lds si,[bp+0xe]
000040A2  AC                lodsb
000040A3  32E4              xor ah,ah
000040A5  8BC8              mov cx,ax
000040A7  AC                lodsb
000040A8  8AD0              mov dl,al
000040AA  0AD2              or dl,dl
000040AC  0E                push cs
000040AD  7CAD              jl 0x405c
000040AF  8BD8              mov bx,ax
000040B1  33C0              xor ax,ax
000040B3  80FA00            cmp dl,0x0
000040B6  740B              jz 0x40c3
000040B8  F3F6C280          rep test dl,0x80
000040BC  FA                cli
000040BD  013C              add [si],di
000040BF  223E5956          and bh,[0x5659]
000040C3  FF4E0C            dec word [bp+0xc]
000040C6  7406              jz 0x40ce
000040C8  03F0              add si,ax
000040CA  E2F7              loop 0x40c3
000040CC  EBD4              jmp short 0x40a2
000040CE  C47E08            les di,[bp+0x8]
000040D1  268815            mov [es:di],dl
000040D4  C47E04            les di,[bp+0x4]
000040D7  26891D            mov [es:di],bx
000040DA  8CDA              mov dx,ds
000040DC  8BC6              mov ax,si
000040DE  1F                pop ds
000040DF  5D                pop bp
000040E0  C20E00            ret 0xe
000040E3  0083C0C4          add [bp+di-0x3b40],al
000040E7  5E                pop si
000040E8  06                push es
000040E9  8B4E04            mov cx,[bp+0x4]
000040EC  49                dec cx
000040ED  E305              jcxz 0x40f4
000040EF  83C318            add bx,byte +0x18
000040F2  E2FB              loop 0x40ef
000040F4  5D                pop bp
000040F5  C20600            ret 0x6
000040F8  0083C08B          add [bp+di-0x7440],al
000040FC  46                inc si
000040FD  0448              add al,0x48
000040FF  C45E06            les bx,[bp+0x6]
00004102  26FF7772          push word [es:bx+0x72]
00004106  26FF7770          push word [es:bx+0x70]
0000410A  50                push ax
0000410B  E8B3FE            call 0x3fc1
0000410E  F250              repne push ax
00004110  B80400            mov ax,0x4
00004113  5D                pop bp
00004114  C20600            ret 0x6
00004117  0083C01E          add [bp+di+0x1ec0],al
0000411B  C41E0400          les bx,[0x4]
0000411F  C57604            lds si,[bp+0x4]
00004122  07                pop es
00004123  5E                pop si
00004124  5A                pop dx
00004125  32ED              xor ch,ch
00004127  26F6470502        test byte [es:bx+0x5],0x2
0000412C  108D7F09          adc [di+0x97f],cl
00004130  51                push cx
00004131  56                push si
00004132  F3A6              repe cmpsb
00004134  5E                pop si
00004135  59                pop cx
00004136  740E              jz 0x4146
00004138  26C41F            les bx,[es:bx]
0000413B  EBEA              jmp short 0x4127
0000413D  33C0              xor ax,ax
0000413F  8BD0              mov dx,ax
00004141  1F                pop ds
00004142  5D                pop bp
00004143  C20400            ret 0x4
00004146  BA8000            mov dx,0x80
00004149  C3                ret
0000414A  1F                pop ds
0000414B  5D                pop bp
0000414C  C20400            ret 0x4
0000414F  0083C01E          add [bp+di+0x1ec0],al
00004153  C47E04            les di,[bp+0x4]
00004156  BE0400            mov si,0x4
00004159  8B04              mov ax,[si]
0000415B  0B4402            or ax,[si+0x2]
0000415E  7404              jz 0x4164
00004160  C534              lds si,[si]
00004162  EBF5              jmp short 0x4159
00004164  8B04              mov ax,[si]
00004166  268905            mov [es:di],ax
00004169  8B4402            mov ax,[si+0x2]
0000416C  26894502          mov [es:di+0x2],ax
00004170  893C              mov [si],di
00004172  8C4402            mov [si+0x2],es
00004175  1F                pop ds
00004176  5D                pop bp
00004177  C20400            ret 0x4
0000417A  C43E0400          les di,[0x4]
0000417E  26F647C774        test byte [es:bx-0x39],0x74
00004183  2D22C4            sub ax,0xc422
00004186  7D04              jnl 0x418c
00004188  26FF756A          push word [es:di+0x6a]
0000418C  E84B00            call 0x41da
0000418F  26FF7542          push word [es:di+0x42]
00004193  E84400            call 0x41da
00004196  06                push es
00004197  E84000            call 0x41da
0000419A  C43E0400          les di,[0x4]
0000419E  268B05            mov ax,[es:di]
000041A1  A30400            mov [0x4],ax
000041A4  268B4502          mov ax,[es:di+0x2]
000041A8  A30600            mov [0x6],ax
000041AB  06                push es
000041AC  E82B00            call 0x41da
000041AF  EBC9              jmp short 0x417a
000041B1  2001              and [bx+di],al
000041B3  A1B6E8            mov ax,[0xe8b6]
000041B6  2200              and al,[bx+si]
000041B8  0E                push cs
000041B9  E81E00            call 0x41da
000041BC  8B00              mov ax,[bx+si]
000041BE  0146FC            add [bp-0x4],ax
000041C1  115651            adc [bp+0x51],dx
000041C4  F7054000          test word [di],0x40
000041C8  7406              jz 0x41d0
000041CA  FF7506            push word [di+0x6]
000041CD  E80A74            call 0xb5da
000041D0  83C708            add di,byte +0x8
000041D3  59                pop cx
000041D4  E2ED              loop 0x41c3
000041D6  E82416            call 0x57fd
000041D9  C70083C0          mov word [bx+si],0xc083
000041DD  06                push es
000041DE  8B4604            mov ax,[bp+0x4]
000041E1  3B8BEC83          cmp cx,[bp+di-0x7c14]
000041E5  720B              jc 0x41f2
000041E7  55                push bp
000041E8  8BEC              mov bp,sp
000041EA  83C43B            add sp,byte +0x3b
000041ED  06                push es
000041EE  0200              add al,[bx+si]
000041F0  7206              jc 0x41f8
000041F2  8EC0              mov es,ax
000041F4  B449              mov ah,0x49
000041F6  CD21              int 0x21
000041F8  07                pop es
000041F9  5D                pop bp
000041FA  C20200            ret 0x2
000041FD  0083C040          add [bp+di+0x40c0],al
00004201  83FEB8            cmp si,byte -0x48
00004204  0258CD            add bl,[bx+si-0x33]
00004207  2132              and [bp+si],si
00004209  E489              in al,0x89
0000420B  FE                db 0xfe
0000420C  FE                db 0xfe
0000420D  F606010302        test byte [0x301],0x2
00004212  7508              jnz 0x421c
00004214  B80358            mov ax,0x5803
00004217  00E9              add cl,ch
00004219  B0CD              mov al,0xcd
0000421B  21B448BB          and [si-0x44b8],si
0000421F  FF                db 0xff
00004220  FFCD              dec bp
00004222  21B80358          and [bx+si+0x5803],di
00004226  8B5EFE            mov bx,[bp-0x2]
00004229  FE8BD8E5          dec byte [bp+di-0x1a28]
0000422D  5D                pop bp
0000422E  C3                ret
0000422F  0083C001          add [bp+di+0x1c0],al
00004233  2E                cs
00004234  8F                db 0x8f
00004235  BB0016            mov bx,0x1600
00004238  B2BB              mov dl,0xbb
0000423A  0016B600          add [0xb6],dl
0000423E  FF7604            push word [bp+0x4]
00004241  E8BF00            call 0x4303
00004244  A1B2FF            mov ax,[0xffb2]
00004247  36BBB456          ss mov bx,0x56b4
0000424B  8B4E04            mov cx,[bp+0x4]
0000424E  010EB257          add [0x57b2],cx
00004252  8D7D5D            lea di,[di+0x5d]
00004255  C20200            ret 0x2
00004258  8106B4000010      add word [0xb4],0x1000
0000425E  EBF4              jmp short 0x4254
00004260  0083C040          add [bp+di+0x40c0],al
00004264  83FCB8            cmp sp,byte -0x48
00004267  0058CD            add [bx+si-0x33],bl
0000426A  2189FEFE          and [bx+di-0x102],cx
0000426E  B80258            mov ax,0x5802
00004271  CD21              int 0x21
00004273  32E4              xor ah,ah
00004275  89FE              mov si,di
00004277  FC                cld
00004278  B80158            mov ax,0x5801
0000427B  BB82B0            mov bx,0xb082
0000427E  CD21              int 0x21
00004280  F606010302        test byte [0x301],0x2
00004285  7508              jnz 0x428f
00004287  B80358            mov ax,0x5803
0000428A  00E9              add cl,ch
0000428C  B0CD              mov al,0xcd
0000428E  21B4488B          and [si-0x74b8],si
00004292  5E                pop si
00004293  0483              add al,0x83
00004295  C3                ret
00004296  0FD1EB            psrlw mm5,mm3
00004299  D1EB              shr bx,1
0000429B  D1EB              shr bx,1
0000429D  D1EB              shr bx,1
0000429F  CD21              int 0x21
000042A1  50                push ax
000042A2  9C                pushf
000042A3  B80158            mov ax,0x5801
000042A6  8B5EFE            mov bx,[bp-0x2]
000042A9  FE8BB803          dec byte [bp+di+0x3b8]
000042AD  58                pop ax
000042AE  8B5EFC            mov bx,[bp-0x4]
000042B1  CD21              int 0x21
000042B3  9D                popf
000042B4  5A                pop dx
000042B5  7328              jnc 0x42df
000042B7  012E8FBB          add [0xbb8f],bp
000042BB  0016B2BB          add [0xbbb2],dl
000042BF  0016B600          add [0xb6],dl
000042C3  FF7604            push word [bp+0x4]
000042C6  E83A00            call 0x4303
000042C9  8B4604            mov ax,[bp+0x4]
000042CC  83C00F            add ax,byte +0xf
000042CF  D1E8              shr ax,1
000042D1  D1E8              shr ax,1
000042D3  D1E8              shr ax,1
000042D5  D1E8              shr ax,1
000042D7  2906B6FF          sub [0xffb6],ax
000042DB  36BBB60F          ss mov bx,0xfb6
000042DF  33C0              xor ax,ax
000042E1  8BE5              mov sp,bp
000042E3  5D                pop bp
000042E4  C20200            ret 0x2
000042E7  A1B2FF            mov ax,[0xffb2]
000042EA  83C00F            add ax,byte +0xf
000042ED  83E0F0            and ax,byte -0x10
000042F0  D1E8              shr ax,1
000042F2  D1E8              shr ax,1
000042F4  D1E8              shr ax,1
000042F6  D1E8              shr ax,1
000042F8  0106B400          add [0xb4],ax
000042FC  0026A102          add [0x2a1],ah
00004300  00A3C300          add [bp+di+0xc3],ah
00004304  83C08B            add ax,byte -0x75
00004307  46                inc si
00004308  088B560A          or [bp+di+0xa56],cl
0000430C  034604            add ax,[bp+0x4]
0000430F  D1E8              shr ax,1
00004311  D1E8              shr ax,1
00004313  D1E8              shr ax,1
00004315  D1E8              shr ax,1
00004317  03D0              add dx,ax
00004319  3B5606            cmp dx,[bp+0x6]
0000431C  7304              jnc 0x4322
0000431E  5D                pop bp
0000431F  C20800            ret 0x8
00004322  BAC401            mov dx,0x1c4
00004325  EB00              jmp short 0x4327
00004327  21891E0E          and [bx+di+0xe1e],cx
0000432B  52                push dx
0000432C  0E                push cs
0000432D  B8CB09            mov ax,0x9cb
00004330  058326            add ax,0x2683
00004333  015A1E            add [bp+si+0x1e],bx
00004336  52                push dx
00004337  0083C0E9          add [bp+di-0x1640],al
0000433B  14F1              adc al,0xf1
0000433D  0083C021          add [bp+di+0x21c0],al
00004341  891E0E0E          mov [0xe0e],bx
00004345  B8CB09            mov ax,0x9cb
00004348  05830E            add ax,0xe83
0000434B  0100              add [bx+si],ax
0000434D  16                push ss
0000434E  06                push es
0000434F  FF7604            push word [bp+0x4]
00004352  E80501            call 0x445a
00004355  FF36BFBB          push word [0xbbbf]
00004359  0016BD00          add [0xbd],dl
0000435D  E8FA00            call 0x445a
00004360  E81301            call 0x4476
00004363  E9EBF0            jmp 0x3451
00004366  5D                pop bp
00004367  C20400            ret 0x4
0000436A  0083C01E          add [bp+di+0x1ec0],al
0000436E  21891E0E          and [bx+di+0xe1e],cx
00004372  C606BA00FF        mov byte [0xba],0xff
00004377  0E                push cs
00004378  B81602            mov ax,0x216
0000437B  50                push ax
0000437C  E8DB00            call 0x445a
0000437F  FF7610            push word [bp+0x10]
00004382  FF760E            push word [bp+0xe]
00004385  E8D200            call 0x445a
00004388  0E                push cs
00004389  B82702            mov ax,0x227
0000438C  50                push ax
0000438D  E8CA00            call 0x445a
00004390  C45E0A            les bx,[bp+0xa]
00004393  26FF775A          push word [es:bx+0x5a]
00004397  26FF7758          push word [es:bx+0x58]
0000439B  E89F00            call 0x443d
0000439E  0E                push cs
0000439F  B83C02            mov ax,0x23c
000043A2  50                push ax
000043A3  E8B456            call 0x9a5a
000043A6  8B4608            mov ax,[bp+0x8]
000043A9  48                dec ax
000043AA  C45E0A            les bx,[bp+0xa]
000043AD  26FF7772          push word [es:bx+0x72]
000043B1  26FF7770          push word [es:bx+0x70]
000043B5  50                push ax
000043B6  E808FC            call 0x3fc1
000043B9  F250              repne push ax
000043BB  B87F00            mov ax,0x7f
000043BE  837E0600          cmp word [bp+0x6],byte +0x0
000043C2  7413              jz 0x43d7
000043C4  0E                push cs
000043C5  B85102            mov ax,0x251
000043C8  50                push ax
000043C9  E88E00            call 0x445a
000043CC  001606FF          add [0xff06],dl
000043D0  7604              jna 0x43d6
000043D2  E86800            call 0x443d
000043D5  EB0E              jmp short 0x43e5
000043D7  0E                push cs
000043D8  B86602            mov ax,0x266
000043DB  50                push ax
000043DC  E87B00            call 0x445a
000043DF  FF7604            push word [bp+0x4]
000043E2  E80500            call 0x43ea
000043E5  1F                pop ds
000043E6  5D                pop bp
000043E7  C20E00            ret 0xe
000043EA  0083C08A          add [bp+di-0x7540],al
000043EE  46                inc si
000043EF  0550E8            add ax,0xe850
000043F2  0B00              or ax,[bx+si]
000043F4  8A4604            mov al,[bp+0x4]
000043F7  50                push ax
000043F8  B80400            mov ax,0x4
000043FB  5D                pop bp
000043FC  C20200            ret 0x2
000043FF  0083C08A          add [bp+di-0x7540],al
00004403  46                inc si
00004404  04D0              add al,0xd0
00004406  E8D0E8            call 0x2cd9
00004409  D0E8              shr al,1
0000440B  D0E8              shr al,1
0000440D  50                push ax
0000440E  E80B00            call 0x441c
00004411  8A4604            mov al,[bp+0x4]
00004414  50                push ax
00004415  B80400            mov ax,0x4
00004418  5D                pop bp
00004419  C20200            ret 0x2
0000441C  0083C080          add [bp+di-0x7f40],al
00004420  66040F            o32 add al,0xf
00004423  80460430          add byte [bp+0x4],0x30
00004427  807E0439          cmp byte [bp+0x4],0x39
0000442B  7604              jna 0x4431
0000442D  80460407          add byte [bp+0x4],0x7
00004431  0BC0              or ax,ax
00004433  0A04              or al,[si]
00004435  50                push ax
00004436  B85F00            mov ax,0x5f
00004439  5D                pop bp
0000443A  C20200            ret 0x2
0000443D  0083C01E          add [bp+di+0x1ec0],al
00004441  56                push si
00004442  C57604            lds si,[bp+0x4]
00004445  07                pop es
00004446  5E                pop si
00004447  5A                pop dx
00004448  32ED              xor ch,ch
0000444A  51                push cx
0000444B  1E                push ds
0000444C  56                push si
0000444D  E84800            call 0x4498
00004450  46                inc si
00004451  59                pop cx
00004452  E2F6              loop 0x444a
00004454  5E                pop si
00004455  1F                pop ds
00004456  5D                pop bp
00004457  C20400            ret 0x4
0000445A  0083C01E          add [bp+di+0x1ec0],al
0000445E  56                push si
0000445F  C57604            lds si,[bp+0x4]
00004462  8A04              mov al,[si]
00004464  8A65FF            mov ah,[di-0x1]
00004467  081E56E8          or [0xe856],bl
0000446B  2B00              sub ax,[bx+si]
0000446D  46                inc si
0000446E  EBF2              jmp short 0x4462
00004470  5E                pop si
00004471  1F                pop ds
00004472  5D                pop bp
00004473  C20400            ret 0x4
00004476  0083C040          add [bp+di+0x40c0],al
0000447A  83FEC6            cmp si,byte -0x3a
0000447D  46                inc si
0000447E  FF0D              dec word [di]
00004480  0BC0              or ax,ax
00004482  0AFF              or bh,bh
00004484  50                push ax
00004485  E81000            call 0x4498
00004488  C646FF0A          mov byte [bp-0x1],0xa
0000448C  0BC0              or ax,ax
0000448E  0AFF              or bh,bh
00004490  50                push ax
00004491  E80400            call 0x4498
00004494  8BE5              mov sp,bp
00004496  5D                pop bp
00004497  C3                ret
00004498  0083C01E          add [bp+di+0x1ec0],al
0000449C  56                push si
0000449D  C57604            lds si,[bp+0x4]
000044A0  8BD6              mov dx,si
000044A2  B440              mov ah,0x40
000044A4  2E8B1EC900        mov bx,[cs:0xc9]
000044A9  B9E9B0            mov cx,0xb0e9
000044AC  CD21              int 0x21
000044AE  5E                pop si
000044AF  1F                pop ds
000044B0  5D                pop bp
000044B1  C20400            ret 0x4
000044B4  0083C01E          add [bp+di+0x1ec0],al
000044B8  C55604            lds dx,[bp+0x4]
000044BB  B8003C            mov ax,0x3c00
000044BE  33C9              xor cx,cx
000044C0  CD21              int 0x21
000044C2  7302              jnc 0x44c6
000044C4  33C0              xor ax,ax
000044C6  1F                pop ds
000044C7  5D                pop bp
000044C8  C20400            ret 0x4
000044CB  0083C01E          add [bp+di+0x1ec0],al
000044CF  C55604            lds dx,[bp+0x4]
000044D2  B8003D            mov ax,0x3d00
000044D5  CD21              int 0x21
000044D7  7302              jnc 0x44db
000044D9  33C0              xor ax,ax
000044DB  1F                pop ds
000044DC  5D                pop bp
000044DD  C20400            ret 0x4
000044E0  0083C053          add [bp+di+0x53c0],al
000044E4  B43E              mov ah,0x3e
000044E6  8B5E04            mov bx,[bp+0x4]
000044E9  CD21              int 0x21
000044EB  33C0              xor ax,ax
000044ED  5B                pop bx
000044EE  5D                pop bp
000044EF  C20200            ret 0x2
000044F2  0083C01E          add [bp+di+0x1ec0],al
000044F6  C55606            lds dx,[bp+0x6]
000044F9  8B4E04            mov cx,[bp+0x4]
000044FC  B43F              mov ah,0x3f
000044FE  8B5E0A            mov bx,[bp+0xa]
00004501  CD21              int 0x21
00004503  7302              jnc 0x4507
00004505  33C0              xor ax,ax
00004507  1F                pop ds
00004508  5D                pop bp
00004509  C20800            ret 0x8
0000450C  0083C08B          add [bp+di-0x7440],al
00004510  5E                pop si
00004511  088B5604          or [bp+di+0x456],cl
00004515  8B4E06            mov cx,[bp+0x6]
00004518  B80042            mov ax,0x4200
0000451B  CD21              int 0x21
0000451D  5D                pop bp
0000451E  C20600            ret 0x6
00004521  6515B2FF          gs adc ax,0xffb2
00004525  FF                db 0xff
00004526  FF                db 0xff
00004527  FF                db 0xff
00004528  FF                db 0xff
00004529  FF02              inc word [bp+si]
0000452B  3A20              cmp ah,[bx+si]
0000452D  07                pop es
0000452E  0020              add [bx+si],ah
00004530  F9                stc
00004531  0100              add [bx+si],ax
00004533  02A0035B          add ah,[bx+si+0x5b03]
00004537  055242            add ax,0x4252
0000453A  8BE8              mov bp,ax
0000453C  8CC0              mov ax,es
0000453E  051000            add ax,0x10
00004541  0E                push cs
00004542  1F                pop ds
00004543  A30400            mov [0x4],ax
00004546  0306BC8B          add ax,[0x8bbc]
0000454A  8EC0              mov es,ax
0000454C  8B0E0600          mov cx,[0x6]
00004550  8BF9              mov di,cx
00004552  4F                dec di
00004553  8BF7              mov si,di
00004555  FD                std
00004556  F3A4              rep movsb
00004558  50                push ax
00004559  B83400            mov ax,0x34
0000455C  50                push ax
0000455D  CB                retf
0000455E  8CC3              mov bx,es
00004560  8CD8              mov ax,ds
00004562  48                dec ax
00004563  03E8              add bp,ax
00004565  63F8              arpl ax,di
00004567  030F              add cx,[bx]
00004569  00B91000          add [bx+di+0x10],bh
0000456D  B0FF              mov al,0xff
0000456F  F3AE              repe scasb
00004571  47                inc di
00004572  8BF7              mov si,di
00004574  8BC3              mov ax,bx
00004576  48                dec ax
00004577  63F8              arpl ax,di
00004579  030F              add cx,[bx]
0000457B  00B1048B          add [bx+di-0x74fc],dh
0000457F  C6                db 0xc6
00004580  F7D0              not ax
00004582  D3E8              shr ax,cl
00004584  8CDA              mov dx,ds
00004586  2BD0              sub dx,ax
00004588  7304              jnc 0x458e
0000458A  8CD8              mov ax,ds
0000458C  2BD2              sub dx,dx
0000458E  D3E0              shl ax,cl
00004590  03F0              add si,ax
00004592  8EDA              mov ds,dx
00004594  8BC7              mov ax,di
00004596  F7D0              not ax
00004598  D3E8              shr ax,cl
0000459A  8CC2              mov dx,es
0000459C  2BD0              sub dx,ax
0000459E  7304              jnc 0x45a4
000045A0  8CC0              mov ax,es
000045A2  2BD2              sub dx,dx
000045A4  D3E0              shl ax,cl
000045A6  03F8              add di,ax
000045A8  8EC2              mov es,dx
000045AA  AC                lodsb
000045AB  8AD0              mov dl,al
000045AD  4E                dec si
000045AE  AD                lodsw
000045AF  8BC8              mov cx,ax
000045B1  46                inc si
000045B2  8AC2              mov al,dl
000045B4  24FE              and al,0xfe
000045B6  3CB0              cmp al,0xb0
000045B8  7506              jnz 0x45c0
000045BA  AC                lodsb
000045BB  F3AA              rep stosb
000045BD  EB07              jmp short 0x45c6
000045BF  90                nop
000045C0  3CB2              cmp al,0xb2
000045C2  756D              jnz 0x4631
000045C4  F3A4              rep movsb
000045C6  8AC2              mov al,dl
000045C8  A801              test al,0x1
000045CA  74B0              jz 0x457c
000045CC  BE3301            mov si,0x133
000045CF  0E                push cs
000045D0  1F                pop ds
000045D1  8B1E0400          mov bx,[0x4]
000045D5  FC                cld
000045D6  33D2              xor dx,dx
000045D8  AD                lodsw
000045D9  8BC8              mov cx,ax
000045DB  E313              jcxz 0x45f0
000045DD  8BC2              mov ax,dx
000045DF  03C3              add ax,bx
000045E1  8EC0              mov es,ax
000045E3  AD                lodsw
000045E4  8BF8              mov di,ax
000045E6  83FFFF            cmp di,byte -0x1
000045E9  7411              jz 0x45fc
000045EB  26011D            add [es:di],bx
000045EE  E2F3              loop 0x45e3
000045F0  81FA00F0          cmp dx,0xf000
000045F4  7416              jz 0x460c
000045F6  81C20010          add dx,0x1000
000045FA  EBDC              jmp short 0x45d8
000045FC  8CC0              mov ax,es
000045FE  40                inc ax
000045FF  8EC0              mov es,ax
00004601  83EF10            sub di,byte +0x10
00004604  26011D            add [es:di],bx
00004607  48                dec ax
00004608  63F8              arpl ax,di
0000460A  EBE2              jmp short 0x45ee
0000460C  8BC3              mov ax,bx
0000460E  8B3E0800          mov di,[0x8]
00004612  8B01              mov ax,[bx+di]
00004614  A1B603            mov ax,[0x3b6]
00004617  F001060200        lock add [0x2],ax
0000461C  2D1000            sub ax,0x10
0000461F  03E8              add bp,ax
00004621  63F8              arpl ax,di
00004623  7404              jz 0x4629
00004625  50                push ax
00004626  FA                cli
00004627  8ED6              mov ss,si
00004629  8BE7              mov sp,di
0000462B  FB                sti
0000462C  8BC5              mov ax,bp
0000462E  2EFF2F            jmp far [cs:bx]
00004631  B440              mov ah,0x40
00004633  BB0200            mov bx,0x2
00004636  B91600            mov cx,0x16
00004639  8CCA              mov dx,cs
0000463B  8EDA              mov ds,dx
0000463D  BA1D01            mov dx,0x11d
00004640  FE8BB8FF          dec byte [bp+di-0x48]
00004644  33FF              xor di,di
00004646  33506E            xor dx,[bx+si+0x6e]
00004649  6F                outsw
0000464A  7565              jnz 0x46b1
0000464C  647429            fs jz 0x4678
0000464F  009602B2          add [bp-0x4dfe],dl
00004653  622E0D63          bound bp,[0x630d]
00004657  6F                outsw
00004658  7272              jc 0x46cc
0000465A  7570              jnz 0x46cc
0000465C  7453              jz 0x46b1
0000465E  07                pop es
0000465F  0020              add [bx+si],ah
00004661  2305              and ax,[di]
00004663  2207              and al,[bx]
00004665  42                inc dx
00004666  07                pop es
00004667  7707              ja 0x4670
00004669  8A07              mov al,[bx]
0000466B  DA09              fimul dword [bx+di]
0000466D  D6                salc
0000466E  1CEE              sbb al,0xee
00004670  1CF2              sbb al,0xf2
00004672  1C03              sbb al,0x3
00004674  1D151D            sbb ax,0x1d15
00004677  191D              sbb [di],bx
00004679  27                daa
0000467A  1D391D            sbb ax,0x1d39
0000467D  3D1D54            cmp ax,0x541d
00004680  1D581D            sbb ax,0x1d58
00004683  6D                insw
00004684  1D7C1D            sbb ax,0x1d7c
00004687  801D93            sbb byte [di],0x93
0000468A  1D971D            sbb ax,0x1d97
0000468D  A7                cmpsw
0000468E  1DB51D            sbb ax,0x1db5
00004691  B91DD3            mov cx,0xd31d
00004694  1DE51D            sbb ax,0x1de5
00004697  FB                sti
00004698  1DFF1D            sbb ax,0x1dff
0000469B  131E171E          adc bx,[0x1e17]
0000469F  2B1E3B1E          sub bx,[0x1e3b]
000046A3  3F                aas
000046A4  1E                push ds
000046A5  50                push ax
000046A6  1E                push ds
000046A7  621E761E          bound bx,[0x1e76]
000046AB  8A1E8E1E          mov bl,[0x1e8e]
000046AF  A7                cmpsw
000046B0  1E                push ds
000046B1  BE1ECD            mov si,0xcd1e
000046B4  1E                push ds
000046B5  DE1EF91E          ficomp word [0x1ef9]
000046B9  111F              adc [bx],bx
000046BB  151F27            adc ax,0x271f
000046BE  1F                pop ds
000046BF  351F39            xor ax,0x391f
000046C2  1F                pop ds
000046C3  52                push dx
000046C4  1F                pop ds
000046C5  691F6D1F          imul bx,[bx],word 0x1f6d
000046C9  801F84            sbb byte [bx],0x84
000046CC  1F                pop ds
000046CD  92                xchg ax,dx
000046CE  1F                pop ds
000046CF  96                xchg ax,si
000046D0  1F                pop ds
000046D1  A7                cmpsw
000046D2  1F                pop ds
000046D3  B71F              mov bh,0x1f
000046D5  CD1F              int 0x1f
000046D7  E51F              in ax,0x1f
000046D9  E91FF2            jmp 0x38fb
000046DC  1F                pop ds
000046DD  0B20              or sp,[bx+si]
000046DF  1E                push ds
000046E0  2022              and [bp+si],ah
000046E2  2032              and [bp+si],dh
000046E4  2036204A          and [0x4a20],dh
000046E8  204E20            and [bp+0x20],cl
000046EB  6220              bound sp,[bx+si]
000046ED  66207920          o32 and [bx+di+0x20],bh
000046F1  8E20              mov fs,[bx+si]
000046F3  92                xchg ax,dx
000046F4  20A420B5          and [si-0x4ae0],ah
000046F8  20C6              and dh,al
000046FA  20D1              and cl,dl
000046FC  20E0              and al,ah
000046FE  20DC              and ah,bl
00004700  27                daa
00004701  2128              and [bx+si],bp
00004703  2329              and bp,[bx+di]
00004705  0000              add [bx+si],al
00004707  0000              add [bx+si],al
00004709  0000              add [bx+si],al
0000470B  0000              add [bx+si],al
0000470D  0000              add [bx+si],al
0000470F  0000              add [bx+si],al
00004711  0000              add [bx+si],al
00004713  0000              add [bx+si],al
00004715  0000              add [bx+si],al
00004717  0000              add [bx+si],al
