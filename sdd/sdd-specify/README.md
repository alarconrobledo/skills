# sdd-specify

## Qué hace
Crea una especificación formal de una feature a partir de una descripción en lenguaje natural.

## Cuándo usarla
- Cuando quieres definir qué debe hacer una feature antes de implementarla
- Primer paso del ciclo SDD tras el init
- Antes de planificar cualquier funcionalidad nueva

## Cómo invocarla
```
/sdd:specify
/sdd:specify feature-name: descripción de la feature
```

## Genera
- Archivo de spec con requisitos, criterios de aceptación y casos de uso

## Flujo SDD
```
sdd:init → [sdd:specify] → sdd:clarify → sdd:plan → sdd:tasks → sdd:implement → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
