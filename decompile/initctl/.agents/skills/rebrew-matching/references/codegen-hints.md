# Codegen Hints (MSVC6 Flag Direction + Unreproducible Patterns)

Load this only when picking flags by hand or deciding a blocker is cheaper than more GA.

## Read the codegen before sweeping

Validated on a fresh MSVC6 C++ project. Try `/O2` or `/O1` manually first when the
target's instruction choices reveal the original optimization level:

- `mov eax, [mem]` + `push eax` (or first global load into ECX/EDX instead of EAX) → **/O2-style**; `/O1` would emit `push [mem]` or `mov eax`.
- `push dword ptr [mem]`, `inc word ptr [mem]` (direct memory inc) → **/O1**.
- `mov eax, 1` vs the 3-byte `push 1; pop eax` → /O2 vs /O1 return constant.
- Zeroing a global: `and dword ptr [mem], 0` (7B) is /O1; `/O2` emits `mov dword ptr [mem], 0` (10B).
- Arg cleanup after cdecl: `add esp, 4` (/O2) vs `pop ecx` (/O1); `pop ecx; pop ecx` after a call can mean 2-arg cdecl cleanup.
- `rep stosd`/`repne scasb` with `push N; pop ecx` → **/O1 + /Oi** (`/O1 /Oi /Gd /Oy`). Constant-size `memset` under /Oi inlines to rep-stos (trailing `stosb` after `rep stosd` = size not multiple of 4, or merged adjacent byte write).
- `shr` vs `sar` on a shift → unsigned vs signed index; `(x >> N) * 4` compiling to `sar 0xb; and -4` instead of `shr 0xd` + scale-4 means `int*` indexing, not a shifted multiply.
- Imports must be `__declspec(dllimport)` (declspec FIRST for MSVC6) or the compiler emits `e8` instead of `ff 15 [IAT]` — shifting later branch offsets by one.
- `__int64` returns use EDX:EAX; virtual calls with a pushed arg are `__stdcall` (no `add esp,4` after the call).
- **Post-decrement loops**: `mov r1, r2; dec r2; test r1; jcc` is `while (x-- > 0)` — put the decrement IN the condition. `jne` after the test means `while (m-- != 0)`; a `je` guard means `if (n != 0)`.
- **`movsx reg, byte ptr [mem]`** when passing a char → callee param is `int`, not `char`.
- **`test ax, imm16` / `and al, imm8` on a 32-bit field** — MSVC6 mask-size optimization; try `unsigned short` field types before giving up.
- **Param-slot spills**: `mov [esp+X], al` then reload + `and eax, 0xff` — parameter reassignment or MSVC reusing a dead param slot for an out-local.

When the manual flag guess lands within a few bytes, remaining diffs are usually expression shape (member in a local vs re-read global, control-flow placement) — iterate those before the GA.

## Known unreproducible codegen

Document a blocker instead of burning attempts (validated across smygb.exe + e2e_32.exe):

- CRT assembly: `strlen`/`strcpy` word-at-a-time (`0x7efefeff`), `strrchr` (repne scasb + `std`), `_chkstk` probe loop, `_aulldiv`/`_aullrem`. MSVC6 *calls* the library from C — inline forms are asm.
- SEH prologues (`push -1; push handler; …; mov reg, fs:[0]`) and RtlUnwind helpers — compiler-generated.
- Caller-ebp helpers: `mov reg, [ebp+8]` with no own frame + `ret 4`.
- Direct-memory increments `inc word/dword ptr [abs]` from a cast-deref — MSVC6 always emits load-inc-store for `(*(T*)0xADDR)++`; needs a declared global, which can't be byte-matched.
- HeapCreate-style arg push order vs MSVC6's `cmp/sete/push` shape — unreproducible from C.
- `memset` intrinsic expansion variant — build-specific.
- Register-scheduling class: first-global load register, callee-saved cache vs stack reload, `movzx` vs `xor;mov al`, `and`-before-`sar` ordering, branch layout, frame elimination. Try 2–3 C formulations, then document.

For each: write the STUB `.c` (SIZE from the function list) and
`rebrew blocker set 0x<VA> "<class note>"`.

## GA scoring (lower = better)

| Component | Weight | Measures |
|-----------|--------|----------|
| Length penalty | 3.0 | `abs(candidate_size - target_size)` |
| Weighted byte similarity | 1000.0 | Position-weighted, prologue 3x |
| Relocation-aware similarity | 500.0 | After masking relocatable fields |
| Mnemonic similarity | 200.0 | Via capstone disassembly |
| Prologue bonus | -100.0 | If first 20 bytes match |
