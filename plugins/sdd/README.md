# SDD — Specification-Driven Development

A complete workflow for developing features in a specified, traceable, and auditable way.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin)

## Install

### Option A — Marketplace (recommended)

Search for **sdd** in the Claude Code marketplace and install from there.

### Option B — Manual (from this repo)

```bash
# From the repo root
cp -r plugins/sdd/skills/* ~/.claude/skills/
```

## Commands

| Command | Description |
|---------|-------------|
| `/sdd:init` | Initialize SDD for a project |
| `/sdd:prd` | Define product requirements |
| `/sdd:specify` | Write a feature spec |
| `/sdd:clarify` | Refine and validate the spec |
| `/sdd:plan` | Design the technical approach |
| `/sdd:tasks` | Decompose plan into atomic tasks |
| `/sdd:implement [TASK-NNN]` | Execute one task |
| `/sdd:status` | Current feature progress |
| `/sdd:validate` | Verify implementation vs spec |
| `/sdd:constitution` | Define project principles |

## Workflow

```
init → prd → specify → clarify → plan → tasks → implement → validate
```
