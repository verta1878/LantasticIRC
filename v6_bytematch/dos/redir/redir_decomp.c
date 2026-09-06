/* REDIR.EXE — Ghidra decompilation */
/* LANtastic (R) Redirector V6.00/AI */

/* FUN_1000_1eb1 at 1000:1eb1 */

/* WARNING: Instruction at (ram,0x000121d4) overlaps instruction at (ram,0x000121d2)
    */
/* WARNING: Unable to track spacebase fully for stack */
/* WARNING: This function may have set the stack pointer */
/* WARNING: Removing unreachable block (ram,0x000120df) */
/* WARNING: Removing unreachable block (ram,0x000120cb) */
/* WARNING: Removing unreachable block (ram,0x000120cd) */
/* WARNING: Removing unreachable block (ram,0x0001202b) */
/* WARNING: Removing unreachable block (ram,0x0001202c) */
/* WARNING: Removing unreachable block (ram,0x00012055) */
/* WARNING: Removing unreachable block (ram,0x00012035) */
/* WARNING: Removing unreachable block (ram,0x00012064) */
/* WARNING: Removing unreachable block (ram,0x00011f4e) */
/* WARNING: Removing unreachable block (ram,0x00011f7b) */
/* WARNING: Removing unreachable block (ram,0x00011f20) */
/* WARNING: Removing unreachable block (ram,0x00011fa5) */
/* WARNING: Removing unreachable block (ram,0x00011f58) */
/* WARNING: Removing unreachable block (ram,0x00011f5b) */
/* WARNING: Removing unreachable block (ram,0x0001215b) */
/* WARNING: Removing unreachable block (ram,0x00012166) */
/* WARNING: Removing unreachable block (ram,0x00012169) */
/* WARNING: Removing unreachable block (ram,0x0001216b) */
/* WARNING: Removing unreachable block (ram,0x000121dc) */
/* WARNING: Removing unreachable block (ram,0x000121e0) */
/* WARNING: Removing unreachable block (ram,0x0001216d) */
/* WARNING: Removing unreachable block (ram,0x0001218c) */
/* WARNING: Removing unreachable block (ram,0x0001218e) */
/* WARNING: Removing unreachable block (ram,0x00012190) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_1000_1eb1(byte *param_1,byte *param_2,byte *param_3,byte *param_4,byte *param_5,
                  byte *param_6,byte *param_7,byte *param_8,byte *param_9,byte *param_10,
                  byte *param_11,byte *param_12,byte *param_13,byte *param_14,byte *param_15,
                  byte *param_16,byte *param_17,byte *param_18,byte *param_19,byte *param_20,
                  byte *param_21,byte *param_22,byte *param_23,byte *param_24,byte *param_25,
                  byte *param_26,byte *param_27,byte *param_28,byte *param_29,byte *param_30,
                  byte *param_31,byte *param_32,byte *param_33,byte *param_34,undefined2 param_35,
                  byte *param_36,byte *param_37,byte *param_38,byte *param_39,byte *param_40,
                  byte *param_41,byte *param_42,byte *param_43,byte *param_44,undefined2 param_45,
                  undefined2 param_46,byte *param_47,byte *param_48,byte *param_49,byte *param_50)

{
  byte *pbVar1;
  uint *puVar2;
  int iVar3;
  undefined1 uVar4;
  undefined2 uVar5;
  uint uVar6;
  long lVar7;
  sqword sVar8;
  byte bVar9;
  byte bVar10;
  byte *in_AX;
  byte *pbVar11;
  byte *in_CX;
  byte bVar12;
  byte bVar13;
  byte bVar14;
  byte *in_DX;
  byte bVar16;
  byte *pbVar15;
  byte bVar17;
  char cVar18;
  byte *in_BX;
  undefined2 *puVar19;
  byte *unaff_BP;
  byte *pbVar20;
  byte *pbVar21;
  undefined2 *in_ESI;
  byte *unaff_DI;
  byte *pbVar22;
  byte *pbVar23;
  byte *pbVar24;
  undefined2 unaff_ES;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  undefined2 in_FS;
  undefined2 in_GS;
  bool bVar25;
  bool bVar26;
  byte in_AF;
  bool bVar27;
  bool bVar28;
  byte *in_stack_00000000;
  
  pbVar15 = param_28;
  pbVar22 = param_14;
  pbVar1 = unaff_BP + (int)unaff_DI + 0x65;
  *pbVar1 = *pbVar1 & (byte)((uint)in_DX >> 8);
  out(*(undefined2 *)in_ESI,in_DX);
  bVar13 = (byte)((uint)param_6 >> 8);
  bVar9 = (byte)param_15;
  bVar17 = (byte)((uint)param_22 >> 8);
  bVar10 = (byte)param_26;
  pbVar21 = (byte *)((undefined2 *)in_ESI + 1);
  pbVar23 = in_stack_00000000;
  if (*pbVar1 == 0) {
    pbVar21 = in_stack_00000000 + 1;
    bVar12 = in(param_5);
    *in_stack_00000000 = bVar12;
    out(*param_1,param_5);
    bVar12 = (byte)((uint)param_7 >> 8);
    (param_4 + (int)pbVar21)[0x6c] = (param_4 + (int)pbVar21)[0x6c] & bVar12;
    (param_4 + (int)pbVar21)[0x6c] = (param_4 + (int)pbVar21)[0x6c] + bVar12;
    in_stack_00000000[0x62] = in_stack_00000000[0x62] & bVar13;
    puVar2 = (uint *)(param_4 + (int)(param_1 + 1) + 0x69);
    uVar6 = *puVar2;
    *puVar2 = *puVar2;
    unaff_DI = in_stack_00000000 + 3;
    uVar5 = in(param_5);
    *(undefined2 *)pbVar21 = uVar5;
    pbVar21 = param_1 + 3;
    out(*(undefined2 *)(param_1 + 1),param_5);
    pbVar11 = param_7;
    in_CX = param_6;
    in_DX = param_5;
    in_BX = param_4;
    unaff_BP = param_2;
    if (0 < (int)(((uint)param_2 & 3) - (uVar6 & 3))) {
      unaff_DI = param_8 + 1;
      bVar12 = in(param_13);
      *param_8 = bVar12;
      pbVar1 = param_9 + 0x75;
      bVar14 = *pbVar1;
      bVar12 = *pbVar1;
      *pbVar1 = *pbVar1 + bVar9;
      if (!SCARRY1(bVar12,bVar9)) {
        puVar2 = (uint *)(param_18 + 0x74);
        *puVar2 = *puVar2 + (uint)CARRY1(bVar14,bVar9) * (((uint)param_18 & 3) - (*puVar2 & 3));
        in_AX = param_23;
        in_CX = param_22;
        in_DX = param_21;
        in_BX = param_20;
        unaff_BP = param_18;
        pbVar21 = param_17;
        unaff_DI = param_16;
        goto LAB_1000_1eda;
      }
      pbVar22 = param_9 + 2;
      out(*(undefined2 *)param_9,param_13);
code_r0x00011f24:
      out(*(undefined2 *)pbVar22,param_13);
      pbVar11 = (byte *)(uint)bVar9;
      *(undefined2 *)(param_12 + (int)(pbVar22 + 2) + 0x69) =
           *(undefined2 *)(param_12 + (int)(pbVar22 + 2) + 0x69);
      pbVar20 = pbVar22 + 4;
      out(*(undefined2 *)(pbVar22 + 2),param_13);
      in_CX = param_14;
      in_DX = param_13;
      in_BX = param_12;
      unaff_BP = param_10;
code_r0x00011f32:
      unaff_BP[(int)pbVar20] = unaff_BP[(int)pbVar20] & (byte)in_CX;
      pbVar1 = unaff_BP + (int)unaff_DI + 0x65;
      bVar25 = CARRY1(*pbVar1,(byte)in_DX);
      *pbVar1 = *pbVar1 + (byte)in_DX;
      bVar27 = *pbVar1 == 0;
      pbVar22 = pbVar20;
      if (!bVar25) {
        bVar25 = (long)(int)((long)*(int *)(pbVar20 + 0x65) * 0x6820) !=
                 (long)*(int *)(pbVar20 + 0x65) * 0x6820;
        in_CX = param_15;
        pbVar11 = param_14;
        in_DX = param_14;
        in_BX = param_13;
        unaff_BP = param_11;
        pbVar20 = param_11;
        pbVar22 = param_9;
        pbVar21 = param_10;
        if (bVar25) goto code_r0x00011f41;
LAB_1000_1f61:
        if (!bVar27) goto LAB_1000_1f84;
        unaff_DI = param_17 + 1;
        bVar9 = in(param_22);
        *param_17 = bVar9;
        in_CX = param_23;
        in_DX = param_22;
        in_BX = param_21;
        unaff_BP = param_19;
        if (!bVar25) {
          param_21[0x6e] = param_21[0x6e] & (byte)((uint)param_23 >> 8);
          param_18[-0x4e] = param_18[-0x4e] & bVar17;
          *unaff_DI = *unaff_DI & (byte)param_23;
          (param_21 + (int)unaff_DI)[100] =
               (param_21 + (int)unaff_DI)[100] + (char)((uint)param_24 >> 8);
          pbVar21 = param_18;
          goto code_r0x00011f79;
        }
        goto LAB_1000_1fdc;
      }
LAB_1000_1f9e:
      param_8 = (byte *)&param_9;
      pbVar20 = pbVar22 + 2;
      out(*(undefined2 *)pbVar22,in_DX);
code_r0x00011fa1:
      if (!bVar27) {
        if (!bVar25) {
          uVar5 = in(in_DX);
          *(undefined2 *)unaff_DI = uVar5;
          pbVar1 = in_BX + (int)(unaff_DI + 2) + 10;
          *pbVar1 = *pbVar1 + (byte)pbVar11;
          bVar9 = *pbVar1;
          pbVar22 = unaff_DI + 4;
          uVar5 = in(in_DX);
          *(undefined2 *)(unaff_DI + 2) = uVar5;
          out(*(undefined2 *)pbVar20,in_DX);
          pbVar23 = pbVar20 + 2;
          if (bVar9 == 0) goto LAB_1000_1fb0;
          goto code_r0x00011fd3;
        }
        in_BX[(int)pbVar20] = in_BX[(int)pbVar20] & (byte)pbVar11;
LAB_1000_2008_1:
        unaff_BP[0x6f] = unaff_BP[0x6f] & (byte)((uint)in_CX >> 8);
      }
      goto code_r0x00012013;
    }
code_r0x00011ef2:
    pbVar1 = unaff_DI + 0x20;
    bVar12 = *pbVar1;
    bVar14 = (byte)in_DX;
    *pbVar1 = *pbVar1 + bVar14;
    bVar27 = *pbVar1 == 0;
    if (!CARRY1(bVar12,bVar14)) {
      pbVar1 = unaff_BP;
      unaff_BP = (byte *)(byte *)((long)*(int *)pbVar1 * 0x6f4d);
      bVar25 = (byte *)(long)(int)unaff_BP != (byte *)((long)*(int *)pbVar1 * 0x6f4d);
      pbVar22 = unaff_DI;
      goto LAB_1000_1f61;
    }
    bVar16 = (byte)((uint)in_DX >> 8);
    if (!CARRY1(bVar12,bVar14)) {
      pbVar21[0x6f] = pbVar21[0x6f] & bVar16;
      in_BX[0x70] = in_BX[0x70] & (byte)((uint)in_CX >> 8);
      pbVar20 = pbVar21 + 1;
      out(*pbVar21,in_DX);
      goto LAB_1000_1f01;
    }
    in_DX = (byte *)CONCAT11(bVar16,0x20);
code_r0x00011f79:
    bVar9 = (byte)((uint)in_CX >> 8);
    unaff_DI[0x65] = unaff_DI[0x65] & bVar9;
    pbVar22 = unaff_DI + 2;
    uVar5 = in(in_DX);
    *(undefined2 *)unaff_DI = uVar5;
    pbVar1 = pbVar21;
    pbVar21 = pbVar21 + 2;
    out(*(undefined2 *)pbVar1,in_DX);
    *pbVar22 = *pbVar22 & bVar9;
    param_16 = in_BX;
LAB_1000_1f84:
    pbVar1 = unaff_BP + (int)pbVar21 + 0x65;
    *pbVar1 = *pbVar1 & (byte)in_DX;
    bVar27 = *pbVar1 == 0;
    if (!bVar27) goto LAB_1000_1fed;
    pbVar1 = pbVar21 + 0x6f;
    bVar9 = (byte)((uint)in_CX >> 8);
    *pbVar1 = *pbVar1 & bVar9;
    bVar27 = *pbVar1 == 0;
    if (!bVar27) {
      if (!bVar27) {
        unaff_DI = pbVar22 + 2;
        uVar5 = in(in_DX);
        *(undefined2 *)pbVar22 = uVar5;
        if (!bVar27) {
          pbVar1 = unaff_BP + 0x65;
          bVar25 = false;
          *pbVar1 = *pbVar1 & bVar9;
          bVar27 = *pbVar1 == 0;
          pbVar11 = param_7;
          in_CX = param_6;
          in_DX = param_5;
          in_BX = param_4;
          unaff_BP = param_2;
          unaff_DI = in_stack_00000000;
          pbVar22 = param_1;
          goto LAB_1000_1f9e;
        }
        goto LAB_1000_2008_1;
      }
      pbVar24 = (byte *)ZEXT24(in_stack_00000000);
      goto LAB_1000_1ffb;
    }
LAB_1000_1fb0:
    pbVar23 = param_17 + 1;
    bVar9 = in(param_22);
    *param_17 = bVar9;
    out(*(undefined2 *)param_18,param_22);
    out(param_18[2],param_22);
    param_18[-0x4b] = param_18[-0x4b] & bVar17;
    pbVar1 = pbVar23;
    *pbVar1 = *pbVar1 & (byte)param_23;
    pbVar22 = param_22;
    if (*pbVar1 != 0) goto LAB_1000_1fbd;
LAB_1000_201c:
    uVar5 = in(pbVar22);
    *(undefined2 *)(pbVar23 + -1) = uVar5;
    pbVar24 = (byte *)ZEXT24(pbVar22);
    pbVar23 = param_14;
    in_CX = param_13;
    in_DX = param_12;
    in_BX = param_11;
    pbVar11 = param_9;
    param_3 = param_8;
LAB_1000_2025:
    pbVar22 = (byte *)pbVar24;
    pbVar1 = in_BX + 0x72;
    *pbVar1 = *pbVar1 & (byte)in_CX;
    bVar27 = *pbVar1 == 0;
    if (bVar27) {
LAB_1000_202a:
      bVar25 = false;
LAB_1000_208d:
      if (bVar27) {
        uVar4 = in(param_33);
        *(undefined1 *)CONCAT11(param_28._1_1_,(byte)param_28) = uVar4;
        param_35._0_1_ = 'e';
        param_35._1_1_ = 0x20;
        pbVar22 = param_43;
        if (bVar25) goto LAB_1000_20fc;
        param_28._0_1_ = 0x69;
        param_28._1_1_ = 0x6e;
        pbVar1 = param_44 + 0x61;
        bVar9 = *pbVar1;
        *pbVar1 = *pbVar1 + (byte)param_48;
        if (!CARRY1(bVar9,(byte)param_48)) {
          pbVar24 = (byte *)ZEXT24(param_43);
          if (*pbVar1 != 0) {
            pbVar11 = (byte *)(*(int *)(param_43 + 0x61) * 0x6c62);
            (param_47 + (int)param_44)[0x65] = (param_47 + (int)param_44)[0x65] & param_49._1_1_;
            bVar25 = false;
            (param_47 + (int)param_43)[0x61] =
                 (param_47 + (int)param_43)[0x61] & (byte)((uint)param_50 >> 8);
            pbVar23 = param_50;
            in_CX = param_49;
            in_DX = param_48;
            in_BX = param_47;
            param_3 = param_44;
            goto LAB_1000_20b0;
          }
          *(byte **)(param_47 + (int)param_44) = param_50 + *(int *)(param_47 + (int)param_44);
        }
        goto LAB_1000_2108;
      }
LAB_1000_20b0:
      if (!bVar25) {
        in_BX[(int)param_3] = in_BX[(int)param_3] + (char)pbVar23;
        goto LAB_1000_20b7;
      }
      pbVar23 = (byte *)CONCAT11(param_28._1_1_,(byte)param_28);
      pbVar22 = (byte *)CONCAT11(param_35._1_1_,(char)param_35);
      pbVar23[(int)(param_30 + 0x65)] = pbVar23[(int)(param_30 + 0x65)] & param_35._1_1_;
      param_32[(int)param_29] = param_32[(int)param_29] & param_35._1_1_;
      pbVar15 = param_33;
      in_BX = param_32;
      pbVar21 = param_30;
      cVar18 = param_34._1_1_;
      param_3 = param_29;
      goto code_r0x0001211c;
    }
    if ((char)*pbVar1 < '\0') {
      param_18 = param_3 + -1;
      pbVar11 = (byte *)(*(int *)(in_BX + 0x6e) * 0xa0d);
code_r0x00012059:
      pbVar22[0x72] = pbVar22[0x72] & (byte)((uint)in_CX >> 8);
      pbVar1 = pbVar11 + 0xb;
      *pbVar1 = *pbVar1 & (byte)in_CX;
      param_2 = (byte *)(byte *)((long)*(int *)(in_BX + 0x6e) * 0xa0d);
      bVar27 = (byte *)(long)(int)param_2 != (byte *)((long)*(int *)(in_BX + 0x6e) * 0xa0d);
      param_6 = in_CX;
      if (!bVar27 && *pbVar1 != 0) goto LAB_1000_20d0_1;
code_r0x0001206c:
      if (bVar27) goto code_r0x000120d0;
      uVar5 = in(in_DX);
      *(undefined2 *)pbVar22 = uVar5;
      param_23[0x20] = param_23[0x20] & param_28._1_1_;
      param_18 = param_22 + -1;
      pbVar11 = (byte *)((uint)param_23 | *(uint *)(param_25 + 0x62));
      param_28._0_1_ = 0x66;
      param_28._1_1_ = 0;
      pbVar1 = param_22 + 0x60;
      bVar25 = CARRY1(*pbVar1,bVar10);
      *pbVar1 = *pbVar1 + bVar10;
      bVar27 = *pbVar1 == 0;
      pbVar23 = pbVar15;
      in_CX = param_27;
      in_DX = param_26;
      in_BX = param_25;
      pbVar22 = param_21;
LAB_1000_2086:
      cVar18 = (char)((uint)in_CX >> 8);
      if (bVar25) {
        *(undefined1 *)0x146f = 0;
        param_47 = in_BX;
        param_44 = param_18;
        goto code_r0x000120f4;
      }
      if (bVar27) goto LAB_1000_20f1;
      pbVar24 = (byte *)ZEXT24(pbVar22 + 2);
      uVar5 = in(in_DX);
      *(undefined2 *)pbVar22 = uVar5;
      param_3 = param_18 + 2;
      out(*(undefined2 *)param_18,in_DX);
      goto LAB_1000_208d;
    }
    (in_BX + (int)param_3)[0x6e69] = (in_BX + (int)param_3)[0x6e69] + (char)((uint)in_DX >> 8);
    *pbVar22 = *pbVar22 & (byte)in_CX;
    pbVar22[0x61] = pbVar22[0x61] & (byte)((uint)in_CX >> 8);
    puVar2 = (uint *)(in_BX + (int)param_3 + 0x69);
    bVar27 = 0 < (int)(((uint)pbVar11 & 3) - (*puVar2 & 3));
    *puVar2 = *puVar2;
    sVar8 = (sqword)*(long *)(in_BX + (int)param_3 + 0x12) * 0x6e69b000;
    pbVar24 = (byte *)sVar8;
    bVar25 = (long)pbVar24 != sVar8;
    if (!bVar25 && !bVar27) {
      if (!bVar25) {
        pbVar22 = (byte *)sVar8;
        param_18 = param_3 + 2;
        out(*(undefined2 *)param_3,in_DX);
        pbVar23 = (byte *)CONCAT11((char)((uint)pbVar23 >> 8),0x50);
        if (!bVar25) goto code_r0x00012059;
        goto LAB_1000_2086;
      }
      pbVar11 = pbVar11 + 1;
    }
LAB_1000_20b7:
    bVar9 = (char)pbVar23 + 0xae;
    (pbVar11 + (int)param_3)[0x3c2a] = (pbVar11 + (int)param_3)[0x3c2a] + (char)((uint)in_DX >> 8);
    bVar13 = (byte)((uint)in_CX >> 8);
    pbVar11[(int)param_3] = pbVar11[(int)param_3] + bVar13;
    param_3[0x45] = param_3[0x45] & bVar9;
    pbVar15 = in_DX + 1;
    pbVar23 = (byte *)pbVar24 + 1;
    pbVar1 = (byte *)pbVar24 + 0x21;
    bVar27 = false;
    *pbVar1 = *pbVar1 & bVar9;
LAB_1000_2130:
    puVar2 = (uint *)(in_BX + (int)param_3);
    *puVar2 = *puVar2 + (uint)bVar27 * -(*puVar2 & 3);
    pbVar1 = pbVar23;
    bVar9 = *pbVar1;
    *pbVar1 = *pbVar1 - bVar13;
    pbVar22 = pbVar23 + -1;
    bVar28 = (int)pbVar22 < 0;
    bVar25 = pbVar22 == (byte *)0x0;
    bVar27 = !bVar25;
    if (bVar27) {
      in_BX[0x72] = in_BX[0x72] & bVar13;
      pbVar1 = in_BX + 0x4c;
      *pbVar1 = *pbVar1 & bVar13;
      out(*param_3,pbVar15);
      bVar28 = (char)*pbVar1 < '\0';
      bVar25 = *pbVar1 == 0;
      out(*(byte *)CONCAT22((int)((ulong)in_ESI >> 0x10),param_3 + 1),pbVar15);
      pbVar15 = param_19;
      pbVar22 = in_BX;
    }
    bVar26 = !bVar27 && bVar9 < bVar13;
    uVar5 = in(pbVar15);
    *(undefined2 *)pbVar22 = uVar5;
    uVar5 = in(pbVar15);
    *(undefined2 *)(pbVar22 + 2) = uVar5;
    uVar5 = in(pbVar15);
    *(undefined2 *)(pbVar22 + 4) = uVar5;
    uVar5 = in(pbVar15);
    *(undefined2 *)(pbVar22 + 6) = uVar5;
    uVar5 = in(pbVar15);
    *(undefined2 *)(pbVar22 + 8) = uVar5;
    if (bVar28) {
      (param_24 + (int)(param_22 + 1))[0x75] =
           (param_24 + (int)(param_22 + 1))[0x75] & (byte)param_27;
      bVar9 = in(param_27);
      param_22[1] = bVar9;
      param_29 = (byte *)(uint)((byte)param_37 + (9 < ((byte)param_37 & 0xf) | in_AF) * -6 & 0xf);
      param_24 = param_32;
      param_23 = param_31;
LAB_1000_21cf:
      lVar7 = (long)*(int *)(param_24 + (int)param_23) * 0x7c;
      bVar27 = (int)lVar7 != lVar7;
      bVar9 = (byte)param_34 + param_23[-0x25ee];
      bVar25 = CARRY1((byte)param_34,param_23[-0x25ee]) || CARRY1(bVar9,bVar27);
      bVar13 = (byte)param_29 - 0x20;
      bVar28 = 0x1f < (byte)param_29 || CARRY1(bVar13,bVar25);
      bVar13 = bVar13 + bVar25;
      bVar10 = bVar13 - 0x26;
      bVar25 = 0x25 < bVar13 || CARRY1(bVar10,bVar28);
      bVar10 = bVar10 + bVar28;
      bVar13 = bVar10 - 0x20;
      bVar28 = 0x1f < bVar10 || CARRY1(bVar13,bVar25);
      bVar13 = bVar13 + bVar25;
      bVar10 = bVar13 - 0x26;
      param_29 = (byte *)(uint)(byte)(bVar10 + bVar28 + 'S' +
                                     (0x25 < bVar13 || CARRY1(bVar10,bVar28)));
      param_26 = (byte *)(CONCAT11((char)((uint)param_34 >> 8),bVar9 + bVar27) + 1);
      param_34 = param_23;
code_r0x000121e8:
      in_BX = param_26 + 3;
    }
    else {
      if (!bVar25) {
        param_34 = param_23;
        if ((!bVar27 && SBORROW2((int)pbVar23,1)) == bVar28) {
          param_34 = (byte *)CONCAT11((char)((uint)param_26 >> 8),bVar10 + (byte)param_27 + bVar26);
          goto LAB_1000_21cf;
        }
        goto code_r0x000121e8;
      }
      param_23 = (byte *)CONCAT11(param_28._1_1_,(byte)param_28);
      puVar2 = (uint *)((int)param_29 * 2 + 0x20);
      *puVar2 = *puVar2 + (uint)bVar26 * (((byte)param_28 & 3) - (*puVar2 & 3));
      bVar10 = in(param_32);
      *param_29 = bVar10;
      param_43 = param_34;
      pbVar23 = param_31;
      pbVar22 = param_29;
      if (bVar27 || bVar9 >= bVar13) goto LAB_1000_21c9;
      (param_31 + (int)param_29)[0x73] = (param_31 + (int)param_29)[0x73] & param_33._1_1_;
      uVar5 = in(param_30);
      *(undefined2 *)param_31 = uVar5;
      param_26[(int)param_29] = param_26[(int)param_29] & param_32._1_1_;
      out(*param_26,param_30);
      param_24 = (byte *)CONCAT11(param_35._1_1_,(char)param_35);
      bVar9 = (byte)((uint)param_39 >> 8);
      param_29 = param_40;
      in_BX = param_37;
      if (param_31 != (byte *)0xffff) {
        pbVar23 = param_34 + 2;
        out(*(undefined2 *)param_34,param_38);
        param_43 = param_40;
        param_41 = param_38;
        goto LAB_1000_21a8;
      }
    }
LAB_1000_21f4:
    in_BX = in_BX + 1;
    pbVar22 = param_29;
    pbVar21 = param_24;
    param_3 = param_34;
  }
  else {
LAB_1000_1eda:
    pbVar11 = (byte *)((uint)in_AX | 0x6d0a);
    bVar27 = pbVar11 != (byte *)0x0;
    pbVar20 = pbVar21 + 2;
    out(*(undefined2 *)pbVar21,in_DX);
    if (bVar27) {
LAB_1000_1f01:
      bVar12 = (byte)((uint)in_CX >> 8) | unaff_DI[0x6f];
      in_CX = (byte *)CONCAT11(bVar12,(char)in_CX);
      if (bVar12 != 0) {
        bVar25 = false;
        pbVar11 = (byte *)((uint)pbVar11 | 0x620a);
        bVar27 = pbVar11 == (byte *)0x0;
        if (!bVar27) goto code_r0x00011f32;
        goto code_r0x00011fa1;
      }
      pbVar22 = in_stack_00000000 + 1;
      bVar12 = in(param_5);
      *in_stack_00000000 = bVar12;
      bVar14 = (byte)((uint)param_7 >> 8);
      pbVar21 = param_1 + 1;
      out(*param_1,param_5);
      (param_4 + (int)pbVar22)[0x2e] = (param_4 + (int)pbVar22)[0x2e] & bVar14;
      in_stack_00000000[0x66] = in_stack_00000000[0x66] & bVar13;
      bVar12 = in_stack_00000000[0x70];
      if ((bVar13 | bVar12) == 0) {
        (param_10 + (int)param_9)[0x65] =
             (param_10 + (int)param_9)[0x65] & (byte)((uint)param_13 >> 8);
        bVar9 = bVar9 + 0x98;
        unaff_DI = param_8;
        pbVar22 = param_9;
        goto code_r0x00011f24;
      }
      param_7 = (byte *)0x7361;
      (param_2 + (int)pbVar21)[0x2e] = (param_2 + (int)pbVar21)[0x2e] & bVar14;
      in_stack_00000000[0x66] = in_stack_00000000[0x66] & (bVar13 | bVar12);
      pbVar11 = (byte *)CONCAT11((byte)((uint)param_5 >> 8) | (param_2 + (int)pbVar22)[0x74],
                                 (byte)param_5);
      pbVar20 = param_2;
code_r0x00011f41:
      bVar9 = (byte)((uint)pbVar11 >> 8) | (pbVar20 + (int)pbVar22)[0x74];
      pbVar1 = pbVar20 + (int)pbVar22 + 0x65;
      *pbVar1 = *pbVar1 & bVar9;
      out(*pbVar21,CONCAT11(bVar9,(char)pbVar11));
      pbVar24 = (byte *)ZEXT24(param_2);
      pbVar23 = param_9;
      in_CX = param_8;
      pbVar22 = param_7;
      in_DX = param_7;
      in_BX = param_6;
      pbVar11 = param_4;
      pbVar21 = param_3;
      if (*pbVar1 != 0) goto LAB_1000_1f55;
    }
    else {
      bVar12 = in(param_5);
      *in_stack_00000000 = bVar12;
      param_7 = (byte *)0x7365;
      unaff_DI = (byte *)0x7365;
      param_14 = (byte *)0x7269;
      pbVar11 = pbVar22;
      in_CX = param_13;
      pbVar22 = param_12;
      in_DX = param_12;
      in_BX = param_11;
      unaff_BP = param_9;
      pbVar21 = param_8;
      if (bVar27) goto code_r0x00011ef2;
LAB_1000_1f55:
      out(*(undefined2 *)pbVar21,pbVar22);
LAB_1000_1fbd:
      pbVar24 = (byte *)ZEXT24(param_10);
      pbVar23 = param_17;
      in_CX = param_16;
      in_DX = param_15;
      in_BX = param_14;
      pbVar11 = param_12;
      param_3 = param_11;
    }
    pbVar22 = (byte *)pbVar24;
    *pbVar22 = *pbVar22 & (byte)in_CX;
    pbVar1 = pbVar22 + 0x61;
    *pbVar1 = *pbVar1 & (byte)((uint)in_CX >> 8);
    bVar9 = *pbVar1;
    puVar2 = (uint *)(in_BX + (int)param_3 + 0x69);
    bVar27 = 0 < (int)(((uint)pbVar11 & 3) - (*puVar2 & 3));
    *puVar2 = *puVar2;
    if ((char)bVar9 < '\0') goto LAB_1000_202a;
    in_CX = (byte *)(CONCAT11((char)((uint)(in_CX + *(int *)pbVar22) >> 8),
                              (byte)(in_CX + *(int *)pbVar22) | pbVar11[(int)param_3]) + -1);
    unaff_BP = pbVar11;
    pbVar23 = param_3 + 1;
code_r0x00011fd3:
    param_18 = pbVar23;
    param_16 = param_17;
    pbVar22[0x52] = pbVar22[0x52] & (byte)param_17;
    unaff_DI = pbVar22 + -1;
    param_14 = in_DX;
LAB_1000_1fdc:
    bVar9 = (byte)((uint)in_CX >> 8);
    *unaff_DI = *unaff_DI + bVar9;
    pbVar22 = unaff_DI + -1;
    pbVar11 = unaff_BP + -1;
    pbVar1 = pbVar11 + (int)pbVar22 + 0x6f;
    *pbVar1 = *pbVar1 & (byte)in_DX;
    if (*pbVar1 != 0) {
      unaff_DI[0x71] = unaff_DI[0x71] & bVar9;
      goto code_r0x00012059;
    }
    unaff_BP = unaff_BP + -2;
    bVar27 = unaff_BP == (byte *)0x0;
    pbVar21 = param_18 + 2;
    out(*(undefined2 *)param_18,in_DX);
    param_13 = in_DX;
LAB_1000_1fed:
    if (!bVar27) {
      (unaff_BP + (int)pbVar21)[0x49] = (unaff_BP + (int)pbVar21)[0x49] + (char)((uint)in_BX >> 8);
      unaff_DI = pbVar22;
      pbVar23 = in_stack_00000000;
code_r0x00012013:
      uVar5 = in(in_DX);
      *(undefined2 *)unaff_DI = uVar5;
      *pbVar23 = *pbVar23 + bVar13;
      pbVar22 = param_5;
      goto LAB_1000_201c;
    }
    *in_stack_00000000 = *in_stack_00000000 + bVar13;
    param_15 = param_5;
    pbVar24 = (byte *)ZEXT24(in_stack_00000000 + -1);
    param_2 = param_2 + -1;
    pbVar1 = param_1 + 0x61;
    *pbVar1 = *pbVar1 & (byte)param_5;
    bVar27 = *pbVar1 == 0;
LAB_1000_1ffb:
    pbVar22 = (byte *)pbVar24;
    if (!bVar27) {
      param_3 = param_1 + 2;
      out(*(undefined2 *)param_1,param_5);
      pbVar23 = param_7;
      in_CX = param_6;
      in_DX = param_5;
      in_BX = param_4;
      pbVar11 = param_2 + -1;
      if (param_2 + -1 == (byte *)0x0) {
        *param_15 = *param_15 + (char)((uint)param_21 >> 8);
        out(*param_16,param_20);
        out(*(undefined2 *)(param_16 + 1),param_20);
        in_DX = param_20;
        unaff_DI = param_15;
        pbVar23 = param_20;
        goto code_r0x00012013;
      }
      goto LAB_1000_2025;
    }
    bVar27 = false;
    in_DX = param_5;
    in_BX = param_4;
    param_18 = param_1;
    if ((char)((uint)param_7 >> 8) == '\0' && (param_2 + (int)param_1)[0x75] == 0)
    goto code_r0x0001206c;
LAB_1000_20d0_1:
    in_DX = (byte *)CONCAT11((char)((uint)in_DX >> 8),0x2a);
code_r0x000120d0:
    pbVar23 = param_18 + 2;
    out(*(undefined2 *)param_18,in_DX);
    bVar17 = (byte)((uint)in_DX >> 8);
    (param_2 + (int)pbVar23)[0x6f2a] = (param_2 + (int)pbVar23)[0x6f2a] + bVar17;
    bVar13 = (byte)((uint)param_6 >> 8);
    pbVar22[0x65] = pbVar22[0x65] & bVar13;
    bVar9 = param_2[(int)pbVar23];
    param_18 = param_18 + 4;
    out(*(undefined2 *)pbVar23,in_DX);
    param_2[(int)pbVar22] = param_2[(int)pbVar22] & bVar17;
    pbVar22 = pbVar22 + -1;
    cVar18 = (char)((uint)(CONCAT11(bVar13 - bVar9,(char)param_6) + 1) >> 8);
    param_2[0x31] = param_2[0x31] & (byte)in_DX;
    param_2[(int)pbVar22] = param_2[(int)pbVar22] ^ bVar17;
    pbVar23 = (byte *)0x7e80;
    pbVar11 = param_2;
LAB_1000_20f1:
    out(*(undefined2 *)param_18,in_DX);
    pbVar23 = (byte *)((uint)pbVar23 & 0xff00);
    param_47 = in_BX;
    param_44 = param_18 + 2;
code_r0x000120f4:
    param_50 = (byte *)CONCAT11((char)((uint)pbVar23 >> 8),0x2a);
    param_49._1_1_ = (cVar18 - pbVar22[0x65]) - pbVar11[(int)param_44];
    pbVar22 = pbVar22 + -1;
LAB_1000_20fc:
    param_47[0x72] = param_47[0x72] & param_49._1_1_;
    param_47[0x20] = param_47[0x20] & param_49._1_1_;
LAB_1000_2108:
    *(byte **)(param_47 + (int)param_44) = param_50 + *(int *)(param_47 + (int)param_44);
    pbVar22[0x6d] = pbVar22[0x6d] + (char)((uint)param_50 >> 8);
    pbVar23 = (byte *)CONCAT11(param_29._0_1_,param_28._1_1_);
    param_3 = (byte *)CONCAT11(param_30._0_1_,param_29._1_1_);
    in_BX = (byte *)CONCAT11(param_33._0_1_,param_32._1_1_);
    pbVar22 = (byte *)CONCAT11((byte)param_36,param_35._1_1_);
    (in_BX + (int)param_3)[0x6e65] = (in_BX + (int)param_3)[0x6e65] + (char)param_34;
    (in_BX + (int)pbVar23)[0x20] = (in_BX + (int)pbVar23)[0x20] & (byte)param_36;
    *(undefined2 *)(pbVar23 + 100) = *(undefined2 *)(pbVar23 + 100);
    in_BX[(int)param_3] = in_BX[(int)param_3] & (byte)param_36;
    pbVar15 = (byte *)CONCAT11((char)param_34,param_33._1_1_);
    pbVar21 = (byte *)CONCAT11(param_31._0_1_,param_30._1_1_);
    cVar18 = (char)param_35;
code_r0x0001211c:
    bVar9 = (byte)((uint)pbVar22 >> 8);
    in_BX[(int)param_3] = in_BX[(int)param_3] & bVar9;
    pbVar1 = pbVar23 + 0x70;
    bVar27 = *(byte **)pbVar1 < param_3;
    iVar3 = *(int *)pbVar1;
    *(int *)pbVar1 = *(int *)pbVar1 - (int)param_3;
    if (!SBORROW2(iVar3,(int)param_3)) {
      if (!bVar27) {
        bVar13 = cVar18 - pbVar21[(int)param_3];
        pbVar1 = pbVar23;
        pbVar23 = pbVar23 + 2;
        uVar5 = in(pbVar15);
        *(undefined2 *)pbVar1 = uVar5;
        pbVar22 = (byte *)CONCAT11(bVar9,(char)pbVar22 + -0x80);
        bVar9 = (byte)((uint)pbVar15 >> 8);
        bVar27 = bVar9 < in_BX[(int)param_3];
        cVar18 = bVar9 - in_BX[(int)param_3];
        pbVar15 = (byte *)CONCAT11(cVar18,(char)pbVar15);
        if (cVar18 != '\0') goto LAB_1000_2130;
      }
      pbVar1 = pbVar23 + 0x6c;
      bVar27 = false;
      *pbVar1 = *pbVar1 & (byte)((uint)pbVar22 >> 8);
      bVar25 = *pbVar1 == 0;
      param_24 = pbVar21;
      param_34 = param_3;
code_r0x0001219c:
      param_29 = pbVar22;
      if (!bVar27) goto LAB_1000_21f4;
      uVar5 = in(pbVar15);
      *(undefined2 *)pbVar23 = uVar5;
      bVar9 = (byte)((uint)param_42 >> 8);
      if (!bVar25) goto LAB_1000_2207;
      pbVar23 = (byte *)(*(int *)(param_38 + (int)(param_36 + 0x61)) * 0x6d);
      param_33 = param_36 + -1;
      param_37 = param_40;
      param_24 = param_38;
LAB_1000_21a8:
      param_37[0x72] = param_37[0x72] & bVar9;
      *param_37 = *param_37 & bVar9;
      param_24[(int)(param_33 + -1)] = param_24[(int)(param_33 + -1)] & (byte)((uint)param_41 >> 8);
      *(byte **)(param_37 + (int)pbVar23) = param_43 + *(int *)(param_37 + (int)pbVar23);
      param_37[(int)pbVar23] = param_37[(int)pbVar23] + (char)param_43;
      bVar13 = (byte)param_41 & (byte)*(undefined2 *)(param_24 + (int)(param_33 + -2));
      pbVar1 = param_24 + (int)(param_33 + -2);
      bVar9 = *pbVar1;
      *pbVar1 = *pbVar1 - bVar13;
      pbVar22 = param_24 + -2;
      uVar6 = (uint)(bVar9 < bVar13);
      bVar26 = CARRY2((uint)pbVar23,*(uint *)(param_37 + (int)(param_33 + -1))) ||
               CARRY2((uint)(pbVar23 + *(uint *)(param_37 + (int)(param_33 + -1))),uVar6);
      param_23 = pbVar23 + *(uint *)(param_37 + (int)(param_33 + -1)) + uVar6;
      pbVar23 = param_37;
LAB_1000_21c9:
      param_34 = pbVar23;
      param_29 = param_43;
      param_24 = pbVar22 + *(uint *)(param_34 + (int)param_23) + bVar26;
      param_23 = param_23 +
                 (uint)(CARRY2((uint)pbVar22,*(uint *)(param_34 + (int)param_23)) ||
                       CARRY2((uint)(pbVar22 + *(uint *)(param_34 + (int)param_23)),(uint)bVar26)) +
                 *(int *)0x3f13;
      goto LAB_1000_21cf;
    }
    if (*(int *)pbVar1 == 0) {
      puVar2 = (uint *)(param_37 + (int)pbVar22 + 0x20);
      iVar3 = ((uint)param_36 & 3) - (*puVar2 & 3);
      bVar25 = 0 < iVar3;
      *puVar2 = *puVar2 + (uint)bVar27 * iVar3;
      pbVar23 = pbVar22 + 1;
      bVar9 = in(param_40);
      *pbVar22 = bVar9;
      pbVar22 = param_42;
      pbVar15 = param_40;
      in_BX = param_39;
      param_24 = param_37;
      param_34 = param_36;
      goto code_r0x0001219c;
    }
  }
  param_37 = param_3;
  param_38 = pbVar21;
  param_43 = pbVar22;
  param_40 = in_BX + 4;
LAB_1000_2207:
  param_25 = param_40 + 1;
  param_24 = (byte *)&param_25;
  param_23 = param_40 + 2;
  param_22 = (byte *)&param_23;
  param_21 = param_40 + 3;
  param_20 = (byte *)&param_21;
  param_19 = param_40 + 4;
  param_18 = (byte *)&param_19;
  param_17 = param_40 + 5;
  param_16 = (byte *)&param_17;
  param_15 = param_40 + 6;
  param_14 = (byte *)&param_15;
  param_13 = param_40 + 7;
  param_12 = (byte *)&param_13;
  param_11 = param_40 + 8;
  param_10 = (byte *)&param_11;
  param_9 = param_40 + 9;
  DAT_1000_0301 = SUB21(param_43,0);
  param_38 = param_38 + -*(int *)0x93a0;
  puVar19 = (undefined2 *)0x889;
  DAT_1000_0008 = param_37;
  _DAT_1000_540a = unaff_DS;
  *(undefined2 *)0x889 = param_38;
  cVar18 = '\x12';
  do {
    param_38 = param_38 + -2;
    puVar19 = puVar19 + -1;
    *puVar19 = *(undefined2 *)param_38;
    cVar18 = cVar18 + -1;
  } while ('\0' < cVar18);
  *(undefined2 *)0x863 = 0x889;
  *(undefined2 *)0xe = param_40 + 0xf7;
  param_37[*(int *)0xb963] = param_37[*(int *)0xb963] - 0x18;
  *(undefined2 *)0x7ae = *(undefined2 *)0xbb;
  *(undefined2 *)0x7ac = 0x261e;
  FUN_1000_36b6();
  *(undefined2 *)0x3c08 = 0xfe;
  FUN_1000_298d();
  return;
}



/* FUN_1000_2629 at 1000:2629 */

