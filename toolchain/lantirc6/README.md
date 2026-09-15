# pcbirc — PCB build content for the DOSBox-X bundle

Everything pcbirc-specific in the bundle. **The DOSBox-X emulator itself
and its FreeDOS boot infrastructure live one level up in `dosbox-x/`.**

## Contents

| Path | What |
|---|---|
| `PCBBLDBT.CONF` | Main DOSBox-X config: mounts `BUILDROOT/` as C:, applies the INT 68h fix for HX HDPMI, boots. |
| `386MAX-DEVICES.CONF` | Alt DOSBox-X config using the 2026.06+ `[devices]` section to load `386MAX.SYS` at boot — for verifying built 386MAX in-emulator instead of needing 86Box/PCem/QEMU. |
| `BUILDROOT/` | **The build root.** Mounts as C:. Contents: BC31, MSC70, TC201 compilers; HX, CWSDPMI, D32A DPMI extenders; `386MAX_S/`, `PCB153/`, `TOOLKIT/` sources; `BUILD/`, `SCRIPTS/` build system; `AUTOEXEC.BAT` route dispatcher; `CONFIG.SYS` multi-boot menu; `OUT/`, `TMP/`. |
| `README.md` | this file |

### Why "BUILDROOT" and not "toolkit"?

Two reasons:

1. **Repo already has `toolkit/` at top level** for the PWA 15.3 / 15.4
   SDK source only (headers, sources, docs — ~347 files). If this dir
   were also called `toolkit/`, browsing the repo would show two
   different `toolkit/` dirs meaning different things: one is "the SDK
   we're preserving" (repo top), the other is "the whole DOS build
   environment" (compilers + SDK + FreeDOS + scripts, ~2370 files).
   Confusing at a glance and worse in tooling that flattens paths.

2. **BUILDROOT reflects intent to grow.** Right now this holds the DOS
   build environment. In future it may house the complete repo mirror
   (so a single mount gives you everything: source, patches, build
   scripts, docs). "BUILDROOT" scales to that; "toolkit" is narrower
   than what already lives here today.

Term is borrowed from the embedded-Linux `buildroot` project convention
— the directory that becomes the root filesystem when the target boots.
Same idea here: whatever is under `BUILDROOT/` becomes C:\ at runtime.

### Sibling files at `dosbox-x/` level (not in pcbirc/)

| Path | What |
|---|---|
| `../SETUP.SH` | Host-side installer for DOSBox-X 2024 + 2026; also `--make-floppy` to build FDBOOT.IMG |
| `../KERNEL.SYS`, `../FDCONFIG.SYS`, `../FDAUTO.BAT`, `../FDOS/` | FreeDOS 1.3 boot-floppy content, flat at `dosbox-x/` root. Used by `../SETUP.SH --make-floppy` to build `../FDBOOT.IMG` for the optional real-boot flow. |

## Launch

From the `dosbox-x/` dir (one level up):

**Windows:**
```
dosbox-x.exe -conf pcbirc\PCBBLDBT.CONF
```

**Linux:**
```
./dosbox-x -conf pcbirc/PCBBLDBT.CONF
```

Or if you installed DOSBox-X system-wide via `../SETUP.SH`:
```
dosbox-x -conf pcbirc/PCBBLDBT.CONF
```

## What happens at launch

Two flows are supported. The default is (1); (2) is opt-in.

### (1) Fast pass-through mount — DEFAULT

`PCBBLDBT.CONF` runs `mount c pcbirc/BUILDROOT` and hands off to
DOSBox-X's built-in DOS. Host-side edits are live in DOS immediately
(no image to sync). **The multi-boot menu in `CONFIG.SYS` does NOT
fire in this mode** — DOSBox-X's built-in DOS doesn't parse it, and
`%CONFIG%` is empty, so `AUTOEXEC.BAT` falls through to its default
route (PWA / Borland C++ 3.1). Good for fast iteration when you know
which route you want.

### (2) Real boot — floppy chain

