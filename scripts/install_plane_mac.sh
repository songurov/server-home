#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/songurov/server-home/compose/plane-selfhost"
SETUP_URL="https://github.com/makeplane/plane/releases/latest/download/setup.sh"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker nu este instalat. Instaleaza Docker Desktop si ruleaza din nou." >&2
  exit 1
fi

mkdir -p "$ROOT"
cd "$ROOT"

curl -fsSL "$SETUP_URL" -o setup.sh
chmod +x setup.sh

cat <<MSG
Scriptul oficial Plane (self-host) a fost descarcat in:
  $ROOT/setup.sh

Ruleaza:
  cd $ROOT
  ./setup.sh

In setup:
- Alege optiunea "Install (arm64)" daca esti pe Apple Silicon.
- Dupa instalare se creeaza folderul `plane-app/` cu `docker-compose.yaml` si `plane.env`.

IMPORTANT: Ca sa nu intre in conflict cu Caddy (care foloseste 80/443), editeaza `plane-app/plane.env` si seteaza:
- LISTEN_HTTP_PORT=3000
- LISTEN_HTTPS_PORT=3443 (sau orice port liber, doar sa nu fie 443)
- WEB_URL=https://plane.<domeniu>
- CORS_ALLOWED_ORIGINS=https://plane.<domeniu>

Apoi ruleaza din nou `./setup.sh` si alege "Start".

Proxy:
- Caddy din `compose/public` va forwarda `plane.<domeniu>` catre `host.docker.internal:3000`.
Acces local:
- http://localhost:3000
MSG
