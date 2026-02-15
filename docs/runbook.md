# Runbook

## Daily checks

- verifica starea containerelor
- verifica health endpoint-uri
- verifica spatiu pe disk

## Weekly checks

- verifica backup jobs
- testeaza restore pentru un serviciu
- verifica update-uri de securitate

## Incident flow

1. Identifica serviciul afectat.
2. Colecteaza logs container + host.
3. Reporneste controlat serviciul.
4. Daca nu revine, executa restore.
5. Documenteaza cauza si actiunea corectiva.
