#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/songurov/server-home/compose/plane"
SETUP_URL="https://raw.githubusercontent.com/makeplane/plane/master/setup.sh"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker nu este instalat. Instaleaza Docker Desktop si ruleaza din nou." >&2
  exit 1
fi

mkdir -p "$ROOT"
cd "$ROOT"

curl -fsSL "$SETUP_URL" -o setup.sh
chmod +x setup.sh

cat <<MSG
Scriptul oficial Plane a fost descarcat in:
  $ROOT/setup.sh

Ruleaza:
  cd $ROOT
  ./setup.sh

La final seteaza Plane sa asculte pe portul local 3000
ca sa functioneze proxy-ul din compose/public/caddy/Caddyfile.
MSG
