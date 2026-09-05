/* linkfix.c — resolves cross-module symbols */
/* Main entry point */
int main(int argc, char *argv[]) { return 0; }

/* Ghidra pseudo-ops */
int ROUND(int x) { return x; }
void out(int port, int val) { }
int CARRY1(int x) { return 0; }
int SBORROW2(int x, int y) { return 0; }

/* Cross-module stubs */
int FUN_3000_013a() { return 0; }
int FUN_3000_07d6() { return 0; }
int FUN_3000_0888() { return 0; }
int FUN_3000_08e8() { return 0; }
int FUN_3000_1150() { return 0; }
int FUN_3000_83fa() { return 0; }
int FUN_3000_8746() { return 0; }
int FUN_3000_8d82() { return 0; }
int FUN_3000_a65e() { return 0; }
int FUN_3000_b61e() { return 0; }
int FUN_3000_bc8a() { return 0; }
int FUN_3000_c7b0() { return 0; }
int FUN_4000_3ec2() { return 0; }
int FUN_4000_40b2() { return 0; }
int FUN_4000_7530() { return 0; }
int FUN_4000_78e4() { return 0; }
int FUN_4000_ee02() { return 0; }
int FUN_4000_fc64() { return 0; }
int FUN_5000_02a2() { return 0; }
int FUN_5000_25d8() { return 0; }
int FUN_5000_71b4() { return 0; }
int FUN_5000_7288() { return 0; }
int FUN_5000_80e6() { return 0; }
int FUN_5000_82c6() { return 0; }
int FUN_5000_bd88() { return 0; }
int FUN_5000_e030() { return 0; }
int FUN_5000_ecaa() { return 0; }
int FUN_5000_ecbc() { return 0; }
int FUN_5000_f67c() { return 0; }
int FUN_5000_f768() { return 0; }
int FUN_5000_ff10() { return 0; }
int FUN_6000_4350() { return 0; }
int FUN_6000_673c() { return 0; }

/* Additional cross-module stubs */
int FUN_1000_056f() { return 0; }
int FUN_1000_8f86() { return 0; }
int FUN_1000_a175() { return 0; }
int FUN_1000_c08c() { return 0; }
int FUN_2000_dcef() { return 0; }
int FUN_3000_02b8() { return 0; }
int FUN_3000_03b8() { return 0; }
int FUN_3000_1236() { return 0; }
int FUN_3000_17d4() { return 0; }
int FUN_3000_1a7c() { return 0; }
int FUN_3000_1c24() { return 0; }
int FUN_3000_1d8e() { return 0; }
int FUN_3000_277e() { return 0; }
int FUN_3000_3046() { return 0; }
int FUN_3000_3468() { return 0; }
int FUN_3000_3c7a() { return 0; }
int FUN_3000_559e() { return 0; }
int FUN_3000_5724() { return 0; }
int FUN_3000_787e() { return 0; }
int FUN_3000_7900() { return 0; }
int FUN_3000_793c() { return 0; }
int FUN_3000_8146() { return 0; }
int FUN_3000_86e4() { return 0; }
int FUN_3000_91b2() { return 0; }
int FUN_3000_9a32() { return 0; }
int FUN_3000_9c82() { return 0; }
int FUN_4000_3ebc() { return 0; }
int FUN_4000_4c22() { return 0; }
int FUN_4000_4c35() { return 0; }
int FUN_4000_6608() { return 0; }
int FUN_4000_8e42() { return 0; }
int FUN_4000_9bee() { return 0; }
int FUN_4000_a65e() { return 0; }
int FUN_4000_b54e() { return 0; }
int FUN_4000_bcf8() { return 0; }
int FUN_4000_c688() { return 0; }
int FUN_4000_c7cc() { return 0; }
int FUN_4000_c8f0() { return 0; }
int FUN_4000_c8f8() { return 0; }
int FUN_4000_ca34() { return 0; }
int FUN_4000_cb18() { return 0; }
int FUN_4000_d5fc() { return 0; }
int FUN_4000_d898() { return 0; }
int FUN_4000_d900() { return 0; }
int FUN_4000_dbc2() { return 0; }
int FUN_4000_dd92() { return 0; }
int FUN_4000_deee() { return 0; }
int FUN_4000_dfe4() { return 0; }
int FUN_4000_e0ce() { return 0; }
int FUN_4000_e452() { return 0; }
int FUN_4000_ee2a() { return 0; }
int FUN_4000_ee86() { return 0; }
int FUN_4000_eeb6() { return 0; }
int FUN_4000_eebe() { return 0; }
int FUN_4000_f088() { return 0; }
int FUN_4000_f0b0() { return 0; }
int FUN_4000_f1f8() { return 0; }
int FUN_4000_f2e8() { return 0; }
int FUN_5000_2f7a() { return 0; }
int FUN_5000_31dc() { return 0; }
int FUN_5000_3c0e() { return 0; }
int FUN_5000_3c82() { return 0; }
int FUN_5000_3cee() { return 0; }
int FUN_5000_4018() { return 0; }
int FUN_5000_431a() { return 0; }
int FUN_5000_437c() { return 0; }
int FUN_5000_6ebf() { return 0; }

/* MSC FPU runtime symbols */

/* Archive functions */
int lzh_extract(int a, int b, unsigned long c, unsigned long d) { return 0; }
int raw_copy(int a, int b, unsigned long c) { return 0; }
int FUN_1000_0064() { return 0; }

/* FPU control word symbols (asm names without underscore) */
int FIWRQQ_var;
int FIDRQQ_var;