undefined2 __cdecl16near FUN_1000_2629(void)

{
  char in_CL;
  int unaff_BP;
  undefined1 *unaff_SI;
  undefined1 *unaff_DI;
  undefined2 unaff_ES;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  
  unaff_DI[unaff_BP] = unaff_DI[unaff_BP] + in_CL;
  unaff_SI[4] = 0;
  FUN_1000_36b6();
  *unaff_DI = *unaff_SI;
  *(char *)0x68e = *(char *)0x68e + 'L';
  return unaff_ES;
}



/* FUN_1000_2699 at 1000:2699 */

void __cdecl16near FUN_1000_2699(void)

{
  uint *puVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  undefined2 unaff_DS;
  bool bVar5;
  undefined4 uVar6;
  uint local_10 [2];
  uint local_c;
  int local_a;
  uint local_8;
  uint local_6;
  int local_4;
  
  FUN_1000_36e2(*(uint *)0xc5 + 0x40,*(int *)0xc7 + (uint)(0xffbf < *(uint *)0xc5),
                *(undefined2 *)0xbb);
  iVar2 = func_0x000136c8(4,&local_6);
  if (iVar2 != 0) {
    FUN_1000_36e2(*(uint *)0xc5 + 0x44,*(int *)0xc7 + (uint)(0xffbb < *(uint *)0xc5),
                  *(undefined2 *)0xbb);
    iVar2 = func_0x000136c8(&local_8,&local_8);
    if (iVar2 != 0) {
      if (*(uint *)0x10 <= local_8) {
        *(uint *)0x10 = local_8;
      }
      puVar4 = (uint *)0x12;
      bVar5 = CARRY2(local_6,*(uint *)0xc5);
      local_6 = local_6 + *(uint *)0xc5;
      local_4 = local_4 + *(int *)0xc7 + (uint)bVar5;
      while( true ) {
        FUN_1000_36e2(local_6,local_4,*(undefined2 *)0xbb);
        iVar2 = func_0x000136c8(4,&local_c);
        if (iVar2 == 0) break;
        FUN_1000_36e2(local_6 + 8,local_4 + (uint)(0xfff7 < local_6),*(undefined2 *)0xbb);
        iVar2 = func_0x000136c8(4,local_10);
        if (iVar2 == 0) break;
        *puVar4 = *puVar4 | local_10[0];
        puVar4[1] = puVar4[1] + 3;
        puVar4[1] = puVar4[1] & 0xfffc;
        if (local_a != 0) break;
        puVar1 = puVar4 + 1;
        uVar3 = *puVar1;
        *puVar1 = *puVar1 + local_c;
        if (CARRY2(uVar3,local_c)) break;
        bVar5 = 0xffe7 < local_6;
        local_6 = local_6 + 0x18;
        local_4 = local_4 + (uint)bVar5;
        puVar4 = puVar4 + 4;
        local_8 = local_8 - 1;
        if (local_8 == 0) {
          return;
        }
      }
    }
  }
  FUN_1000_3513(0x1000);
  uVar3 = *(uint *)0x10;
  puVar4 = (uint *)0x12;
  do {
    if ((*puVar4 & 0x40) == 0) {
      FUN_1000_34bd();
      uVar3 = puVar4[1];
      uVar6 = FUN_1000_3405();
    }
    else {
      uVar6 = FUN_1000_3436(puVar4[1]);
    }
    puVar4[2] = (uint)uVar6;
    puVar4[3] = (uint)((ulong)uVar6 >> 0x10);
    puVar4 = puVar4 + 4;
    uVar3 = uVar3 - 1;
  } while (uVar3 != 0);
  return;
}



