# Claude Code Skills

Personal skills repository for Claude Code. Skills are organized by category and ready to install on any machine.

## Quick install

```bash
git clone https://github.com/alarconrobledo/skills
cd skills
chmod +x install.sh
./install.sh              # install all skills
./install.sh sdd          # install only the sdd category
./install.sh sdd --force  # overwrite already-installed skills
```

## Structure

```
skills/
  sdd/           # Specification-Driven Development
  agents/        # Agent skills
  dev-tools/     # General development tools
  third-party/   # Skills extracted from other repos
```

---

## SDD — Specification-Driven Development

Complete workflow for developing features in a specified and traceable way.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin)

| Skill | Command | Description |
|-------|---------|-------------|
| [sdd-init](./sdd/sdd-init/README.md) | `/sdd:init` | Initialize SDD project |
| [sdd-prd](./sdd/sdd-prd/SKILL.md) | `/sdd:prd` | Define product requirements |
| [sdd-specify](./sdd/sdd-specify/README.md) | `/sdd:specify` | Create a feature spec |
| [sdd-clarify](./sdd/sdd-clarify/README.md) | `/sdd:clarify` | Refine and validate the spec |
| [sdd-plan](./sdd/sdd-plan/README.md) | `/sdd:plan` | Design the technical approach |
| [sdd-tasks](./sdd/sdd-tasks/README.md) | `/sdd:tasks` | Decompose plan into tasks |
| [sdd-implement](./sdd/sdd-implement/README.md) | `/sdd:implement [TASK-NNN]` | Execute a single task |
| [sdd-status](./sdd/sdd-status/README.md) | `/sdd:status` | Current project status |
| [sdd-validate](./sdd/sdd-validate/README.md) | `/sdd:validate` | Verify implementation vs spec |
| [sdd-constitution](./sdd/sdd-constitution/README.md) | `/sdd:constitution` | Define project principles |

**Flow:**
```
init → prd → specify → clarify → plan → tasks → implement → validate
```

---

## Agents

| Skill | Command | Description |
|-------|---------|-------------|
| *(coming soon)* | — | Specialized agent skills |

---

## Dev Tools

| Skill | Command | Description |
|-------|---------|-------------|
| *(coming soon)* | — | General development tools |

---

## Third Party

Skills extracted from external repos. Original authors credited below.

> Source: [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin) — by Rubén Zarroca

| Skill | Command | Description |
|-------|---------|-------------|
| [orchestrating-agent-teams](./third-party/orchestrating-agent-teams/SKILL.md) | `/orchestrating-agent-teams` | Orchestrate multi-agent Claude Code swarms |
| [vercel-react-best-practices](./third-party/vercel-react-best-practices/SKILL.md) | `/vercel-react-best-practices` | React & Next.js performance guidelines from Vercel |

---

## Adding a new skill

1. Create the folder in the right category: `category/skill-name/`
2. Add `SKILL.md` — instructions for Claude
3. Add `README.md` — documentation for humans
4. Update the table in this README
5. `git push`
