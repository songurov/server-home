# server-home

Home infrastructure repo pentru:
- GitLab self-hosted pe macOS (always-on)
- Immich
- Jira
- planificare migrare spre Proxmox pe host dedicat

## Scope curent

Acest repo urmareste implementarea si operarea stack-ului:
- `GitLab` pe Mac, cu pornire automata la boot si restart automat
- `Immich` cu storage persistent si backup
- `Jira` cu DB persistent si backup
- `Proxmox` ca etapa separata pe hardware dedicat

## Structura

- `docs/roadmap.md` - plan pe faze
- `docs/tasks.md` - checklist executabil
- `docs/architecture.md` - arhitectura si decizii
- `docs/services/` - detalii pe serviciu
- `docs/runbook.md` - operatiuni zilnice, backup, recovery
- `docs/public-exposure.md` - setup domeniu + expunere in internet
- `compose/public/` - stack Docker public (Caddy + GitLab + Immich + Jira)
- `compose/gitlab/` - stack GitLab-only local
- `compose/jira/` - stack Jira-only local

## Principii

- Docker Compose pentru servicii pe macOS.
- Date persistente in volume dedicate.
- Uptime: restart policy + `launchd` pentru auto-start la boot.
- Backup regulat pentru config + volume critice.
