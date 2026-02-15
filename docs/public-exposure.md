# Public Exposure Guide

## 1. DNS

Creeaza in providerul tau DNS 3 inregistrari `A` (sau `AAAA` daca ai IPv6):

- `gitlab.<domeniu>` -> IP-ul public al conexiunii tale
- `immich.<domeniu>` -> IP-ul public al conexiunii tale
- `plane.<domeniu>` -> IP-ul public al conexiunii tale

Daca IP-ul public este dinamic, configureaza DDNS la router.

## 2. Router / Firewall

Forward catre Mac-ul pe care ruleaza docker:

- TCP `80` -> `80` (pentru challenge si redirect HTTPS)
- TCP `443` -> `443` (trafic HTTPS)
- TCP `2222` -> `2222` (GitLab SSH, optional dar recomandat)

Permite traficul in firewall-ul macOS pentru Docker.

## 3. Pregatire configuratie

In `compose/public`:

1. copiaza `.env.example` in `.env`
2. completeaza domeniile reale si parolele

Comenzi:

```bash
cd /Users/songurov/server-home/compose/public
cp .env.example .env
```

## 4. Start stack

```bash
docker compose pull
docker compose up -d
```

Verificari rapide:

```bash
docker compose ps
docker compose logs -f caddy
```

## 5. URLs finale

- `https://gitlab.<domeniu>`
- `https://immich.<domeniu>`
- `https://plane.<domeniu>`

GitLab SSH clone va folosi portul 2222:

```bash
git clone ssh://git@gitlab.<domeniu>:2222/group/proiect.git
```

## 6. Hardening minim

- activeaza 2FA in GitLab si Plane
- foloseste parole unice pentru toate DB-urile
- activeaza backup zilnic pentru volume
- restrictioneaza login admin dupa setup
- actualizeaza imaginile periodic (`docker compose pull`)

## 7. Limitari frecvente

- Daca ISP foloseste CGNAT, expunerea directa nu functioneaza; ai nevoie de IP public real sau tunnel/VPN.
- Certificatul TLS nu se emite daca DNS-ul nu pointeaza corect spre IP-ul public.
