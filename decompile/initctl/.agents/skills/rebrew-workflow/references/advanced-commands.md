# Advanced / linkage commands

Manual inspection and linkage tools outside the main reverse loop. Run
`rebrew <cmd> --help` for options; structured output uses `--json`.

| Command | Purpose |
|---------|---------|
| `rebrew describe` | Per-function recon dossier: callers, callees, strings, imports. |
| `rebrew diagnose` | Explain why a function compiles with its toolchain and flags (resolution trace). |
| `rebrew stack-cmp` | Compare the compiled function's stack frame against the target binary. |
| `rebrew pdb-info` | Extract compiler version, flags, and function names from a sibling PDB. |
| `rebrew recover-structs` | Recover struct definitions from decompiler output (offset evidence to typedefs). |
| `rebrew document-unmatched` | Document unmatched functions as STUB skeletons plus blockers. |
| `rebrew binary-similarity` | Whole-binary structural similarity against another binary (versions, DLL+EXE). |
| `rebrew cross-import` | Import matched functions from another target (same code, different VAs). `--shared` stacks the marker onto the shared file in `src/shared` (one file, one marker per target) instead of copying; prefer it when targets share one codebase. |
| `rebrew verify-exports` | Verify the recompiled binary's export table matches the original target. |
| `rebrew order-sources` | Order source files by their first function's original VA (position-aligned `.text`). |
| `rebrew calibrate-bss` | Calibrate a BSS tail pad so the raw link's `.data` VirtualSize matches the reference. |
| `rebrew gen-stubs` | Generate a stub TU for unresolved linker symbols (LNK2001/LNK2019). |
| `rebrew gen-link-stubs` | Generate a `link_stubs.c`-style BSS placeholder TU from the data metadata. |
| `rebrew inline-strings` | Inline string-literal globals (`s_<hint>_<0xADDR>`) from the reference binary. |
| `rebrew link-sweep` | Sweep LINK options to reproduce the reference PE header (find stamp-only fields). |
| `rebrew cmake-toolchain` | Write a CMake toolchain file that drives a docker toolchain via `rebrew-cmake-*`. |
| `rebrew cmake-flags` | Write per-file CFLAGS from `rebrew-functions.toml` as a CMake include. |
| `rebrew cmake-sources` | Write the target's marker-selected source list as a CMake include. |
| `rebrew migrate-markers` | ADR 023: move inline markers into `rebrew-functions.toml` and strip the `.c` to pure C (idempotent, `--dry-run` previews). |
| `rebrew build-check` | Verify `build/` still matches what CMake generated (catches a hand-edited `build.make`). |
| `rebrew binsync init/diff/overlay/push/pull` | BinSync state repo: create, divergence report, overlay a related target's names, git-backed export/import. Field sync: rebrew-ghidra-sync. |
| `rebrew binsync-init` / `binsync-diff` / `binsync-overlay` | Same commands as `rebrew binsync init/diff/overlay`; prefer the group form. |
| `rebrew binsync-export` / `binsync-import` | Low-level state export/import; prefer `rebrew sync --push/--pull --state-dir`. |
| `rebrew refactor` | Analyse the source tree and suggest refactoring opportunities. |
| `rebrew recommend` | Deterministic advice lanes (TU layout, hygiene, next action); `--apply` fixes safe lanes. |
