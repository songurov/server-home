# Install GitLab Now (macOS)

## 1. Instaleaza Docker Desktop pe Mac

Daca nu este instalat:

```bash
brew install --cask docker
open -a Docker
```

Asteapta pana Docker devine "Running".

## 2. Configureaza GitLab local

```bash
cd /Users/songurov/server-home/compose/gitlab
cp .env.example .env
```

Modifica `.env` daca vrei alt port/host.

## 3. Porneste GitLab

```bash
/Users/songurov/server-home/scripts/install_gitlab_mac.sh
```

## 4. Verificari

```bash
cd /Users/songurov/server-home/compose/gitlab
docker compose ps
docker compose logs -f gitlab
```

Acces UI initial:
- `http://localhost:8088` (sau portul din `.env`)

## 5. Parola root initiala

Dupa primul boot:

```bash
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```
