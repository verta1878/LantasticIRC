---
name: rebrew-init
description: >-
  Use when scaffolding with `rebrew init` — bare directory, target naming,
  `--guess-compiler` vs `--toolchain`, doctor done-gate, then hand off to
  rebrew-intake. Triggers on 'new project', 'scaffold', 'bare directory',
  'create project', 'set up rebrew', 'rebrew init', 'guess-compiler', or
  'refresh-agents'. If the user hands you a binary to onboard in one shot, use
  rebrew-intake (`rebrew intake`) instead. Not for day-to-day reversing
  (rebrew-workflow).
license: MIT
---

```mermaid
graph TD
    Place[Place binary<br/>mkdir proj && cp game.exe proj/original/] --> Init
    Init{rebrew init<br/>--target + --guess-compiler} -->|done| Doctor{Doctor passes?<br/>rebrew doctor}
    Doctor -->|fail| Fix[Repair from doctor report<br/>rebrew toolchain build <profile>]
    Fix --> Doctor
    Doctor -->|pass| Skills[Check skill rendering<br/>.agents/skills/]
    Skills --> Handoff[Hand off to rebrew-intake]
```

# Rebrew Init

Scaffold a new rebrew project from an empty directory and a target binary.

## When NOT to use this skill

- One-shot binary onboard (`rebrew intake <binary>`) → use `rebrew-intake`
- Day-to-day reversing → use `rebrew-workflow`
- Deep matching → use `rebrew-matching`

Use when the user needs scaffold decisions (name, profile). Prefer `rebrew intake`
for "here's a binary, set it up". Re-run `rebrew init --refresh-agents` to
re-render the scaffold after template changes.

## Scaffold

```bash
mkdir <project> && cd <project>
mkdir original && cp /path/to/<binary> original/
rebrew init --target <name> --binary <filename> --guess-compiler
```

Target naming: bare binary stem, no extension (`server.dll` → `server`, `game.exe` → `game`; lowercased, non-alnum → `_`). Same default as `rebrew intake`. Override with `--target` only when MODULE markers already use a different form (e.g. legacy `server.dll`). Paths are `layout/main/`, `src/main/`.

## Profile selection

`--guess-compiler` detects from the binary (diec → PDB → heuristics) and is
right for standard builds. Override with `--toolchain <profile>` when:

- The binary is a rebuild or repack whose headers lie (guess follows the
  headers, not the codegen).
- You already know the exact toolchain (matching SP-level profile matters:
  `msvc-6.0-sp6` vs `msvc-6.0` is a different code generator).
- 16-bit DOS/NE binaries where the heuristic prefers wrong (see
  rebrew repo `docs/TOOLCHAIN.md` for the `watcom-2.0-win16` / `msvc-1.52` / `borland-3.1`
  decision tree).

```bash
rebrew init --target <name> --binary <filename> --toolchain <profile>
```

## Done-gate

```bash
rebrew doctor
```

Run it right after `rebrew init`. Doctor must report healthy
(warnings for unconfigured optionals — FLIRT, Ghidra, BinSync — are fine;
failures are not) before handing off. The commonest failure is the toolchain
image missing — fix with `rebrew toolchain build <profile>` (or `pull`).

## Skill rendering check

`rebrew init` renders the packaged skills (plus any `REBREW_SKILLS_DIR`
overlay) into `.agents/skills/`, substituting the target name. Confirm
`.agents/skills/` holds every skill `rebrew skills list` reports.

## Handoff

Scaffold done → `rebrew-intake` owns the binary from here (FLIRT scan,
catalog, triage). The handoff is one line: the target name and profile.
