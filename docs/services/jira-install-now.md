# Install Jira Now (macOS)

## 1. Docker

Instaleaza Docker Desktop si asteapta pana este running.

## 2. Configureaza Jira

```bash
cd /Users/songurov/server-home/compose/jira
cp .env.example .env
```

Schimba parola `JIRA_DB_PASSWORD` in `.env`.

## 3. Porneste Jira

```bash
/Users/songurov/server-home/scripts/install_jira_mac.sh
```

## 4. Verificari

```bash
cd /Users/songurov/server-home/compose/jira
docker compose ps
docker compose logs -f jira
```

Acces UI:
- `http://localhost:8090` (sau portul din `.env`)

## 5. Auto-start la boot

```bash
/Users/songurov/server-home/scripts/enable_jira_launchd.sh
```
