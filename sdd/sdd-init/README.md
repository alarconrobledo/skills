# sdd-init

## Qué hace
Inicializa el workflow SDD (Specification-Driven Development) en un proyecto. Genera la estructura base necesaria para trabajar con el flujo SDD.

## Cuándo usarla
- Al empezar un proyecto nuevo desde cero
- Para añadir SDD a un proyecto ya existente
- Primera skill a ejecutar en cualquier proyecto SDD

## Cómo invocarla
```
/sdd:init
/sdd:init [nombre-proyecto]
```

## Genera
- `CLAUDE.md` — instrucciones del proyecto para Claude
- `constitution.md` — principios no negociables del proyecto
- `state.json` — estado actual del workflow SDD
- Estructura de carpetas base del proyecto

## Flujo SDD
```
sdd:init → sdd:specify → sdd:clarify → sdd:plan → sdd:tasks → sdd:implement → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
