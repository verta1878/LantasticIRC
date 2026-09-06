/* REDIR.EXE — Ghidra decompilation */
/* LANtastic (R) Redirector V6.00/AI */

/* FUN_1000_34b7 at 1000:34b7 */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Instruction at (ram,0x00013533) overlaps instruction at (ram,0x00013531)
    */

void __cdecl16near FUN_1000_34b7(void)

{
  byte *pbVar1;
  char *pcVar2;
  undefined2 uVar3;
  char cVar5;
  int iVar4;
  uint in_CX;
  uint in_BX;
  char *unaff_SI;
  int unaff_DI;
  uint *puVar6;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  bool bVar7;
  bool bVar8;
  char local_5b4 [1420];
  uint uStack_28;
  uint *puStack_26;
  undefined1 *puStack_24;
  uint *puStack_22;
  uint local_10 [2];
  uint local_c;
  uint local_6;
  int local_4;
  
  FUN_1000_4500();
  local_10[0] = *(uint *)0xbb;
  uVar3 = FUN_1000_44e6();
  cVar5 = (char)((uint)uVar3 >> 8);
  if ((char)uVar3 == '\0' && unaff_SI[in_BX] == '\0') {
    pcVar2 = (char *)(in_BX + unaff_DI + 0xc5);
    *pcVar2 = *pcVar2 + cVar5;
    FUN_1000_4500();
    uVar3 = FUN_1000_44e6();
    cVar5 = (char)((uint)uVar3 >> 8);
    if ((char)uVar3 == '\0' && unaff_SI[in_BX] == '\0') {
      local_5b4[unaff_DI] = local_5b4[unaff_DI] + (char)in_CX;
      if (*(uint *)0x10 <= in_CX) {
        *(uint *)0x10 = in_CX;
      }
      puVar6 = (uint *)0x12;
      bVar7 = CARRY2(local_6,*(uint *)0xc5);
      local_6 = local_6 + *(uint *)0xc5;
      local_4 = local_4 + *(int *)0xc7 + (uint)bVar7;
      while( true ) {
        puStack_22 = (uint *)0x3542;
        FUN_1000_4500();
        puStack_22 = (uint *)0x3552;
        iVar4 = FUN_1000_44e6();
        bVar7 = false;
        bVar8 = iVar4 == 0;
        if (!bVar8) {
          puStack_24 = (undefined1 *)(local_6 + 8);
          puStack_22 = (uint *)(local_4 + (uint)(0xfff7 < local_6));
          puStack_26 = (uint *)0x356b;
          FUN_1000_4500();
          puStack_22 = local_10;
          puStack_24 = (undefined1 *)0x4;
          puStack_26 = (uint *)0x357b;
          iVar4 = FUN_1000_44e6();
          bVar7 = false;
          bVar8 = iVar4 == 0;
          if (!bVar8) {
            *puVar6 = *puVar6 | local_10[0];
            puVar6[1] = puVar6[1] + 3;
            puVar6[1] = puVar6[1] & 0xfffc;
            puVar6 = (uint *)(in_BX | local_c);
            puStack_24 = (undefined1 *)&puStack_22;
            in_CX = in_CX + 1;
            puStack_26 = puVar6;
            in_BX = (int)puVar6 - 1;
            uStack_28 = in_BX;
            pcVar2 = (char *)((int)puVar6 * 2 + -0x28);
            *pcVar2 = *pcVar2 + (char)local_c;
            unaff_SI = unaff_SI + local_c;
            *unaff_SI = *unaff_SI +
                        (char)((uint)(&stack0xfffe +
                                     CONCAT11((char)(local_c >> 8),(char)local_c + '\a')) >> 8);
            pbVar1 = &stack0xfffe + (int)unaff_SI;
            bVar7 = CARRY1(*pbVar1,(byte)in_CX);
            *pbVar1 = *pbVar1 + (byte)in_CX;
            bVar8 = *pbVar1 == 0;
          }
        }
        if (!bVar8) break;
        pcVar2 = (char *)((int)puVar6 + (in_BX - 1));
        *pcVar2 = *pcVar2 + '\x01';
        in_BX = 0xff00;
        do {
        } while (bVar7 || *pcVar2 == '\0');
      }
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
  }
  *(char *)0x2a1 = *(char *)0x2a1 + cVar5;
  (&stack0x00b4)[unaff_DI] = (&stack0x00b4)[unaff_DI] + cVar5;
  return;
}



/* FUN_1000_3833 at 1000:3833 */

/* WARNING: Unable to track spacebase fully for stack */

void __cdecl16far FUN_1000_3833(void)

{
  undefined2 in_AX;
  undefined2 in_DX;
  undefined2 unaff_DS;
  undefined2 local_a;
  
  *(undefined2 *)0x2 = in_AX;
  *(undefined2 *)(local_a + -2) = in_DX;
  *(undefined2 *)(local_a + -4) = in_AX;
  return;
}



/* FUN_1000_44e6 at 1000:44e6 */

undefined2 FUN_1000_44e6(void)

{
  code *pcVar1;
  
  pcVar1 = (code *)swi(0x21);
  (*pcVar1)();
  return 0;
}



/* FUN_1000_4500 at 1000:4500 */

undefined2 FUN_1000_4500(void)

{
  uint *puVar1;
  int unaff_BP;
  uint unaff_SI;
  int unaff_DI;
  undefined2 unaff_SS;
  
  puVar1 = (uint *)(unaff_BP + unaff_DI + 2);
  *puVar1 = *puVar1 & unaff_SI;
  return 0;
}



/* entry at 1452:0010 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __cdecl16far entry(void)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int in_AX;
  int iVar3;
  int in_BX;
  int unaff_SI;
  undefined1 *puVar4;
  undefined1 *puVar5;
  int unaff_ES;
  undefined2 unaff_DS;
  
  *(int *)(in_BX + unaff_SI) = *(int *)(in_BX + unaff_SI) + in_AX;
  DAT_1452_0004 = unaff_ES + 0x10;
  _DAT_1000_582e = DAT_1452_0004 + _DAT_1000_d0dc;
  puVar4 = (undefined1 *)(DAT_1452_0006 + -1);
  puVar5 = puVar4;
  for (iVar3 = DAT_1452_0006; iVar3 != 0; iVar3 = iVar3 + -1) {
    puVar2 = puVar5;
    puVar5 = puVar5 + -1;
    puVar1 = puVar4;
    puVar4 = puVar4 + -1;
    *puVar2 = *puVar1;
  }
  _DAT_1000_582c = 0x34;
  return;
}



