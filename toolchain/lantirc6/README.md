# lantirc6 — DOSBox-X build environment for LANtastic v6

Everything LANtastic-specific in the bundle. **The DOSBox-X emulator itself
and its FreeDOS boot infrastructure live one level up in `toolchain/`.**

## Contents

| Path | What |
|---|---|
| `PCBBLDBT.CONF` | Main DOSBox-X config: mounts `BUILDROOT/` as C:, boots. |
| `BUILDROOT/` | **The build root.** Mounts as C:. Contains MSC 6.0a, MSC 7.0 compilers; `SCRIPTS/` build system; `AUTOEXEC.BAT` route dispatcher; `CONFIG.SYS` boot menu. |
| `README.md` | this file |

## Launch

From the `toolchain/` dir (one level up):

**Windows:**
```
dosbox-x.exe -conf lantirc6\PCBBLDBT.CONF
```

**Linux:**
```
./LAUNCH.SH
```

## Routes

Set by CONFIG.SYS menu, dispatched by AUTOEXEC.BAT:

| Route | Purpose | AUTOEXEC does |
|---|---|---|
| **LANTIRC6** (default) | LANtastic v6 build — MSC 6.0a | PATH=MSC60A |
| **386MAX** | 386MAX build — MSC 7.0 | PATH=MSC70 |
| **BARE** | Minimal, real-mode only | PATH=MSC60A |

## Toolchains

- **MSC 6.0a** — Microsoft C 6.0a (1990). Primary compiler for LANtastic v6.
- **MSC 7.0** — Microsoft C/C++ 7.0 (1992). For 386MAX builds.
- **BC31** — Borland C++ 3.1 (retained for TASM assembler).

## The Crew
verta1878 (lead), sysop/0, bob, evga, kiddo, wrench,
hexadecimal, DotMatrix, byte
