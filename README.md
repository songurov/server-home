# server-home

Home infrastructure repo pentru:
- GitLab self-hosted pe macOS (always-on)
- Immich
- Plane (open-source)
- planificare migrare spre Proxmox pe host dedicat

## Scope curent

Acest repo urmareste implementarea si operarea stack-ului:
- `GitLab` pe Mac, cu pornire automata la boot si restart automat
- `Immich` cu storage persistent si backup
- `Plane` self-hosted (open-source) cu domeniu public
- `Proxmox` ca etapa separata pe hardware dedicat

## Structura

- `docs/roadmap.md` - plan pe faze
- `docs/tasks.md` - checklist executabil
- `docs/architecture.md` - arhitectura si decizii
- `docs/services/` - detalii pe serviciu
- `docs/runbook.md` - operatiuni zilnice, backup, recovery
- `docs/public-exposure.md` - setup domeniu + expunere in internet
- `compose/public/` - stack Docker public (Caddy + GitLab + Immich + Plane proxy)
- `compose/gitlab/` - stack GitLab-only local
- `compose/plane/` - instalare Plane self-hosted (installer oficial)

## Principii

- Docker Compose pentru servicii pe macOS.
- Date persistente in volume dedicate.
- Uptime: restart policy + `launchd` pentru auto-start la boot.
- Backup regulat pentru config + volume critice.
