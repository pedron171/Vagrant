# Servidor Web com Vagrant + Nginx + GitHub Actions

Ambiente de demonstração para aula de Git/DevOps:
- **Vagrant + Ubuntu (22.04 Jammy)** para provisionar a VM
- **Nginx** servindo o conteúdo de `site/`
- **GitHub Actions**:
  - `CI - Site Check` (lista arquivos e publica o `site/` como artifact)
  - `Deploy to Nginx (Self-hosted)` (deploy automático para a VM via runner self-hosted)

## Requisitos
- Windows + VS Code
- VirtualBox + Vagrant
- Conta no GitHub

## Subir o ambiente
```powershell
vagrant up
# Navegador: http://localhost:8080
