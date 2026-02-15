# Task List

## General

- [ ] Defineste IP fix / hostname local pentru servere.
- [ ] Configureaza DNS public: `gitlab.<domeniu>`, `immich.<domeniu>`, `plane.<domeniu>`.
- [ ] Configureaza port forwarding in router pentru `80`, `443`, `2222`.
- [ ] Defineste calea pentru date persistente (ex: `/Users/songurov/server-data`).
- [ ] Configureaza backup zilnic pentru volume critice.
- [ ] Configureaza monitorizare uptime (healthcheck + alerte simple).

## GitLab pe Mac

- [ ] Creeaza `compose/gitlab/docker-compose.yml`.
- [ ] Configureaza volume pentru `/etc/gitlab`, `/var/log/gitlab`, `/var/opt/gitlab`.
- [ ] Configureaza `launchd` plist pentru auto-start.
- [ ] Verifica acces web + SSH git clone/push.
- [ ] Testeaza restore din backup.

## Immich

- [ ] Creeaza `compose/immich/docker-compose.yml`.
- [ ] Configureaza path media pe disk cu spatiu mare.
- [ ] Configureaza backup pentru PostgreSQL.
- [ ] Testeaza upload, indexing, face detection.

## Plane

- [ ] Ruleaza installerul oficial Plane in `compose/plane`.
- [ ] Configureaza Plane pe `localhost:3000`.
- [ ] Configureaza proxy public prin Caddy catre `plane.<domeniu>`.
- [ ] Verifica acces UI + creare proiect/issue.

## Proxmox

- [ ] Selecteaza hardware (CPU/RAM/SSD/NIC).
- [ ] Instaleaza Proxmox VE pe host dedicat.
- [ ] Configureaza bridge network + storage pool.
- [ ] Plan de migrare servicii din Docker Mac in VM-uri.
