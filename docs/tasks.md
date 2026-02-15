# Task List

## General

- [ ] Defineste IP fix / hostname local pentru servere.
- [ ] Configureaza DNS public: `gitlab.<domeniu>`, `immich.<domeniu>`, `jira.<domeniu>`.
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

## Jira

- [ ] Creeaza `compose/jira/docker-compose.yml`.
- [ ] Configureaza PostgreSQL separat.
- [ ] Configureaza backup automat DB + home directory.
- [ ] Verifica acces UI + performanta initiala.

## Proxmox

- [ ] Selecteaza hardware (CPU/RAM/SSD/NIC).
- [ ] Instaleaza Proxmox VE pe host dedicat.
- [ ] Configureaza bridge network + storage pool.
- [ ] Plan de migrare servicii din Docker Mac in VM-uri.
