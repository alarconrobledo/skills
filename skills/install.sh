#!/bin/bash
set -euo pipefail

# Install all skills into ~/.claude/skills/
# Usage: ./install.sh [category] [--force]
# Example: ./install.sh sdd
#          ./install.sh sdd --force   (overwrite existing)
#          ./install.sh               (install all)

# Lock to script's own directory regardless of where it's called from
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

SKILLS_DIR="$HOME/.claude/skills"
mkdir -p -m 0700 "$SKILLS_DIR"

# Parse args
CATEGORY="${1:-*}"
FORCE=0
for arg in "$@"; do
  [[ "$arg" == "--force" ]] && FORCE=1
done

# Validate category: only allow simple alphanumeric/hyphen/underscore or *
if [[ "$CATEGORY" != "*" && ! "$CATEGORY" =~ ^[a-zA-Z0-9_-]+$ ]]; then
  echo "Error: category must be alphanumeric (got: $CATEGORY)" >&2
  exit 1
fi

shopt -s nullglob
skill_dirs=("${CATEGORY}"/*/SKILL.md)

if [[ ${#skill_dirs[@]} -eq 0 ]]; then
  echo "No skills found for category: $CATEGORY" >&2
  exit 1
fi

count=0
for skill_md in "${skill_dirs[@]}"; do
  skill_dir="${skill_md%/SKILL.md}"

  # Extract name without subshell (parameter expansion)
  skill_name="${skill_dir%/}"
  skill_name="${skill_name##*/}"

  # Validate skill name to prevent path traversal
  if [[ ! "$skill_name" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo "SKIP (invalid name): $skill_name" >&2
    continue
  fi

  dest="$SKILLS_DIR/$skill_name"

  # Warn and skip if already installed (use --force to overwrite)
  if [[ -d "$dest" ]]; then
    if [[ "$FORCE" -eq 1 ]]; then
      echo "Overwriting: $skill_name"
    else
      echo "SKIP (already installed, use --force to overwrite): $skill_name"
      continue
    fi
  fi

  # Copy without following symlinks to prevent traversal attacks
  cp -r --no-dereference "$skill_dir" "$dest"
  echo "Installed: $skill_name"
  count=$((count + 1))
done

echo ""
echo "Done: $count skill(s) installed to $SKILLS_DIR"
