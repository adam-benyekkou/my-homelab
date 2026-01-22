# CavyDev Homelab - Infrastructure as Code

This repository manages the infrastructure and service configurations for my personal homelab, hosted on a Hetzner VPS. This project serves as the technical foundation for my transition toward a Master’s degree in DevOps & Cloud Engineering.

## Architecture Overview

The infrastructure is orchestrated using Docker and managed via Dockge, following a modular "stack" approach for scalability and maintainability.

### Services & Stack components

| Category | Services |
| :--- | :--- |
| **Infrastructure as Code** | Terraform, Ansible |
| **CI/CD** | GitHub Actions |
| **Edge & Routing** | Traefik (Reverse Proxy), Cloudflare |
| **Identity & Security** | Authentik (SSO), HashiCorp Vault |
| **Data Protection** | Restic, Backblaze B2 (Offsite Backup) |
| **Observability** | Prometheus, Grafana, Loki, Promtail, AlertManager, Uptime Kuma |
| **Development** | Gitea (Git Mirroring), Code-Server (Remote IDE) |
| **Automation** | n8n |
| **Content & Storage** | WordPress (CavyDev Blog), FreshRSS, Filestash |
| **Dashboard** | Homarr |

## Core Principles

- **GitOps Workflow**: Configuration changes are versioned and audited here before being applied to the production environment.
- **Security Hardening**: Strict `.gitignore` policies and secret management via environment variables and Vault ensure a secure-by-design approach.
- **Infrastructure Observability**: Real-time monitoring and alerting are implemented to maintain high availability and performance tracking.

## Build in Public

I document my infrastructure evolution, technical hurdles, and DevOps journey on my blog:
[cavydev.com](https://cavydev.com)

---
*Maintained by Adam Benyekkou — Senior Support & Junior DevOps.*
