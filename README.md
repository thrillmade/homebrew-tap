# thrillmade/homebrew-tap

Homebrew formulas for the [thrillmade](https://github.com/thrillmade) SkDD developer toolchain.

## Quick start

Install the full SkDD toolchain (logmind + clud-bug + baseline skills) in one command:

```bash
brew install thrillmade/tap/skdd
```

Then in any repo:

```bash
cd your-project
logmind init --with-skdd     # also installs clud-bug if missing
# OR
npx clud-bug init --with-skdd  # mirror — Node entry; installs logmind if missing
```

Either entry point lands you at the same end state. The unified install flags are symmetric:
`logmind init --with-skdd` runs `npx clud-bug init` after; `clud-bug init --with-skdd` runs
`pip install logmind && logmind init` after. Each opt-in goes one level only — no mutual recursion.

## Individual formulas

If you only want one tool:

```bash
brew install thrillmade/tap/logmind     # Python decision-log CLI
brew install thrillmade/tap/clud-bug    # Skill-driven PR review
brew install thrillmade/tap/skdd        # Meta — installs both above
```

## What's in the toolchain

| Tool | Purpose | Website |
|---|---|---|
| [logmind](https://logmind.dev) | Decision-log CLI; docs/timeline / decisions / file-structure auto-managed; SkDD skill authoring (`logmind skill new/test/bench/audit/suggest`) | logmind.dev |
| [clud-bug](https://cludbug.dev) | Skill-driven Claude PR review; deterministic usage dashboard (`clud-bug usage --health`) | cludbug.dev |
| [agent-skills](https://github.com/thrillmade/agent-skills) catalog | Baseline skills installed by both `logmind init` + `clud-bug init` (critical-issues-only, evidence-based-review, respect-existing-conventions, etc.) | — |

## Migration from `thrillmade/homebrew-logmind`

The old `thrillmade/homebrew-logmind` tap is **deprecated**. It hosted only the logmind formula (pinned at v0.3.4) and is left in place for backward compatibility — `brew install thrillmade/logmind/logmind` continues to work for existing users.

For new installs, use this tap (`thrillmade/tap`). It ships current versions of every formula and is the canonical home going forward. Pattern follows AWS's `aws/homebrew-aws` → `aws/homebrew-tap` migration.

## Maintenance

Auto-update workflow: TODO (will land in a future PR — for now, bumps are manual on each `logmind` / `clud-bug` release).

Formula audit: run `brew audit --strict --new thrillmade/tap/<formula>` before pushing changes.
