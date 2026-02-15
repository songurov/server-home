# Architecture

## Context

- Host principal curent: macOS (`/Users/songurov`).
- Orchestrare servicii: Docker Compose.
- Persistenta: volume pe disk local + backup extern.

## Servicii tinta

- GitLab CE: SCM + CI local.
- Immich: photo/video management.
- Jira Software: project tracking.

## Constrangeri

- Proxmox VE nu ruleaza nativ pe macOS.
- Pentru Proxmox este necesar host dedicat x86_64, bare-metal.

## Strategie

1. Faza initiala pe Mac: toate serviciile in containere, always-on.
2. Faza de maturizare: migrare pe Proxmox host separat.
3. Faza stabila: Mac pentru management, Proxmox pentru productie home-lab.
