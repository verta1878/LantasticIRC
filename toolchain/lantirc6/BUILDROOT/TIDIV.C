/* Try different patterns to get memory-operand IDIV */

/* Pattern 1: direct parameter division */
int f1(int a, int b) { return a / b; }

/* Pattern 2: use register keyword */
int f2(register int a, int b) { return a / b; }

/* Pattern 3: signed short */
int f3(short a, short b) { return a / b; }

/* Pattern 4: cast to int */
int f4(int a, int b) { return (int)(a / b); }

/* Pattern 5: use volatile */
int f5(int a, int volatile *pb) { return a / *pb; }
