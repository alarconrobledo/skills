# sdd-tasks

## Qué hace
Descompone el plan técnico en una lista de tareas atómicas y ordenadas, listas para implementar una a una.

## Cuándo usarla
- Después de `sdd:plan`
- Para convertir el diseño técnico en pasos concretos de implementación
- Antes de empezar a codificar

## Cómo invocarla
```
/sdd:tasks
/sdd:tasks [feature-name]
```

## Genera
- Lista de tareas tipo TASK-001, TASK-002... ordenadas por dependencias

## Flujo SDD
```
sdd:init → sdd:specify → sdd:clarify → sdd:plan → [sdd:tasks] → sdd:implement → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
