# Verify / lint / interchange (progress tools)

## Core

```bash
rebrew doctor                           # toolchain/config health (run first on breakage)
rebrew verify --summary                 # summary table with match %
rebrew verify --json                    # bulk compile + diff all reversed functions
rebrew verify -j 8 -o report.json       # parallel compile, save report
rebrew verify --compare --json          # regressions vs last baseline
rebrew verify --watch                   # re-verify on every file change
rebrew verify --full --json             # ignore cache
rebrew lint src/main/<file>.c       # lint one file (files are POSITIONAL)
rebrew lint --json                      # annotation correctness
rebrew lint --fix                       # migrate inline metadata; drop W029-redundant cflags
rebrew lint --fix --dry-run
rebrew lint --summary
rebrew lint --quiet                     # errors only
rebrew orphans                          # metadata blocks with no source marker
rebrew orphans --prune --dry-run        # preview prune (EXACT/RELOC/PROVEN held back)
rebrew types                            # struct layouts vs decompiler evidence
rebrew types apply-type <file> --param N --type T
rebrew verify --data --built build/main
rebrew verify --whole-binary --built build/main
rebrew verify --text --built build/main
rebrew text-audit --built build/main
rebrew verify-placement --built build/main
```

`rebrew verify` syncs STATUS (PROVEN preserved); exit 1 if any function fails.
`rebrew lint` exit 1 on errors. Link-only files use `// SUPPORT: <MODULE> <reason>`.

## Coverage / interchange

```bash
rebrew catalog --data-json
rebrew build-db
rebrew symbol-addrs --output symbol_addrs.csv
rebrew context --output ctx.c
rebrew report --decomp-dev report.json
rebrew decompme <file>.c                # upload scratch to decomp.me; prints claim URL
```

`rebrew verify --compare` uses `.rebrew/verify_baseline.json` (exit 1 on
regression). First run warns and skips the diff.
