# sdd-validate

## Qué hace
Verifica que la implementación cumple la spec original. Detecta drift, código huérfano y violaciones de la constitution. Paso final del ciclo SDD.

## Cuándo usarla
- Cuando todas las tareas están completadas
- Para hacer la revisión final antes de considerar una feature "done"
- Si sospechas que el código se ha desviado de la spec

## Cómo invocarla
```
/sdd:validate
/sdd:validate [feature-name]
```

## Comprueba
- Cobertura de la spec vs implementación
- Código huérfano (implementado pero no especificado)
- Cumplimiento de la constitution

## Flujo SDD
```
sdd:init → sdd:specify → sdd:clarify → sdd:plan → sdd:tasks → sdd:implement → [sdd:validate]
```

## Origen
Workflow SDD — Specification-Driven Development
