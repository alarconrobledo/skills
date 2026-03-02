# sdd-implement

## Qué hace
Ejecuta una sola tarea del task list SDD. Scope muy acotado: lee únicamente la tarea y los archivos que lista, e implementa exactamente lo pedido.

## Cuándo usarla
- Para implementar cada tarea del task list una a una
- Cuando el usuario dice "implementa TASK-001", "siguiente tarea", "haz esta tarea"

## Cómo invocarla
```
/sdd:implement
/sdd:implement TASK-001
/sdd:implement [TASK-NNN]
```

## Flujo SDD
```
sdd:init → sdd:specify → sdd:clarify → sdd:plan → sdd:tasks → [sdd:implement] → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