/* FUN_1000_27fc at 1000:27fc */

undefined2 __cdecl16near FUN_1000_27fc(void)

{
  undefined2 uStack_1a;
  
  return uStack_1a;
}



/* FUN_1000_298d at 1000:298d */

/* WARNING: Unable to track spacebase fully for stack */

int __cdecl16far FUN_1000_298d(void)

{
  byte *pbVar1;
  int iVar2;
  undefined2 uVar3;
  undefined4 uVar4;
  undefined2 in_AX;
  undefined1 *unaff_SI;
  undefined1 *unaff_DI;
  int iVar5;
  undefined2 uVar6;
  undefined2 uVar7;
  undefined2 uVar8;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  
  uVar4 = *(undefined4 *)0x4;
  iVar5 = (int)((ulong)uVar4 >> 0x10);
  pbVar1 = (byte *)0x47f6;
  *pbVar1 = *pbVar1 | (byte)((uint)in_AX >> 8);
  if (*pbVar1 == 0) {
    if (*(int *)0xbb != 0) {
      FUN_1000_36b6(*(int *)0xbb);
    }
    *unaff_DI = *unaff_SI;
    *(char *)0x68e = *(char *)0x68e + 'L';
    return iVar5;
  }
  uVar4 = *(undefined4 *)((int)uVar4 + 4);
  uVar6 = (undefined2)((ulong)uVar4 >> 0x10);
  iVar5 = (int)uVar4;
  if (*(int *)(iVar5 + 0x18) != 0) {
    iVar2 = *(int *)(iVar5 + 0x1c);
    FUN_1000_32b9(*(int *)(iVar5 + 0x18),*(undefined2 *)(iVar5 + 0x40),*(undefined2 *)(iVar5 + 0x42)
                 );
    iVar2 = iVar2 + *(int *)(iVar5 + 4);
    uVar6 = *(undefined2 *)(iVar5 + 6);
    uVar4 = *(undefined4 *)((int)*(undefined4 *)0x4 + 4);
    uVar7 = (undefined2)((ulong)uVar4 >> 0x10);
    iVar5 = (int)uVar4;
    if (*(int *)(iVar5 + 0x20) != 0) {
      FUN_1000_32b9(*(int *)(iVar5 + 0x20),*(undefined2 *)(iVar5 + 0x40),
                    *(undefined2 *)(iVar5 + 0x42));
      uVar3 = *(undefined2 *)(iVar5 + 6);
      uVar4 = *(undefined4 *)((int)*(undefined4 *)0x4 + 4);
      uVar8 = (undefined2)((ulong)uVar4 >> 0x10);
      iVar5 = *(int *)(iVar5 + 4) + *(int *)((int)uVar4 + 0x24);
      FUN_1000_3350();
      uVar7 = *(undefined2 *)0xb8;
      *unaff_DI = *unaff_SI;
      (&stack0x0001)[(int)unaff_DI] = (&stack0x0001)[(int)unaff_DI] + (char)((uint)uVar7 >> 8);
      *(undefined2 *)(iVar5 + -2) = uVar6;
      *(int *)(iVar5 + -4) = iVar2;
      return iVar2;
    }
  }
  iVar5 = FUN_1000_352d();
  return iVar5;
}



/* FUN_1000_2a58 at 1000:2a58 */

void __cdecl16near FUN_1000_2a58(void)

{
  uint *puVar1;
  undefined2 in_DX;
  int in_BX;
  int unaff_DI;
  undefined2 unaff_DS;
  
  puVar1 = (uint *)(in_BX + unaff_DI);
  *puVar1 = *puVar1 >> 1 | (uint)((*puVar1 & 1) != 0) << 0xf;
  FUN_1000_2a93(&stack0x0043,in_DX);
  FUN_1000_2bd4(&stack0x0043,in_DX);
  FUN_1000_2c4c(&stack0x0043,in_DX);
  FUN_1000_3325(&stack0x0043,in_DX);
  return;
}



/* FUN_1000_2a93 at 1000:2a93 */

