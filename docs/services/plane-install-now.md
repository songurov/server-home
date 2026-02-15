# Install Plane Now (macOS)

## 1. Ruleaza installerul oficial

```bash
/Users/songurov/server-home/scripts/install_plane_mac.sh
cd /Users/songurov/server-home/compose/plane
./setup.sh
```

## 2. Configureaza port local 3000

In configuratia Plane, seteaza portul HTTP local la `3000`.

## 3. Porneste stack-ul public

```bash
cd /Users/songurov/server-home/compose/public
docker compose up -d caddy
```

## 4. Acces

- local: `http://localhost:3000`
- public: `https://plane.<domeniu>`
