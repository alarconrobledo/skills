# sdd-plan

## Qué hace
Diseña el approach técnico para una feature especificada. Genera un plan de implementación y un ADR (Architecture Decision Record).

## Cuándo usarla
- Después de `sdd:clarify`, cuando la spec está refinada
- Para diseñar la arquitectura antes de implementar
- Cuando necesitas documentar decisiones técnicas

## Cómo invocarla
```
/sdd:plan
/sdd:plan [feature-name]
```

## Genera
- `plan.md` — diseño técnico detallado
- ADR (Architecture Decision Record)

## Flujo SDD
```
sdd:init → sdd:specify → sdd:clarify → [sdd:plan] → sdd:tasks → sdd:implement → sdd:validate
```

## Origen
Workflow SDD — Specification-Driven Development
