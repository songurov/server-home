# GitLab Service Plan

## Obiectiv

Ruleaza GitLab CE pe macOS, non-stop, cu restart automat si date persistente.

## Cerinte

- Docker Desktop functional
- minim 8 GB RAM disponibili pentru GitLab
- storage persistent suficient

## Persistenta

- config
- logs
- data

## Uptime

- restart policy: `unless-stopped`
- auto-start la boot cu `launchd`

## Verificari

- acces UI
- clone/push SSH
- pipeline simplu
- backup + restore test