void FUN_1000_2a93(undefined4 param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  undefined2 uVar3;
  byte *pbVar4;
  undefined2 in_CX;
  int iVar5;
  undefined2 extraout_DX;
  int iVar6;
  int in_BX;
  int iVar7;
  byte *pbVar8;
  int unaff_DI;
  byte *pbVar9;
  undefined2 unaff_DS;
  undefined4 uVar10;
  undefined4 uVar11;
  long lVar12;
  int in_stack_000000de;
  int in_stack_000000e6;
  int in_stack_000000ee;
  int in_stack_000000f0;
  int in_stack_000000f6;
  int in_stack_000000f8;
  int in_stack_00000106;
  int in_stack_00000108;
  int in_stack_0000010a;
  int in_stack_0000010c;
  int in_stack_00000116;
  undefined2 in_stack_00000118;
  int in_stack_0000011a;
  undefined2 in_stack_0000011c;
  int in_stack_0000011e;
  undefined2 in_stack_00000120;
  int in_stack_00000126;
  undefined2 in_stack_00000128;
  
  FUN_1000_36e2(*(undefined2 *)0xc5,*(undefined2 *)0xc7,*(undefined2 *)0xbb);
  LOCK();
  *(undefined2 *)(in_BX + unaff_DI) = in_CX;
  UNLOCK();
  *(undefined1 *)(unaff_DI + 3) = 0;
  FUN_1000_36e2();
  uVar10 = FUN_1000_3436();
  iVar6 = (int)((ulong)uVar10 >> 0x10);
  iVar5 = (int)uVar10 - in_stack_000000ee;
  in_stack_000000ee = in_stack_000000ee + iVar5;
  in_stack_000000f6 = in_stack_000000f6 + iVar5;
  in_stack_00000106 = in_stack_00000106 + iVar5;
  in_stack_0000010a = in_stack_0000010a + iVar5;
  uVar3 = *(undefined2 *)0xbb;
  in_stack_000000f0 = iVar6;
  in_stack_000000f8 = iVar6;
  in_stack_00000108 = iVar6;
  in_stack_0000010c = iVar6;
  iVar5 = func_0x000136c8(in_stack_000000e6 - in_stack_000000de);
  if (iVar5 != 0) {
    uVar11 = FUN_1000_3436(in_stack_000000de);
    in_stack_00000118 = (undefined2)((ulong)uVar11 >> 0x10);
    iVar5 = (int)uVar11 - in_stack_00000116;
    in_stack_00000116 = in_stack_00000116 + iVar5;
    in_stack_0000011a = in_stack_0000011a + iVar5;
    in_stack_0000011e = in_stack_0000011e + iVar5;
    in_stack_00000126 = in_stack_00000126 + iVar5;
    in_stack_0000011c = in_stack_00000118;
    in_stack_00000120 = in_stack_00000118;
    in_stack_00000128 = in_stack_00000118;
    iVar5 = func_0x000136c8(in_stack_000000de,uVar11,*(undefined2 *)0xbb);
    if (iVar5 != 0) {
      iVar5 = (int)((ulong)param_1 >> 0x10);
      iVar7 = (int)param_1;
      *(int *)(iVar7 + 4) = (int)&stack0x00ae;
      *(undefined2 *)(iVar7 + 6) = extraout_DX;
      FUN_1000_2bb8(&stack0x00ae,extraout_DX,iVar7,iVar5);
      lVar12 = func_0x000132ed(iVar7 + 8);
      if (lVar12 == 0) {
        return;
      }
      goto LAB_1000_2bb0;
    }
  }
  iVar5 = 0x1000;
  FUN_1000_3513();
LAB_1000_2bb0:
  FUN_1000_3513(0x1000);
  pbVar4 = (byte *)*(undefined4 *)(iVar5 + 0x58);
  pbVar8 = (byte *)pbVar4;
  pbVar9 = (byte *)(iVar6 + 8);
  for (iVar5 = *pbVar4 + 1; iVar5 != 0; iVar5 = iVar5 + -1) {
    pbVar2 = pbVar9;
    pbVar9 = pbVar9 + 1;
    pbVar1 = pbVar8;
    pbVar8 = pbVar8 + 1;
    *pbVar2 = *pbVar1;
  }
  return;
}



/* FUN_1000_2bb8 at 1000:2bb8 */

void FUN_1000_2bb8(undefined4 param_1,undefined4 param_2)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  int iVar4;
  byte *pbVar5;
  byte *pbVar6;
  
  pbVar3 = (byte *)*(undefined4 *)((int)param_1 + 0x58);
  pbVar5 = (byte *)pbVar3;
  pbVar6 = (byte *)((int)param_2 + 8);
  for (iVar4 = *pbVar3 + 1; iVar4 != 0; iVar4 = iVar4 + -1) {
    pbVar2 = pbVar6;
    pbVar6 = pbVar6 + 1;
    pbVar1 = pbVar5;
    pbVar5 = pbVar5 + 1;
    *pbVar2 = *pbVar1;
  }
  return;
}



/* FUN_1000_2bd4 at 1000:2bd4 */

void FUN_1000_2bd4(undefined4 param_1)

{
  int iVar1;
  code *pcVar2;
  undefined4 uVar3;
  int iVar4;
  undefined2 uVar5;
  undefined2 uVar6;
  
  uVar3 = *(undefined4 *)((int)param_1 + 4);
  uVar5 = (undefined2)((ulong)uVar3 >> 0x10);
  iVar4 = (int)uVar3;
  iVar1 = *(int *)(iVar4 + 0x44);
  if (iVar1 != 0) {
    uVar3 = *(undefined4 *)(iVar4 + 0x40);
    uVar6 = (undefined2)((ulong)uVar3 >> 0x10);
    uVar5 = (undefined2)uVar3;
    pcVar2 = (code *)swi(1);
    (*pcVar2)(uVar5,uVar6,iVar1,uVar5,uVar6,1);
    return;
  }
  return;
}



/* FUN_1000_2c0f at 1000:2c0f */

void FUN_1000_2c0f(int param_1,undefined2 param_2,undefined2 param_3)

{
  int *in_BX;
  int iVar1;
  undefined2 unaff_ES;
  undefined2 unaff_DS;
  
  FUN_1000_32b9(param_1,param_2,param_3);
  iVar1 = 0x12;
  for (param_1 = param_1 + -1; param_1 != 0; param_1 = param_1 + -1) {
    iVar1 = iVar1 + 8;
  }
  *(int *)(iVar1 + 4) = *(int *)(iVar1 + 4) + 3;
  *(uint *)(iVar1 + 4) = *(uint *)(iVar1 + 4) & 0xfffc;
  in_BX[2] = *(int *)(iVar1 + 4);
  in_BX[3] = *(int *)(iVar1 + 6);
  *(int *)(iVar1 + 4) = *(int *)(iVar1 + 4) + *in_BX;
  return;
}



/* FUN_1000_2c4c at 1000:2c4c */

