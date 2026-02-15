# Install Plane Now (macOS)

## 1. Ruleaza installerul oficial

```bash
/Users/songurov/server-home/scripts/install_plane_mac.sh
cd /Users/songurov/server-home/compose/plane-selfhost
./setup.sh
```

## 2. Configureaza port local 3000

Dupa instalare, editeaza:

- `compose/plane-selfhost/plane-app/plane.env`

Seteaza (exemplu):

- `LISTEN_HTTP_PORT=3000`
- `LISTEN_HTTPS_PORT=3443` (ca sa nu blocheze 443 folosit de Caddy)
- `WEB_URL=https://plane.<domeniu>`
- `CORS_ALLOWED_ORIGINS=https://plane.<domeniu>`

## 3. Porneste stack-ul public

```bash
cd /Users/songurov/server-home/compose/public
docker compose up -d caddy
```

## 4. Acces

- local: `http://localhost:3000`
- public: `https://plane.<domeniu>`
