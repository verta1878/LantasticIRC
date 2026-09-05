#include "INST6HDR.H"

static void  FUN_3000_8eda(void)

{
  func_0x0004ef2c();
  return;
}



/* Function: FUN_3000_8ef0 at 3000:8ef0 */

static void  FUN_3000_8ef0(void)

{
  func_0x0004f0e8();
  return;
}



/* Function: FUN_3000_9e64 at 3000:9e64 */

static void  FUN_3000_9e64(void)

{
  /* reg */
  
  FUN_5000_7288();
  *(unsigned int *)0x34c = 1;
  return;
}



/* Function: FUN_3000_a2fe at 3000:a2fe */

static void  FUN_3000_a2fe(void)

{
  /* reg */
  
  FUN_5000_bd88();
  *(unsigned int *)0x34c = 1;
  return;
}



/* Function: FUN_3000_af08 at 3000:af08 */

static void 
FUN_3000_af08(char param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             unsigned int param_5,int param_6)

{
  /* reg */
  unsigned char uVar1;
  
  *(int *)0x7f1c = *(int *)0x7f1c + -1;
  uVar1 = param_1 != '\0';
  if (((((param_6 == 1) || (param_6 == 2)) || (param_6 == 6)) ||
      ((param_6 == 7 || (param_6 == 300)))) ||
     ((param_6 == 3 || ((param_6 == 4 || (param_6 == 5)))))) {
    uVar1 = 0xb;
  }
  FUN_3000_bc8a(param_2,param_3,param_4,param_5,0x41,0x29,param_6,uVar1,0x4001,0x1cfe);
  return;
}



/* Function: FUN_3000_b709 at 3000:b709 */

static unsigned int  FUN_3000_b709(void)

{
  return 0;
}



/* Function: FUN_3000_b878 at 3000:b878 */

void  FUN_3000_b878(void)

{
  return;
}



/* Function: FUN_3000_bb7e at 3000:bb7e */

static void  FUN_3000_bb7e(void)

{
  return;
}



/* Function: FUN_3000_bb80 at 3000:bb80 */

static unsigned int 
FUN_3000_bb80(unsigned char param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             unsigned int param_5,int param_6,int param_7,int param_8,int param_9,unsigned int param_10,
             unsigned int param_11,unsigned char param_12,unsigned int param_13,unsigned int param_14,
             unsigned int param_15,unsigned int param_16)

{
  unsigned int uVar1;
  int iVar2;
  /* reg */
  int local_24 [5];
  int local_1a;
  unsigned int local_4;
  
  local_4 = func_0x00007677();
  func_0x00007684(0,local_24);
  func_0x0000768e(0,local_4,*(unsigned int *)0x7de4);
  *(int *)0x70a6 = param_7;
  *(int *)0x70aa = param_9;
  *(int *)0x70a8 = param_6;
  *(int *)0x70ac = param_8;
  *(int *)0x7f1a = param_6 * local_24[0];
  *(int *)0x84f2 = param_7 * local_1a;
  *(int *)0x8732 = (param_9 - param_7) * local_1a;
  *(int *)0x8aae = (param_8 - param_6) * local_24[0];
  *(unsigned int *)0x84f6 = param_10;
  *(unsigned int *)0x81ec = param_11;
  *(unsigned int *)0x7dde = param_2;
  *(unsigned int *)0x7de0 = param_3;
  *(unsigned int *)0x883a = param_4;
  *(unsigned int *)0x883c = param_5;
  *(unsigned int *)0x81ee = param_4;
  *(unsigned int *)0x81f0 = param_5;
  *(unsigned char *)0x8502 = param_12;
  *(unsigned char *)0x9174 = param_1;
  iVar2 = FUN_3000_a65e(0,0,0,param_2,param_3,0x800,0,0x21,param_13,param_14,param_15,param_16,
                        *(unsigned int *)0x7de4);
  uVar1 = 0;
  while (iVar2 == 2) {
    func_0x000872e8(uVar1,0);
    iVar2 = FUN_3000_a65e(0x777d,0,0,param_2,param_3,0x800,0,0x21,param_13,param_14,param_15,
                          param_16,*(unsigned int *)0x7de4);
    uVar1 = 0x777d;
  }
  return *(unsigned int *)0x8aa0;
}



/* Function: FUN_3000_be30 at 3000:be30 */

static unsigned int 
FUN_3000_be30(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             unsigned int param_5,unsigned int param_6)

{
  int iVar1;
  /* reg */
  unsigned long uVar2;
  unsigned int uVar3;
  unsigned int uVar4;
  unsigned int uVar5;
  unsigned char local_12 [4];
  int local_e;
  int local_c;
  unsigned int local_a;
  int local_8;
  int local_6;
  int local_4;
  
  uVar5 = 0;
  uVar4 = 10;
  uVar3 = 0;
  iVar1 = func_0x00007a97();
  uVar3 = func_0x0007e1cc(0,(long)iVar1 * 9,uVar3,uVar4,uVar5);
  *(unsigned int *)0x8504 = uVar3;
  iVar1 = func_0x00007242(0x7aa5,1,10,0);
  uVar3 = FUN_6000_673c(0,(long)iVar1 * 9);
  *(unsigned int *)0x81ea = uVar3;
  uVar3 = func_0x0000632c(0x62fc,0,0,0,0,0,0,0x1c38);
  uVar4 = func_0x00006eba(0,0xd,uVar3);
  func_0x00006f02(0,uVar4);
  func_0x00006350(0,0,*(unsigned int *)0x8504,0,0,local_12);
  func_0x00006366(0,0xc10,local_12);
  func_0x00006f63(0,uVar3);
  local_4 = local_e + 0x16;
  local_6 = ((unsigned int)-(local_4 - *(int *)0x8504) >> 1) + 0x1e;
  local_8 = local_c + 0xf;
  local_a = (unsigned int)-(local_8 - *(int *)0x81ea) >> 1;
  *(unsigned int *)0x2f4 = param_1;
  uVar2 = func_0x00007078(0,param_1,0x7a18,0x7069);
  *(unsigned int *)0x2f6 = (int)uVar2;
  *(unsigned int *)0x2f8 = (int)((unsigned long)uVar2 >> 0x10);
  uVar3 = func_0x0000ffff(0,0xda0);
  func_0x0000ffff(0,1,local_8,local_4,local_a,local_6,uVar3);
  func_0x0000ffff(0,1,uVar3);
  FUN_3000_bf52(uVar3,param_3,param_4,param_5,param_6);
  return uVar3;
}



/* Function: FUN_3000_bf52 at 3000:bf52 */

static int  FUN_3000_bf52(unsigned int param_1,char *param_2,int param_3,char *param_4)

{
  /* reg */
  
  if ((param_3 != 0 || param_2 != (char *)0x0) && (*param_2 != '\0')) {
    ;
    func_0x0000ffff();
  }
  if (param_4 != 0 || (char *)param_4 != (char *)0x0) {
    if (*param_4 != '\0') {
      func_0x0000ffff(0,(char *)param_4,param_4,0x45,param_1);
    }
  }
  return;
}



/* Function: FUN_3000_c8d2 at 3000:c8d2 */

static unsigned int 
FUN_3000_c8d2(unsigned int param_1,unsigned int param_2,unsigned int param_3,int param_4,unsigned int param_5)

{
  unsigned int uVar1;
  int iVar2;
  /* reg */
  unsigned int uVar3;
  unsigned int uVar4;
  unsigned int uVar5;
  
  if (param_4 == 0xf) {
    uVar1 = *(unsigned int *)0x7114;
    uVar5 = 0;
    uVar4 = 0;
    uVar3 = 1;
    func_0x000072f2();
    func_0x00008310(0,*(unsigned int *)0x7114,uVar3,uVar4,uVar5,uVar1);
    uVar1 = func_0x00007d96(0,*(unsigned int *)0x7114);
    func_0x00007654(0,*(unsigned int *)0x7116,0,0,uVar1);
    func_0x0000828b(0,uVar1,*(unsigned int *)0x7114);
  }
  else if (param_4 == 0x110) {
    uVar5 = 0x72;
    uVar1 = *(unsigned int *)0x7110;
    uVar3 = *(unsigned int *)0x710e;
    uVar4 = param_5;
    func_0x0000858e();
    func_0x0000859e(0,*(unsigned int *)0x70fe,*(unsigned int *)0x7100,0x6e,param_5,uVar3,uVar1,uVar5,
                    uVar4);
    func_0x000085ae(0,*(unsigned int *)0x7102,*(unsigned int *)0x7104,0x6f,param_5);
    func_0x00007bcc(0,*(unsigned int *)0x7106,*(unsigned int *)0x7108,0x70,param_5);
    func_0x000082e7(0,*(unsigned int *)0x710a,*(unsigned int *)0x710c,param_5);
    uVar1 = func_0x000085d2(0,0x6e,param_5);
    func_0x00008605(0,uVar1);
    uVar1 = func_0x00006f86(0,0x71,param_5);
    *(unsigned int *)0x7114 = uVar1;
    *(unsigned int *)0x7116 = *(unsigned int *)0x84fa;
  }
  else if (((param_4 == 0x111) && (0x6d < param_3)) && (param_3 - 0x6e < 3)) {
    iVar2 = param_3 - 0x6d;
    uVar1 = param_5;
    func_0x000072d3();
    uVar1 = func_0x000075b6(0,param_5,iVar2,uVar1);
    func_0x000075c5(0,uVar1);
    return 1;
  }
  return 0;
}



/* Function: FUN_3000_d6a8 at 3000:d6a8 */

static void  FUN_3000_d6a8(void)

{
  unsigned int uVar1;
  int iVar2;
  int iVar3;
  /* reg */
  unsigned int uVar4;
  /* reg */
  /* reg */
  unsigned long uVar5;
  
  func_0x0009f1f0();
  uVar1 = func_0x00007d31(0x9323,0,0,0,0,0,0,0x1c38);
  uVar5 = func_0x0009f2b2(0);
  *(unsigned int *)(0 + -4) = (int)uVar5;
  *(unsigned int *)(0 + -2) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009360(0x9351,0,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -4) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -4);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x0009f592(0);
  *(unsigned int *)(0 + -10) = (int)uVar5;
  *(unsigned int *)(0 + -8) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x0000938e(0x937f,4,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -10) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -10);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x0009f872(0);
  *(unsigned int *)(0 + -0xe) = (int)uVar5;
  *(unsigned int *)(0 + -0xc) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000093bc(0x93ad,6,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0xe) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0xe);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x0009fb52(0);
  *(unsigned int *)(0 + -0x12) = (int)uVar5;
  *(unsigned int *)(0 + -0x10) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000093ea(0x93db,8,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x12) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x12);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x0009bc52(0);
  *(unsigned int *)(0 + -0x16) = (int)uVar5;
  *(unsigned int *)(0 + -0x14) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00007d3b(0x8feb,10,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x16) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x16);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a0112(0);
  *(unsigned int *)(0 + -0x1a) = (int)uVar5;
  *(unsigned int *)(0 + -0x18) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009446(0x9437,0x58,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x1a) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x1a);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a03f2(0);
  *(unsigned int *)(0 + -0x1e) = (int)uVar5;
  *(unsigned int *)(0 + -0x1c) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009474(0x9465,0x5a,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x1e) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x1e);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a06d2(0);
  *(unsigned int *)(0 + -0x22) = (int)uVar5;
  *(unsigned int *)(0 + -0x20) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000094a2(0x9493,0xc,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x22) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x22);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a09b2(0);
  *(unsigned int *)(0 + -0x26) = (int)uVar5;
  *(unsigned int *)(0 + -0x24) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000094d0(0x94c1,0xe,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x26) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x26);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a0c92(0);
  *(unsigned int *)(0 + -0x2a) = (int)uVar5;
  *(unsigned int *)(0 + -0x28) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000094fe(0x94ef,0x28,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x2a) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x2a);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a0f72(0);
  *(unsigned int *)(0 + -0x2e) = (int)uVar5;
  *(unsigned int *)(0 + -0x2c) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x0000952c(0x951d,0x2a,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x2e) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x2e);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a1252(0);
  *(unsigned int *)(0 + -0x32) = (int)uVar5;
  *(unsigned int *)(0 + -0x30) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x0000955a(0x954b,0x2c,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x32) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x32);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a1532(0);
  *(unsigned int *)(0 + -0x36) = (int)uVar5;
  *(unsigned int *)(0 + -0x34) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009588(0x9579,0x68,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x36) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x36);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a1812(0);
  *(unsigned int *)(0 + -0x3a) = (int)uVar5;
  *(unsigned int *)(0 + -0x38) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000095b6(0x95a7,0x6c,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x3a) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x3a);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a1af2(0);
  *(unsigned int *)(0 + -0x3e) = (int)uVar5;
  *(unsigned int *)(0 + -0x3c) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x000095e4(0x95d5,0x26,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x3e) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x3e);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a1dd2(0);
  *(unsigned int *)(0 + -0x42) = (int)uVar5;
  *(unsigned int *)(0 + -0x40) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009612(0x9603,0x1c,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x42) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x42);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a20b2(0);
  *(unsigned int *)(0 + -0x46) = (int)uVar5;
  *(unsigned int *)(0 + -0x44) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009640(0x9631,0x1e,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x46) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x46);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a2392(0);
  *(unsigned int *)(0 + -0x4a) = (int)uVar5;
  *(unsigned int *)(0 + -0x48) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x0000966e(0x965f,0x20,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x4a) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x4a);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  uVar5 = func_0x000a26d2(0);
  *(unsigned int *)(0 + -0x4e) = (int)uVar5;
  *(unsigned int *)(0 + -0x4c) = (int)((unsigned long)uVar5 >> 0x10);
  iVar2 = func_0x00009332(0x9693,0x22,uVar1);
  uVar4 = (unsigned int)((unsigned long)*(unsigned long *)(0 + -0x4e) >> 0x10);
  iVar3 = (int)*(unsigned long *)(0 + -0x4e);
  *(int *)(iVar3 + 6) = iVar2;
  *(int *)(iVar3 + 8) = iVar2 >> 0xf;
  func_0x00008282(0,uVar1);
  uVar5 = func_0x000a28e2(0);
  uVar1 = (unsigned int)((unsigned long)uVar5 >> 0x10);
  *(unsigned int *)((int)uVar5 + 8) = 0;
  *(unsigned int *)((int)uVar5 + 6) = 0;
  uVar5 = func_0x000a2b02(0x96b4);
  uVar1 = (unsigned int)((unsigned long)uVar5 >> 0x10);
  *(unsigned int *)((int)uVar5 + 0x13) = 0xda0;
  *(unsigned int *)((int)uVar5 + 0x15) = 0;
  uVar5 = func_0x0009c982(0x96d6);
  uVar1 = (unsigned int)((unsigned long)uVar5 >> 0x10);
  *(unsigned int *)((int)uVar5 + 8) = 0;
  *(unsigned int *)((int)uVar5 + 6) = 0;
  return;
}



/* Function: FUN_3000_e3c7 at 3000:e3c7 */

void  FUN_3000_e3c7(void)

{
  return;
}



/* Function: FUN_3000_e3d0 at 3000:e3d0 */

