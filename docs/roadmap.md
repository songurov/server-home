# Roadmap

## Faza 1 - Fundatie pe Mac

1. Instaleaza Docker Desktop si valideaza `docker compose`.
2. Defineste structura de directoare persistente pentru volume.
3. Configureaza backup local pentru directoarele de date.

## Faza 2 - GitLab Always-On

1. Ruleaza GitLab in container cu volume persistente.
2. Configureaza restart policy (`unless-stopped`).
3. Adauga `launchd` pentru pornire automata la boot.
4. Configureaza URL local, SMTP (optional), backup.

## Faza 3 - Immich

1. Ruleaza stack-ul Immich (server + machine-learning + redis + postgres).
2. Monteaza storage media dedicat.
3. Configureaza backup DB + media metadata.

## Faza 4 - Jira

1. Ruleaza Jira + PostgreSQL dedicat.
2. Configureaza volume persistente si snapshot-uri periodice.
3. Configureaza URL intern + reverse proxy (optional).

## Faza 5 - Proxmox (Host separat)

1. Alege hardware dedicat pentru Proxmox VE.
2. Instaleaza Proxmox pe bare metal.
3. Migreaza gradual servicii de pe Mac pe VM/LXC.
4. Pastreaza Mac-ul ca nod management/dev fallback.
