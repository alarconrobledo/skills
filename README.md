# Claude Code Skills

Personal skills repository for Claude Code. Skills are organized by functionality and ready to install on any machine.

## Quick install

```bash
git clone https://github.com/alarconrobledo/skills
cd skills
chmod +x install.sh
./install.sh                  # install all skills
./install.sh workflow         # install only a category
./install.sh workflow --force # overwrite already-installed skills
```

## Structure

```
skills/
  workflow/    # Development process and specification workflow
  agents/      # Multi-agent coordination and orchestration
  frontend/    # Frontend development (React, Next.js)
```

---

## Workflow — Specification-Driven Development

Complete SDD workflow for developing features in a specified and traceable way.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin)

| Skill | Command | Description |
|-------|---------|-------------|
| [sdd-init](./workflow/sdd-init/README.md) | `/sdd:init` | Initialize SDD project |
| [sdd-prd](./workflow/sdd-prd/SKILL.md) | `/sdd:prd` | Define product requirements |
| [sdd-specify](./workflow/sdd-specify/README.md) | `/sdd:specify` | Create a feature spec |
| [sdd-clarify](./workflow/sdd-clarify/README.md) | `/sdd:clarify` | Refine and validate the spec |
| [sdd-plan](./workflow/sdd-plan/README.md) | `/sdd:plan` | Design the technical approach |
| [sdd-tasks](./workflow/sdd-tasks/README.md) | `/sdd:tasks` | Decompose plan into tasks |
| [sdd-implement](./workflow/sdd-implement/README.md) | `/sdd:implement [TASK-NNN]` | Execute a single task |
| [sdd-status](./workflow/sdd-status/README.md) | `/sdd:status` | Current project status |
| [sdd-validate](./workflow/sdd-validate/README.md) | `/sdd:validate` | Verify implementation vs spec |
| [sdd-constitution](./workflow/sdd-constitution/README.md) | `/sdd:constitution` | Define project principles |

**Flow:**
```
init → prd → specify → clarify → plan → tasks → implement → validate
```

---

## Agents — Multi-agent coordination

Skills for orchestrating and managing Claude Code agent teams.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin)

| Skill | Command | Description |
|-------|---------|-------------|
| [orchestrating-agent-teams](./agents/orchestrating-agent-teams/SKILL.md) | `/orchestrating-agent-teams` | Orchestrate multi-agent Claude Code swarms |

---

## Frontend — React & Next.js

Skills for frontend development, performance, and best practices.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin)

| Skill | Command | Description |
|-------|---------|-------------|
| [vercel-react-best-practices](./frontend/vercel-react-best-practices/SKILL.md) | `/vercel-react-best-practices` | React & Next.js performance guidelines from Vercel |

---

## Adding a new skill

1. Choose the right category folder: `workflow/`, `agents/`, or `frontend/`
2. Create the skill folder: `category/skill-name/`
3. Add `SKILL.md` — instructions for Claude
4. Add `README.md` — documentation for humans
5. Update the table in this README
6. `git push`