To get the CONFIG.SYS multi-boot menu (route selector: PWA / DELTA /
IRC1541 / PCBKMS / 386MAX / BARE), swap the `[autoexec]` block in
`PCBBLDBT.CONF` for:

```
imgmount 0 ../FDBOOT.IMG -t floppy
imgmount 2 pcbirc/BUILDROOT -t hdd -fs fat -size 512,63,16,195
boot -l a
```

The floppy boots FreeDOS, its `FDAUTO.BAT` chains to C:, and C:'s
`CONFIG.SYS [menu]` shows the six-route picker. Selecting a route
sets `%CONFIG%`, which `AUTOEXEC.BAT` then reads to configure
PATH/INCLUDE/LIB and load extenders (e.g. `HDPMI32 -r` for PCBKMS).

Needs `FDBOOT.IMG` at `dosbox-x/` level. Build it from the FreeDOS files at `dosbox-x/`
with `../SETUP.SH --make-floppy`. See the caveat in `SETUP.SH` — the
scaffolded floppy needs a `SYS A:` from a live FreeDOS to become
boot-capable.

## The six routes

Set by CONFIG.SYS `[menu]`, dispatched by AUTOEXEC.BAT:

| Route | Purpose | AUTOEXEC does |
|---|---|---|
| **PWA** (default) | PCBoard PWA canonical build — Borland C++ 3.1 | PATH=BC31 |
| **DELTA** | PCBoard Delta 15.4 — OpenWatcom (deferred) | PATH=WATCOM stub |
| **IRC1541** | IRC 15.41 — ow2irc (deferred) | PATH=OW2IRC stub |
| **PCBKMS** | Route A — MSC 7.0 + HDPMI32 experimental PCBoard build | `HDPMI32 -r`, PATH=MSC70 |
| **386MAX** | Route B — 386MAX loaded via `DEVICE=` (real DOS / low-level emu only) | PATH=MSC70 |
| **BARE** | Real-mode only, no extenders | PATH=TC201 |

## Common commands (inside DOS)

```
CD \BUILD & MAXBLD1 && MAXBLD2       REM 386MAX build (any route)
CD \BUILD & BLDKMS                    REM PCBKMS toolkit build (route PCBKMS)
CD \BUILD & BUILD all                 REM full SDK dispatch
```

## 386MAX Phase A (build) — works today

```
CD \BUILD
MAXBLD1     REM ~5 min: preprocess (sed + bt-annotate + label expand)
MAXBLD2     REM ~5 min: assemble (TASMX) + link (TLINK)
```

Output: `386MAX.SYS` in `\OUT\386MAX\` — GPLv3, ours to redistribute.
Current state: **Gate 1 complete**, 235,224 bytes (102.60% of shipped
Qualitas 229,268). Gate 2 (load-verify under `DEVICE=`) pending — use
`386MAX-DEVICES.CONF` with DOSBox-X 2026.06.02 or an 86Box/PCem/QEMU
guest with real DOS.

See `todo/386max-build-downgrade.md` in the pcbirc repo for the full
build recipe (12 sed rules + xform-bt.awk + xform.awk).

## Two DOSBox-X versions supported

| Version | Purpose |
|---|---|
| **2024.03.01** (bundled `../dosbox-x.exe` on Windows; `apt install dosbox-x` on Linux) | Proven default. All prior smoke tests + PCBKMS Route A verified on this. Use for everyday building. |
| **2026.06.02** (Linux AppImage from pkgforge-dev) | Introduces the `[devices]` section for loading DOS device drivers at startup. Unblocks 386MAX Phase B without needing another emulator. Install via `../SETUP.SH`. |

## More docs (in the pcbirc repo)

- `PCBKMS-BUILD-SETUP.md` — Route A recipe end-to-end
- `SDK-BUILD-STATUS.md` — where each build track stands
- `NO-DOSBOX-WRITEBACK-FIX.md` — why we use pass-through mount, not IMG writeback
- `todo/dosboxx-dpmi-failures.md` — DOSBox-X + DPMI compatibility notes
- `todo/386max-build-downgrade.md` — 386MAX build recipe
