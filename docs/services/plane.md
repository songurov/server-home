# Plane Service Plan

## Obiectiv

Inlocuieste Jira cu Plane CE (open-source), self-hosted pe Mac.

## Instalare

Foloseste installerul oficial Plane:

```bash
/Users/songurov/server-home/scripts/install_plane_mac.sh
cd /Users/songurov/server-home/compose/plane
./setup.sh
```

## Networking

- Ruleaza Plane pe `localhost:3000`.
- Caddy din `compose/public` face reverse proxy din `plane.<domeniu>` spre `host.docker.internal:3000`.

## Verificari

- acces local: `http://localhost:3000`
- acces domeniu: `https://plane.<domeniu>`
- creare workspace + proiect + issue
