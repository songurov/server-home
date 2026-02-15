#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/songurov/server-home/compose/jira"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker nu este instalat. Instaleaza Docker Desktop si ruleaza din nou." >&2
  exit 1
fi

cd "$ROOT"

if [ ! -f .env ]; then
  cp .env.example .env
  echo "Am creat $ROOT/.env din .env.example. Modifica parola DB inainte de productie."
fi

mkdir -p volumes/jira-home volumes/postgres

docker compose pull
docker compose up -d

echo

echo "Jira pornit. Verifica: docker compose ps"
echo "UI: http://localhost:$(grep '^JIRA_HTTP_PORT=' .env | cut -d= -f2)"