void FUN_1000_2c4c(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined2 uVar5;
  undefined2 uVar6;
  undefined2 local_a;
  
  uVar2 = *(undefined4 *)((int)param_1 + 4);
  uVar5 = (undefined2)((ulong)uVar2 >> 0x10);
  iVar4 = (int)uVar2;
  iVar3 = *(int *)(iVar4 + 0x44);
  if (iVar3 != 0) {
    iVar1 = *(int *)(iVar4 + 0x48);
    uVar6 = (undefined2)((ulong)*(undefined4 *)(iVar4 + 0x40) >> 0x10);
    local_a = (int)*(undefined4 *)(iVar4 + 0x40);
    do {
      FUN_1000_2ca7(iVar1 + (*(int *)(local_a + 0xc) + -1) * 8,uVar6,local_a,uVar6,iVar4,uVar5);
      local_a = local_a + 0x18;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  return;
}



/* FUN_1000_2ca7 at 1000:2ca7 */

void FUN_1000_2ca7(uint *param_1,int *param_2,undefined4 param_3)

{
  undefined1 *puVar1;
  int iVar2;
  code *pcVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  int iVar8;
  undefined1 *puVar9;
  undefined2 uVar10;
  undefined2 uVar11;
  undefined2 unaff_DS;
  bool bVar12;
  
  uVar10 = (undefined2)((ulong)param_2 >> 0x10);
  piVar7 = (int *)param_2;
  puVar9 = (undefined1 *)piVar7[2];
  iVar2 = piVar7[3];
  iVar4 = *param_2;
  if (piVar7[8] != 0) {
    uVar6 = *param_1;
    uVar5 = ((uint *)param_1)[1];
    uVar11 = (undefined2)((ulong)param_3 >> 0x10);
    iVar8 = (int)param_3;
    iVar4 = *(int *)(iVar8 + 0x2c);
    do {
      bVar12 = (int)uVar6 < 0;
      uVar6 = uVar6 * 2;
      uVar5 = uVar5 << 1 | (uint)bVar12;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    FUN_1000_36e2(uVar6 + *(uint *)(iVar8 + -0x7cd2),
                  uVar5 + *(int *)(iVar8 + 0x82) + (uint)CARRY2(uVar6,*(uint *)(iVar8 + -0x7cd2)),
                  *(undefined2 *)0xbb,piVar7[8]);
    pcVar3 = (code *)swi(1);
    (*pcVar3)(puVar9,iVar2,*(undefined2 *)0xbb);
    return;
  }
  if (iVar4 != 0) {
    for (; iVar4 != 0; iVar4 = iVar4 + -1) {
      puVar1 = puVar9;
      puVar9 = puVar9 + 1;
      *puVar1 = 0;
    }
  }
  return;
}



/* FUN_1000_2d3a at 1000:2d3a */

void __cdecl16near FUN_1000_2d3a(void)

{
  int iVar1;
  int iVar2;
  undefined2 unaff_DS;
  undefined2 uVar3;
  undefined2 local_4;
  
  FUN_1000_3630(0x302,0x1000,*(undefined2 *)0xc9);
  uVar3 = 0x1000;
  iVar1 = func_0x0001368a(0x45a);
  if (iVar1 != 0) {
    *(int *)0xc9 = iVar1;
    FUN_1000_3630(0x3cc,0x1000);
    iVar2 = 0x12;
    local_4 = 1;
    iVar1 = *(int *)0x10;
    do {
      FUN_1000_2d92(*(undefined2 *)(iVar2 + 6),local_4);
      local_4 = local_4 + 1;
      iVar2 = iVar2 + 8;
      iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    func_0x000136b6(*(undefined2 *)0xc9);
  }
  *(undefined2 *)0xc9 = uVar3;
  return;
}



/* FUN_1000_2d92 at 1000:2d92 */

void FUN_1000_2d92(int param_1,uint param_2)

{
  byte *pbVar1;
  undefined4 *puVar2;
  uint in_AX;
  int iVar3;
  byte *pbVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined2 uVar7;
  undefined2 uVar8;
  undefined2 unaff_DS;
  undefined4 uVar9;
  undefined2 uVar10;
  
  uVar7 = (undefined2)((ulong)*(undefined4 *)0x4 >> 0x10);
  puVar5 = (undefined4 *)(undefined4 *)*(undefined4 *)0x4;
  while( true ) {
    pbVar1 = (byte *)0xc7f6;
    *pbVar1 = *pbVar1 | (byte)(in_AX >> 8);
    if (*pbVar1 == 0) break;
    uVar8 = (undefined2)((ulong)puVar5[1] >> 0x10);
    iVar6 = (int)puVar5[1];
    in_AX = *(uint *)(iVar6 + 0x44);
    if (param_2 <= in_AX) {
      unaff_DS = (undefined2)((ulong)*(undefined4 *)(iVar6 + 0x58) >> 0x10);
      pbVar4 = (byte *)(byte *)*(undefined4 *)(iVar6 + 0x58);
      while( true ) {
        if (*pbVar4 == 0) break;
        if (*(int *)(pbVar4 + *pbVar4 + 1) != 0) {
          uVar9 = FUN_1000_31fb(*(int *)(pbVar4 + *pbVar4 + 1),*(undefined2 *)(iVar6 + 0x5c),
                                *(undefined2 *)(iVar6 + 0x5e),*(undefined2 *)(iVar6 + 0x40),
                                *(undefined2 *)(iVar6 + 0x42));
          iVar3 = (int)((ulong)uVar9 >> 0x10);
          if (iVar3 == param_1) {
            uVar10 = 0x1000;
            FUN_1000_3630(0x450,0x1000,iVar3,(int)uVar9);
            FUN_1000_35c0(uVar10);
            uVar10 = 0x1000;
            FUN_1000_3630(0x458,0x1000);
            FUN_1000_35c0(uVar10);
            FUN_1000_3630(0x450,0x1000);
            func_0x00013613(pbVar4,unaff_DS);
            FUN_1000_364c();
          }
        }
        in_AX = (uint)*pbVar4;
        pbVar4 = pbVar4 + in_AX + 3;
      }
    }
    puVar2 = puVar5;
    uVar7 = (undefined2)((ulong)*puVar2 >> 0x10);
    puVar5 = (undefined4 *)(undefined4 *)*puVar2;
  }
  return;
}



/* FUN_1000_2e41 at 1000:2e41 */

void FUN_1000_2e41(undefined4 param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined2 uVar4;
  undefined2 local_6;
  
  uVar4 = (undefined2)((ulong)param_1 >> 0x10);
  iVar3 = (int)param_1;
  iVar2 = *(int *)(iVar3 + 0x44);
  uVar1 = *(undefined4 *)(iVar3 + 0x40);
  local_6 = (int)uVar1;
  do {
    FUN_1000_2e75(local_6,(int)((ulong)uVar1 >> 0x10),iVar3,uVar4);
    local_6 = local_6 + 0x18;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  return;
}



/* FUN_1000_2e75 at 1000:2e75 */

void FUN_1000_2e75(undefined4 param_1,undefined4 param_2)

{
  undefined2 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined2 uVar6;
  undefined2 uVar7;
  undefined2 local_a;
  undefined2 local_6;
  
  uVar6 = (undefined2)((ulong)param_1 >> 0x10);
  iVar4 = (int)param_1;
  iVar3 = *(int *)(iVar4 + 0x10);
  if (iVar3 != 0) {
    local_6 = *(int *)(iVar4 + 4);
    uVar1 = *(undefined2 *)(iVar4 + 6);
    uVar7 = (undefined2)((ulong)param_2 >> 0x10);
    iVar5 = (int)param_2;
    uVar2 = *(undefined4 *)(iVar5 + 0x68);
    local_a = (*(int *)(iVar4 + 0xc) + -1) * 4 + (int)uVar2;
    do {
      FUN_1000_2ed7(local_6,uVar1,local_a,(int)((ulong)uVar2 >> 0x10),iVar5,uVar7);
      local_6 = local_6 + *(int *)(iVar5 + 0x28);
      local_a = local_a + 4;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  return;
}



/* FUN_1000_2ed7 at 1000:2ed7 */

void FUN_1000_2ed7(undefined2 param_1,undefined2 param_2,int *param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  uint local_4;
  
  uVar3 = (undefined2)((ulong)param_4 >> 0x10);
  iVar1 = *(int *)((int)param_4 + 0x6c);
  uVar4 = (undefined2)((ulong)param_3 >> 0x10);
  iVar2 = ((int *)param_3)[2];
  for (local_4 = *param_3 + iVar1; local_4 < (uint)(iVar2 + iVar1);
      local_4 = FUN_1000_2f1f(param_1,param_2,local_4,uVar4,(int)param_4,uVar3)) {
  }
  return;
}



/* FUN_1000_2f1f at 1000:2f1f */

/* WARNING (jumptable): Unable to track spacebase fully for stack */

undefined2 FUN_1000_2f1f(undefined2 param_1,undefined2 param_2,byte *param_3)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  code *pcVar4;
  uint *puVar5;
  uint uVar6;
  uint uVar7;
  int in_CX;
  undefined2 uVar8;
  byte bVar9;
  undefined2 in_BX;
  uint *puVar10;
  undefined2 unaff_ES;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  undefined2 uVar11;
  bool bVar12;
  undefined4 uVar13;
  undefined4 in_stack_0000004c;
  uint auStack_14 [2];
  uint *local_10 [2];
  uint local_c;
  byte local_a [2];
  uint uStack_8;
  byte abStack_6 [2];
  uint uStack_4;
  
  uVar11 = (undefined2)((ulong)param_3 >> 0x10);
  local_a[1] = *param_3;
  puVar10 = (uint *)((byte *)param_3 + 2);
  local_a[0] = ((byte *)param_3)[1];
  if ((*param_3 & 0x20) == 0) {
    in_stack_0000004c._1_2_ = 0x4843;
    local_10[0] = puVar10;
    local_10[1] = (uint *)uVar11;
    uVar6 = *puVar10;
  }
  else {
    uVar6 = (uint)(byte)*puVar10;
    local_c = uVar6;
  }
  uVar11 = 0xebad;
  iVar3 = *(int *)0xcfdf;
  *(uint *)(local_a + iVar3 + 6) = uVar6;
  uVar6 = 0;
  uVar8 = 0;
  bVar9 = local_a[iVar3] & 3;
  uVar7 = CONCAT11((char)((uint)in_BX >> 8),local_a[iVar3]) & 0xff03;
  if (bVar9 == 0) {
    pcVar4 = (code *)swi(1);
    uVar11 = (*pcVar4)(*(undefined2 *)(uVar7 + 0x40));
    return uVar11;
  }
  if (in_CX == 1) {
    bVar12 = bVar9 < 2;
    if (bVar9 != 2) {
      bVar12 = false;
      if ((local_a[iVar3] & 0x80) == 0) {
        bVar12 = false;
        if ((local_a[iVar3] & 0x10) == 0) {
          uVar11 = 0xebaf;
          uVar6 = *(uint *)0xebad;
        }
        else {
          uVar6 = *(uint *)0xebad;
          uVar11 = 0xebb1;
          uVar8 = *(undefined2 *)0xebaf;
        }
      }
      else {
        uVar11 = 0xebae;
        uVar6 = (uint)*(byte *)0xebad;
      }
    }
    *(uint *)(local_a + iVar3 + 2) = uVar6;
    *(undefined2 *)(local_a + iVar3 + 4) = uVar8;
    *(undefined2 *)((int)&param_3 + iVar3) = uVar11;
                    /* WARNING: Could not recover jumptable at 0x00012fa0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar11 = (*(code *)*(undefined2 *)
                        ((local_a[(((iVar3 + -2) - *(int *)0x93a0) - (uint)bVar12) + 2] & 3) * 2 +
                        0x479))();
    return uVar11;
  }
  *(uint *)(local_a + iVar3 + 2) = uVar7;
  *(undefined2 *)(local_a + iVar3 + 4) = unaff_ES;
  uVar13 = FUN_1000_30cc(uVar7,unaff_ES,*(undefined2 *)(local_a + iVar3 + 6),
                         *(undefined2 *)(&stack0x000a + iVar3),*(undefined2 *)(&stack0x000c + iVar3)
                        );
  *(undefined2 *)((int)auStack_14 + iVar3) = (int)uVar13;
  *(undefined2 *)((int)auStack_14 + iVar3 + 2) = (int)((ulong)uVar13 >> 0x10);
  puVar5 = (uint *)*(undefined4 *)((int)&param_3 + iVar3);
  uVar11 = (undefined2)((ulong)puVar5 >> 0x10);
  puVar10 = (uint *)puVar5;
  if ((local_a[iVar3] & 4) != 0) {
    uVar6 = 0;
    if ((local_a[iVar3] & 0x20) == 0) {
      uVar7 = *puVar5;
    }
    else {
      puVar10 = puVar10 + 1;
      uVar7 = *puVar5;
      uVar6 = *puVar10;
    }
    puVar10 = puVar10 + 1;
    puVar5 = (uint *)((int)auStack_14 + iVar3);
    uVar2 = *puVar5;
    *puVar5 = *puVar5 + uVar7;
    piVar1 = (int *)((int)auStack_14 + iVar3 + 2);
    *piVar1 = *piVar1 + uVar6 + (uint)CARRY2(uVar2,uVar7);
  }
  bVar12 = false;
  if ((local_a[iVar3 + 1] & 0x20) != 0) {
    *(undefined2 *)((int)local_10 + iVar3) = puVar10;
    *(undefined2 *)((int)local_10 + iVar3 + 2) = uVar11;
    bVar12 = CARRY2((uint)puVar10,*(int *)(local_a + iVar3 + -2) * 2);
    puVar10 = puVar10 + *(int *)(local_a + iVar3 + -2);
  }
  *(undefined2 *)((int)&param_3 + iVar3) = puVar10;
  iVar3 = ((iVar3 + -2) - *(int *)0x93a0) - (uint)bVar12;
  if (*(char *)0xba == '\x1f') {
                    /* WARNING: Could not recover jumptable at 0x00013073. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar11 = (*(code *)*(undefined2 *)((local_a[iVar3 + 3] & 0xf) * 2 + 0x467))();
    return uVar11;
  }
  return *(undefined2 *)((int)&param_3 + iVar3 + 2);
}



/* FUN_1000_30cc at 1000:30cc */

void FUN_1000_30cc(undefined2 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
                  undefined2 param_5)

{
  char cVar1;
  char *unaff_DI;
  undefined2 unaff_ES;
  
  cVar1 = func_0x000132ce(param_3,param_4,param_5);
  *unaff_DI = cVar1 + '0';
  return;
}



/* FUN_1000_3199 at 1000:3199 */

byte * FUN_1000_3199(void)

{
  int iVar1;
  undefined2 in_DX;
  int unaff_BP;
  byte *pbVar2;
  undefined2 unaff_SS;
  undefined2 uVar3;
  
  in(in_DX);
  uVar3 = (undefined2)((ulong)*(undefined4 *)(unaff_BP + 6) >> 0x10);
  pbVar2 = (byte *)(byte *)*(undefined4 *)(unaff_BP + 6);
  for (iVar1 = *(int *)(unaff_BP + 4); iVar1 != 0; iVar1 = iVar1 + -1) {
    pbVar2 = pbVar2 + *pbVar2 + 1;
  }
  return (byte *)CONCAT22(uVar3,pbVar2);
}



/* FUN_1000_31b3 at 1000:31b3 */

undefined2 FUN_1000_31b3(char *param_1,char *param_2)

{
  char *pcVar1;
  char *pcVar2;
  int iVar3;
  uint in_CX;
  char *pcVar4;
  char *pcVar5;
  undefined2 uVar6;
  undefined2 unaff_SS;
  undefined2 uVar7;
  bool bVar8;
  
  uVar7 = (undefined2)((ulong)param_1 >> 0x10);
  uVar6 = (undefined2)((ulong)param_2 >> 0x10);
  pcVar5 = (char *)param_2;
  do {
    if ((in_CX & 0xff) == 0) {
      iVar3 = -*(int *)0x93a0;
      FUN_1000_3540(*(undefined2 *)((int)&param_1 + iVar3),
                    *(undefined2 *)((int)&param_1 + iVar3 + 2),*(undefined2 *)(&stack0x000a + iVar3)
                    ,*(undefined2 *)(&stack0x000c + iVar3),*(undefined2 *)(&stack0x000e + iVar3),
                    0x2e8,0x1000);
      return 0;
    }
    in_CX = (in_CX & 0xff) + 1;
    bVar8 = in_CX == 0;
    pcVar4 = (char *)param_1;
    do {
      if (in_CX == 0) break;
      in_CX = in_CX - 1;
      pcVar2 = pcVar5;
      pcVar5 = pcVar5 + 1;
      pcVar1 = pcVar4;
      pcVar4 = pcVar4 + 1;
      bVar8 = *pcVar1 == *pcVar2;
    } while (bVar8);
    if (bVar8) {
      return *(undefined2 *)pcVar5;
    }
    pcVar5 = pcVar5 + in_CX + 2;
  } while( true );
}



/* FUN_1000_3271 at 1000:3271 */

/* WARNING: Control flow encountered bad instruction data */

void FUN_1000_3271(void)

{
  byte *pbVar1;
  undefined2 in_DX;
  int in_BX;
  int unaff_BP;
  int unaff_SI;
  undefined2 unaff_ES;
  undefined2 unaff_SS;
  
  *(undefined2 *)(unaff_BP + unaff_SI) = unaff_ES;
  in(in_DX);
  pbVar1 = (byte *)(in_BX + (int)*(undefined4 *)(unaff_BP + 4) + 0xfe);
  *pbVar1 = *pbVar1 << 4 | *pbVar1 >> 4;
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* FUN_1000_32b9 at 1000:32b9 */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Instruction at (ram,0x00013352) overlaps instruction at (ram,0x00013350)
    */
/* WARNING: Unable to track spacebase fully for stack */

uint __cdecl16near FUN_1000_32b9(void)

{
  undefined4 *puVar1;
  byte *pbVar2;
  char *pcVar3;
  char *pcVar4;
  char cVar5;
  code *pcVar6;
  int *piVar7;
  uint uVar8;
  byte bVar9;
  uint in_AX;
  int iVar10;
  undefined1 uVar12;
  char extraout_AH;
  int iVar11;
  int in_CX;
  uint uVar13;
  undefined2 in_DX;
  undefined2 uVar14;
  undefined2 extraout_DX;
  undefined2 extraout_DX_00;
  undefined2 in_BX;
  int iVar15;
  undefined4 *puVar16;
  undefined1 *puVar17;
  int unaff_BP;
  int iVar18;
  int *unaff_SI;
  char *pcVar19;
  int unaff_DI;
  char *pcVar20;
  int unaff_ES;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  undefined2 uVar21;
  byte in_CF;
  bool bVar22;
  int *in_stack_00000000;
  char acStack_c [2];
  undefined1 auStack_a [2];
  undefined2 uStack_8;
  
  iVar10 = unaff_BP - *(int *)0xc4ec;
  iVar18 = iVar10 - (uint)in_CF;
  if (iVar18 != 0 &&
      (SBORROW2(unaff_BP,*(int *)0xc4ec) != SBORROW2(iVar10,(uint)in_CF)) == iVar18 < 0) {
    in_AX = CONCAT11((char)(in_AX >> 8),(char)in_AX + 'I');
    unaff_SI = in_stack_00000000;
  }
  if (in_CX != 0) {
    return in_AX;
  }
  uVar13 = 0xffff;
  iVar15 = CONCAT11((char)((uint)in_BX >> 8),(byte)in_BX | (byte)in_AX);
  cVar5 = (char)in_DX - (char)(in_AX >> 8);
  *(char *)(unaff_DI + -0x75) = *(char *)(unaff_DI + -0x75) + cVar5;
  in(CONCAT11((char)((uint)in_DX >> 8),cVar5));
  uVar21 = (undefined2)((ulong)*(undefined4 *)unaff_SI >> 0x10);
  uVar14 = 0;
  iVar10 = (int)*(undefined4 *)unaff_SI + -1;
  bVar9 = (byte)iVar10;
  uVar12 = (undefined1)((uint)iVar10 >> 8);
  iVar10 = CONCAT11(uVar12,bVar9 + 0x5e);
  if (0xa1 >= bVar9 && (byte)(bVar9 + 0x5e) != '\0') goto LAB_1000_3331;
  if (0xa1 < bVar9) {
    iVar11 = CONCAT11(uVar12,bVar9 + 100);
    uStack_8 = iVar10;
  }
  else {
    _auStack_a = CONCAT13(uVar12,CONCAT21(iVar10,auStack_a[0]));
    if (!SCARRY1(bVar9,'^')) {
      *(undefined2 *)(iVar10 + -4) = 0x32e6;
      FUN_1000_3199();
      puVar17 = (undefined1 *)(iVar10 + 2);
      *(undefined2 *)(iVar10 + 2) = 0x32e9;
      func_0x00013694();
      *(int *)(puVar17 + -2) = unaff_ES;
      *(char *)(unaff_DI + -0x75) = *(char *)(unaff_DI + -0x75) + (char)extraout_DX;
      in(extraout_DX);
      *(undefined2 *)(puVar17 + -4) = uVar21;
      uVar21 = (undefined2)((ulong)*(undefined4 *)(iVar18 + 4) >> 0x10);
      pcVar19 = (char *)(char *)*(undefined4 *)(iVar18 + 4);
      *(char *)0x4c4 = *(char *)0x4c4 + extraout_AH;
      uVar14 = (undefined2)((ulong)*(undefined4 *)(iVar18 + 0x59) >> 0x10);
      puVar16 = *(undefined4 **)(puVar17 + -4);
      uVar8 = *(uint *)(puVar17 + -2);
      uVar13 = uVar13 & 0xff;
      do {
        bVar22 = (*(byte *)((int)puVar16 + 5) & 2) == 0;
        if (!bVar22) {
          uVar13 = FUN_1000_333c();
          return uVar13;
        }
        pcVar20 = (char *)((int)puVar16 + 9);
        *(uint *)(puVar17 + -2) = uVar13;
        *(char **)(puVar17 + -4) = pcVar19;
        do {
          if (uVar13 == 0) break;
          uVar13 = uVar13 - 1;
          pcVar4 = pcVar20;
          pcVar20 = pcVar20 + 1;
          pcVar3 = pcVar19;
          pcVar19 = pcVar19 + 1;
          bVar22 = *pcVar3 == *pcVar4;
        } while (bVar22);
        pcVar19 = *(char **)(puVar17 + -4);
        uVar13 = *(uint *)(puVar17 + -2);
        if (bVar22) {
          *(char *)((int)puVar16 + (int)pcVar19) = *(char *)((int)puVar16 + (int)pcVar19) + -0x18;
          return uVar8;
        }
        puVar1 = puVar16;
        uVar14 = (undefined2)((ulong)*puVar1 >> 0x10);
        puVar16 = (undefined4 *)(undefined4 *)*puVar1;
      } while( true );
    }
    while (iVar10 != 0 || unaff_SI[1] != 0) {
LAB_1000_3331:
      piVar7 = *(int **)unaff_SI;
      uVar21 = (undefined2)((ulong)piVar7 >> 0x10);
      unaff_SI = (int *)piVar7;
      iVar10 = *piVar7;
    }
    while( true ) {
      iVar18 = stack0xfff7;
      *(undefined1 **)unaff_DI = auStack_a + 1;
      iVar10 = *(int *)((int)unaff_SI + -0x77) + 0x458c;
      bVar9 = (byte)((uint)iVar10 >> 8);
      iVar11 = CONCAT11(bVar9,(char)iVar10 + (char)uVar14);
      unaff_ES = (int)((ulong)*(undefined4 *)0x4 >> 0x10);
      unaff_DI = (int)*(undefined4 *)0x4;
      pbVar2 = (byte *)0xc7f6;
      *pbVar2 = *pbVar2 | bVar9;
      if (*pbVar2 != 0) break;
      _auStack_a = CONCAT22(unaff_ES,0x3372);
      uVar14 = func_0x000171b2();
      *(byte *)0x1f05 = *(byte *)0x1f05 | (byte)((uint)uVar14 >> 8);
      *(undefined2 *)0x2608 = uVar14;
      _auStack_a = CONCAT22(0x3387,auStack_a);
                    /* WARNING: Call to offcut address within same function */
      func_0x000133b2();
      uVar14 = extraout_DX_00;
    }
    uStack_8 = unaff_ES;
  }
  bVar22 = iVar11 == 0x47d;
  if (bVar22) {
    _auStack_a = CONCAT22(uStack_8,0x3367);
                    /* WARNING: Call to offcut address within same function */
    func_0x000133b2();
    if (bVar22) {
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
    acStack_c[unaff_DI] =
         acStack_c[unaff_DI] >> ((byte)*(undefined2 *)(iVar18 + unaff_DI + -0x1713) & 0x1f);
    uStack_8 = unaff_ES;
    if (CARRY1((byte)*(undefined2 *)0x3b02,*(byte *)(iVar15 + (int)unaff_SI))) {
      return (uint)(byte)((byte)*(undefined2 *)0x3b02 + *(byte *)(iVar15 + (int)unaff_SI));
    }
  }
  pcVar6 = (code *)swi(0x21);
  uVar13 = (*pcVar6)();
  return uVar13;
}



/* FUN_1000_333c at 1000:333c */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Instruction at (ram,0x00013352) overlaps instruction at (ram,0x00013350)
    */

undefined2 FUN_1000_333c(void)

{
  char *pcVar1;
  byte *pbVar2;
  code *pcVar3;
  byte bVar4;
  int iVar5;
  undefined2 uVar6;
  char in_DL;
  char extraout_DL;
  int in_BX;
  int unaff_SI;
  int unaff_DI;
  undefined2 uVar7;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  bool bVar8;
  undefined3 in_stack_00000000;
  undefined2 uStack_4;
  undefined2 uStack_2;
  
  while( true ) {
    *(BADSPACEBASE **)unaff_DI = register0x00000010;
    iVar5 = *(int *)(unaff_SI + -0x77) + 0x458c;
    bVar4 = (byte)((uint)iVar5 >> 8);
    uVar7 = (undefined2)((ulong)*(undefined4 *)0x4 >> 0x10);
    unaff_DI = (int)*(undefined4 *)0x4;
    pbVar2 = (byte *)0xc7f6;
    *pbVar2 = *pbVar2 | bVar4;
    if (*pbVar2 != 0) break;
    in_stack_00000000 = CONCAT21(uVar7,(char)in_stack_00000000);
    uVar6 = func_0x000171b2();
    *(byte *)0x1f05 = *(byte *)0x1f05 | (byte)((uint)uVar6 >> 8);
    *(undefined2 *)0x2608 = uVar6;
                    /* WARNING: Call to offcut address within same function */
    uStack_4 = 0x3387;
    uStack_2 = uVar7;
    func_0x000133b2();
    in_DL = extraout_DL;
  }
  bVar8 = CONCAT11(bVar4,(char)iVar5 + in_DL) == 0x47d;
  if (bVar8) {
                    /* WARNING: Call to offcut address within same function */
    func_0x000133b2();
    if (bVar8) {
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
    pcVar1 = (char *)((int)&uStack_4 + unaff_DI + 1);
    *pcVar1 = *pcVar1 >> ((byte)*(undefined2 *)((int)in_stack_00000000 + unaff_DI + -0x1713) & 0x1f)
    ;
    bVar4 = (byte)*(undefined2 *)0x3b02;
    if (CARRY1(bVar4,*(byte *)(in_BX + unaff_SI))) {
      return CONCAT11((char)((uint)*(undefined2 *)0x3b02 >> 8),bVar4 + *(byte *)(in_BX + unaff_SI));
    }
  }
  pcVar3 = (code *)swi(0x21);
  uVar7 = (*pcVar3)();
  return uVar7;
}



/* FUN_1000_3350 at 1000:3350 */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Instruction at (ram,0x00013352) overlaps instruction at (ram,0x00013350)
    */

undefined2 FUN_1000_3350(void)

{
  byte *pbVar1;
  code *pcVar2;
  byte bVar3;
  int in_AX;
  undefined2 uVar4;
  int in_BX;
  int unaff_BP;
  int unaff_SI;
  int iVar5;
  int iVar6;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  bool bVar7;
  int in_stack_00000000;
  char acStack_6 [4];
  int iStack_2;
  
  while( true ) {
    iVar6 = (int)((ulong)*(undefined4 *)0x4 >> 0x10);
    iVar5 = (int)*(undefined4 *)0x4;
    pbVar1 = (byte *)0xc7f6;
    *pbVar1 = *pbVar1 | (byte)((uint)in_AX >> 8);
    iStack_2 = iVar6;
    if (*pbVar1 != 0) break;
    acStack_6[2] = 'r';
    acStack_6[3] = '3';
    uVar4 = func_0x000171b2();
    *(byte *)0x1f05 = *(byte *)0x1f05 | (byte)((uint)uVar4 >> 8);
    *(undefined2 *)0x2608 = uVar4;
                    /* WARNING: Call to offcut address within same function */
    iStack_2 = 0x3387;
    in_AX = func_0x000133b2();
    unaff_BP = in_stack_00000000;
    in_stack_00000000 = iVar6;
  }
  bVar7 = in_AX == 0x47d;
  if (bVar7) {
    acStack_6[2] = 'g';
    acStack_6[3] = '3';
                    /* WARNING: Call to offcut address within same function */
    func_0x000133b2();
    if (bVar7) {
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
    acStack_6[iVar5] =
         acStack_6[iVar5] >> ((byte)*(undefined2 *)(unaff_BP + iVar5 + -0x1713) & 0x1f);
    bVar3 = (byte)*(undefined2 *)0x3b02;
    if (CARRY1(bVar3,*(byte *)(in_BX + unaff_SI))) {
      return CONCAT11((char)((uint)*(undefined2 *)0x3b02 >> 8),bVar3 + *(byte *)(in_BX + unaff_SI));
    }
  }
  pcVar2 = (code *)swi(0x21);
  iStack_2 = iVar6;
  uVar4 = (*pcVar2)();
  return uVar4;
}



/* FUN_1000_3405 at 1000:3405 */

/* WARNING: Instruction at (ram,0x0001342c) overlaps instruction at (ram,0x0001342a)
    */

undefined1 FUN_1000_3405(void)

{
  undefined2 uVar1;
  undefined1 uVar2;
  char in_AL;
  int iVar3;
  char *unaff_SI;
  undefined2 unaff_DS;
  
  uVar1 = *(undefined2 *)0x36b4;
  iVar3 = -0x4a00;
  *unaff_SI = *unaff_SI + in_AL;
  FUN_136f_0073(uVar1);
  (unaff_SI + iVar3)[0] = -0x4c;
  uVar2 = DAT_1000_c25d;
  (unaff_SI + iVar3)[1] = 'N';
  unaff_SI[iVar3] = unaff_SI[iVar3] + '\x04';
  return uVar2;
}



/* FUN_1000_3436 at 1000:3436 */

void FUN_1000_3436(void)

{
  return;
}



/* FUN_1000_34bd at 1000:34bd */

/* WARNING: Instruction at (ram,0x000134fa) overlaps instruction at (ram,0x000134f8)
    */

void FUN_1000_34bd(void)

{
  undefined2 uVar1;
  uint uVar2;
  undefined2 in_DX;
  int in_BX;
  int unaff_BP;
  undefined4 *unaff_SI;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  
  uVar2 = *(int *)0x16b2 + 0xfU >> 4;
  *(int *)0xb4 = *(int *)0xb4 + uVar2;
  uVar1 = *(undefined2 *)0x67;
  *(uint *)0xc3b4 = uVar2;
  in(in_DX);
  uVar2 = (uint)((int)*unaff_SI + *(int *)(unaff_BP + 4)) >> 4;
  if (*(int *)(unaff_BP + 10) + uVar2 < *(uint *)(unaff_BP + 6)) {
    *(byte *)(in_BX + (int)unaff_SI) = *(byte *)(in_BX + (int)unaff_SI) | (byte)uVar2;
  }
  FUN_1000_352d(uVar1);
  return;
}



/* FUN_1000_3513 at 1000:3513 */

undefined2 __cdecl16far FUN_1000_3513(void)

{
  undefined2 in_DX;
  
  in(in_DX);
  return 0x2e8;
}



/* FUN_1000_352d at 1000:352d */

void FUN_1000_352d(void)

{
  FUN_1000_2629();
  return;
}



/* FUN_1000_3540 at 1000:3540 */

/* WARNING: Instruction at (ram,0x0001363a) overlaps instruction at (ram,0x00013639)
    */
/* WARNING: Unable to track spacebase fully for stack */
/* WARNING: Removing unreachable block (ram,0x00013601) */

char FUN_1000_3540(undefined2 param_1,int param_2,char **param_3,undefined2 param_4,
                  undefined2 param_5,undefined2 param_6)

{
  int *piVar1;
  byte *pbVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  code *pcVar5;
  int iVar6;
  byte bVar7;
  char cVar8;
  int iVar9;
  undefined1 uVar11;
  uint uVar10;
  int in_CX;
  int iVar12;
  char extraout_DL;
  undefined2 extraout_DX;
  undefined2 extraout_DX_00;
  undefined2 uVar13;
  undefined2 extraout_DX_01;
  undefined2 in_BX;
  int iVar14;
  char **ppcVar15;
  int unaff_SI;
  char *pcVar16;
  int *piVar17;
  char *pcVar18;
  char *pcVar19;
  int *unaff_DI;
  int *piVar20;
  undefined1 *puVar21;
  undefined1 *puVar22;
  undefined2 unaff_ES;
  char *pcVar23;
  undefined2 unaff_SS;
  char *unaff_DS;
  bool bVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  undefined2 uStack0016;
  undefined2 uStack0018;
  undefined2 uStack001a;
  undefined2 *in_stack_00000028;
  undefined4 in_stack_0000002e;
  int in_stack_00000032;
  undefined4 in_stack_00000046;
  char *apcStack_22 [2];
  undefined2 uStack_1e;
  char *apcStack_1c [8];
  undefined2 uStack_c;
  undefined2 uStack_a;
  char *pcStack_8;
  char *pcStack_6;
  undefined2 uStack_4;
  
  uStack001a = 0x1000;
  uStack0018 = 0x216;
  bVar7 = (byte)((uint)in_CX >> 8);
  pcVar18 = (char *)CONCAT11((char)((uint)in_BX >> 8),(byte)in_BX + bVar7);
  *(uint *)(pcVar18 + unaff_SI) =
       (*(int *)(pcVar18 + unaff_SI) + 0x100) - (uint)CARRY1((byte)in_BX,bVar7);
  uStack0016 = param_6;
  *(byte *)0x770a = *(byte *)0x770a | 2;
  uStack_4 = *(undefined2 *)(pcVar18 + 0x58);
  in(0xe);
  *(char *)0x675 = *(char *)0x675 + '\x10';
  pcVar18[0x230] = pcVar18[0x230] | (byte)in_CX;
  pcStack_8 = (char *)0x23c;
  *(undefined2 *)0x238 = 0x3591;
  FUN_1000_3199();
  pcStack_6 = (char *)0x3594;
  FUN_136f_024f();
  uVar13 = extraout_DX;
  if (param_2 != 0) {
    uStack_4 = 0x1000;
    pcStack_6 = (char *)0x251;
    pcStack_8 = (char *)param_1;
    uStack_a = 0x35ab;
    FUN_136f_0204();
    uVar13 = extraout_DX_00;
  }
  uStack_4 = 0x1000;
  pcStack_6 = (char *)0x266;
  (&stack0xfffe)[(int)unaff_DI] = (&stack0xfffe)[(int)unaff_DI] + (char)((uint)pcVar18 >> 8);
  iVar12 = in_CX + -1;
  uVar13 = CONCAT11((char)((uint)uVar13 >> 8),(char)uVar13 + (char)(*unaff_DI + 0x24e));
  pcStack_8 = (char *)0x1000;
  (&stack0xfffe)[(int)unaff_DI] = (&stack0xfffe)[(int)unaff_DI] + (char)pcVar18;
  bVar7 = in(uVar13);
  pcVar16 = (char *)0x229;
  iVar9 = bVar7 + 0x50;
  ppcVar15 = (char **)&stack0xfffe;
  while( true ) {
    *(char *)0x200 = *(char *)0x200 + (char)iVar9 + -0x55 + (char)*(undefined2 *)(pcVar16 + 1);
    in(uVar13);
    uVar26 = *(undefined4 *)(char *)((int)ppcVar15 + -0x76);
    cVar8 = (char)iVar12;
    uStack_a = 0x35e1;
    uVar25 = FUN_1000_1eb1();
    uVar13 = (undefined2)((ulong)uVar25 >> 0x10);
    uVar11 = (undefined1)((ulong)uVar25 >> 8);
    bVar7 = (byte)uVar25 >> 2;
    apcStack_22[0] = (char *)CONCAT11(uVar11,bVar7);
    pcVar18[(int)uVar26 + -0x75ba] = pcVar18[(int)uVar26 + -0x75ba] + cVar8;
    piVar17 = (int *)(pcVar16 + 3);
    iVar12 = CONCAT11(uVar11,bVar7 + 0xab) + *piVar17;
    *(char *)0x200 = *(char *)0x200 + (char)iVar12;
    cVar8 = in(uVar13);
    pcVar16 = (char *)CONCAT11((char)((uint)iVar12 >> 8),cVar8 + '\x0f');
    *(char *)((int)ppcVar15 + 4) = *(char *)((int)ppcVar15 + 4) + '0';
    if (0x39 < *(byte *)((int)ppcVar15 + 4)) {
      *(char *)((int)ppcVar15 + 4) = *(char *)((int)ppcVar15 + 4) + '\a';
    }
    while( true ) {
      pcVar18 = (char *)((int)piVar17 + 1);
      *(char *)((int)ppcVar15 + (int)pcVar18) =
           *(char *)((int)ppcVar15 + (int)pcVar18) + (char)pcVar16 + -0x55;
      cVar8 = in(uVar13);
      pcVar23 = (char *)((ulong)*(int **)(char *)((int)ppcVar15 + 0x1e) >> 0x10);
      piVar20 = (int *)*(int **)(char *)((int)ppcVar15 + 0x1e);
      apcStack_22[0] = pcVar18;
      bVar24 = (char)(cVar8 + -0x3c) < '\0';
      pcVar19 = pcVar18;
      if (cVar8 != '<' && SCARRY1(cVar8,-0x3c) == bVar24) break;
      if (cVar8 != '<' && SCARRY1(cVar8,-0x3c) == bVar24) {
        while( true ) {
          pcVar5 = (code *)swi(0x21);
          (*pcVar5)();
          iVar12 = (int)uStack_1e;
          iVar9 = 0;
          pcVar5 = (code *)swi(0x21);
          apcStack_1c[0] = (char *)ppcVar15;
          (*pcVar5)();
          pcVar5 = (code *)swi(0x21);
          ppcVar15 = (char **)&stack0x0028;
          param_3 = apcStack_1c;
          (*pcVar5)();
          pcVar5 = (code *)swi(0x21);
          in_stack_00000028 = &param_3;
          (*pcVar5)();
          apcStack_22[0] = pcVar23;
          *(undefined1 *)((int)&stack0x0028 + iVar12) = *(undefined1 *)((int)&stack0x0028 + iVar12);
          in(extraout_DX_01);
          pcVar23 = (char *)((ulong)in_stack_00000046 >> 0x10);
          iVar12 = (int)in_stack_00000046;
          if (iVar9 != 0) break;
          *(char *)(iVar12 + -0x75) = *(char *)(iVar12 + -0x75) + (char)in_stack_0000002e;
          in((int)in_stack_0000002e);
        }
        pcVar5 = (code *)swi(0x21);
        iVar14 = in_stack_00000032;
        (*pcVar5)();
        iVar6 = (int)uStack_1e;
        uStack_1e = (undefined1 *)&stack0x0028;
        (&stack0x4e38)[iVar12] = (&stack0x4e38)[iVar12] | (byte)iVar9;
        pbVar2 = (byte *)(iVar14 + iVar12 + 6);
        *pbVar2 = ~*pbVar2;
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        *(char *)(iVar12 + -0x75) = *(char *)(iVar12 + -0x75) + extraout_DL;
        func_0x00014405();
        pcRam00012608 = pcVar23 + 0x10;
        puVar21 = (undefined1 *)(iRam00010006 + -1);
        puVar22 = puVar21;
        for (iVar12 = iRam00010006; iVar12 != 0; iVar12 = iVar12 + -1) {
          puVar4 = puVar22;
          puVar22 = puVar22 + -1;
          puVar3 = puVar21;
          puVar21 = puVar21 + -1;
          *puVar4 = *puVar3;
        }
        return '4';
      }
      piVar17 = piVar17 + 1;
      pcVar16 = (char *)CONCAT11((char)((uint)pcVar16 >> 8),cVar8 + 'K');
    }
    do {
      uVar26 = FUN_1000_3670();
      unaff_DS = apcStack_22[0];
      uVar13 = (undefined2)((ulong)uVar26 >> 0x10);
      bVar24 = pcVar19 != (char *)0x1;
      pcVar19 = pcVar19 + 1;
    } while (bVar24);
    apcStack_22[0] = (char *)ppcVar15;
    pcStack_6 = pcVar16;
    cVar8 = (char)uVar26;
    if (cVar8 != '<' && SCARRY1(cVar8,-0x3c) == (char)(cVar8 - 0x3cU) < '\0') break;
    iVar9 = CONCAT11((char)((ulong)uVar26 >> 8),uStack_1e._1_1_);
    pcStack_8 = (char *)iVar9;
    (pcVar18 + (int)piVar20)[-0x75ba] = (pcVar18 + (int)piVar20)[-0x75ba];
    iVar12 = 0;
    ppcVar15 = apcStack_22;
  }
  *pcVar16 = (*pcVar16 - (char)((uint)pcVar18 >> 8)) - (0x8b < (byte)(cVar8 - 0x3cU));
  pcStack_8 = pcVar16;
  do {
    pcVar19 = pcVar16;
    uStack_a = 0x3643;
    uVar10 = FUN_136f_0760();
    cVar8 = uVar10 < *(uint *)(pcVar18 + (int)pcVar19);
    pcVar16 = pcVar19 + 1;
    uStack_a = CONCAT11((char)(uVar10 - *(uint *)(pcVar18 + (int)pcVar19) >> 8),*pcVar16);
  } while (pcVar16 != (char *)0x0);
  piVar1 = piVar20;
  *piVar1 = *piVar1 + -1;
  uStack_c = 0x365e;
  uStack_a = (**(code **)(pcVar18 + (int)(pcVar19 + 2) + -0x18))();
  pcVar18[(int)(pcVar19 + 2)] = pcVar18[(int)(pcVar19 + 2)] + (char)uStack_a + cVar8;
  uStack_c = 0x366a;
  cVar8 = (**(code **)(pcVar18 + (int)pcVar19 + -0x15))();
  return cVar8 + -0x1b;
}



/* FUN_1000_35c0 at 1000:35c0 */

/* WARNING: Instruction at (ram,0x0001363a) overlaps instruction at (ram,0x00013639)
    */
/* WARNING: Unable to track spacebase fully for stack */
/* WARNING: Removing unreachable block (ram,0x00013601) */

char FUN_1000_35c0(void)

{
  int *piVar1;
  byte *pbVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  code *pcVar5;
  undefined4 uVar6;
  undefined1 uVar7;
  byte bVar8;
  char cVar9;
  int in_AX;
  uint uVar10;
  int iVar11;
  int in_CX;
  char extraout_DL;
  undefined2 extraout_DX;
  undefined2 extraout_DX_00;
  undefined2 uVar12;
  int in_DX;
  int extraout_DX_01;
  undefined2 extraout_DX_02;
  byte bVar13;
  char *in_BX;
  int iVar14;
  int unaff_BP;
  char **ppcVar15;
  int unaff_SI;
  char *pcVar16;
  int *piVar17;
  char *pcVar18;
  int *unaff_DI;
  int *piVar19;
  int iVar20;
  undefined1 *puVar21;
  undefined1 *puVar22;
  undefined2 unaff_ES;
  char *pcVar23;
  undefined2 unaff_SS;
  char *unaff_DS;
  byte in_CF;
  bool bVar24;
  undefined4 uVar25;
  char **in_stack_0000000e;
  undefined2 *in_stack_00000030;
  undefined4 in_stack_00000036;
  int in_stack_0000003a;
  undefined4 in_stack_0000004e;
  char *apcStack_1a [2];
  undefined1 *puStack_16;
  char *apcStack_14 [7];
  undefined2 uStack_6;
  undefined2 uStack_4;
  undefined2 uStack_2;
  
  iVar11 = unaff_BP - *(int *)0xc4ec;
  ppcVar15 = (char **)(iVar11 - (uint)in_CF);
  if (ppcVar15 == (char **)0x0 ||
      (SBORROW2(unaff_BP,*(int *)0xc4ec) != SBORROW2(iVar11,(uint)in_CF)) != (int)ppcVar15 < 0) {
    uStack_2 = 0x216;
    bVar8 = (byte)((uint)in_CX >> 8);
    bVar13 = (byte)in_BX;
    in_BX = (char *)CONCAT11((char)((uint)in_BX >> 8),bVar13 + bVar8);
    *(uint *)(in_BX + unaff_SI) = (*(int *)(in_BX + unaff_SI) - in_DX) - (uint)CARRY1(bVar13,bVar8);
    uStack_4 = *(undefined2 *)(char *)((int)ppcVar15 + 0xe);
    uStack_6 = *ppcVar15;
    *(undefined2 *)(char *)((int)ppcVar15 + -2) = 0x1000;
    *(undefined2 *)(char *)((int)ppcVar15 + -4) = 0x227;
    iVar11 = *(int *)((int)ppcVar15 + -4);
    *(byte *)0x770a = *(byte *)0x770a | 2;
    uVar12 = *(undefined2 *)(char *)((int)ppcVar15 + -2);
    *(undefined2 *)(char *)((int)ppcVar15 + -2) = *(undefined2 *)(in_BX + 0x58);
    *(undefined2 *)(char *)((int)ppcVar15 + -4) = *(undefined2 *)(char *)((int)ppcVar15 + -0x18);
    in(0xe);
    *(char *)(iVar11 + 0x44e) = *(char *)(iVar11 + 0x44e) + (char)((uint)uVar12 >> 8);
    unaff_SI = iVar11 + 1;
    in_BX[iVar11 + 9] = in_BX[iVar11 + 9] | (byte)in_CX;
    *(undefined2 *)0x238 = 0x3591;
    FUN_1000_3199();
    FUN_136f_024f();
    uVar12 = extraout_DX;
    if (*(int *)((int)ppcVar15 + 6) != 0) {
      *(char *)((int)ppcVar15 + 0x600) = *(char *)((int)ppcVar15 + 0x600) + (char)in_CX;
      uStack_2 = 0x35ab;
      FUN_136f_0204();
      uVar12 = extraout_DX_00;
    }
    *(char *)((int)ppcVar15 + (int)unaff_DI) =
         *(char *)((int)ppcVar15 + (int)unaff_DI) + (char)((uint)in_BX >> 8);
    in_CX = in_CX + -1;
    iVar11 = *unaff_DI;
    in_DX = CONCAT11((char)((uint)uVar12 >> 8),(char)uVar12 + (char)(iVar11 + 0x24e));
    *(char *)((int)ppcVar15 + (int)unaff_DI) =
         *(char *)((int)ppcVar15 + (int)unaff_DI) + (char)in_BX;
    uVar7 = in(in_DX);
    in_AX = CONCAT11((char)((uint)(iVar11 + 0x24e) >> 8),uVar7);
  }
  pcVar16 = (char *)(unaff_SI + 1);
  uVar10 = in_AX + 0x50;
  *(uint *)((int)ppcVar15 + -0x76) = uVar10;
  while( true ) {
    *(char *)0x200 = *(char *)0x200 + (char)uVar10 + -0x55 + (char)*(undefined2 *)(pcVar16 + 1);
    in(in_DX);
    uVar6 = *(undefined4 *)(char *)((int)ppcVar15 + -0x76);
    cVar9 = (char)in_CX;
    uStack_2 = 0x35e1;
    uVar25 = FUN_1000_1eb1();
    uVar12 = (undefined2)((ulong)uVar25 >> 0x10);
    uVar7 = (undefined1)((ulong)uVar25 >> 8);
    bVar8 = (byte)uVar25 >> 2;
    apcStack_1a[0] = (char *)CONCAT11(uVar7,bVar8);
    in_BX[(int)uVar6 + -0x75ba] = in_BX[(int)uVar6 + -0x75ba] + cVar9;
    piVar17 = (int *)(pcVar16 + 3);
    iVar11 = CONCAT11(uVar7,bVar8 + 0xab) + *piVar17;
    *(char *)0x200 = *(char *)0x200 + (char)iVar11;
    cVar9 = in(uVar12);
    pcVar16 = (char *)CONCAT11((char)((uint)iVar11 >> 8),cVar9 + '\x0f');
    *(char *)((int)ppcVar15 + 4) = *(char *)((int)ppcVar15 + 4) + '0';
    if (0x39 < *(byte *)((int)ppcVar15 + 4)) {
      *(char *)((int)ppcVar15 + 4) = *(char *)((int)ppcVar15 + 4) + '\a';
    }
    while( true ) {
      in_BX = (char *)((int)piVar17 + 1);
      *(char *)((int)ppcVar15 + (int)in_BX) =
           *(char *)((int)ppcVar15 + (int)in_BX) + (char)pcVar16 + -0x55;
      cVar9 = in(uVar12);
      pcVar23 = (char *)((ulong)*(int **)(char *)((int)ppcVar15 + 0x1e) >> 0x10);
      piVar19 = (int *)*(int **)(char *)((int)ppcVar15 + 0x1e);
      apcStack_1a[0] = in_BX;
      bVar24 = (char)(cVar9 + -0x3c) < '\0';
      pcVar18 = in_BX;
      if (cVar9 != '<' && SCARRY1(cVar9,-0x3c) == bVar24) break;
      if (cVar9 != '<' && SCARRY1(cVar9,-0x3c) == bVar24) {
        while( true ) {
          pcVar5 = (code *)swi(0x21);
          (*pcVar5)();
          puVar22 = puStack_16;
          iVar11 = 0;
          pcVar5 = (code *)swi(0x21);
          apcStack_14[0] = (char *)ppcVar15;
          (*pcVar5)();
          pcVar5 = (code *)swi(0x21);
          ppcVar15 = (char **)&stack0x0030;
          in_stack_0000000e = apcStack_14;
          (*pcVar5)();
          pcVar5 = (code *)swi(0x21);
          in_stack_00000030 = &stack0x000e;
          (*pcVar5)();
          apcStack_1a[0] = pcVar23;
          *(undefined1 *)((int)&stack0x0030 + (int)puVar22) =
               *(undefined1 *)((int)&stack0x0030 + (int)puVar22);
          in(extraout_DX_02);
          pcVar23 = (char *)((ulong)in_stack_0000004e >> 0x10);
          iVar20 = (int)in_stack_0000004e;
          if (iVar11 != 0) break;
          *(char *)(iVar20 + -0x75) = *(char *)(iVar20 + -0x75) + (char)in_stack_00000036;
          in((int)in_stack_00000036);
        }
        pcVar5 = (code *)swi(0x21);
        iVar14 = in_stack_0000003a;
        (*pcVar5)();
        puVar22 = puStack_16;
        puStack_16 = (undefined1 *)&stack0x0030;
        (&stack0x4e40)[iVar20] = (&stack0x4e40)[iVar20] | (byte)iVar11;
        pbVar2 = (byte *)(iVar14 + iVar20 + 6);
        *pbVar2 = ~*pbVar2;
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        *(char *)(iVar20 + -0x75) = *(char *)(iVar20 + -0x75) + extraout_DL;
        func_0x00014405();
        pcRam00012608 = pcVar23 + 0x10;
        puVar21 = (undefined1 *)(iRam00010006 + -1);
        puVar22 = puVar21;
        for (iVar11 = iRam00010006; iVar11 != 0; iVar11 = iVar11 + -1) {
          puVar4 = puVar22;
          puVar22 = puVar22 + -1;
          puVar3 = puVar21;
          puVar21 = puVar21 + -1;
          *puVar4 = *puVar3;
        }
        return '4';
      }
      piVar17 = piVar17 + 1;
      pcVar16 = (char *)CONCAT11((char)((uint)pcVar16 >> 8),cVar9 + 'K');
    }
    do {
      cVar9 = FUN_1000_3670();
      unaff_DS = apcStack_1a[0];
      bVar24 = pcVar18 != (char *)0x1;
      pcVar18 = pcVar18 + 1;
    } while (bVar24);
    apcStack_1a[0] = (char *)ppcVar15;
    if (cVar9 != '<' && SCARRY1(cVar9,-0x3c) == (char)(cVar9 - 0x3cU) < '\0') break;
    uVar10 = (uint)puStack_16 >> 8;
    (in_BX + (int)piVar19)[-0x75ba] = (in_BX + (int)piVar19)[-0x75ba];
    in_CX = 0;
    in_DX = extraout_DX_01;
    ppcVar15 = apcStack_1a;
  }
  *pcVar16 = (*pcVar16 - (char)((uint)in_BX >> 8)) - (0x8b < (byte)(cVar9 - 0x3cU));
  do {
    pcVar18 = pcVar16;
    uStack_2 = 0x3643;
    uVar10 = FUN_136f_0760();
    cVar9 = uVar10 < *(uint *)(in_BX + (int)pcVar18);
    pcVar16 = pcVar18 + 1;
    uStack_2 = CONCAT11((char)(uVar10 - *(uint *)(in_BX + (int)pcVar18) >> 8),*pcVar16);
  } while (pcVar16 != (char *)0x0);
  piVar1 = piVar19;
  *piVar1 = *piVar1 + -1;
  uStack_4 = 0x365e;
  uStack_2 = (**(code **)(in_BX + (int)(pcVar18 + 2) + -0x18))();
  in_BX[(int)(pcVar18 + 2)] = in_BX[(int)(pcVar18 + 2)] + (char)uStack_2 + cVar9;
  uStack_4 = 0x366a;
  cVar9 = (**(code **)(in_BX + (int)pcVar18 + -0x15))();
  return cVar9 + -0x1b;
}



/* FUN_1000_3630 at 1000:3630 */

/* WARNING: Instruction at (ram,0x0001363a) overlaps instruction at (ram,0x00013639)
    */

char FUN_1000_3630(int param_1,undefined1 *param_2)

{
  byte *pbVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  code *pcVar4;
  byte bVar5;
  undefined1 uVar8;
  int iVar6;
  undefined2 in_AX;
  uint uVar7;
  char in_CL;
  char extraout_DL;
  undefined2 uVar9;
  undefined2 in_DX;
  undefined2 extraout_DX;
  char *in_BX;
  int iVar10;
  undefined2 *unaff_BP;
  undefined2 *puVar11;
  int *piVar12;
  char *pcVar13;
  char *unaff_SI;
  int *unaff_DI;
  int iVar14;
  undefined1 *puVar15;
  undefined1 *puVar16;
  char *pcVar17;
  undefined2 unaff_SS;
  char *unaff_DS;
  char cVar18;
  bool bVar19;
  undefined4 uVar20;
  undefined2 in_stack_00000014;
  undefined2 uStack0016;
  char *pcStack0018;
  char *pcStack001a;
  int *in_stack_0000001c;
  undefined2 *in_stack_00000026;
  undefined2 *in_stack_00000048;
  undefined4 in_stack_0000004e;
  int in_stack_00000052;
  undefined4 in_stack_00000066;
  int iStack_78;
  undefined2 uStack_2;
  
  uVar20 = CONCAT22(in_DX,in_AX);
  do {
    puVar11 = &uStack_2;
    cVar18 = (char)uVar20;
    pcStack001a = unaff_SI;
    uStack_2 = (char *)unaff_BP;
    if (cVar18 != '<' && SCARRY1(cVar18,-0x3c) == (char)(cVar18 - 0x3cU) < '\0') {
      *unaff_SI = (*unaff_SI - (char)((uint)in_BX >> 8)) - (0x8b < (byte)(cVar18 - 0x3cU));
      pcStack0018 = unaff_SI;
      do {
        pcVar13 = unaff_SI;
        uStack0016 = 0x3643;
        uVar7 = FUN_136f_0760();
        cVar18 = uVar7 < *(uint *)(in_BX + (int)pcVar13);
        unaff_SI = pcVar13 + 1;
        uStack0016 = CONCAT11((char)(uVar7 - *(uint *)(in_BX + (int)pcVar13) >> 8),*unaff_SI);
      } while (unaff_SI != (char *)0x0);
      *unaff_DI = *unaff_DI + -1;
      in_stack_00000014 = 0x365e;
      uStack0016 = (**(code **)(in_BX + (int)(pcVar13 + 2) + -0x18))();
      in_BX[(int)(pcVar13 + 2)] = in_BX[(int)(pcVar13 + 2)] + (char)uStack0016 + cVar18;
      in_stack_00000014 = 0x366a;
      cVar18 = (**(code **)(in_BX + (int)pcVar13 + -0x15))();
      return cVar18 + -0x1b;
    }
    pcStack0018 = (char *)CONCAT11((char)((ulong)uVar20 >> 8),param_1._1_1_);
    (in_BX + (int)unaff_DI)[-0x75ba] = (in_BX + (int)unaff_DI)[-0x75ba] + in_CL;
    *(char *)0x200 = *(char *)0x200 + param_1._1_1_ + -0x55 + (char)*(undefined2 *)(unaff_SI + 1);
    in((int)((ulong)uVar20 >> 0x10));
    uStack0016 = 0x35e1;
    uVar20 = FUN_1000_1eb1();
    uVar9 = (undefined2)((ulong)uVar20 >> 0x10);
    uVar8 = (undefined1)((ulong)uVar20 >> 8);
    bVar5 = (byte)uVar20 >> 2;
    uStack_2 = (char *)CONCAT11(uVar8,bVar5);
    in_BX[iStack_78 + -0x75ba] = in_BX[iStack_78 + -0x75ba] + in_CL;
    piVar12 = (int *)(unaff_SI + 3);
    iVar6 = CONCAT11(uVar8,bVar5 + 0xab) + *piVar12;
    *(char *)0x200 = *(char *)0x200 + (char)iVar6;
    cVar18 = in(uVar9);
    unaff_SI = (char *)CONCAT11((char)((uint)iVar6 >> 8),cVar18 + '\x0f');
    cVar18 = (char)param_1;
    bVar5 = (char)param_1 + 0x30;
    param_1 = CONCAT11(param_1._1_1_,bVar5);
    if (0x39 < bVar5) {
      param_1 = CONCAT11(param_1._1_1_,cVar18 + '7');
    }
    while( true ) {
      in_BX = (char *)((int)piVar12 + 1);
      *(char *)((int)&uStack_2 + (int)in_BX) =
           *(char *)((int)&uStack_2 + (int)in_BX) + (char)unaff_SI + -0x55;
      cVar18 = in(uVar9);
      pcVar17 = (char *)((ulong)in_stack_0000001c >> 0x10);
      unaff_DI = (int *)in_stack_0000001c;
      uStack_2 = in_BX;
      bVar19 = (char)(cVar18 + -0x3c) < '\0';
      pcVar13 = in_BX;
      if (cVar18 != '<' && SCARRY1(cVar18,-0x3c) == bVar19) break;
      if (cVar18 != '<' && SCARRY1(cVar18,-0x3c) == bVar19) {
        while( true ) {
          pcVar4 = (code *)swi(0x21);
          (*pcVar4)();
          iVar6 = 0;
          pcVar4 = (code *)swi(0x21);
          param_2 = (undefined1 *)puVar11;
          (*pcVar4)();
          pcVar4 = (code *)swi(0x21);
          puVar11 = &stack0x0048;
          in_stack_00000026 = &param_2;
          (*pcVar4)();
          pcVar4 = (code *)swi(0x21);
          in_stack_00000048 = &stack0x0026;
          (*pcVar4)();
          uStack_2 = pcVar17;
          *(undefined1 *)((int)&stack0x0048 + param_1) =
               *(undefined1 *)((int)&stack0x0048 + param_1);
          in(extraout_DX);
          pcVar17 = (char *)((ulong)in_stack_00000066 >> 0x10);
          iVar14 = (int)in_stack_00000066;
          if (iVar6 != 0) break;
          *(char *)(iVar14 + -0x75) = *(char *)(iVar14 + -0x75) + (char)in_stack_0000004e;
          in((int)in_stack_0000004e);
        }
        pcVar4 = (code *)swi(0x21);
        iVar10 = in_stack_00000052;
        (*pcVar4)();
        (&stack0x4e58)[iVar14] = (&stack0x4e58)[iVar14] | (byte)iVar6;
        pbVar1 = (byte *)(iVar10 + iVar14 + 6);
        *pbVar1 = ~*pbVar1;
        pcVar4 = (code *)swi(0x21);
        (*pcVar4)();
        *(char *)(iVar14 + -0x75) = *(char *)(iVar14 + -0x75) + extraout_DL;
        func_0x00014405();
        pcRam00012608 = pcVar17 + 0x10;
        puVar15 = (undefined1 *)(iRam00010006 + -1);
        puVar16 = puVar15;
        for (iVar6 = iRam00010006; iVar6 != 0; iVar6 = iVar6 + -1) {
          puVar3 = puVar16;
          puVar16 = puVar16 + -1;
          puVar2 = puVar15;
          puVar15 = puVar15 + -1;
          *puVar3 = *puVar2;
        }
        return '4';
      }
      piVar12 = piVar12 + 1;
      unaff_SI = (char *)CONCAT11((char)((uint)unaff_SI >> 8),cVar18 + 'K');
    }
    do {
      uVar20 = FUN_1000_3670();
      bVar19 = pcVar13 != (char *)0x1;
      pcVar13 = pcVar13 + 1;
    } while (bVar19);
    in_CL = '\0';
    unaff_BP = &uStack_2;
    unaff_DS = uStack_2;
  } while( true );
}



/* FUN_1000_364c at 1000:364c */

char __cdecl16near FUN_1000_364c(void)

{
  char *pcVar1;
  undefined2 uVar2;
  int in_BX;
  int unaff_SI;
  int *unaff_DI;
  undefined2 unaff_DS;
  char cVar3;
  undefined2 uVar4;
  
  cVar3 = (undefined1 *)0x1 < &stack0xfffe;
  uVar4 = *(undefined2 *)0x46c6;
  *unaff_DI = *unaff_DI + -1;
  uVar2 = (*(code *)*(undefined2 *)(in_BX + unaff_SI + 1 + -0x18))();
  pcVar1 = (char *)(in_BX + unaff_SI + 1);
  *pcVar1 = *pcVar1 + (char)uVar2 + cVar3;
  cVar3 = (*(code *)*(undefined2 *)(in_BX + unaff_SI + -0x16))(uVar2,uVar4);
  return cVar3 + -0x1b;
}



/* FUN_1000_366e at 1000:366e */

/* WARNING: Instruction at (ram,0x00013689) overlaps instruction at (ram,0x00013688)
    */

char FUN_1000_366e(void)

{
  byte *pbVar1;
  byte bVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  code *pcVar5;
  int *piVar6;
  char cVar7;
  char cVar8;
  char *pcVar9;
  undefined1 uVar11;
  uint uVar10;
  undefined2 in_AX;
  char *pcVar12;
  int iVar13;
  char extraout_DL;
  undefined2 extraout_DX;
  undefined2 in_DX;
  undefined2 extraout_DX_00;
  char *pcVar14;
  int iVar15;
  int *piVar16;
  char *pcVar17;
  char *unaff_SI;
  int unaff_DI;
  int iVar18;
  undefined1 *puVar19;
  undefined1 *puVar20;
  int iVar21;
  undefined2 unaff_SS;
  bool bVar22;
  bool bVar23;
  bool bVar24;
  undefined4 uVar25;
  undefined1 *in_stack_0000001e;
  undefined2 *in_stack_00000040;
  undefined4 in_stack_00000046;
  int in_stack_0000004a;
  undefined4 in_stack_0000005e;
  int iStack_80;
  
  puVar20 = &stack0xfffe;
  bVar24 = SCARRY1((char)in_AX,-0x3c);
  uVar11 = (undefined1)((uint)in_AX >> 8);
  cVar8 = (char)in_AX + -0x3c;
  bVar23 = cVar8 < '\0';
  bVar22 = cVar8 == '\0';
  do {
    if (!bVar22 && bVar24 == bVar23) {
      while( true ) {
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        iVar13 = 0;
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        pcVar5 = (code *)swi(0x21);
        in_stack_0000001e = &stack0xfffc;
        (*pcVar5)();
        pcVar5 = (code *)swi(0x21);
        in_stack_00000040 = &stack0x001e;
        (*pcVar5)();
        *(undefined1 *)((int)&stack0x0040 + unaff_DI) =
             *(undefined1 *)((int)&stack0x0040 + unaff_DI);
        in(extraout_DX_00);
        iVar21 = (int)((ulong)in_stack_0000005e >> 0x10);
        iVar18 = (int)in_stack_0000005e;
        if (iVar13 != 0) break;
        *(char *)(iVar18 + -0x75) = *(char *)(iVar18 + -0x75) + (char)in_stack_00000046;
        in((int)in_stack_00000046);
      }
      pcVar5 = (code *)swi(0x21);
      iVar15 = in_stack_0000004a;
      (*pcVar5)();
      (&stack0x4e50)[iVar18] = (&stack0x4e50)[iVar18] | (byte)iVar13;
      pbVar1 = (byte *)(iVar15 + iVar18 + 6);
      *pbVar1 = ~*pbVar1;
      pcVar5 = (code *)swi(0x21);
      (*pcVar5)();
      *(char *)(iVar18 + -0x75) = *(char *)(iVar18 + -0x75) + extraout_DL;
      func_0x00014405();
      iRam00012608 = iVar21 + 0x10;
      puVar19 = (undefined1 *)(iRam00010006 + -1);
      puVar20 = puVar19;
      for (iVar13 = iRam00010006; iVar13 != 0; iVar13 = iVar13 + -1) {
        puVar4 = puVar20;
        puVar20 = puVar20 + -1;
        puVar3 = puVar19;
        puVar19 = puVar19 + -1;
        *puVar4 = *puVar3;
      }
      return '4';
    }
    piVar16 = (int *)(unaff_SI + 1);
    pcVar9 = (char *)CONCAT11(uVar11,cVar8 + -0x79);
    while( true ) {
      unaff_SI = (char *)((int)piVar16 + 1);
      uVar11 = (undefined1)((uint)pcVar9 >> 8);
      puVar20[(int)unaff_SI] = puVar20[(int)unaff_SI] + (char)pcVar9 + -0x55;
      cVar8 = in(in_DX);
      piVar6 = *(int **)(puVar20 + 0x1e);
      bVar24 = SCARRY1(cVar8,-0x3c);
      cVar8 = cVar8 + -0x3c;
      bVar23 = cVar8 < '\0';
      bVar22 = cVar8 == '\0';
      pcVar14 = unaff_SI;
      pcVar17 = unaff_SI;
      if (bVar22 || bVar24 != bVar23) break;
      do {
        cVar8 = FUN_1000_3670();
        pcVar12 = pcVar17 + -1;
        pcVar17 = pcVar17 + 1;
      } while (pcVar12 != (char *)0x0);
      if (cVar8 != '<' && SCARRY1(cVar8,-0x3c) == (char)(cVar8 - 0x3cU) < '\0') {
        *pcVar9 = (*pcVar9 - (char)((uint)pcVar14 >> 8)) - (0x8b < (byte)(cVar8 - 0x3cU));
        do {
          pcVar17 = pcVar9;
          uVar10 = FUN_136f_0760();
          cVar8 = uVar10 < *(uint *)(pcVar14 + (int)pcVar17);
          pcVar9 = pcVar17 + 1;
        } while (pcVar17 + 1 != (char *)0x0);
        piVar6 = (int *)piVar6;
        *piVar6 = *piVar6 + -1;
        cVar7 = (**(code **)(pcVar14 + (int)(pcVar17 + 2) + -0x18))();
        pcVar14[(int)(pcVar17 + 2)] = pcVar14[(int)(pcVar17 + 2)] + cVar7 + cVar8;
        cVar8 = (**(code **)(pcVar14 + (int)pcVar17 + -0x15))();
        return cVar8 + -0x1b;
      }
      cVar7 = (char)((uint)unaff_DI >> 8);
      (pcVar14 + (int)(int *)piVar6)[-0x75ba] = (pcVar14 + (int)(int *)piVar6)[-0x75ba];
      *(char *)0x200 = *(char *)0x200 + cVar7 + -0x55 + (char)*(undefined2 *)(pcVar9 + 1);
      in(extraout_DX);
      uVar25 = FUN_1000_1eb1();
      in_DX = (undefined2)((ulong)uVar25 >> 0x10);
      pcVar14[iStack_80 + -0x75ba] = pcVar14[iStack_80 + -0x75ba] + (char)pcVar12;
      piVar16 = (int *)(pcVar9 + 3);
      iVar13 = CONCAT11((char)((ulong)uVar25 >> 8),((byte)uVar25 >> 2) + 0xab) + *piVar16;
      *(char *)0x200 = *(char *)0x200 + (char)iVar13;
      cVar8 = in(in_DX);
      pcVar9 = (char *)CONCAT11((char)((uint)iVar13 >> 8),cVar8 + '\x0f');
      cVar8 = (char)unaff_DI;
      bVar2 = cVar8 + 0x30;
      unaff_DI = CONCAT11(cVar7,bVar2);
      puVar20 = &stack0xfff6;
      if (0x39 < bVar2) {
        unaff_DI = CONCAT11(cVar7,cVar8 + '7');
        puVar20 = &stack0xfff6;
      }
    }
  } while( true );
}



/* FUN_1000_3670 at 1000:3670 */

/* WARNING: Instruction at (ram,0x00013689) overlaps instruction at (ram,0x00013688)
    */

char FUN_1000_3670(void)

{
  byte *pbVar1;
  byte bVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  code *pcVar5;
  int *piVar6;
  char cVar7;
  char cVar8;
  char *pcVar9;
  undefined1 uVar11;
  uint uVar10;
  undefined2 in_AX;
  char *pcVar12;
  int iVar13;
  char extraout_DL;
  undefined2 extraout_DX;
  undefined2 in_DX;
  undefined2 extraout_DX_00;
  char *pcVar14;
  int iVar15;
  undefined1 *unaff_BP;
  int *piVar16;
  char *pcVar17;
  char *unaff_SI;
  int unaff_DI;
  int iVar18;
  undefined1 *puVar19;
  undefined1 *puVar20;
  int iVar21;
  undefined2 unaff_SS;
  bool bVar22;
  bool bVar23;
  bool bVar24;
  undefined4 uVar25;
  undefined1 *in_stack_00000020;
  undefined2 *in_stack_00000042;
  undefined4 in_stack_00000048;
  int in_stack_0000004c;
  undefined4 in_stack_00000060;
  int iStack_7e;
  
  uVar11 = (undefined1)((uint)in_AX >> 8);
  cVar8 = in(in_DX);
  bVar24 = SCARRY1(cVar8,-0x3c);
  cVar8 = cVar8 + -0x3c;
  bVar23 = cVar8 < '\0';
  bVar22 = cVar8 == '\0';
  do {
    if (!bVar22 && bVar24 == bVar23) {
      while( true ) {
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        iVar13 = 0;
        pcVar5 = (code *)swi(0x21);
        (*pcVar5)();
        pcVar5 = (code *)swi(0x21);
        in_stack_00000020 = &stack0xfffe;
        (*pcVar5)();
        pcVar5 = (code *)swi(0x21);
        in_stack_00000042 = &stack0x0020;
        (*pcVar5)();
        *(undefined1 *)((int)&stack0x0042 + unaff_DI) =
             *(undefined1 *)((int)&stack0x0042 + unaff_DI);
        in(extraout_DX_00);
        iVar21 = (int)((ulong)in_stack_00000060 >> 0x10);
        iVar18 = (int)in_stack_00000060;
        if (iVar13 != 0) break;
        *(char *)(iVar18 + -0x75) = *(char *)(iVar18 + -0x75) + (char)in_stack_00000048;
        in((int)in_stack_00000048);
      }
      pcVar5 = (code *)swi(0x21);
      iVar15 = in_stack_0000004c;
      (*pcVar5)();
      (&stack0x4e52)[iVar18] = (&stack0x4e52)[iVar18] | (byte)iVar13;
      pbVar1 = (byte *)(iVar15 + iVar18 + 6);
      *pbVar1 = ~*pbVar1;
      pcVar5 = (code *)swi(0x21);
      (*pcVar5)();
      *(char *)(iVar18 + -0x75) = *(char *)(iVar18 + -0x75) + extraout_DL;
      func_0x00014405();
      iRam00012608 = iVar21 + 0x10;
      puVar19 = (undefined1 *)(iRam00010006 + -1);
      puVar20 = puVar19;
      for (iVar13 = iRam00010006; iVar13 != 0; iVar13 = iVar13 + -1) {
        puVar4 = puVar20;
        puVar20 = puVar20 + -1;
        puVar3 = puVar19;
        puVar19 = puVar19 + -1;
        *puVar4 = *puVar3;
      }
      return '4';
    }
    piVar16 = (int *)(unaff_SI + 1);
    pcVar9 = (char *)CONCAT11(uVar11,cVar8 + -0x79);
    while( true ) {
      unaff_SI = (char *)((int)piVar16 + 1);
      uVar11 = (undefined1)((uint)pcVar9 >> 8);
      unaff_BP[(int)unaff_SI] = unaff_BP[(int)unaff_SI] + (char)pcVar9 + -0x55;
      cVar8 = in(in_DX);
      piVar6 = *(int **)(unaff_BP + 0x1e);
      bVar24 = SCARRY1(cVar8,-0x3c);
      cVar8 = cVar8 + -0x3c;
      bVar23 = cVar8 < '\0';
      bVar22 = cVar8 == '\0';
      pcVar14 = unaff_SI;
      pcVar17 = unaff_SI;
      if (bVar22 || bVar24 != bVar23) break;
      do {
        cVar8 = FUN_1000_3670();
        pcVar12 = pcVar17 + -1;
        pcVar17 = pcVar17 + 1;
      } while (pcVar12 != (char *)0x0);
      if (cVar8 != '<' && SCARRY1(cVar8,-0x3c) == (char)(cVar8 - 0x3cU) < '\0') {
        *pcVar9 = (*pcVar9 - (char)((uint)pcVar14 >> 8)) - (0x8b < (byte)(cVar8 - 0x3cU));
        do {
          pcVar17 = pcVar9;
          uVar10 = FUN_136f_0760();
          cVar8 = uVar10 < *(uint *)(pcVar14 + (int)pcVar17);
          pcVar9 = pcVar17 + 1;
        } while (pcVar17 + 1 != (char *)0x0);
        piVar6 = (int *)piVar6;
        *piVar6 = *piVar6 + -1;
        cVar7 = (**(code **)(pcVar14 + (int)(pcVar17 + 2) + -0x18))();
        pcVar14[(int)(pcVar17 + 2)] = pcVar14[(int)(pcVar17 + 2)] + cVar7 + cVar8;
        cVar8 = (**(code **)(pcVar14 + (int)pcVar17 + -0x15))();
        return cVar8 + -0x1b;
      }
      cVar7 = (char)((uint)unaff_DI >> 8);
      (pcVar14 + (int)(int *)piVar6)[-0x75ba] = (pcVar14 + (int)(int *)piVar6)[-0x75ba];
      *(char *)0x200 = *(char *)0x200 + cVar7 + -0x55 + (char)*(undefined2 *)(pcVar9 + 1);
      in(extraout_DX);
      uVar25 = FUN_1000_1eb1();
      in_DX = (undefined2)((ulong)uVar25 >> 0x10);
      pcVar14[iStack_7e + -0x75ba] = pcVar14[iStack_7e + -0x75ba] + (char)pcVar12;
      piVar16 = (int *)(pcVar9 + 3);
      iVar13 = CONCAT11((char)((ulong)uVar25 >> 8),((byte)uVar25 >> 2) + 0xab) + *piVar16;
      *(char *)0x200 = *(char *)0x200 + (char)iVar13;
      cVar8 = in(in_DX);
      pcVar9 = (char *)CONCAT11((char)((uint)iVar13 >> 8),cVar8 + '\x0f');
      cVar8 = (char)unaff_DI;
      bVar2 = cVar8 + 0x30;
      unaff_DI = CONCAT11(cVar7,bVar2);
      unaff_BP = &stack0xfff8;
      if (0x39 < bVar2) {
        unaff_DI = CONCAT11(cVar7,cVar8 + '7');
        unaff_BP = &stack0xfff8;
      }
    }
  } while( true );
}



/* FUN_1000_36b6 at 1000:36b6 */

void FUN_1000_36b6(undefined2 param_1,undefined4 param_2,int param_3)

{
  byte *pbVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  code *pcVar4;
  int in_CX;
  char extraout_DL;
  undefined2 extraout_DX;
  undefined1 **unaff_BP;
  int unaff_SI;
  int iVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  int iVar8;
  undefined2 unaff_SS;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000058;
  undefined1 *apuStack_24 [5];
  undefined2 uStack_1a;
  int iStack_18;
  undefined2 *puStack_2;
  
  while( true ) {
    pcVar4 = (code *)swi(0x21);
    puStack_2 = unaff_BP;
    (*pcVar4)();
    *(undefined1 *)((int)&puStack_2 + unaff_SI) = *(undefined1 *)((int)&puStack_2 + unaff_SI);
    in(extraout_DX);
    iVar8 = (int)((ulong)in_stack_0000001c >> 0x10);
    iVar5 = (int)in_stack_0000001c;
    if (in_CX != 0) break;
    *(char *)(iVar5 + -0x75) = *(char *)(iVar5 + -0x75) + (char)param_2;
    in((int)param_2);
    in_CX = 0;
    pcVar4 = (code *)swi(0x21);
    unaff_BP = apuStack_24;
    (*pcVar4)();
    pcVar4 = (code *)swi(0x21);
    apuStack_24[0] = (undefined1 *)&puStack_2;
    (*pcVar4)();
  }
  pcVar4 = (code *)swi(0x21);
  (*pcVar4)();
  (&stack0x4eaf)[iVar5] = (&stack0x4eaf)[iVar5] | (byte)in_CX;
  pbVar1 = (byte *)(param_3 + iVar5 + 6);
  *pbVar1 = ~*pbVar1;
  pcVar4 = (code *)swi(0x21);
  (*pcVar4)();
  *(char *)(iVar5 + -0x75) = *(char *)(iVar5 + -0x75) + extraout_DL;
  uStack_1a = 0x3702;
  iStack_18 = iVar8;
  func_0x00014405();
  iRam00012608 = iVar8 + 0x10;
  puVar6 = (undefined1 *)(iRam00010006 + -1);
  puVar7 = puVar6;
  for (iVar5 = iRam00010006; iVar5 != 0; iVar5 = iVar5 + -1) {
    puVar3 = puVar7;
    puVar7 = puVar7 + -1;
    puVar2 = puVar6;
    puVar6 = puVar6 + -1;
    *puVar3 = *puVar2;
  }
  return;
}



/* FUN_1000_36e2 at 1000:36e2 */

void FUN_1000_36e2(void)

{
  byte *pbVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  code *pcVar4;
  byte in_CL;
  int iVar5;
  char extraout_DL;
  int in_BX;
  int unaff_DI;
  undefined1 *puVar6;
  undefined1 *puVar7;
  int unaff_ES;
  undefined2 unaff_SS;
  undefined2 unaff_DS;
  
  (&stack0x4e54)[unaff_DI] = (&stack0x4e54)[unaff_DI] | in_CL;
  pbVar1 = (byte *)(in_BX + unaff_DI + 6);
  *pbVar1 = ~*pbVar1;
  pcVar4 = (code *)swi(0x21);
  (*pcVar4)();
  *(char *)(unaff_DI + -0x75) = *(char *)(unaff_DI + -0x75) + extraout_DL;
  func_0x00014405();
  iRam00012608 = unaff_ES + 0x10;
  puVar6 = (undefined1 *)(iRam00010006 + -1);
  puVar7 = puVar6;
  for (iVar5 = iRam00010006; iVar5 != 0; iVar5 = iVar5 + -1) {
    puVar3 = puVar7;
    puVar7 = puVar7 + -1;
    puVar2 = puVar6;
    puVar6 = puVar6 + -1;
    *puVar3 = *puVar2;
  }
  return;
}



/* entry at 136f:0010 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __cdecl16far entry(void)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  int unaff_ES;
  
  _DAT_1000_5cf8 = unaff_ES + 0x10;
  _DAT_1000_4a5e = _DAT_1000_5cf8 + _DAT_2000_117e;
  puVar4 = (undefined1 *)(iRam000136f6 + -1);
  puVar5 = puVar4;
  for (iVar3 = iRam000136f6; iVar3 != 0; iVar3 = iVar3 + -1) {
    puVar2 = puVar5;
    puVar5 = puVar5 + -1;
    puVar1 = puVar4;
    puVar4 = puVar4 + -1;
    *puVar2 = *puVar1;
  }
  _DAT_1000_4a5c = 0x34;
  return;
}



/* FUN_136f_0073 at 136f:0073 */

/* WARNING: Control flow encountered bad instruction data */

void FUN_136f_0073(void)

{
  int unaff_BP;
  undefined2 unaff_SI;
  undefined2 unaff_SS;
  
  *(undefined2 *)(unaff_BP + -0x75) = unaff_SI;
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* FUN_136f_0204 at 136f:0204 */

/* WARNING: Control flow encountered bad instruction data */

void FUN_136f_0204(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* FUN_136f_024f at 136f:024f */

/* WARNING: Control flow encountered bad instruction data */

void FUN_136f_024f(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* FUN_136f_0760 at 136f:0760 */

/* WARNING: Control flow encountered bad instruction data */

void FUN_136f_0760(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



