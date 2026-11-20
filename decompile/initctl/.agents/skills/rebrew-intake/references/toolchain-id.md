# Toolchain family identification

Decide the compiler family before FLIRT / catalog — it drives the whole pipeline.

## Quick signals

- `file <binary>` + sections: `.buildid`, GNU-style `0f 1f` multi-byte nops, and
  `mov eax, N; call ___chkstk_ms` → **MinGW GCC**, not MSVC.
- Imports: MSVC static-CRT imports KERNEL32 broadly (`GetCommandLineA`, `HeapCreate`, …).
  Standalone MinGW imports a handful (`ExitProcess`, `GetStdHandle`, `WriteFile`, …)
  and FLIRT finds zero MSVC CRT matches.
- Prefer `rebrew init --guess-compiler` / `rebrew intake`; override with `--toolchain`
  when headers lie or you know the exact SP-level profile.

## MinGW

`rebrew init --toolchain mingw-16.2.0` (see rebrew repo `docs/TOOLCHAIN.md`). Packaged rizin
discoverers use `aa; aap` — `aaa` mis-merges on this toolchain. Byte-exact matching
needs the author's exact GCC version; old builds often match structurally only
(document semantic decomp + blocker for the byte delta).

## MSVC PE

Continue with FLIRT from `msvcrt.lib` **and** `libcmt.lib` (static CRT only matches
libcmt signatures). SP-level profiles matter (`msvc-6.0` vs `msvc-6.0-sp6` vs
`msvc-6.0-sp5-pp`).

## DOS MZ

`file` shows "MS-DOS executable, MZ". **Check packing first** —
`rebrew toolchain detect` reports `packed: lzexe 0.91` or `packed: pklite`.
For LZEXE run `rebrew unpack-lzexe <binary>` first; PKLITE has no built-in unpacker.
Profiles: `borland-3.1` (Turbo C++ 3.1), `borland-2.0` (Turbo C 2.0, C89-strict
`/* */` markers), `watcom-2.0-win16`. `rebrew discover-functions` runs the packaged
16-bit MZ sweep (rizin cannot analyze MZ). E2E fixture:
`tests/fixtures/tc16_hello_lzexe.exe`.

## Windows 3.x NE

`file` shows "NE version N for MS Windows 3.x". `rebrew intake` handles NE end-to-end
(native parse, NE-loader discoverer, `format = "ne"` + `arch = "x86_16"`).
MSVC-style NE byte-matches with `msvc-1.52` (DOSBox CL.EXE → OMF via `rebrew.omf16`).
Borland *Delphi* NE remains unmatchable (ADR-001): document BLOCKER stubs;
`rebrew.delphi16.compile_ne` can compile headless. Turbo C/C++ DOS is plain MZ, not NE.
