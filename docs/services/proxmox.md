# Proxmox Plan

## Realitate tehnica

Proxmox VE nu se instaleaza pe macOS. Este necesar host dedicat, instalare bare-metal.

## Plan minim

1. Alege hardware dedicat.
2. Instaleaza Proxmox VE.
3. Configureaza networking (bridge).
4. Configureaza storage local si/sau NAS.
5. Migreaza serviciile din Docker Mac in VM-uri.

## Rezultat dorit

- host dedicat pentru workload-uri 24/7
- Mac folosit doar pentru management si dezvoltare