static void  FUN_3000_e3d0(unsigned int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  unsigned int uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  unsigned int uVar10;
  unsigned int uVar11;
  unsigned int uVar12;
  /* reg */
  /* reg */
  
  if ((*(int *)0x308 != 0) && ((*(unsigned char *)((int)*(unsigned long *)0x8a9c + 0x10) & 4) == 0)) {
    if (100 < param_1) {
      param_1 = 100;
    }
    if ((param_1 == 0) || (*(unsigned int *)0x338 != param_1)) {
      uVar4 = *(unsigned int *)0x338;
      *(unsigned int *)0x338 = param_1;
      iVar1 = *(int *)0x917c;
      iVar5 = *(int *)0x9178;
      iVar6 = *(int *)0x9178;
      if (param_1 <= uVar4) {
        func_0x0000a0ad();
        ;
        func_0x00009ddb(0,0x9178);
      }
      iVar2 = *(int *)0x9178;
      iVar7 = *(int *)0x917c;
      iVar3 = *(int *)0x917a;
      iVar8 = *(int *)0x917e;
      iVar9 = func_0x0000a16d(0,0x82,*(unsigned int *)0x308);
      uVar10 = func_0x00009764(0,iVar9);
      if (iVar9 != 0 && param_1 <= uVar4) {
        func_0x00009aad(0,0,0,0,0xf,*(unsigned int *)0x7de4);
        uVar11 = func_0x0000a11c(0,0xffff,0xff,uVar10);
        uVar12 = func_0x0000a108(0,uVar11);
        func_0x0000a152(0,iVar3 + iVar8,iVar2 + iVar7,iVar3,iVar2,uVar10);
        func_0x0000a13e(0,uVar12,uVar10);
        func_0x0000a12a(0,uVar11);
        uVar11 = func_0x0000a135(0,4,0,0x9178);
        func_0x00006ec0(0,uVar11);
        func_0x0000a161(0,uVar11);
      }
      uVar11 = func_0x00009f78(0,0,0xff,uVar10);
      uVar12 = func_0x0000a159(0,uVar11);
      func_0x0000ffff(0,iVar3 + iVar8,
                      (int)(((unsigned long)(unsigned int)(iVar1 - iVar5) * (unsigned long)param_1 & 0xffff) / 100) + iVar6,
                      iVar3,iVar2,uVar10);
      func_0x00009ce1(0,uVar12,uVar10);
      func_0x00009fd1(0,uVar11);
      uVar11 = func_0x000087ff(0,0x82,*(unsigned int *)0x308);
      func_0x0000979e(0,uVar10,uVar11);
      func_0x0000853c(0,0,0,0,*(unsigned int *)0x308);
    }
  }
  return;
}



/* Function: FUN_3000_f256 at 3000:f256 */

static void  FUN_3000_f256(void)

{
  unsigned int uVar1;
  /* reg */
  unsigned long uVar2;
  
  uVar2 = func_0x000b7576();
  *(unsigned int *)0x35e = (int)uVar2;
  *(unsigned int *)0x360 = (int)((unsigned long)uVar2 >> 0x10);
  uVar1 = *(unsigned int *)0x6dc;
  *(unsigned int *)0x7150 = *(unsigned int *)0x6da;
  *(unsigned int *)0x7152 = uVar1;
  uVar1 = *(unsigned int *)0x884c;
  *(unsigned int *)0x362 = *(unsigned int *)0x884a;
  *(unsigned int *)0x364 = uVar1;
  return;
}



/* Function: FUN_3000_f28a at 3000:f28a */

static void  FUN_3000_f28a(unsigned int param_1,unsigned int param_2,unsigned int *param_3)

{
  unsigned int uVar1;
  /* reg */
  long lVar2;
  
  func_0x000b80be();
  lVar2 = func_0x000a01a4(0xaea2,*param_3,*(unsigned int *)0x35e,*(unsigned int *)0x360,0);
  if (lVar2 == -1) {
    FUN_3000_3e76(0x2594);
  }
  uVar1 = *(unsigned int *)0x714e;
  *(unsigned int *)0x6e2 = *(unsigned int *)0x714c;
  *(unsigned int *)0x6e4 = uVar1;
  uVar1 = *(unsigned int *)0x7152;
  *(unsigned int *)0x6da = *(unsigned int *)0x7150;
  *(unsigned int *)0x6dc = uVar1;
  uVar1 = *(unsigned int *)0x364;
  *(unsigned int *)0x884a = *(unsigned int *)0x362;
  *(unsigned int *)0x884c = uVar1;
  return;
}



/* Function: FUN_3000_f2e8 at 3000:f2e8 */

static unsigned int 
FUN_3000_f2e8(unsigned int param_1,unsigned int param_2,unsigned int param_3,int param_4)

{
  if (param_4 == 0x58) {
    FUN_3000_4034(param_1,param_2,param_3);
  }
  else {
    if ((param_4 + -0x58 < 1) || (SBORROW2(param_4 + -0x58,1))) {
      return 0;
    }
    if (param_4 == 0x5a || param_4 + -0x59 < 1) {
      func_0x0003410e();
    }
    else if (param_4 != 0x5b) {
      return 0;
    }
  }
  return 1;
}



/* Function: FUN_3000_ffe0 at 3000:ffe0 */

static int  FUN_3000_ffe0(void)

{
  int iVar1;
  /* reg */
  unsigned int uVar2;
  /* reg */
  /* reg */
  unsigned int *puVar3;
  unsigned int *puVar4;
  unsigned int uVar5;
  unsigned int uVar6;
  /* reg */
  unsigned long uVar7;
  
  *(char *)(0 + 0) = *(char *)(0 + 0) + 0;
  *(unsigned int *)(0 + -10) = (unsigned int)*(unsigned char *)(0 + 10);
  uVar6 = 0xbcae;
  uVar7 = func_0x000c6752();
  uVar2 = (unsigned int)((unsigned long)uVar7 >> 0x10);
  puVar3 = (unsigned int *)*(int *)((int)uVar7 + 0x14);
  iVar1 = *(int *)((int)uVar7 + 0x16);
  *(int *)(0 + -6) = iVar1;
  puVar4 = puVar3;
  if (iVar1 != 0 || puVar3 != (unsigned int *)0x0) {
    do {
      iVar1 = FUN_4000_8e42(0xbcae,*puVar3,puVar3[1],*(unsigned int *)*(unsigned long *)(0 + 0xc))
      ;
      puVar4 = puVar3;
      if (iVar1 == 0) break;
      puVar4 = (unsigned int *)puVar3[9];
      iVar1 = puVar3[10];
      *(int *)(0 + -6) = iVar1;
      puVar3 = puVar4;
    } while (iVar1 != 0 || puVar4 != (unsigned int *)0x0);
  }
  if (*(int *)(0 + -6) == 0 && puVar4 == (unsigned int *)0x0) {
    puVar4 = (unsigned int *)*(unsigned int *)(0 + 0xc);
    *(unsigned int *)(0 + -6) = *(unsigned int *)(0 + 0xe);
    uVar7 = func_0x000c69d2(0xbcae,*(unsigned int *)(0 + -10),0,0);
    uVar6 = (unsigned int)((unsigned long)uVar7 >> 0x10);
    uVar2 = *(unsigned int *)((int)uVar7 + 0x16);
    uVar5 = (unsigned int)((unsigned long)*(unsigned long *)(0 + 0xc) >> 0x10);
    iVar1 = (int)*(unsigned long *)(0 + 0xc);
    *(unsigned int *)(iVar1 + 0x12) = *(unsigned int *)((int)uVar7 + 0x14);
    *(unsigned int *)(iVar1 + 0x14) = uVar2;
    uVar6 = 0xbcfd;
    uVar7 = func_0x000c6c42(0xbcd6,*(unsigned int *)(0 + -10),0,0);
    *(unsigned int *)(0 + -2) = (int)((unsigned long)uVar7 >> 0x10);
    uVar2 = *(unsigned int *)(0 + 0xe);
    uVar5 = *(unsigned int *)(0 + -2);
    *(unsigned int *)((int)uVar7 + 0x14) = *(unsigned int *)(0 + 0xc);
    *(unsigned int *)((int)uVar7 + 0x16) = uVar2;
  }
  else {
    FUN_4000_8828(0 + 0xc);
  }
  uVar7 = func_0x000c2f92(uVar6,*(unsigned int *)(0 + -10),0,0);
  uVar6 = (unsigned int)((unsigned long)uVar7 >> 0x10);
  uVar2 = *(unsigned int *)(0 + -6);
  *(unsigned int *)((int)uVar7 + 0x18) = (unsigned int)puVar4;
  *(unsigned int *)((int)uVar7 + 0x1a) = uVar2;
  return;
}



/* Function: FUN_4000_0e20 at 4000:0e20 */

static void  FUN_4000_0e20(void)

{
  /* reg */
  /* reg */
  /* reg */
  
  if (*(int *)(0 + -2) == -1) {
    *(unsigned int *)0x36a = 1;
  }
  return;
}



/* Function: FUN_4000_1f2e at 4000:1f2e */

static void  FUN_4000_1f2e(unsigned int param_1,unsigned int param_2,unsigned int param_3)

{
  int iVar1;
  int iVar2;
  unsigned int uVar3;
  
  uVar3 = 0xdb92;
  func_0x000eb2dc();
  while( 1 ) {
    while ((iVar1 = func_0x000e54c2(uVar3,param_1,1), iVar1 != -1 && (iVar1 != 0x40))) {
      uVar3 = 0xd6ce;
      func_0x000d6ce0(0xdbbb,iVar1);
    }
    if (iVar1 == -1) {
      FUN_4000_3ebc(0x1ac4);
    }
    func_0x000e5744(0xdbbb,iVar1);
    uVar3 = 0xdc17;
    iVar1 = func_0x000dc9ce(0xdbc6,param_1,param_2,param_3);
    if (iVar1 == 0x74) break;
    if (iVar1 == 0x94) {
      func_0x000dc248(0xdc17,0x94);
      return;
    }
    iVar2 = func_0x0004ea12(0xdc17,param_1,param_2,param_3,iVar1,1);
    if ((iVar2 == 0) && (iVar1 = FUN_4000_f2e8(param_1,param_2,param_3,iVar1), iVar1 == 0)) {
      FUN_4000_3ebc(0x8736);
    }
  }
  return;
}



/* Function: FUN_4000_3b3c at 4000:3b3c */

static unsigned int  FUN_4000_3b3c(int param_1)

{
  int iVar1;
  /* reg */
  
  if (param_1 == 0) {
    ;
    param_1 = func_0x001000ba();
  }
  else {
    param_1 = param_1 + -1;
  }
  iVar1 = func_0x0000ffff(0,param_1);
  if (iVar1 != 0) {
    if (iVar1 != 4) {
      return 0;
    }
    return 1;
  }
  return 0xffff;
}



/* Function: FUN_4000_3b68 at 4000:3b68 */

static void  FUN_4000_3b68(void)

{
  return;
}



/* Function: FUN_4000_3ba6 at 4000:3ba6 */

static unsigned int  FUN_4000_3ba6(void)

{
  return 1;
}



/* Function: FUN_4000_3baa at 4000:3baa */

static unsigned int  FUN_4000_3baa(unsigned char param_1)

{
  int iVar1;
  unsigned int uVar2;
  /* reg */
  unsigned long uVar3;
  
  func_0x001078fe();
  func_0x001073ee(0xf811,*(unsigned int *)0x77e,0,0);
  iVar1 = FUN_4000_3c96(param_1);
  if (iVar1 != 0) {
    return 0xffff;
  }
  func_0x000f60c6(0xf7c0,*(unsigned int *)0x77e);
  uVar3 = func_0x000fbd36(0xf5eb,*(unsigned int *)0x7162,0,*(unsigned int *)0x715a,*(unsigned int *)0x715c
                          ,*(unsigned int *)0x7156,*(unsigned int *)0x7158);
  uVar2 = func_0x000c8526(0xf852,uVar3);
  return uVar2;
}



/* Function: FUN_4000_3c18 at 4000:3c18 */

static unsigned int  FUN_4000_3c18(unsigned char param_1)

{
  int iVar1;
  unsigned int uVar2;
  /* reg */
  unsigned long uVar3;
  
  func_0x00107fde();
  func_0x001080de(0xf87f,*(unsigned int *)0x77e,0,0);
  func_0x001077fe(0xf88f,*(unsigned int *)0x77e,0,0);
  iVar1 = FUN_4000_3c96(param_1);
  if (iVar1 != 0) {
    return 0xffff;
  }
  func_0x000f8506(0xf801,*(unsigned int *)0x77e);
  uVar3 = func_0x000fc516(0xf82f,*(unsigned int *)0x7162,0,*(unsigned int *)0x715e,*(unsigned int *)0x7160
                          ,*(unsigned int *)0x7156,*(unsigned int *)0x7158);
  uVar2 = func_0x000fbcc6(0xf8d0,uVar3);
  return uVar2;
}



/* Function: FUN_4000_3cee at 4000:3cee */

static unsigned int  FUN_4000_3cee(void)

{
  /* reg */
  /* reg */
  /* reg */
  /* reg */
  /* reg */
  
  if (0 == 0) {
    *(char *)(0 + 3) = *(char *)(0 + 3) + 0;
  }
  func_0x000f8ce6();
  return 0xffff;
}



/* Function: FUN_4000_3e76 at 4000:3e76 */

static void  FUN_4000_3e76(void)

{
  func_0x0000a209();
  FUN_4000_a65e(0,0,0,0,0,0,0,0x10,0x30fa);
  func_0x000f8f75(0,1);
  return;
}



/* Function: FUN_4000_4018 at 4000:4018 */

static void  FUN_4000_4018(void)

{
  FUN_4000_a65e();
  func_0x000fc6b5();
  return;
}



/* Function: FUN_4000_4174 at 4000:4174 */

static void  FUN_4000_4174(unsigned int param_1,unsigned int param_2,unsigned int param_3)

{
  /* reg */
  
  *(unsigned int *)0x7164 = param_3;
  *(unsigned int *)0x37e = param_1;
  *(unsigned int *)0x380 = param_2;
  func_0x000fcb20();
  return;
}



/* Function: FUN_4000_4bb2 at 4000:4bb2 */

static void  FUN_4000_4bb2(unsigned int param_1,unsigned int param_2,unsigned int param_3)

{
  unsigned char local_a [8];
  
  FUN_4000_5c6e(param_1,param_2,param_3,7,local_a);
  return;
}



/* Function: FUN_4000_4bd6 at 4000:4bd6 */

static unsigned int  FUN_4000_4bd6(void)

{
  long lVar1;
  
  lVar1 = FUN_4000_4c22();
  if (lVar1 == 0) {
    return 0;
  }
  return 1;
}



/* Function: FUN_4000_4bf2 at 4000:4bf2 */

static unsigned int  FUN_4000_4bf2(void)

{
  long lVar1;
  
  lVar1 = FUN_4000_4c22();
  if ((lVar1 != 0) && ((*(unsigned char *)((int)lVar1 + 0x15) & 0x10) != 0)) {
    return 1;
  }
  return 0;
}



/* Function: FUN_4000_4fee at 4000:4fee */

static unsigned int  FUN_4000_4fee(unsigned int param_1,unsigned int param_2)

