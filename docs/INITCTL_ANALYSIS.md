# INITCTL.EXE — Borland C++ 3.1 Byte-Exact Analysis

## Compiler
Borland C++ 3.1 (Copyright 1991), small model, 1 relocation

## Code Map
| Offset | Size | Content |
|--------|------|---------|
| 0x0000-0x02C1 | 706B | BC3.1 CRT startup (c0.asm) |
| 0x02C2-0x1F7C | ~7.3KB | User code (_main + functions) |
| 0x1F7D-0x45FF | ~9.8KB | BC3.1 CRT library |
| 0x4600-0x6B30 | ~9.5KB | Data/strings segment |

User code = 27% of binary (7KB of 27KB)

## _main Signature
```c
void main(int argc, char **argv, char **envp)
```
- Entry: code+0x02C2 (file+0x04C2)
- Stack frame: 632 bytes local variables (SUB SP, 0x278)
- Saves SI, DI
- 6 local word variables initialized to 0
- Copies 3 strings from DS to stack (31 bytes each via _fmemcpy)

## CRT Functions Identified
| Offset | Function |
|--------|----------|
| 0x0000 | _c0 startup (c0.asm) |
| 0x0149 | CALL __setargv |
| 0x0158 | CALL _main |
| 0x015C | CALL __exit |
| 0x019A | _exit (MOV AH,4Ch / INT 21h) |
| 0x01AC | __stklen / memory setup |
| 0x021C | __setargv (command line parser) |
| 0x2104 | _fmemcpy |

## CRT Strings
| Offset | String |
|--------|--------|
| 0x464E | "Borland C++ - Copyright 1991 Borland Intl." |
| 0x4679 | "Null pointer assignment" |
| 0x4692 | "Divide error" |
| 0x46A0 | "Abnormal program termination" |

## Codegen Patterns (matching ReC98 rules)
- PUSH BP / MOV BP,SP entry (standard C function prologue)
- SI, DI saved after frame setup
- BP-relative addressing for locals (BP-0x4, BP-0x6, ...)
- Far pointer copies via PUSH SS:reg + PUSH DS:reg + CALL
- Word-sized zeroing: MOV WORD [BP-n], 0x0
