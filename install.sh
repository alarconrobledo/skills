#!/bin/bash
# Instala todos los skills en ~/.claude/skills/
# Uso: ./install.sh [categoria]
# Ejemplo: ./install.sh sdd
# Sin argumento instala todos

SKILLS_DIR="$HOME/.claude/skills"
mkdir -p "$SKILLS_DIR"

CATEGORY=${1:-"*"}

count=0
for skill_dir in $CATEGORY/*/; do
  if [ -f "$skill_dir/SKILL.md" ]; then
    skill_name=$(basename "$skill_dir")
    cp -r "$skill_dir" "$SKILLS_DIR/$skill_name"
    echo "✓ Instalado: $skill_name"
    count=$((count + 1))
  fi
done

echo ""
echo "Total instalados: $count skills en $SKILLS_DIR"