{
  char cVar1;
  unsigned int uVar2;
  int iVar3;
  unsigned int uVar4;
  
  if (param_2 == 0x7c) {
    iVar3 = FUN_4000_e018(param_1);
    if (iVar3 != 0x7c) {
      return 0x131;
    }
    FUN_4000_de12(param_1,1);
    uVar4 = 0x133;
  }
  else {
    if (0x7c < param_2) {
      return 0;
    }
    cVar1 = (char)param_2;
    if (cVar1 == '!') {
      iVar3 = FUN_4000_e018(param_1);
      if (iVar3 == 0x3d) {
        FUN_4000_de12(param_1,1);
        uVar4 = 0x12d;
      }
      else {
        uVar4 = 0x139;
      }
    }
    else if (cVar1 == '%') {
      uVar4 = 0x126;
    }
    else if (cVar1 == '&') {
      uVar2 = FUN_4000_e018(param_1);
      if (uVar2 == param_2) {
        FUN_4000_de12(param_1,1);
        uVar4 = 0x132;
      }
      else {
        uVar4 = 0x12f;
      }
    }
    else if (cVar1 == '\'') {
      uVar4 = 0x137;
    }
    else if (cVar1 == '(') {
      uVar4 = 0x134;
    }
    else if (cVar1 == ')') {
      uVar4 = 0x135;
    }
    else if (cVar1 == '*') {
      uVar4 = 0x125;
    }
    else if (cVar1 == '+') {
      uVar4 = 0x127;
    }
    else if (cVar1 == '-') {
      uVar4 = 0x128;
    }
    else if (cVar1 == '/') {
      uVar4 = 0x124;
    }
    else if (cVar1 == ':') {
      uVar4 = 0x13b;
    }
    else if (cVar1 == '<') {
      iVar3 = FUN_4000_e018(param_1);
      if (iVar3 == 0x3d) {
        FUN_4000_de12(param_1,1);
        uVar4 = 300;
      }
      else {
        uVar4 = 0x12a;
      }
    }
    else if (cVar1 == '=') {
      uVar2 = FUN_4000_e018(param_1);
      if (uVar2 != param_2) {
        return 0;
      }
      FUN_4000_de12(param_1,1);
      uVar4 = 0x12e;
    }
    else if (cVar1 == '>') {
      iVar3 = FUN_4000_e018(param_1);
      if (iVar3 == 0x3d) {
        FUN_4000_de12(param_1,1);
        uVar4 = 299;
      }
      else {
        uVar4 = 0x129;
      }
    }
    else {
      if (cVar1 != '?') {
        if (cVar1 != '[') {
          if (cVar1 != '^') {
            return 0;
          }
          return 0x130;
        }
        iVar3 = FUN_4000_de12(param_1,1);
        if (iVar3 != 0x21) {
          if (iVar3 != 0x3d) {
            return 0;
          }
          return 0x136;
        }
        return 0x138;
      }
      uVar4 = 0x13a;
    }
  }
  return uVar4;
}



/* Function: FUN_4000_51c0 at 4000:51c0 */

static void  FUN_4000_51c0(unsigned int param_1)

{
  FUN_4000_e0ce(param_1);
  FUN_4000_deee(param_1);
  return;
}



/* Function: FUN_4000_51d8 at 4000:51d8 */

static void  FUN_4000_51d8(unsigned int param_1)

{
  /* reg */
  
  if (*(char *)0x38c == '\x01') {
    FUN_1000_8f86();
  }
  *(unsigned char *)0x38c = 1;
  *(unsigned int *)0x38a = param_1;
  return;
}



/* Function: FUN_4000_60c6 at 4000:60c6 */

static void  FUN_4000_60c6(void)

{
  return;
}



/* Function: FUN_4000_7d28 at 4000:7d28 */

static int  FUN_4000_7d28(unsigned int *param_1)

{
  unsigned char bVar1;
  unsigned char *pbVar2;
  int iVar3;
  /* reg */
  /* reg */
  unsigned int local_4;
  
  iVar3 = 0;
  pbVar2 = (unsigned char *)*param_1;
  local_4 = ((unsigned int *)param_1)[1];
  bVar1 = *(unsigned char *)(*pbVar2 + 0x95f);
  while ((bVar1 & 4) == 0) {
    pbVar2 = pbVar2 + 1;
    bVar1 = *(unsigned char *)(*pbVar2 + 0x95f);
  }
  if (*pbVar2 == 0) {
    pbVar2 = (unsigned char *)0x0;
    local_4 = 0;
    iVar3 = -1;
  }
  else {
    bVar1 = *(unsigned char *)(*pbVar2 + 0x95f);
    while ((bVar1 & 4) != 0) {
      iVar3 = (unsigned int)*pbVar2 + iVar3 * 10 + -0x30;
      pbVar2 = pbVar2 + 1;
      bVar1 = *(unsigned char *)(*pbVar2 + 0x95f);
    }
  }
  *param_1 = (int)pbVar2;
  ((unsigned int *)param_1)[1] = local_4;
  return iVar3;
}



/* Function: FUN_4000_8746 at 4000:8746 */

static void  FUN_4000_8746(void)

{
  int iVar1;
  /* reg */
  /* reg */
  unsigned int uVar2;
  /* reg */
  
  uVar2 = (unsigned int)((unsigned long)*(unsigned long *)(0 + 0xc) >> 0x10);
  iVar1 = (int)*(unsigned long *)(0 + 0xc);
  *(unsigned int *)(iVar1 + 6) = (unsigned int)((char)*(unsigned long *)(0 + 0 + 0x4c4) != '\0');
  *(unsigned int *)(iVar1 + 8) = 0;
  FUN_4000_6608();
  return;
}



/* Function: FUN_4000_8828 at 4000:8828 */

static int  FUN_4000_8828(void)

{
  unsigned int *puVar1;
  /* reg */
  int iVar2;
  /* reg */
  /* reg */
  unsigned int uVar3;
  /* reg */
  /* reg */
  /* reg */
  unsigned long uVar4;
  
  puVar1 = (unsigned int *)(0 + 0);
  *puVar1 = *puVar1 | 0;
  if (*puVar1 == 0) {
    ;
    FUN_5000_31dc();
  }
  if ((*(unsigned char *)(*(unsigned char *)(0 + -1) + 0x95f) & 2) != 0) {
    *(char *)(0 + -1) = *(char *)(0 + -1) + -0x20;
  }
  uVar4 = *(unsigned long *)((int)*(unsigned long *)(0 + 0xc) + 2);
  if (*(char *)((int)uVar4 + 5) == 'S') {
    uVar4 = FUN_5000_2f7a(0,*(unsigned char *)(0 + -1));
  }
  else {
    uVar4 = FUN_5000_1e88(0,*(unsigned char *)(0 + -1));
  }
  uVar3 = (unsigned int)((unsigned long)*(unsigned long *)(0 + 0xc) >> 0x10);
  iVar2 = (int)*(unsigned long *)(0 + 0xc);
  *(unsigned int *)(iVar2 + 6) = (int)uVar4;
  *(unsigned int *)(iVar2 + 8) = (int)((unsigned long)uVar4 >> 0x10);
  return;
}



/* Function: FUN_4000_89ba at 4000:89ba */

static void  FUN_4000_89ba(void)

{
  return;
}



/* Function: FUN_4000_8bf6 at 4000:8bf6 */

static void  FUN_4000_8bf6(void)

{
  unsigned int uVar1;
  int iVar2;
  /* reg */
  /* reg */
  /* reg */
  /* reg */
  
  iVar2 = FUN_4000_e172();
  uVar1 = *(unsigned int *)(0 + 0xe);
  *(unsigned int *)(0 + 6) = *(unsigned char *)(iVar2 + 0x12) & 1;
  *(unsigned int *)(0 + 8) = 0;
  return;
}



/* Function: FUN_4000_8c88 at 4000:8c88 */

static void  FUN_4000_8c88(void)

{
  int iVar1;
  /* reg */
  int iVar2;
  /* reg */
  unsigned int uVar3;
  /* reg */
  unsigned int uStack0004;
  unsigned int uStack0006;
  
  uStack0006 = 0;
  uStack0004 = 0;
  iVar1 = FUN_4000_e172();
  uVar3 = (unsigned int)((unsigned long)*(unsigned long *)(0 + 0xc) >> 0x10);
  iVar2 = (int)*(unsigned long *)(0 + 0xc);
  *(unsigned int *)(iVar2 + 6) = (*(unsigned char *)(iVar1 + 0x12) & 2) >> 1;
  *(unsigned int *)(iVar2 + 8) = 0;
  return;
}



/* Function: FUN_4000_8cbe at 4000:8cbe */

static void  FUN_4000_8cbe(void)

{
  unsigned int uVar1;
  unsigned int uVar2;
  /* reg */
  /* reg */
  
  uVar1 = *(unsigned int *)0x884c;
  uVar2 = (unsigned int)((unsigned long)0 >> 0x10);
  *(unsigned int *)((int)0 + 6) = *(unsigned int *)0x884a;
  *(unsigned int *)((int)0 + 8) = uVar1;
  return;
}



/* Function: FUN_4000_8d68 at 4000:8d68 */

static void  FUN_4000_8d68(void)

{
  /* reg */
  /* reg */
  
  FUN_4000_b54e();
  func_0x0004b624(0x4870);
  func_0x0004b1ec(0x4877,2);
  func_0x0000ffff(0x4897,0,(-(*(int *)(0 + -6) == 0) & 1U) + 0x42,0);
  func_0x00058576(0,0x42e2);
  if (*(int *)(0 + -8) != 0 || *(int *)(0 + -10) != 0) {
    FUN_4000_bcf8(0 + -10);
  }
  return;
}



/* Function: FUN_4000_8fad at 4000:8fad */

static void  FUN_4000_8fad(void)

{
  /* reg */
  
  FUN_4000_f088(0 + -0xe);
  FUN_4000_cb18(0x4ac2,0 + -10);
  return;
}



/* Function: FUN_4000_9890 at 4000:9890 */

/* WARNING: Removing unreachable block (ram,0x000498ab) */

static void  FUN_4000_9890(void)

{
  int iVar1;
  unsigned int uVar2;
  /* reg */
  
  FUN_5000_80e6();
  FUN_5000_82c6(0x53d6,0x7fb4);
  FUN_5000_71b4(0x53f4,6,100,0,0,0,0,0,0,0xfab6,0x5412,0xfab6,0x53fa,0,0,0,0,0,0,0,0,0,0,0,0);
  iVar1 = *(int *)0x71a;
  uVar2 = *(unsigned int *)0x71c;
  *(int *)0x722 = iVar1;
  *(unsigned int *)0x724 = uVar2;
  *(int *)0x71e = iVar1 + -0x1788;
  *(unsigned int *)0x720 = uVar2;
  *(unsigned int *)0x726 = *(unsigned int *)0x71a;
  *(unsigned int *)0x728 = uVar2;
  return;
}



/* Function: FUN_4000_99b8 at 4000:99b8 */

static void  FUN_4000_99b8(unsigned int param_1,char *param_2,unsigned int param_3)

{
  char *pcVar1;
  char *pcVar2;
  char local_b;
  
  FUN_4000_e0ce(param_1);
  do {
    pcVar2 = param_2;
    if (*param_2 == '\0') break;
    pcVar2 = param_2 + 1;
    local_b = FUN_4000_de12(param_1,1);
    pcVar1 = param_2;
    param_2 = pcVar2;
  } while (*pcVar1 == local_b);
  if (pcVar2[-1] != local_b) {
    FUN_6000_4350();
  }
  return;
}



/* Function: FUN_4000_be10 at 4000:be10 */

static int  FUN_4000_be10(unsigned char *param_1)

{
  unsigned char bVar1;
  int iVar2;
  unsigned char *pbVar3;
  unsigned int uVar4;
  /* reg */
  
  uVar4 = (unsigned int)((unsigned long)param_1 >> 0x10);
  pbVar3 = (unsigned char *)param_1;
  iVar2 = 0;
  bVar1 = *param_1;
  while ((bVar1 != 0 &&
         (((bVar1 = *pbVar3, (*(unsigned char *)(bVar1 + 0x95f) & 8) != 0 || (bVar1 == 0x3d)) ||
          (bVar1 == 0x3b))))) {
    iVar2 = iVar2 + 1;
    pbVar3 = pbVar3 + 1;
    bVar1 = *pbVar3;
  }
  return iVar2;
}



/* Function: FUN_4000_de12 at 4000:de12 */

static int  FUN_4000_de12(unsigned int param_1,int param_2)

{
  unsigned int *puVar1;
  unsigned int uVar2;
  int iVar3;
  /* reg */
  
  if (*(int *)0x6ea == 0 && *(int *)0x6e8 == 0) {
    func_0x0009b196();
  }
  iVar3 = FUN_4000_dbc2(param_1);
  if (iVar3 != -1) {
    if ((iVar3 == 0xd) || (iVar3 == 10)) {
      *(unsigned int *)0x6e6 = 1;
      if (iVar3 == 10) {
        puVar1 = (unsigned int *)0x884a;
        uVar2 = *puVar1;
        *puVar1 = *puVar1 + 1;
        *(int *)0x884c = *(int *)0x884c + (unsigned int)(0xfffe < uVar2);
      }
    }
    else if ((*(int *)0x6e6 != 0) &&
            ((((*(unsigned char *)(iVar3 + 0x95f) & 7) == 0 || (iVar3 == 0x40)) || (iVar3 == 0x3a)))) {
      *(unsigned int *)0x6e6 = 0;
    }
    if ((iVar3 == 0x2f) && (param_2 != 0)) {
      iVar3 = FUN_4000_dbc2(param_1);
      if (iVar3 == 0x2a) {
        FUN_4000_dd92(param_1);
        iVar3 = 0x20;
      }
      else if (iVar3 == 0x2f) {
        do {
          iVar3 = FUN_4000_dbc2(param_1);
          if (iVar3 == -1) break;
        } while (iVar3 != 10);
        *(unsigned int *)0x6e6 = 1;
        puVar1 = (unsigned int *)0x884a;
        uVar2 = *puVar1;
        *puVar1 = *puVar1 + 1;
        *(int *)0x884c = *(int *)0x884c + (unsigned int)(0xfffe < uVar2);
      }
      else {
        FUN_4000_dfe4(iVar3);
        iVar3 = 0x2f;
      }
    }
  }
  return iVar3;
}



/* Function: FUN_4000_e018 at 4000:e018 */

static int  FUN_4000_e018(unsigned int param_1)

{
  unsigned int uVar1;
  
  uVar1 = FUN_4000_de12(param_1,1);
  FUN_4000_dfe4(uVar1);
  return;
}



/* Function: FUN_4000_e172 at 4000:e172 */

static int  FUN_4000_e172(int param_1)

{
  int iVar1;
  
  if ((param_1 < 0) || (0x19 < param_1)) {
    func_0x000abd66();
    iVar1 = 0x71b4;
  }
  else {
    iVar1 = param_1 * 0x1d + 0x71b4;
  }
  return iVar1;
}



/* Function: FUN_4000_ea28 at 4000:ea28 */

static unsigned char 
FUN_4000_ea28(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4)

{
  unsigned char local_1a;
  unsigned char local_19;
  unsigned char local_16 [2];
  unsigned int local_14;
  unsigned char local_c [6];
  unsigned int local_6;
  unsigned char local_3;
  
  func_0x000a9ed2();
  func_0x000aa422(0xa54e,local_c);
  local_19 = 0x43;
  local_1a = 0;
  local_6 = FUN_4000_eebe(param_3,param_4);
  local_14 = FUN_4000_eeb6(param_3,param_4);
  local_3 = FUN_4000_ee02(0xa5a3,0x21,&local_1a);
  func_0x000a6aee(0xa5a3,param_1,param_2,local_16);
  return local_3;
}



/* Function: FUN_4000_eab2 at 4000:eab2 */

static void  FUN_4000_eab2(unsigned int param_1,unsigned int param_2,unsigned int param_3)

