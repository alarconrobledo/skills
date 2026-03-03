# cc-toolkit

Personal Claude Code toolkit. Clone once, have everything ready on any machine.

## Quick setup

```bash
git clone https://github.com/alarconrobledo/cc-toolkit
cd cc-toolkit

# Install all standalone skills
cd skills && ./install.sh

# Install a plugin (example: SDD)
# See plugins/sdd/README.md for instructions
```

## Structure

```
cc-toolkit/
  skills/      Individual slash commands → installed to ~/.claude/skills/
  plugins/     Multi-command systems     → each has its own install instructions
```

---

## Skills

Standalone commands — each works independently. Installed via `skills/install.sh`.

| Skill | Command | Category |
|-------|---------|----------|
| [orchestrating-agent-teams](./skills/agents/orchestrating-agent-teams/SKILL.md) | `/orchestrating-agent-teams` | Agents |
| [vercel-react-best-practices](./skills/frontend/vercel-react-best-practices/SKILL.md) | `/vercel-react-best-practices` | Frontend |

---

## Plugins

Cohesive systems — multiple commands that work together as a workflow.

| Plugin | Commands | Source |
|--------|----------|--------|
| [SDD — Spec-Driven Dev](./plugins/sdd/README.md) | 10 commands (`/sdd:*`) | [rubenzarroca/ssd-plugin](https://github.com/rubenzarroca/ssd-plugin) |

---

## Adding a skill

1. Choose or create a category under `skills/` (e.g. `skills/agents/`, `skills/frontend/`)
2. Create `skills/{category}/{skill-name}/SKILL.md` — instructions for Claude
3. Optionally add `README.md` for human docs
4. Update the table above
5. `git push`

## Adding a plugin

1. Create `plugins/{plugin-name}/`
2. Add `README.md` with what it is + how to install it
3. Add `skills/` subfolder with the command files
4. Update the table above
5. `git push`
