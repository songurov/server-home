# Public Stack Entry Point

## Locatie

`compose/public/`

## Include

- `docker-compose.yml` cu Caddy + GitLab + Immich + proxy pentru Plane
- `caddy/Caddyfile` pentru reverse proxy TLS
- `.env.example` cu variabilele necesare

## Runtime

```bash
cd /Users/songurov/server-home/compose/public
cp .env.example .env
# editeaza .env

docker compose up -d
```
