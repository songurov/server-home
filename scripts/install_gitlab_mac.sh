#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/songurov/server-home/compose/gitlab"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker nu este instalat. Instaleaza Docker Desktop si ruleaza din nou." >&2
  exit 1
fi

cd "$ROOT"

if [ ! -f .env ]; then
  cp .env.example .env
  echo "Am creat $ROOT/.env din .env.example. Verifica valorile inainte de productie."
fi

mkdir -p volumes/config volumes/logs volumes/data

docker compose pull
docker compose up -d

echo

echo "GitLab pornit. Verifica: docker compose ps"
echo "UI: http://localhost:$(grep '^GITLAB_HTTP_PORT=' .env | cut -d= -f2)"
echo "SSH: port $(grep '^GITLAB_SSH_PORT=' .env | cut -d= -f2)"