{
  unsigned char local_18;
  unsigned char local_17;
  unsigned char local_14 [2];
  unsigned int local_12;
  unsigned char local_a [6];
  unsigned int local_4;
  
  func_0x000aa772();
  func_0x000aab22(0xa5d8,local_a);
  local_17 = 0x43;
  local_18 = 1;
  local_4 = FUN_4000_eebe(param_2,param_3);
  local_12 = FUN_4000_eeb6(param_2,param_3);
  func_0x000a9d5e(0xa613,local_14);
  FUN_4000_ee02(0xa53d,0x21,&local_18);
  return;
}



/* Function: FUN_4000_ecaa at 4000:ecaa */

static void  FUN_4000_ecaa(void)

{
  func_0x000aa95e();
  return;
}



/* Function: FUN_4000_ecbc at 4000:ecbc */

static void  FUN_4000_ecbc(void)

{
  func_0x000abe0e();
  return;
}



/* Function: FUN_4000_ecd2 at 4000:ecd2 */

static unsigned int  FUN_4000_ecd2(void)

{
  int iVar1;
  
  iVar1 = FUN_4000_ee02();
  if (iVar1 != 0) {
    return 0;
  }
  return 0;
}



/* Function: FUN_4000_edd0 at 4000:edd0 */

static void  FUN_4000_edd0(void)

{
  FUN_4000_ee02();
  return;
}



/* Function: FUN_4000_eec6 at 4000:eec6 */

static unsigned int  FUN_4000_eec6(unsigned int param_1,unsigned int param_2)

{
  return param_2;
}



/* Function: FUN_4000_eed8 at 4000:eed8 */

static unsigned int  FUN_4000_eed8(unsigned int param_1,unsigned int param_2)

{
  int iVar1;
  unsigned char local_30 [27];
  unsigned int local_15;
  unsigned int local_4;
  
  func_0x000adb92();
  local_4 = local_4 | 0x27;
  iVar1 = FUN_4000_f1f8(0xa91a,param_1,param_2,local_30);
  if (iVar1 != 0) {
    return 0xffff;
  }
  return local_15;
}



/* Function: FUN_4000_f1e4 at 4000:f1e4 */

static void  FUN_4000_f1e4(unsigned int param_1,unsigned int param_2)

{
  FUN_4000_f0b0(param_1,param_2,0xffff,0xffff);
  return;
}



/* Function: FUN_4000_f5c6 at 4000:f5c6 */

static unsigned int  FUN_4000_f5c6(int param_1,int param_2,unsigned int param_3)

{
  int iVar1;
  unsigned int uVar2;
  unsigned int uVar3;
  
  uVar2 = 0xa961;
  iVar1 = func_0x000adb40();
  if (iVar1 == 0) {
    uVar2 = 0xb0fe;
    func_0x000c0a96(0xa961,0x5b8a);
  }
  uVar3 = uVar2;
  if (param_2 == 0 && param_1 == 0) {
    uVar3 = 0xb112;
    func_0x000b54a6(uVar2,&param_1);
  }
  func_0x000b3858(uVar3,param_1,param_2,0x750e);
  return 0;
}



/* Function: FUN_4000_f618 at 4000:f618 */

static void  FUN_4000_f618(void)

{
  unsigned char local_20a [260];
  unsigned char local_106 [260];
  
  func_0x000b5cc8();
  func_0x000b56e8(0xb13f,local_20a);
  func_0x000b4406(0xb0e1,local_106,local_20a);
  return;
}



/* Function: FUN_4000_f656 at 4000:f656 */

static void  FUN_4000_f656(void)

{
  unsigned char local_106 [260];
  
  func_0x000b5b88();
  func_0x000b4c22(0xb12b,local_106);
  return;
}



/* Function: FUN_4000_f69c at 4000:f69c */

static unsigned int  FUN_4000_f69c(int *param_1,unsigned int param_2)

{
  int iVar1;
  /* reg */
  
  func_0x000b60f6();
  iVar1 = func_0x000b3ef2(0xb18c,0x750e);
  *param_1 = iVar1;
  param_1[1] = 0;
  if (0 == 0 && *param_1 == 0) {
    return 1;
  }
  return 0;
}



/* Function: FUN_4000_f6de at 4000:f6de */

static int  FUN_4000_f6de(unsigned int param_1,unsigned int param_2)

{
  int iVar1;
  int iVar2;
  unsigned int uVar3;
  /* reg */
  
  uVar3 = 0xb205;
  iVar1 = func_0x000b6918();
  if (0x200 < (unsigned int)(iVar1 + *(int *)0x6fa)) {
    uVar3 = 0xb219;
    func_0x000c1c46(0xb205,0x5bbe);
  }
  func_0x000b6c58(uVar3,*(int *)0x6fa + 0x7612);
  iVar1 = func_0x000b5d32(0xb238,*(int *)0x6fa + 0x7612);
  if (iVar1 == 0) {
    iVar2 = func_0x000b63f8(0xb1be,param_1,param_2);
    *(int *)0x6fa = *(int *)0x6fa + iVar2 + 1;
  }
  return iVar1;
}



/* Function: FUN_4000_f748 at 4000:f748 */

static void  FUN_4000_f748(void)

{
  func_0x000b67a8();
  func_0x000b6770(0xb1ed,0x750e);
  return;
}



/* Function: FUN_4000_f788 at 4000:f788 */

static char *  FUN_4000_f788(char *param_1,unsigned int param_2)

{
  char cVar1;
  char *pcVar2;
  
  cVar1 = *param_1;
  pcVar2 = param_1;
  while (cVar1 == '\0') {
    if (*pcVar2 == '/') {
      *pcVar2 = '\\';
    }
    pcVar2 = pcVar2 + 1;
    cVar1 = *pcVar2;
  }
  return param_1;
}



/* Function: FUN_4000_f99c at 4000:f99c */

static void  FUN_4000_f99c(void)

{
  func_0x000b7128();
  return;
}



/* Function: FUN_4000_fc48 at 4000:fc48 */

static void 
FUN_4000_fc48(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             unsigned int param_5,unsigned int param_6)

{
  FUN_4000_fc64(param_1,param_2,param_3,param_4,param_5,param_6);
  return;
}



/* Function: FUN_5000_0084 at 5000:0084 */

static int 
FUN_5000_0084(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             int param_5,int param_6)

{
  int iVar1;
  unsigned int uVar2;
  /* reg */
  long lVar3;
  unsigned char local_10a [260];
  unsigned long local_6;
  
  uVar2 = 0xbbd0;
  func_0x000c05d8();
  while( 1 ) {
    iVar1 = func_0x000bd430(uVar2,local_10a,param_3,param_4);
    if (iVar1 != -1) {
      return iVar1;
    }
    if ((param_6 == 0 && param_5 == 0) || (*(char *)0x704 != '\0')) break;
    uVar2 = 0xbae3;
    lVar3 = func_0x000bf976(0xbb6f,0,0);
    local_6 = lVar3;
    if (lVar3 != 0) {
      FUN_5000_3cee(*(unsigned int *)0x780,lVar3);
    }
    FUN_5000_3cee(*(unsigned int *)0x780,0x5d66);
    FUN_5000_3cee(*(unsigned int *)0x780,param_5,param_6);
    FUN_5000_431a(*(unsigned int *)0x780);
  }
  return -1;
}



/* Function: FUN_5000_012a at 5000:012a */

static int  FUN_5000_012a(unsigned char *param_1,int param_2)

{
  unsigned char bVar1;
  unsigned int uVar2;
  unsigned char *pbVar3;
  int iVar4;
  
  iVar4 = 0;
  pbVar3 = (unsigned char *)param_1;
  while( 1 ) {
    bVar1 = *pbVar3;
    uVar2 = (unsigned int)bVar1;
    if (uVar2 == 0) break;
    if ((0x60 < bVar1) && (bVar1 < 0x7b)) {
      uVar2 = uVar2 - 0x20;
    }
    iVar4 = iVar4 + uVar2;
    pbVar3 = pbVar3 + 1;
  }
  return iVar4 % param_2;
}



/* Function: FUN_5000_04c0 at 5000:04c0 */

static int 
FUN_5000_04c0(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned int param_4,
             unsigned int param_5,unsigned int param_6,unsigned int param_7)

{
  int iVar1;
  /* reg */
  
  iVar1 = FUN_5000_02a2(param_1,param_2,param_3,param_4,param_5,3);
  *(unsigned int *)(iVar1 + 0x17) = param_6;
  *(unsigned int *)(iVar1 + 0x19) = param_7;
  return iVar1;
}



/* Function: FUN_5000_04f2 at 5000:04f2 */

static int  FUN_5000_04f2(unsigned long param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  unsigned int uVar6;
  /* reg */
  int local_e;
  int local_8;
  int local_4;
  
  iVar3 = 0;
  local_e = 0;
  do {
    uVar6 = (unsigned int)((unsigned long)param_1 >> 0x10);
    local_4 = *(int *)((int)param_1 + 0x2e);
    piVar2 = (int *)(*(int *)((int)param_1 + 0x2c) + iVar3);
    local_8 = 0;
    if (local_4 != 0 || piVar2 != (int *)0x0) {
      piVar5 = (int *)0x0;
      do {
        piVar4 = piVar2;
        if ((piVar4[2] != 0 || piVar4[1] != 0) && (*piVar4 == 6)) {
          piVar4[2] = 0;
          piVar4[1] = 0;
          if (local_8 != 0 || piVar5 != (int *)0x0) {
            uVar6 = *(unsigned int *)((int)piVar4 + 0x1f);
            *(unsigned int *)((int)piVar5 + 0x1d) = *(unsigned int *)((int)piVar4 + 0x1d);
            *(unsigned int *)((int)piVar5 + 0x1f) = uVar6;
            uVar6 = *(unsigned int *)0x718;
            *(unsigned int *)((int)piVar4 + 0x1d) = *(unsigned int *)0x716;
            *(unsigned int *)((int)piVar4 + 0x1f) = uVar6;
            *(unsigned int *)0x716 = (unsigned int)piVar4;
            *(int *)0x718 = local_4;
            local_4 = local_8;
            piVar4 = piVar5;
          }
          local_e = local_e + 1;
        }
        local_8 = local_4;
        piVar1 = (int *)((int)piVar4 + 0x1d);
        local_4 = *(int *)((int)piVar4 + 0x1f);
        piVar2 = (int *)*piVar1;
        piVar5 = piVar4;
      } while (local_4 != 0 || (int *)*piVar1 != (int *)0x0);
    }
    iVar3 = iVar3 + 0x21;
  } while (iVar3 < 0x2aab);
  return local_e;
}



/* Function: FUN_5000_127e at 5000:127e */

static void 
FUN_5000_127e(unsigned int param_1,unsigned int param_2,int param_3,unsigned int param_4)

{
  if ((*(unsigned char *)(param_3 + 0x29) & 0x40) != 0) {
    func_0x000cffb8();
    return;
  }
  func_0x0000ca93();
  return;
}



/* Function: FUN_5000_12fc at 5000:12fc */

static void  FUN_5000_12fc(int *param_1)

{
  int *piVar1;
  unsigned int uVar2;
  unsigned int uVar3;
  /* reg */
  
  uVar2 = (unsigned int)((unsigned long)param_1 >> 0x10);
  piVar1 = (int *)param_1;
  if ((piVar1[1] != 0 || *param_1 != 0) &&
     ((piVar1[0x12] != *param_1 || (piVar1[0x13] != piVar1[1])))) {
    ;
    func_0x000d2828();
  }
  uVar3 = (unsigned int)((unsigned long)param_1 >> 0x10);
  piVar1 = (int *)param_1;
  uVar2 = 0;
  if (piVar1[0x13] != 0 || piVar1[0x12] != 0) {
    uVar2 = 0xce5f;
    func_0x000d2a58(0,piVar1 + 0x12,uVar3);
  }
  uVar3 = (unsigned int)((unsigned long)param_1 >> 0x10);
  piVar1 = (int *)param_1;
  piVar1[1] = 0;
  *param_1 = 0;
  piVar1[0x13] = 0;
  piVar1[0x12] = 0;
  func_0x000d1e68(uVar2,&param_1);
  return;
}



/* Function: FUN_5000_2512 at 5000:2512 */

static void  FUN_5000_2512(unsigned int param_1,unsigned int *param_2,unsigned int param_3)

{
  unsigned long uVar1;
  unsigned char local_2a [2];
  unsigned int local_28;
  unsigned int local_26;
  unsigned int local_24;
  unsigned int local_22;
  unsigned int local_20;
  unsigned int local_1e;
  unsigned int local_1c;
  unsigned int local_1a;
  unsigned int local_18;
  int local_16;
  unsigned char local_14;
  
  func_0x000e1d42();
  FUN_5000_25d8(param_1,local_2a);
  param_2[6] = local_24;
  param_2[7] = local_22;
  param_2[4] = local_20;
  param_2[5] = local_1e;
  *(unsigned char *)(param_2 + 0x14) = local_14;
  *(unsigned int *)((int)param_2 + 0x29) =
       *(unsigned int *)((int)param_2 + 0x29) ^
       ((unsigned char)(*(unsigned char *)(param_2 + 0x15) ^ (unsigned char)((unsigned int)(local_16 << 10) >> 8)) & 4) << 8;
  *(unsigned int *)((int)param_2 + 0x2b) = local_18;
  if (*(char *)(param_2 + 0x14) == '\v') {
    *(unsigned char *)((int)param_2 + 0x29) = *(unsigned char *)((int)param_2 + 0x29) | 2;
  }
  param_2[0xf] = local_1c;
  param_2[0xe] = local_1a;
  param_2[2] = local_28;
  param_2[3] = local_26;
  uVar1 = FUN_5000_ff10(0xdd35,param_1,0,0,1,*param_2,param_2[1],0x61ec);
  param_2[8] = (int)uVar1;
  param_2[9] = (int)((unsigned long)uVar1 >> 0x10);
  return;
}



/* Function: FUN_5000_2cde at 5000:2cde */

static void  FUN_5000_2cde(void)

{
  return;
}



/* Function: FUN_5000_2ce0 at 5000:2ce0 */

static void 
FUN_5000_2ce0(unsigned int param_1,unsigned int param_2,unsigned char param_3,unsigned int param_4,
             unsigned int param_5)

