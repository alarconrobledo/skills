# Claude Code Skills

Repositorio personal de skills para Claude Code. Contiene skills organizadas por categoría, listas para instalar en cualquier máquina.

## Instalación rápida

```bash
git clone https://github.com/alarconrobledo/skills
cd skills
./install.sh         # instala todas las skills
./install.sh sdd     # instala solo la categoría sdd
```

## Estructura

```
skills/
  sdd/          # Specification-Driven Development
  agents/       # Skills de agentes
  dev-tools/    # Herramientas de desarrollo general
  third-party/  # Skills extraídas de otros repos
```

---

## SDD — Specification-Driven Development

Workflow completo para desarrollar features de forma especificada y trazable.

| Skill | Comando | Descripción |
|-------|---------|-------------|
| [sdd-init](./sdd/sdd-init/README.md) | `/sdd:init` | Inicializa el proyecto SDD |
| [sdd-specify](./sdd/sdd-specify/README.md) | `/sdd:specify` | Crea una spec de feature |
| [sdd-clarify](./sdd/sdd-clarify/README.md) | `/sdd:clarify` | Refina y valida la spec |
| [sdd-plan](./sdd/sdd-plan/README.md) | `/sdd:plan` | Diseña el approach técnico |
| [sdd-tasks](./sdd/sdd-tasks/README.md) | `/sdd:tasks` | Descompone el plan en tareas |
| [sdd-implement](./sdd/sdd-implement/README.md) | `/sdd:implement [TASK-NNN]` | Ejecuta una tarea |
| [sdd-status](./sdd/sdd-status/README.md) | `/sdd:status` | Estado actual del proyecto |
| [sdd-validate](./sdd/sdd-validate/README.md) | `/sdd:validate` | Verifica implementación vs spec |
| [sdd-constitution](./sdd/sdd-constitution/README.md) | `/sdd:constitution` | Define principios del proyecto |

**Flujo:**
```
init → specify → clarify → plan → tasks → implement → validate
```

---

## Agents

| Skill | Comando | Descripción |
|-------|---------|-------------|
| *(próximamente)* | — | Skills de agentes especializados |

---

## Dev Tools

| Skill | Comando | Descripción |
|-------|---------|-------------|
| *(próximamente)* | — | Herramientas generales de desarrollo |

---

## Third Party

| Skill | Origen | Descripción |
|-------|--------|-------------|
| *(próximamente)* | — | Skills extraídas de otros proyectos |

---

## Añadir una nueva skill

1. Crea la carpeta en la categoría correspondiente: `categoria/nombre-skill/`
2. Añade `SKILL.md` — instrucciones para Claude
3. Añade `README.md` — documentación para humanos
4. Actualiza la tabla en este README
5. `git push`
