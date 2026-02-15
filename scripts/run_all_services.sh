#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/songurov/server-home"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker nu este instalat." >&2
  exit 1
fi

# Ensure env files exist
[ -f "$ROOT/compose/gitlab/.env" ] || cp "$ROOT/compose/gitlab/.env.example" "$ROOT/compose/gitlab/.env"
[ -f "$ROOT/compose/jira/.env" ] || cp "$ROOT/compose/jira/.env.example" "$ROOT/compose/jira/.env"
[ -f "$ROOT/compose/public/.env" ] || cp "$ROOT/compose/public/.env.example" "$ROOT/compose/public/.env"

# Create local volume folders
mkdir -p "$ROOT/compose/gitlab/volumes/config" "$ROOT/compose/gitlab/volumes/logs" "$ROOT/compose/gitlab/volumes/data"
mkdir -p "$ROOT/compose/jira/volumes/jira-home" "$ROOT/compose/jira/volumes/postgres"
mkdir -p "$ROOT/compose/public/volumes/gitlab/config" "$ROOT/compose/public/volumes/gitlab/logs" "$ROOT/compose/public/volumes/gitlab/data"
mkdir -p "$ROOT/compose/public/volumes/immich/model-cache" "$ROOT/compose/public/volumes/immich/postgres" "$ROOT/compose/public/volumes/jira/home" "$ROOT/compose/public/volumes/jira/postgres"

# Start public stack (reverse proxy + GitLab + Immich + Jira)
(
  cd "$ROOT/compose/public"
  docker compose pull
  docker compose up -d
)

echo "Toate stack-urile au fost pornite."
echo "Verifica:"
echo "  cd $ROOT/compose/public && docker compose ps"