{
  char *pcVar1;
  unsigned int uVar2;
  int iVar3;
  int iVar4;
  char *pcVar5;
  int *piVar6;
  unsigned int uVar7;
  /* reg */
  unsigned int uVar8;
  /* reg */
  /* reg */
  long lVar9;
  int local_26 [17];
  unsigned int local_4;
  
  if (*(int *)0x758 == 0 && *(int *)0x756 == 0) {
    ;
    func_0x000ec896();
  }
  if (0x1a < param_3) {
    if ((*(unsigned char *)(param_3 + 0x95f) & 2) != 0) {
      param_3 = param_3 - 0x20;
    }
    param_3 = param_3 + 0xbf;
  }
  uVar2 = FUN_5000_ecaa(0);
  if (uVar2 != param_3) {
    FUN_5000_ecbc(0,param_3);
  }
  uVar2 = FUN_5000_ecaa(0);
  uVar8 = 0;
  if (uVar2 != param_3) {
    uVar8 = 0xe8c9;
    lVar9 = func_0x000ed7d6(0,0,0);
    local_4 = (unsigned int)((unsigned long)lVar9 >> 0x10);
    if (lVar9 != 0) {
      FUN_5000_3cee(*(unsigned int *)0x77a,lVar9);
    }
    FUN_5000_3cee(*(unsigned int *)0x77a,0x652e);
    FUN_5000_3cee(*(unsigned int *)0x77a,0,0);
    FUN_5000_3cee(*(unsigned int *)0x77a,(int)lVar9,local_4);
    FUN_5000_3ee8(*(unsigned int *)0x77a);
    FUN_5000_4018(1);
  }
  func_0x000ed668(uVar8,*(unsigned int *)0x756,*(unsigned int *)0x758,param_4,param_5);
  uVar8 = 0xe975;
  iVar3 = func_0x000ee018(0xe8d9,*(unsigned int *)0x756,*(unsigned int *)0x758);
  uVar7 = (unsigned int)((unsigned long)*(unsigned long *)0x756 >> 0x10);
  iVar4 = (int)*(unsigned long *)0x756;
  if (*(char *)(iVar4 + iVar3 + -1) == '\\') {
    *(unsigned char *)(iVar4 + iVar3 + -1) = 0;
  }
  iVar3 = 0;
  iVar4 = 0;
  pcVar1 = (char *)*(unsigned long *)0x756;
  uVar7 = (unsigned int)((unsigned long)pcVar1 >> 0x10);
  pcVar5 = (char *)pcVar1;
  if (*pcVar1 != '\0') {
    piVar6 = local_26;
    do {
      if (pcVar5[iVar4] == '\\') {
        pcVar5[iVar4] = '\0';
        *piVar6 = iVar4 + 1;
        piVar6 = piVar6 + 1;
        iVar3 = iVar3 + 1;
      }
      iVar4 = iVar4 + 1;
      uVar7 = (unsigned int)((unsigned long)*(unsigned long *)0x756 >> 0x10);
      pcVar5 = (char *)(char *)*(unsigned long *)0x756;
    } while (pcVar5[iVar4] != '\0');
  }
  local_26[iVar3] = -1;
  FUN_5000_f67c(0xe975,0xdae);
  if (local_26[0] != -1) {
    piVar6 = local_26;
    local_4 = 0;
    do {
      iVar3 = FUN_5000_f67c(uVar8,*(int *)0x756 + *piVar6,*(unsigned int *)0x758);
      if (iVar3 != 0) {
        uVar7 = 0xe9a3;
        func_0x000f3bbc(uVar8,param_1,param_2,0x654e);
        iVar3 = FUN_5000_f768(0xe9a3,*(int *)0x756 + *piVar6,*(unsigned int *)0x758);
        if (iVar3 != 0) {
          uVar7 = 0xe9e8;
          func_0x000f9936(0xe9a3,0x655a);
        }
        FUN_5000_35be(0x6586);
        iVar3 = FUN_5000_f67c(uVar7,*(int *)0x756 + *piVar6,*(unsigned int *)0x758);
        uVar8 = uVar7;
        if (iVar3 != 0) {
          uVar8 = 0xe74c;
          func_0x000f6f76(uVar7,0x658e);
        }
      }
      piVar6 = piVar6 + 1;
    } while (*piVar6 != -1);
  }
  return;
}



/* Function: FUN_5000_35be at 5000:35be */

static int  FUN_5000_35be(void)

{
  return;
}



/* Function: FUN_5000_3610 at 5000:3610 */

static void 
FUN_5000_3610(unsigned int param_1,unsigned int param_2,unsigned int param_3,unsigned char param_4)

{
  FUN_5000_362e(param_1,param_2,param_3,param_3,param_4);
  return;
}



/* Function: FUN_5000_3a48 at 5000:3a48 */

static void  FUN_5000_3a48(unsigned int param_1,unsigned int param_2)

{
  int iVar1;
  
  FUN_5000_3610(param_1,param_2,0,3);
  iVar1 = FUN_5000_e030();
  if (iVar1 == 0x28) {
    func_0x00055c6e();
  }
  return;
}



/* Function: FUN_5000_3a82 at 5000:3a82 */

/* WARNING: Removing unreachable block (ram,0x00053ab8) */

static void  FUN_5000_3a82(unsigned int param_1,unsigned int param_2)

{
  unsigned int local_6;
  
  func_0x00055c6e();
  FUN_5000_3610(param_1,param_2,local_6,1);
  return;
}



/* Function: FUN_5000_3bde at 5000:3bde */

static unsigned int  FUN_5000_3bde(void)

{
  int iVar1;
  unsigned int uVar2;
  /* reg */
  
  iVar1 = FUN_5000_3c0e();
  if (iVar1 != 0) {
    iVar1 = FUN_5000_3c82();
    if (iVar1 != 0) {
      FUN_5000_3cee(*(unsigned int *)0x77e,0x673a);
      uVar2 = FUN_5000_437c(*(unsigned int *)0x77e);
      return uVar2;
    }
  }
  return 0;
}



/* Function: FUN_5000_3ee8 at 5000:3ee8 */

static int  FUN_5000_3ee8(unsigned int param_1)

{
  unsigned int uVar1;
  unsigned int uVar2;
  unsigned int uVar3;
  unsigned int uVar4;
  unsigned int uVar5;
  unsigned int uVar6;
  unsigned int uVar7;
  unsigned int uVar8;
  unsigned int local_6;
  unsigned int local_4;
  
  FUN_5000_3f38(&local_6);
  uVar8 = 0x30fa;
  uVar7 = 0x10;
  uVar6 = 0;
  uVar5 = 0;
  uVar4 = 0;
  uVar3 = 0;
  uVar2 = 0;
  uVar1 = 0;
  func_0x000fffae();
  FUN_5000_3fea(local_6,local_4,param_1,uVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8);
  func_0x000f9fc6(0xf9d1,param_1);
  return;
}



/* Function: FUN_5000_3f38 at 5000:3f38 */

static int  FUN_5000_3f38(unsigned int *param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  unsigned int uVar4;
  unsigned int uVar5;
  unsigned int uVar6;
  /* reg */
  unsigned int local_4;
  
  piVar1 = (int *)(param_2 * 4 + 0x7c68);
  uVar6 = 0xfa9d;
  func_0x000fed56();
  local_4 = 0;
  if (*(char *)((int)*(unsigned long *)piVar1 + 0x1a) != '\0') {
    iVar3 = 0;
    do {
      uVar4 = (unsigned int)((unsigned long)*(unsigned long *)piVar1 >> 0x10);
      iVar2 = (int)*(unsigned long *)piVar1 + 0x1f;
      uVar5 = (unsigned int)((unsigned long)param_1 >> 0x10);
      func_0x000ff4f2(uVar6,*param_1,((unsigned int *)param_1)[1],*(unsigned int *)(iVar2 + iVar3),
                      *(unsigned int *)(iVar2 + iVar3 + 2));
      func_0x000ff662(0xfab3,*param_1,((unsigned int *)param_1)[1],0x6774);
      uVar6 = 0xfa1d;
      func_0x000fe638(0xfaca,*piVar1 + iVar3 + 0x1f,*(unsigned int *)(param_2 * 4 + 0x7c6a));
      iVar3 = iVar3 + 4;
      local_4 = local_4 + 1;
    } while (local_4 < *(unsigned char *)((int)*(unsigned long *)piVar1 + 0x1a));
  }
  return;
}



/* Function: FUN_5000_3fea at 5000:3fea */

static int  FUN_5000_3fea(unsigned int param_1,unsigned int param_2,int param_3)

{
  unsigned long uVar1;
  /* reg */
  
  func_0x000feaf8();
  uVar1 = *(unsigned long *)(param_3 * 4 + 0x7c68);
  *(unsigned char *)((int)uVar1 + 0x1a) = 0;
  uVar1 = *(unsigned long *)(param_3 * 4 + 0x7c68);
  *(unsigned int *)((int)uVar1 + 0x18) = 0;
  return;
}




