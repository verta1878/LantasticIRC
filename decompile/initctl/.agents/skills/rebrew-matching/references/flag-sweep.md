# Flag sweep and batch GA — details

Use when `rebrew diff --json` reports `flag_sensitive: true`, or for batch
NEAR_MATCHING sweeps. Start with `quick`/`targeted`; escalate only if needed.

## Safety

Do **not** run `--tier thorough`, `--tier full`, or multi-hour `--all` GA/sweep
batches unless the user explicitly asks. Prefer `--dry-run` / `--ga-history`
first. `thorough`/`full` product counts are huge; the engine stride-samples to a
~100k combo bound (see rebrew repo `docs/FLAG_SWEEP_TIERS.md`).

## Single-function sweep

```bash
rebrew match src/main/<file>.c --flag-sweep-only                      # targeted tier (default)
rebrew match src/main/<file>.c --flag-sweep-only --tier quick         # 192 combos, < 1 min
rebrew match src/main/<file>.c --flag-sweep-only --tier targeted      # 1,152 combos, adds /Oy /Op
rebrew match src/main/<file>.c --flag-sweep-only --tier normal        # 5,376 combos, adds /ML-/MTd
rebrew match src/main/<file>.c --flag-sweep-only --tier thorough      # product 258k; auto-sampled — ask first
rebrew match src/main/<file>.c --flag-sweep-only --tier full          # product 6.2M; auto-sampled to ~100k — ask first
```

| Tier | Combinations (product) | When to use |
|------|-------------|-------------|
| `quick` | 192 | First pass on a new STUB |
| `targeted` | 1,152 | Default; when `quick` is close |
| `normal` | 5,376 | General-purpose |
| `thorough` | 258,048 | After `normal` still near — **ask user** |
| `full` | 6,193,152 | Last resort — **ask user** (engine auto-samples; no `--sample` flag) |

Axes are per-profile (MSVC `/` flags, Watcom `-os/-ot/…`, Borland `-O1/-O2`,
16-bit MSVC). Docker-only images: `rebrew toolchain pull <profile>`. Try `/O2`
or `/O1` by hand before a blind sweep; heuristics:
`references/codegen-hints.md`. Counts: rebrew repo `docs/FLAG_SWEEP_TIERS.md`.

## Batch mode (`--all`)

```bash
rebrew match --all --flag-sweep                                           # batch: all NEAR_MATCHING
rebrew match --all --flag-sweep --fix-cflags                             # auto-update CFLAGS on hit
rebrew match --all --flag-sweep-then-ga                                   # sweep, then GA with best flags
rebrew match --all --flag-sweep-then-ga --skip-recent 24                  # resume: skip stubs GA-run in last 24h
rebrew match --all --near-miss
rebrew match --all --improve
rebrew match --all --threshold 8
rebrew match --all --max-stubs 10
rebrew match --all --min-size 32 --max-size 512
rebrew match --all --filter "MyClass::"
rebrew match --all --timeout-min 5
rebrew match --all --dry-run
rebrew match --ga-history --json
rebrew merge-sweep --dry-run                         # TU-partition search (original was amalgamated)
rebrew climb src/main/<file>.c --json            # statement-order hill-climb
rebrew climb src/main/<file>.c --objective aligned --json
rebrew qual-sweep src/main/<file>.c --json       # declaration qualifier sweep
rebrew qual-sweep src/main/<file>.c --dry-run --json
```

Check `--ga-history` before long batches; `--skip-recent N` resumes; `--seed-solved`
is on by default (`--no-seed-solved` to disable). Prefer `climb` / `qual-sweep` over
another GA pass when `near-diag` says order or qualifier residue.
