# sdd-clarify

## Qué hace
Refina una especificación existente identificando gaps, ambigüedades y casos edge. Hace preguntas para asegurar que la spec está completa antes de planificar.

## Cuándo usarla
- Después de `sdd:specify`, antes de `sdd:plan`
- Cuando una spec tiene partes poco claras o incompletas
- Para asegurarse de que no hay ambigüedades antes de diseñar

## Cómo invocarla
```
/sdd:clarify
```

## Flujo SDD
```
sdd:init → sdd:specify → [sdd:clarify] → sdd:plan → sdd:tasks → sdd:implement → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