/* func_0x overlay stub bodies */
static int func_0x00000099() { return 0; }
static int func_0x000000c3() { return 0; }
static int func_0x000000d1() { return 0; }
static int func_0x0000010f() { return 0; }
static int func_0x0000014b() { return 0; }
static int func_0x00000174() { return 0; }
static int func_0x00000189() { return 0; }
static int func_0x000001ed() { return 0; }
static int func_0x0000021d() { return 0; }
static int func_0x0000023f() { return 0; }
static int func_0x00000277() { return 0; }
static int func_0x000002da() { return 0; }
static int func_0x000002f9() { return 0; }
static int func_0x0000030a() { return 0; }
static int func_0x00000329() { return 0; }
static int func_0x00000343() { return 0; }
static int func_0x00000370() { return 0; }
static int func_0x000003a2() { return 0; }
static int func_0x0000043b() { return 0; }
static int func_0x000004f2() { return 0; }
static int func_0x0000059b() { return 0; }
static int func_0x000005bd() { return 0; }
static int func_0x000006ee() { return 0; }
static int func_0x000008b3() { return 0; }
static int func_0x00000ea6() { return 0; }
static int func_0x0000141c() { return 0; }
static int func_0x000014fa() { return 0; }
static int func_0x00001d16() { return 0; }
static int func_0x00001d83() { return 0; }
static int func_0x00001db6() { return 0; }
static int func_0x00001dd4() { return 0; }
static int func_0x00001e09() { return 0; }
static int func_0x00001e20() { return 0; }
static int func_0x00001e38() { return 0; }
static int func_0x00001e66() { return 0; }
static int func_0x00001e82() { return 0; }
static int func_0x00001ea6() { return 0; }
static int func_0x00001ebc() { return 0; }
static int func_0x00001ed5() { return 0; }
static int func_0x00001f0c() { return 0; }
static int func_0x00001f33() { return 0; }
static int func_0x00001f52() { return 0; }
static int func_0x00001f7d() { return 0; }
static int func_0x00001f9d() { return 0; }
static int func_0x00001fcc() { return 0; }
static int func_0x0000205f() { return 0; }
static int func_0x000020d4() { return 0; }
static int func_0x000020fb() { return 0; }
static int func_0x00002120() { return 0; }
static int func_0x00002147() { return 0; }
static int func_0x000021bd() { return 0; }
static int func_0x0000226b() { return 0; }
static int func_0x000022df() { return 0; }
static int func_0x000028ad() { return 0; }
static int func_0x000028c3() { return 0; }
static int func_0x00002ac7() { return 0; }
static int func_0x00002adf() { return 0; }
static int func_0x00002aff() { return 0; }
static int func_0x00002dfe() { return 0; }
static int func_0x000035a2() { return 0; }
static int func_0x00003705() { return 0; }
static int func_0x0000372b() { return 0; }
static int func_0x0000374f() { return 0; }
static int func_0x000037ca() { return 0; }
static int func_0x00003ae1() { return 0; }
static int func_0x00004107() { return 0; }
static int func_0x0000412a() { return 0; }
static int func_0x0000412f() { return 0; }
static int func_0x00004145() { return 0; }
static int func_0x000042bc() { return 0; }
static int func_0x000042c8() { return 0; }
static int func_0x000042f2() { return 0; }
static int func_0x000042fb() { return 0; }
static int func_0x000042fe() { return 0; }
static int func_0x00004341() { return 0; }
static int func_0x00004385() { return 0; }
static int func_0x000043dc() { return 0; }
static int func_0x0000440e() { return 0; }
static int func_0x0000447e() { return 0; }
static int func_0x00004509() { return 0; }
static int func_0x00004519() { return 0; }
static int func_0x00004561() { return 0; }
static int func_0x000045a0() { return 0; }
static int func_0x0000463e() { return 0; }
static int func_0x0000468e() { return 0; }
static int func_0x000046bc() { return 0; }
static int func_0x00004b94() { return 0; }
static int func_0x00004cb4() { return 0; }
static int func_0x00004db4() { return 0; }
static int func_0x00004ed3() { return 0; }
static int func_0x00004f34() { return 0; }
static int func_0x00005166() { return 0; }
static int func_0x00005184() { return 0; }
static int func_0x00005384() { return 0; }
static int func_0x000061e2() { return 0; }
static int func_0x00006284() { return 0; }
static int func_0x00006308() { return 0; }
static int func_0x0000632c() { return 0; }
static int func_0x00006336() { return 0; }
static int func_0x0000633c() { return 0; }
static int func_0x00006350() { return 0; }
static int func_0x00006366() { return 0; }
static int func_0x00006370() { return 0; }
static int func_0x000063ab() { return 0; }
static int func_0x000063c3() { return 0; }
static int func_0x000063d2() { return 0; }
static int func_0x00006410() { return 0; }
static int func_0x0000643a() { return 0; }
static int func_0x000064bc() { return 0; }
static int func_0x000064c5() { return 0; }
static int func_0x0000675c() { return 0; }
static int func_0x00006aa6() { return 0; }
static int func_0x00006ac0() { return 0; }
static int func_0x00006ad5() { return 0; }
static int func_0x00006af5() { return 0; }
static int func_0x00006b3a() { return 0; }
static int func_0x00006c24() { return 0; }
static int func_0x00006c4c() { return 0; }
static int func_0x00006cf2() { return 0; }
static int func_0x00006d0f() { return 0; }
static int func_0x00006eba() { return 0; }
static int func_0x00006ec0() { return 0; }
static int func_0x00006ed8() { return 0; }
static int func_0x00006ede() { return 0; }
static int func_0x00006f02() { return 0; }
static int func_0x00006f48() { return 0; }
static int func_0x00006f5b() { return 0; }
static int func_0x00006f63() { return 0; }
static int func_0x00006f86() { return 0; }
static int func_0x00007078() { return 0; }
static int func_0x00007242() { return 0; }
static int func_0x000072a1() { return 0; }
static int func_0x000072d3() { return 0; }
static int func_0x000072f2() { return 0; }
static int func_0x00007454() { return 0; }
static int func_0x000074f9() { return 0; }
static int func_0x00007548() { return 0; }
static int func_0x000075b6() { return 0; }
static int func_0x000075c5() { return 0; }
static int func_0x000075dc() { return 0; }
static int func_0x00007654() { return 0; }
static int func_0x0000765f() { return 0; }
static int func_0x00007667() { return 0; }
static int func_0x00007677() { return 0; }
static int func_0x00007684() { return 0; }
static int func_0x0000768e() { return 0; }
static int func_0x0000779a() { return 0; }
static int func_0x000077eb() { return 0; }
static int func_0x00007823() { return 0; }
static int func_0x0000790e() { return 0; }
static int func_0x00007935() { return 0; }
static int func_0x00007949() { return 0; }
static int func_0x0000795d() { return 0; }
static int func_0x00007a03() { return 0; }
static int func_0x00007a0d() { return 0; }
static int func_0x00007a97() { return 0; }
static int func_0x00007b72() { return 0; }
static int func_0x00007baf() { return 0; }
static int func_0x00007bcc() { return 0; }
static int func_0x00007bdb() { return 0; }
static int func_0x00007be8() { return 0; }
static int func_0x00007c4c() { return 0; }
static int func_0x00007d03() { return 0; }
static int func_0x00007d31() { return 0; }
static int func_0x00007d3b() { return 0; }
static int func_0x00007d4f() { return 0; }
static int func_0x00007d96() { return 0; }
static int func_0x00007dab() { return 0; }
static int func_0x00007dcc() { return 0; }
static int func_0x00007dd8() { return 0; }
static int func_0x00007ddc() { return 0; }
static int func_0x00007fdd() { return 0; }
static int func_0x00007fe6() { return 0; }
static int func_0x00007ff0() { return 0; }
static int func_0x00007ff9() { return 0; }
static int func_0x00008003() { return 0; }
static int func_0x0000800c() { return 0; }
static int func_0x00008016() { return 0; }
static int func_0x0000801f() { return 0; }
static int func_0x00008029() { return 0; }
static int func_0x00008032() { return 0; }
static int func_0x0000803c() { return 0; }
static int func_0x00008044() { return 0; }
static int func_0x00008045() { return 0; }
static int func_0x0000804f() { return 0; }
static int func_0x00008058() { return 0; }
static int func_0x00008062() { return 0; }
static int func_0x0000806b() { return 0; }
static int func_0x00008075() { return 0; }
static int func_0x0000807e() { return 0; }
static int func_0x00008088() { return 0; }
static int func_0x00008091() { return 0; }
static int func_0x0000810b() { return 0; }
static int func_0x00008148() { return 0; }
static int func_0x000081d3() { return 0; }
static int func_0x00008269() { return 0; }
static int func_0x0000827a() { return 0; }
static int func_0x00008282() { return 0; }
static int func_0x0000828b() { return 0; }
static int func_0x000082d8() { return 0; }
static int func_0x000082e7() { return 0; }
static int func_0x00008308() { return 0; }
static int func_0x00008310() { return 0; }
static int func_0x00008388() { return 0; }
static int func_0x00008398() { return 0; }
static int func_0x0000850b() { return 0; }
static int func_0x0000853c() { return 0; }
static int func_0x0000857e() { return 0; }
static int func_0x0000858e() { return 0; }
static int func_0x0000859e() { return 0; }
static int func_0x000085ae() { return 0; }
static int func_0x000085bc() { return 0; }
static int func_0x000085d2() { return 0; }
static int func_0x00008605() { return 0; }
static int func_0x000087de() { return 0; }
static int func_0x000087ff() { return 0; }
static int func_0x00008858() { return 0; }
static int func_0x0000889c() { return 0; }
static int func_0x000089a0() { return 0; }
static int func_0x000089af() { return 0; }
static int func_0x000089d3() { return 0; }
static int func_0x00008a02() { return 0; }
static int func_0x00008a0f() { return 0; }
static int func_0x00008a31() { return 0; }
static int func_0x00008ad3() { return 0; }
static int func_0x00008b5f() { return 0; }
static int func_0x00008d25() { return 0; }
static int func_0x00008e62() { return 0; }
static int func_0x00008edd() { return 0; }
static int func_0x00008f6b() { return 0; }
static int func_0x00008ff4() { return 0; }
static int func_0x0000910e() { return 0; }
static int func_0x000092aa() { return 0; }
static int func_0x00009308() { return 0; }
static int func_0x00009332() { return 0; }
static int func_0x00009360() { return 0; }
static int func_0x0000938e() { return 0; }
static int func_0x000093bc() { return 0; }
static int func_0x000093ea() { return 0; }
static int func_0x00009446() { return 0; }
static int func_0x00009450() { return 0; }
static int func_0x00009474() { return 0; }
static int func_0x000094a2() { return 0; }
static int func_0x000094d0() { return 0; }
static int func_0x000094fe() { return 0; }
static int func_0x0000952c() { return 0; }
static int func_0x00009534() { return 0; }
static int func_0x0000955a() { return 0; }
static int func_0x00009588() { return 0; }
static int func_0x00009596() { return 0; }
static int func_0x000095b6() { return 0; }
static int func_0x000095e4() { return 0; }
static int func_0x00009612() { return 0; }
static int func_0x00009640() { return 0; }
static int func_0x0000966e() { return 0; }
static int func_0x00009680() { return 0; }
static int func_0x00009764() { return 0; }
static int func_0x0000979e() { return 0; }
static int func_0x00009808() { return 0; }
static int func_0x0000981a() { return 0; }
static int func_0x00009823() { return 0; }
static int func_0x0000982c() { return 0; }
static int func_0x00009835() { return 0; }
static int func_0x0000983e() { return 0; }
static int func_0x00009847() { return 0; }
static int func_0x00009850() { return 0; }
static int func_0x00009859() { return 0; }
static int func_0x00009862() { return 0; }
static int func_0x0000986b() { return 0; }
static int func_0x00009874() { return 0; }
static int func_0x0000987d() { return 0; }
static int func_0x00009886() { return 0; }
static int func_0x0000988f() { return 0; }
static int func_0x00009898() { return 0; }
static int func_0x000098a1() { return 0; }
static int func_0x000098aa() { return 0; }
static int func_0x000098b3() { return 0; }
static int func_0x000098bc() { return 0; }
static int func_0x000098c5() { return 0; }
static int func_0x000098ce() { return 0; }
static int func_0x000098d7() { return 0; }
static int func_0x000098e0() { return 0; }
static int func_0x0000999d() { return 0; }
static int func_0x000099b2() { return 0; }
static int func_0x00009aad() { return 0; }
static int func_0x00009ce1() { return 0; }
static int func_0x00009cf7() { return 0; }
static int func_0x00009d4b() { return 0; }
static int func_0x00009dcb() { return 0; }
static int func_0x00009ddb() { return 0; }
static int func_0x00009de9() { return 0; }
static int func_0x00009def() { return 0; }
static int func_0x00009e23() { return 0; }
static int func_0x00009f78() { return 0; }
static int func_0x00009fd1() { return 0; }
static int func_0x0000a0ad() { return 0; }
static int func_0x0000a108() { return 0; }
static int func_0x0000a11c() { return 0; }
static int func_0x0000a12a() { return 0; }
static int func_0x0000a135() { return 0; }
static int func_0x0000a13e() { return 0; }
static int func_0x0000a152() { return 0; }
static int func_0x0000a159() { return 0; }
static int func_0x0000a161() { return 0; }
static int func_0x0000a16d() { return 0; }
static int func_0x0000a209() { return 0; }
static int func_0x0000a968() { return 0; }
static int func_0x0000b788() { return 0; }
static int func_0x0000b80e() { return 0; }
static int func_0x0000bac4() { return 0; }
static int func_0x0000bbc5() { return 0; }
static int func_0x0000be52() { return 0; }
static int func_0x0000c1ce() { return 0; }
static int func_0x0000c4a2() { return 0; }
static int func_0x0000ca93() { return 0; }
static int func_0x0000cdf2() { return 0; }
static int func_0x0000d253() { return 0; }
static int func_0x0000d262() { return 0; }
static int func_0x0000d2f6() { return 0; }
static int func_0x0000d643() { return 0; }
static int func_0x0000e30c() { return 0; }
static int func_0x0000e378() { return 0; }
static int func_0x0000e45a() { return 0; }
static int func_0x0000e928() { return 0; }
static int func_0x0000ea1c() { return 0; }
static int func_0x0000ea78() { return 0; }
static int func_0x0000ebd1() { return 0; }
static int func_0x0000f098() { return 0; }
static int func_0x0000f178() { return 0; }
static int func_0x0000f722() { return 0; }
static int func_0x0000f747() { return 0; }
static int func_0x0000f751() { return 0; }
static int func_0x0000f75b() { return 0; }
static int func_0x0000f76f() { return 0; }
static int func_0x0000f7db() { return 0; }
static int func_0x0000f894() { return 0; }
static int func_0x0000facc() { return 0; }
static int func_0x0000fb34() { return 0; }
static int func_0x0000fb5d() { return 0; }
static int func_0x0000fd90() { return 0; }
static int func_0x0000ffff() { return 0; }
static int func_0x00011e38() { return 0; }
static int func_0x0001b010() { return 0; }
static int func_0x0001d2f8() { return 0; }
static int func_0x0001f53c() { return 0; }
static int func_0x0001f9b3() { return 0; }
static int func_0x00020dac() { return 0; }
static int func_0x00026246() { return 0; }
static int func_0x0002779c() { return 0; }
static int func_0x00028914() { return 0; }
static int func_0x0002dd32() { return 0; }
static int func_0x0002f384() { return 0; }
static int func_0x00032ea8() { return 0; }
static int func_0x00032ec8() { return 0; }
static int func_0x00033458() { return 0; }
static int func_0x00033e88() { return 0; }
static int func_0x00033ebc() { return 0; }
static int func_0x00034004() { return 0; }
static int func_0x0003410e() { return 0; }
static int func_0x00034eb8() { return 0; }
static int func_0x00036520() { return 0; }
static int func_0x000376f9() { return 0; }
static int func_0x00038248() { return 0; }
static int func_0x000384a8() { return 0; }
static int func_0x000384b8() { return 0; }
static int func_0x000387c8() { return 0; }
static int func_0x0003883e() { return 0; }
static int func_0x00038c85() { return 0; }
static int func_0x0003c472() { return 0; }
static int func_0x0003c9e8() { return 0; }
static int func_0x0003f3b8() { return 0; }
static int func_0x00040084() { return 0; }
static int func_0x0004015e() { return 0; }
static int func_0x000401e0() { return 0; }
static int func_0x000404c0() { return 0; }
static int func_0x00040b52() { return 0; }
static int func_0x00042418() { return 0; }
static int func_0x000435e0() { return 0; }
static int func_0x00043610() { return 0; }
static int func_0x000438f4() { return 0; }
static int func_0x00046c96() { return 0; }
static int func_0x0004702a() { return 0; }
static int func_0x00047618() { return 0; }
static int func_0x00048368() { return 0; }
static int func_0x00048c98() { return 0; }
static int func_0x00048cae() { return 0; }
static int func_0x00048d82() { return 0; }
static int func_0x00048e58() { return 0; }
static int func_0x00049362() { return 0; }
static int func_0x000499fe() { return 0; }
static int func_0x0004a4f8() { return 0; }
static int func_0x0004af7c() { return 0; }
static int func_0x0004b1ec() { return 0; }
static int func_0x0004b624() { return 0; }
static int func_0x0004bb80() { return 0; }
static int func_0x0004cb76() { return 0; }
static int func_0x0004d344() { return 0; }
static int func_0x0004dc36() { return 0; }
static int func_0x0004dc54() { return 0; }
static int func_0x0004e49a() { return 0; }
static int func_0x0004e54c() { return 0; }
static int func_0x0004e668() { return 0; }
static int func_0x0004e99c() { return 0; }
static int func_0x0004ea12() { return 0; }
static int func_0x0004ea96() { return 0; }
static int func_0x0004eb9c() { return 0; }
static int func_0x0004ec22() { return 0; }
static int func_0x0004ef2c() { return 0; }
static int func_0x0004f0e8() { return 0; }
static int func_0x0004f322() { return 0; }
static int func_0x0004f3e2() { return 0; }
static int func_0x0004fa1a() { return 0; }
static int func_0x0004fbfc() { return 0; }
static int func_0x00050958() { return 0; }
static int func_0x00050eee() { return 0; }
static int func_0x00051122() { return 0; }
static int func_0x00051582() { return 0; }
static int func_0x000516f2() { return 0; }
static int func_0x00051768() { return 0; }
static int func_0x00051fae() { return 0; }
static int func_0x00051fda() { return 0; }
static int func_0x000523a2() { return 0; }
static int func_0x00052a7e() { return 0; }
static int func_0x00052c22() { return 0; }
static int func_0x00053022() { return 0; }
static int func_0x00053048() { return 0; }
static int func_0x00053398() { return 0; }
static int func_0x00053c0a() { return 0; }
static int func_0x00053df6() { return 0; }
static int func_0x00055c6e() { return 0; }
static int func_0x00055ee0() { return 0; }
static int func_0x00055f7e() { return 0; }
static int func_0x000560be() { return 0; }
static int func_0x000560c0() { return 0; }
static int func_0x000560c2() { return 0; }
static int func_0x000561ce() { return 0; }
static int func_0x000564c8() { return 0; }
static int func_0x00057ae8() { return 0; }
static int func_0x00058360() { return 0; }
static int func_0x00058576() { return 0; }
static int func_0x000589ac() { return 0; }
static int func_0x000593f0() { return 0; }
static int func_0x00059c2e() { return 0; }
static int func_0x00059c46() { return 0; }
static int func_0x0005a226() { return 0; }
static int func_0x0005a4e8() { return 0; }
static int func_0x0005aa58() { return 0; }
static int func_0x0005b8f0() { return 0; }
static int func_0x0005ce10() { return 0; }
static int func_0x0005dce2() { return 0; }
static int func_0x000660e8() { return 0; }
static int func_0x0006ee08() { return 0; }
static int func_0x0006f064() { return 0; }
static int func_0x00070712() { return 0; }
static int func_0x00071f12() { return 0; }
static int func_0x000779e8() { return 0; }
static int func_0x0007e176() { return 0; }
static int func_0x0007e1cc() { return 0; }
static int func_0x000812e2() { return 0; }
static int func_0x000830a6() { return 0; }
static int func_0x00083300() { return 0; }
static int func_0x00083aa8() { return 0; }
static int func_0x00083d0a() { return 0; }
static int func_0x0008420c() { return 0; }
static int func_0x000844b8() { return 0; }
static int func_0x000846de() { return 0; }
static int func_0x000872e8() { return 0; }
static int func_0x00087d70() { return 0; }
static int func_0x00088468() { return 0; }
static int func_0x0008a84e() { return 0; }
static int func_0x0008a8d0() { return 0; }
static int func_0x0008a970() { return 0; }
static int func_0x0008b538() { return 0; }
static int func_0x0008bdc6() { return 0; }
static int func_0x0008c918() { return 0; }
static int func_0x0008caca() { return 0; }
static int func_0x0008cf66() { return 0; }
static int func_0x0008dd78() { return 0; }
static int func_0x0008e93e() { return 0; }
static int func_0x0008ed2a() { return 0; }
static int func_0x0008edba() { return 0; }
static int func_0x0008fade() { return 0; }
static int func_0x0009013e() { return 0; }
static int func_0x00090c2a() { return 0; }
static int func_0x00091140() { return 0; }
static int func_0x00092048() { return 0; }
static int func_0x00092358() { return 0; }
static int func_0x00092b36() { return 0; }
static int func_0x000938d8() { return 0; }
static int func_0x00093918() { return 0; }
static int func_0x00094408() { return 0; }
static int func_0x00094698() { return 0; }
static int func_0x000949c8() { return 0; }
static int func_0x00094c58() { return 0; }
static int func_0x00094e98() { return 0; }
static int func_0x000950d8() { return 0; }
static int func_0x0009548e() { return 0; }
static int func_0x00095546() { return 0; }
static int func_0x0009561e() { return 0; }
static int func_0x00095696() { return 0; }
static int func_0x000957d6() { return 0; }
static int func_0x00095926() { return 0; }
static int func_0x00095b76() { return 0; }
static int func_0x00095f58() { return 0; }
static int func_0x00096442() { return 0; }
static int func_0x00096ac8() { return 0; }
static int func_0x00096c58() { return 0; }
static int func_0x00096dc8() { return 0; }
static int func_0x00096ec8() { return 0; }
static int func_0x000975d8() { return 0; }
static int func_0x00098508() { return 0; }
static int func_0x00098de6() { return 0; }
static int func_0x000995fe() { return 0; }
static int func_0x0009977a() { return 0; }
static int func_0x00099fa6() { return 0; }
static int func_0x0009a89e() { return 0; }
static int func_0x0009ad18() { return 0; }
static int func_0x0009b196() { return 0; }
static int func_0x0009ba56() { return 0; }
static int func_0x0009bab8() { return 0; }
static int func_0x0009babb() { return 0; }
static int func_0x0009bbb2() { return 0; }
static int func_0x0009bc52() { return 0; }
static int func_0x0009c982() { return 0; }
static int func_0x0009f1f0() { return 0; }
static int func_0x0009f2b2() { return 0; }
static int func_0x0009f446() { return 0; }
static int func_0x0009f592() { return 0; }
static int func_0x0009f872() { return 0; }
static int func_0x0009fb52() { return 0; }
static int func_0x000a0112() { return 0; }
static int func_0x000a01a4() { return 0; }
static int func_0x000a03f2() { return 0; }
static int func_0x000a06d2() { return 0; }
static int func_0x000a09b2() { return 0; }
static int func_0x000a0c92() { return 0; }
static int func_0x000a0f18() { return 0; }
static int func_0x000a0f72() { return 0; }
static int func_0x000a1252() { return 0; }
static int func_0x000a1532() { return 0; }
static int func_0x000a1812() { return 0; }
static int func_0x000a1af2() { return 0; }
static int func_0x000a1dd2() { return 0; }
static int func_0x000a1df2() { return 0; }
static int func_0x000a20b2() { return 0; }
static int func_0x000a2392() { return 0; }
static int func_0x000a26d2() { return 0; }
static int func_0x000a28e2() { return 0; }
static int func_0x000a2b02() { return 0; }
static int func_0x000a2b18() { return 0; }
static int func_0x000a2d70() { return 0; }
static int func_0x000a3186() { return 0; }
static int func_0x000a31e8() { return 0; }
static int func_0x000a33a6() { return 0; }
static int func_0x000a3492() { return 0; }
static int func_0x000a4282() { return 0; }
static int func_0x000a499e() { return 0; }
static int func_0x000a5108() { return 0; }
static int func_0x000a56dc() { return 0; }
static int func_0x000a5c2c() { return 0; }
static int func_0x000a6aee() { return 0; }
static int func_0x000a74e6() { return 0; }
static int func_0x000a753a() { return 0; }
static int func_0x000a7c48() { return 0; }
static int func_0x000a7f10() { return 0; }
static int func_0x000a8db6() { return 0; }
static int func_0x000a96c8() { return 0; }
static int func_0x000a9a98() { return 0; }
static int func_0x000a9d5e() { return 0; }
static int func_0x000a9ed2() { return 0; }
static int func_0x000a9ee8() { return 0; }
static int func_0x000a9f10() { return 0; }
static int func_0x000a9fde() { return 0; }
static int func_0x000aa19e() { return 0; }
static int func_0x000aa26c() { return 0; }
static int func_0x000aa422() { return 0; }
static int func_0x000aa548() { return 0; }
static int func_0x000aa772() { return 0; }
static int func_0x000aa95e() { return 0; }
static int func_0x000aab22() { return 0; }
static int func_0x000aac7e() { return 0; }
static int func_0x000aafa6() { return 0; }
static int func_0x000ab6d8() { return 0; }
static int func_0x000ab882() { return 0; }
static int func_0x000ab9c8() { return 0; }
static int func_0x000aba9e() { return 0; }
static int func_0x000abb9e() { return 0; }
static int func_0x000abc9e() { return 0; }
static int func_0x000abd58() { return 0; }
static int func_0x000abd62() { return 0; }
static int func_0x000abd66() { return 0; }
static int func_0x000abd9e() { return 0; }
static int func_0x000abe0e() { return 0; }
static int func_0x000abe46() { return 0; }
static int func_0x000abe5e() { return 0; }
static int func_0x000abfcc() { return 0; }
static int func_0x000ac02e() { return 0; }
static int func_0x000ac2c8() { return 0; }
static int func_0x000acc7a() { return 0; }
static int func_0x000acfae() { return 0; }
static int func_0x000ad312() { return 0; }
static int func_0x000ad594() { return 0; }
static int func_0x000adb0c() { return 0; }
static int func_0x000adb40() { return 0; }
static int func_0x000adb92() { return 0; }
static int func_0x000adbbe() { return 0; }
static int func_0x000add8e() { return 0; }
static int func_0x000adde8() { return 0; }
static int func_0x000ae17e() { return 0; }
static int func_0x000ae34e() { return 0; }
static int func_0x000ae56e() { return 0; }
static int func_0x000ae8e8() { return 0; }
static int func_0x000af63c() { return 0; }
static int func_0x000af9de() { return 0; }
static int func_0x000afa92() { return 0; }
static int func_0x000afd5a() { return 0; }
static int func_0x000b0468() { return 0; }
static int func_0x000b06f2() { return 0; }
static int func_0x000b0706() { return 0; }
static int func_0x000b07ce() { return 0; }
static int func_0x000b0d00() { return 0; }
static int func_0x000b0d88() { return 0; }
static int func_0x000b11c0() { return 0; }
static int func_0x000b142e() { return 0; }
static int func_0x000b1ac2() { return 0; }
static int func_0x000b1bd2() { return 0; }
static int func_0x000b1db0() { return 0; }
static int func_0x000b1f12() { return 0; }
static int func_0x000b2022() { return 0; }
static int func_0x000b2430() { return 0; }
static int func_0x000b24d2() { return 0; }
static int func_0x000b25e2() { return 0; }
static int func_0x000b2738() { return 0; }
static int func_0x000b2758() { return 0; }
static int func_0x000b2762() { return 0; }
static int func_0x000b2c6e() { return 0; }
static int func_0x000b2e0e() { return 0; }
static int func_0x000b2e94() { return 0; }
static int func_0x000b30c4() { return 0; }
static int func_0x000b313e() { return 0; }
static int func_0x000b31a0() { return 0; }
static int func_0x000b324e() { return 0; }
static int func_0x000b3462() { return 0; }
static int func_0x000b3858() { return 0; }
static int func_0x000b39b2() { return 0; }
static int func_0x000b3d12() { return 0; }
static int func_0x000b3d3e() { return 0; }
static int func_0x000b3ef2() { return 0; }
static int func_0x000b406e() { return 0; }
static int func_0x000b421e() { return 0; }
static int func_0x000b42dc() { return 0; }
static int func_0x000b4392() { return 0; }
static int func_0x000b4406() { return 0; }
static int func_0x000b452e() { return 0; }
static int func_0x000b478c() { return 0; }
static int func_0x000b4842() { return 0; }
static int func_0x000b4952() { return 0; }
static int func_0x000b4b48() { return 0; }
static int func_0x000b4bf6() { return 0; }
static int func_0x000b4c22() { return 0; }
static int func_0x000b4c82() { return 0; }
static int func_0x000b4d0e() { return 0; }
static int func_0x000b4eb8() { return 0; }
static int func_0x000b503e() { return 0; }
static int func_0x000b514e() { return 0; }
static int func_0x000b51a8() { return 0; }
static int func_0x000b5362() { return 0; }
static int func_0x000b54a6() { return 0; }
static int func_0x000b55ca() { return 0; }
static int func_0x000b56da() { return 0; }
static int func_0x000b56e8() { return 0; }
static int func_0x000b574c() { return 0; }
static int func_0x000b5914() { return 0; }
static int func_0x000b592a() { return 0; }
static int func_0x000b5b88() { return 0; }
static int func_0x000b5bcc() { return 0; }
static int func_0x000b5c00() { return 0; }
static int func_0x000b5c0c() { return 0; }
static int func_0x000b5cc8() { return 0; }
static int func_0x000b5d32() { return 0; }
static int func_0x000b5ffa() { return 0; }
static int func_0x000b606c() { return 0; }
static int func_0x000b60f6() { return 0; }
static int func_0x000b624a() { return 0; }
static int func_0x000b63f8() { return 0; }
static int func_0x000b6526() { return 0; }
static int func_0x000b6770() { return 0; }
static int func_0x000b678c() { return 0; }
static int func_0x000b67a8() { return 0; }
static int func_0x000b67f4() { return 0; }
static int func_0x000b6918() { return 0; }
static int func_0x000b6a6a() { return 0; }
static int func_0x000b6c58() { return 0; }
static int func_0x000b6c9c() { return 0; }
static int func_0x000b6f16() { return 0; }
static int func_0x000b70ea() { return 0; }
static int func_0x000b7128() { return 0; }
static int func_0x000b712e() { return 0; }
static int func_0x000b74be() { return 0; }
static int func_0x000b7576() { return 0; }
static int func_0x000b75fc() { return 0; }
static int func_0x000b75fe() { return 0; }
static int func_0x000b76a8() { return 0; }
static int func_0x000b7a58() { return 0; }
static int func_0x000b7b5e() { return 0; }
static int func_0x000b7f28() { return 0; }
static int func_0x000b7f4a() { return 0; }
static int func_0x000b7f78() { return 0; }
static int func_0x000b80ac() { return 0; }
static int func_0x000b80be() { return 0; }
static int func_0x000b80d2() { return 0; }
static int func_0x000b817e() { return 0; }
static int func_0x000b82e8() { return 0; }
static int func_0x000b83f8() { return 0; }
static int func_0x000b8468() { return 0; }
static int func_0x000b85e8() { return 0; }
static int func_0x000b8618() { return 0; }
static int func_0x000b8622() { return 0; }
static int func_0x000b880c() { return 0; }
static int func_0x000b8bdc() { return 0; }
static int func_0x000b8cca() { return 0; }
static int func_0x000b8cdc() { return 0; }
static int func_0x000b8dcc() { return 0; }
static int func_0x000b904c() { return 0; }
static int func_0x000b91f8() { return 0; }
static int func_0x000b9270() { return 0; }
static int func_0x000b940c() { return 0; }
static int func_0x000b9422() { return 0; }
static int func_0x000b9522() { return 0; }
static int func_0x000b9856() { return 0; }
static int func_0x000b9936() { return 0; }
static int func_0x000b9abe() { return 0; }
static int func_0x000ba1e6() { return 0; }
static int func_0x000ba750() { return 0; }
static int func_0x000baa5e() { return 0; }
static int func_0x000baa66() { return 0; }
static int func_0x000baec6() { return 0; }
static int func_0x000baf76() { return 0; }
static int func_0x000bb078() { return 0; }
static int func_0x000bb146() { return 0; }
static int func_0x000bb2b6() { return 0; }
static int func_0x000bb5c8() { return 0; }
static int func_0x000bb624() { return 0; }
static int func_0x000bb6be() { return 0; }
static int func_0x000bb92c() { return 0; }
static int func_0x000bb992() { return 0; }
static int func_0x000bbae8() { return 0; }
static int func_0x000bbd42() { return 0; }
static int func_0x000bc2c2() { return 0; }
static int func_0x000bc306() { return 0; }
static int func_0x000bc952() { return 0; }
static int func_0x000bcf00() { return 0; }
static int func_0x000bd1d2() { return 0; }
static int func_0x000bd216() { return 0; }
static int func_0x000bd382() { return 0; }
static int func_0x000bd430() { return 0; }
static int func_0x000bd594() { return 0; }
static int func_0x000bd8e2() { return 0; }
static int func_0x000be626() { return 0; }
static int func_0x000bf26c() { return 0; }
static int func_0x000bf976() { return 0; }
static int func_0x000c0428() { return 0; }
static int func_0x000c05d8() { return 0; }
static int func_0x000c0a96() { return 0; }
static int func_0x000c0e1c() { return 0; }
static int func_0x000c11a2() { return 0; }
static int func_0x000c126e() { return 0; }
static int func_0x000c15c8() { return 0; }
static int func_0x000c19f2() { return 0; }
static int func_0x000c1b2e() { return 0; }
static int func_0x000c1c46() { return 0; }
static int func_0x000c1de2() { return 0; }
static int func_0x000c204e() { return 0; }
static int func_0x000c2188() { return 0; }
static int func_0x000c2288() { return 0; }
static int func_0x000c23c2() { return 0; }
static int func_0x000c2752() { return 0; }
static int func_0x000c2b06() { return 0; }
static int func_0x000c2f92() { return 0; }
static int func_0x000c32f6() { return 0; }
static int func_0x000c3312() { return 0; }
static int func_0x000c3906() { return 0; }
static int func_0x000c3bd8() { return 0; }
static int func_0x000c3f58() { return 0; }
static int func_0x000c4302() { return 0; }
static int func_0x000c4522() { return 0; }
static int func_0x000c47c2() { return 0; }
static int func_0x000c55c8() { return 0; }
static int func_0x000c5670() { return 0; }
static int func_0x000c5cc8() { return 0; }
static int func_0x000c5fa2() { return 0; }
static int func_0x000c5fc8() { return 0; }
static int func_0x000c607c() { return 0; }
static int func_0x000c6752() { return 0; }
static int func_0x000c69d2() { return 0; }
static int func_0x000c6c0c() { return 0; }
static int func_0x000c6c40() { return 0; }
static int func_0x000c6c42() { return 0; }
static int func_0x000c6dc6() { return 0; }
static int func_0x000c7548() { return 0; }
static int func_0x000c7590() { return 0; }
static int func_0x000c7a1e() { return 0; }
static int func_0x000c7ee8() { return 0; }
static int func_0x000c80ca() { return 0; }
static int func_0x000c8526() { return 0; }
static int func_0x000c8558() { return 0; }
static int func_0x000c8728() { return 0; }
static int func_0x000c8836() { return 0; }
static int func_0x000c8848() { return 0; }
static int func_0x000c8aa6() { return 0; }
static int func_0x000c8b78() { return 0; }
static int func_0x000c8e22() { return 0; }
static int func_0x000c90a4() { return 0; }
static int func_0x000c9194() { return 0; }
static int func_0x000c952e() { return 0; }
static int func_0x000ca06e() { return 0; }
static int func_0x000ca1c4() { return 0; }
static int func_0x000ca22a() { return 0; }
static int func_0x000ca2ac() { return 0; }
static int func_0x000ca47c() { return 0; }
static int func_0x000ca48e() { return 0; }
static int func_0x000ca586() { return 0; }
static int func_0x000ca818() { return 0; }
static int func_0x000cac22() { return 0; }
static int func_0x000cae5e() { return 0; }
static int func_0x000caea0() { return 0; }
static int func_0x000caf0c() { return 0; }
static int func_0x000cb598() { return 0; }
static int func_0x000cbed0() { return 0; }
static int func_0x000cc05e() { return 0; }
static int func_0x000cc24a() { return 0; }
static int func_0x000cc5dc() { return 0; }
static int func_0x000cc97a() { return 0; }
static int func_0x000cc9de() { return 0; }
static int func_0x000ccb46() { return 0; }
static int func_0x000cd552() { return 0; }
static int func_0x000cde62() { return 0; }
static int func_0x000ce032() { return 0; }
static int func_0x000ce1ce() { return 0; }
static int func_0x000ce202() { return 0; }
static int func_0x000ce2ae() { return 0; }
static int func_0x000ce9e0() { return 0; }
static int func_0x000cebd0() { return 0; }
static int func_0x000cec05() { return 0; }
static int func_0x000cee76() { return 0; }
static int func_0x000cef10() { return 0; }
static int func_0x000cf26c() { return 0; }
static int func_0x000cf298() { return 0; }
static int func_0x000cf4c0() { return 0; }
static int func_0x000cf75e() { return 0; }
static int func_0x000cffb8() { return 0; }
static int func_0x000d002c() { return 0; }
static int func_0x000d01e8() { return 0; }
static int func_0x000d03b2() { return 0; }
static int func_0x000d0474() { return 0; }
static int func_0x000d077e() { return 0; }
static int func_0x000d0de0() { return 0; }
static int func_0x000d1078() { return 0; }
static int func_0x000d127c() { return 0; }
static int func_0x000d12b0() { return 0; }
static int func_0x000d130c() { return 0; }
static int func_0x000d15cc() { return 0; }
static int func_0x000d1ade() { return 0; }
static int func_0x000d1e68() { return 0; }
static int func_0x000d2170() { return 0; }
static int func_0x000d21ec() { return 0; }
static int func_0x000d22ce() { return 0; }
static int func_0x000d2828() { return 0; }
static int func_0x000d2a58() { return 0; }
static int func_0x000d2ab8() { return 0; }
static int func_0x000d2fc2() { return 0; }
static int func_0x000d30fe() { return 0; }
static int func_0x000d31ce() { return 0; }
static int func_0x000d31ea() { return 0; }
static int func_0x000d32ce() { return 0; }
static int func_0x000d33ce() { return 0; }
static int func_0x000d345c() { return 0; }
static int func_0x000d34ce() { return 0; }
static int func_0x000d358e() { return 0; }
static int func_0x000d3808() { return 0; }
static int func_0x000d3a28() { return 0; }
static int func_0x000d3f5c() { return 0; }
static int func_0x000d43aa() { return 0; }
static int func_0x000d4a9a() { return 0; }
static int func_0x000d4b30() { return 0; }
static int func_0x000d528e() { return 0; }
static int func_0x000d549e() { return 0; }
static int func_0x000d54c8() { return 0; }
static int func_0x000d5ad0() { return 0; }
static int func_0x000d5bb2() { return 0; }
static int func_0x000d5ea0() { return 0; }
static int func_0x000d67e8() { return 0; }
static int func_0x000d6ce0() { return 0; }
static int func_0x000d6cf2() { return 0; }
static int func_0x000d6e2e() { return 0; }
static int func_0x000d7568() { return 0; }
static int func_0x000d7808() { return 0; }
static int func_0x000d79ce() { return 0; }
static int func_0x000d7b10() { return 0; }
static int func_0x000d83bc() { return 0; }
static int func_0x000d8482() { return 0; }
static int func_0x000d86e2() { return 0; }
static int func_0x000d87b6() { return 0; }
static int func_0x000d8844() { return 0; }
static int func_0x000d8860() { return 0; }
static int func_0x000d8b2c() { return 0; }
static int func_0x000d8d5e() { return 0; }
static int func_0x000d8fbe() { return 0; }
static int func_0x000d90c2() { return 0; }
static int func_0x000d916c() { return 0; }
static int func_0x000d91ce() { return 0; }
static int func_0x000d9364() { return 0; }
static int func_0x000d9800() { return 0; }
static int func_0x000d98e2() { return 0; }
static int func_0x000d990c() { return 0; }
static int func_0x000d9d7e() { return 0; }
static int func_0x000d9f38() { return 0; }
static int func_0x000da52c() { return 0; }
static int func_0x000da696() { return 0; }
static int func_0x000daa72() { return 0; }
static int func_0x000dad10() { return 0; }
static int func_0x000dad12() { return 0; }
static int func_0x000dafb2() { return 0; }
static int func_0x000dafd0() { return 0; }
static int func_0x000db0bc() { return 0; }
static int func_0x000db156() { return 0; }
static int func_0x000db252() { return 0; }
static int func_0x000db4f2() { return 0; }
static int func_0x000db890() { return 0; }
static int func_0x000db8d2() { return 0; }
static int func_0x000dba52() { return 0; }
static int func_0x000dc028() { return 0; }
static int func_0x000dc156() { return 0; }
static int func_0x000dc248() { return 0; }
static int func_0x000dc616() { return 0; }
static int func_0x000dc858() { return 0; }
static int func_0x000dc86c() { return 0; }
static int func_0x000dc9ce() { return 0; }
static int func_0x000dcd4a() { return 0; }
static int func_0x000dcf76() { return 0; }
static int func_0x000dcfcc() { return 0; }
static int func_0x000dd1c2() { return 0; }
static int func_0x000dd256() { return 0; }
static int func_0x000dd38c() { return 0; }
static int func_0x000dd50e() { return 0; }
static int func_0x000dd628() { return 0; }
static int func_0x000dda88() { return 0; }
static int func_0x000ddcc8() { return 0; }
static int func_0x000ddf32() { return 0; }
static int func_0x000de008() { return 0; }
static int func_0x000de0e6() { return 0; }
static int func_0x000de0ec() { return 0; }
static int func_0x000de1f2() { return 0; }
static int func_0x000de22e() { return 0; }
static int func_0x000de2c8() { return 0; }
static int func_0x000de442() { return 0; }
static int func_0x000de498() { return 0; }
static int func_0x000de614() { return 0; }
static int func_0x000de6f2() { return 0; }
static int func_0x000de7d8() { return 0; }
static int func_0x000de846() { return 0; }
static int func_0x000de8e6() { return 0; }
static int func_0x000de952() { return 0; }
static int func_0x000deb72() { return 0; }
static int func_0x000deb82() { return 0; }
static int func_0x000dec08() { return 0; }
static int func_0x000df148() { return 0; }
static int func_0x000df298() { return 0; }
static int func_0x000df436() { return 0; }
static int func_0x000df468() { return 0; }
static int func_0x000dfa92() { return 0; }
static int func_0x000dfde2() { return 0; }
static int func_0x000e0596() { return 0; }
static int func_0x000e0782() { return 0; }
static int func_0x000e0a94() { return 0; }
static int func_0x000e0b88() { return 0; }
static int func_0x000e0d90() { return 0; }
static int func_0x000e153c() { return 0; }
static int func_0x000e1742() { return 0; }
static int func_0x000e17bc() { return 0; }
static int func_0x000e19c4() { return 0; }
static int func_0x000e1a68() { return 0; }
static int func_0x000e1a98() { return 0; }
static int func_0x000e1d42() { return 0; }
static int func_0x000e1d7e() { return 0; }
static int func_0x000e22ce() { return 0; }
static int func_0x000e2308() { return 0; }
static int func_0x000e2ed8() { return 0; }
static int func_0x000e3580() { return 0; }
static int func_0x000e3c68() { return 0; }
static int func_0x000e483e() { return 0; }
static int func_0x000e493e() { return 0; }
static int func_0x000e4a3e() { return 0; }
static int func_0x000e4afe() { return 0; }
static int func_0x000e4c48() { return 0; }
static int func_0x000e51ea() { return 0; }
static int func_0x000e5384() { return 0; }
static int func_0x000e5438() { return 0; }
static int func_0x000e5446() { return 0; }
static int func_0x000e54c2() { return 0; }
static int func_0x000e5744() { return 0; }
static int func_0x000e587c() { return 0; }
static int func_0x000e58d4() { return 0; }
static int func_0x000e5ab6() { return 0; }
static int func_0x000e646c() { return 0; }
static int func_0x000e672c() { return 0; }
static int func_0x000e6a72() { return 0; }
static int func_0x000e77f2() { return 0; }
static int func_0x000e780e() { return 0; }
static int func_0x000e7d12() { return 0; }
static int func_0x000e8036() { return 0; }
static int func_0x000e8396() { return 0; }
static int func_0x000e85bc() { return 0; }
static int func_0x000e8952() { return 0; }
static int func_0x000e91cc() { return 0; }
static int func_0x000e9318() { return 0; }
static int func_0x000e9576() { return 0; }
static int func_0x000e9ace() { return 0; }
static int func_0x000e9b48() { return 0; }
static int func_0x000e9b8e() { return 0; }
static int func_0x000e9fea() { return 0; }
static int func_0x000eab66() { return 0; }
static int func_0x000eaf06() { return 0; }
static int func_0x000eb2dc() { return 0; }
static int func_0x000eb380() { return 0; }
static int func_0x000eb4ec() { return 0; }
static int func_0x000eb9f0() { return 0; }
static int func_0x000ebcf0() { return 0; }
static int func_0x000ec4fe() { return 0; }
static int func_0x000ec788() { return 0; }
static int func_0x000ec7c8() { return 0; }
static int func_0x000ec896() { return 0; }
static int func_0x000ec8aa() { return 0; }
static int func_0x000ecb72() { return 0; }
static int func_0x000ecc9a() { return 0; }
static int func_0x000ed668() { return 0; }
static int func_0x000ed7d6() { return 0; }
static int func_0x000ed9ae() { return 0; }
static int func_0x000eda1c() { return 0; }
static int func_0x000edaf0() { return 0; }
static int func_0x000edcec() { return 0; }
static int func_0x000ee018() { return 0; }
static int func_0x000ee648() { return 0; }
static int func_0x000eea2e() { return 0; }
static int func_0x000eed00() { return 0; }
static int func_0x000eed50() { return 0; }
static int func_0x000eef8c() { return 0; }
static int func_0x000ef3b5() { return 0; }
static int func_0x000efa9e() { return 0; }
static int func_0x000efc18() { return 0; }
static int func_0x000efcc8() { return 0; }
static int func_0x000efff0() { return 0; }
static int func_0x000f047c() { return 0; }
static int func_0x000f071c() { return 0; }
static int func_0x000f088c() { return 0; }
static int func_0x000f0a5c() { return 0; }
static int func_0x000f133c() { return 0; }
static int func_0x000f18d8() { return 0; }
static int func_0x000f1982() { return 0; }
static int func_0x000f217c() { return 0; }
static int func_0x000f2726() { return 0; }
static int func_0x000f2bee() { return 0; }
static int func_0x000f2c18() { return 0; }
static int func_0x000f3bbc() { return 0; }
static int func_0x000f408e() { return 0; }
static int func_0x000f477c() { return 0; }
static int func_0x000f481c() { return 0; }
static int func_0x000f4a2e() { return 0; }
static int func_0x000f4d36() { return 0; }
static int func_0x000f4e00() { return 0; }
static int func_0x000f5198() { return 0; }
static int func_0x000f5458() { return 0; }
static int func_0x000f5488() { return 0; }
static int func_0x000f5b3e() { return 0; }
static int func_0x000f60c6() { return 0; }
static int func_0x000f60c8() { return 0; }
static int func_0x000f616c() { return 0; }
static int func_0x000f620c() { return 0; }
static int func_0x000f6408() { return 0; }
static int func_0x000f6820() { return 0; }
static int func_0x000f68a6() { return 0; }
static int func_0x000f695c() { return 0; }
static int func_0x000f6a24() { return 0; }
static int func_0x000f6ab8() { return 0; }
static int func_0x000f6f76() { return 0; }
static int func_0x000f711c() { return 0; }
static int func_0x000f72c6() { return 0; }
static int func_0x000f72de() { return 0; }
static int func_0x000f742c() { return 0; }
static int func_0x000f76b6() { return 0; }
static int func_0x000f7988() { return 0; }
static int func_0x000f7a5c() { return 0; }
static int func_0x000f7b88() { return 0; }
static int func_0x000f80e0() { return 0; }
static int func_0x000f840a() { return 0; }
static int func_0x000f8506() { return 0; }
static int func_0x000f8630() { return 0; }
static int func_0x000f8a76() { return 0; }
static int func_0x000f8ac6() { return 0; }
static int func_0x000f8ce6() { return 0; }
static int func_0x000f8d18() { return 0; }
static int func_0x000f8d38() { return 0; }
static int func_0x000f8f75() { return 0; }
static int func_0x000f9034() { return 0; }
static int func_0x000f90ae() { return 0; }
static int func_0x000f932e() { return 0; }
static int func_0x000f9668() { return 0; }
static int func_0x000f97e8() { return 0; }
static int func_0x000f9936() { return 0; }
static int func_0x000f9a58() { return 0; }
static int func_0x000f9aa8() { return 0; }
static int func_0x000f9bd8() { return 0; }
static int func_0x000f9ca8() { return 0; }
static int func_0x000f9fc6() { return 0; }
static int func_0x000fa536() { return 0; }
static int func_0x000fa578() { return 0; }
static int func_0x000fb245() { return 0; }
static int func_0x000fb358() { return 0; }
static int func_0x000fbbc0() { return 0; }
static int func_0x000fbc75() { return 0; }
static int func_0x000fbcc6() { return 0; }
static int func_0x000fbd36() { return 0; }
static int func_0x000fbd38() { return 0; }
static int func_0x000fbea4() { return 0; }
static int func_0x000fc184() { return 0; }
static int func_0x000fc516() { return 0; }
static int func_0x000fc6b5() { return 0; }
static int func_0x000fcb20() { return 0; }
static int func_0x000fcd38() { return 0; }
static int func_0x000fd0f0() { return 0; }
static int func_0x000fd3f6() { return 0; }
static int func_0x000fd588() { return 0; }
static int func_0x000fda28() { return 0; }
static int func_0x000fe056() { return 0; }
static int func_0x000fe256() { return 0; }
static int func_0x000fe312() { return 0; }
static int func_0x000fe44e() { return 0; }
static int func_0x000fe638() { return 0; }
static int func_0x000fe886() { return 0; }
static int func_0x000fe8a2() { return 0; }
static int func_0x000feaf8() { return 0; }
static int func_0x000fed56() { return 0; }
static int func_0x000fee64() { return 0; }
static int func_0x000ff4f2() { return 0; }
static int func_0x000ff662() { return 0; }
static int func_0x000ffb4e() { return 0; }
static int func_0x000ffd14() { return 0; }
static int func_0x000fff58() { return 0; }
static int func_0x000fffae() { return 0; }
static int func_0x001000ba() { return 0; }
static int func_0x001001fe() { return 0; }
static int func_0x00100a46() { return 0; }
static int func_0x00100c58() { return 0; }
static int func_0x00100d6e() { return 0; }
static int func_0x00100d9e() { return 0; }
static int func_0x00100da8() { return 0; }
static int func_0x00100f5e() { return 0; }
static int func_0x0010105e() { return 0; }
static int func_0x0010111e() { return 0; }
static int func_0x001011a2() { return 0; }
static int func_0x0010122e() { return 0; }
static int func_0x001013d2() { return 0; }
static int func_0x0010186e() { return 0; }
static int func_0x00101c44() { return 0; }
static int func_0x0010211e() { return 0; }
static int func_0x00102658() { return 0; }
static int func_0x001028f6() { return 0; }
static int func_0x00102d10() { return 0; }
static int func_0x00103290() { return 0; }
static int func_0x001038ec() { return 0; }
static int func_0x00103924() { return 0; }
static int func_0x00103d42() { return 0; }
static int func_0x0010416e() { return 0; }
static int func_0x0010479e() { return 0; }
static int func_0x00104f6e() { return 0; }
static int func_0x001053bc() { return 0; }
static int func_0x0010661c() { return 0; }
static int func_0x00106ede() { return 0; }
static int func_0x001073ee() { return 0; }
static int func_0x001077fe() { return 0; }
static int func_0x001078fe() { return 0; }
static int func_0x00107fde() { return 0; }
static int func_0x001080de() { return 0; }
static int func_0x00108208() { return 0; }
static int func_0x00108694() { return 0; }
static int func_0x00108cee() { return 0; }
static int func_0x0010950e() { return 0; }
static int func_0x00109548() { return 0; }
static int func_0x0010960e() { return 0; }
static int func_0x0010970e() { return 0; }
static int func_0x0010980e() { return 0; }
static int func_0x0010990e() { return 0; }
static int func_0x00109a1e() { return 0; }
static int func_0x00109b1e() { return 0; }
static int func_0x00109c2e() { return 0; }
static int func_0x00109d2e() { return 0; }
static int func_0x00109e2e() { return 0; }
static int func_0x00109eee() { return 0; }
static int func_0x0010a63c() { return 0; }
static int func_0x0010fb90() { return 0; }
