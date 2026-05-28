#!/usr/bin/env bash
set -euo pipefail

REPO="${GITHUB_REPO:-attfarhan/superset-auto}"
ISSUES_DIR="${ISSUES_DIR:-/issues}"

shopt -s nullglob
files=("$ISSUES_DIR"/issue-*.md)

if [[ ${#files[@]} -eq 0 ]]; then
  echo "No issue files found in $ISSUES_DIR"
  exit 1
fi

for file in "${files[@]}"; do
  title=$(awk '/^Title:/{sub(/^Title:[[:space:]]*/, ""); print; exit}' "$file")
  body=$(awk '/^Body:/{found=1; next} found{print}' "$file")

  if [[ -z "$title" ]]; then
    echo "Skipping $file: no title found"
    continue
  fi

  echo "Creating issue: $title"
  gh issue create \
    --repo "$REPO" \
    --title "$title" \
    --body "$body" \
    --label "bug:cosmetic"
done
