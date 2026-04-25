# Skill Portal — Claude Code Context

## Project Purpose
A personal engineering skill tracker and AI-tutored learning platform.
Built on Azure, deployed via GitHub Actions, defined in Bicep.
Personal project first. Company PoC pitch when Phase 1 is live.

## Current Phase
**Phase 1 — Static tracker deployed to Azure Static Web Apps**
Goal: live URL, working CI/CD pipeline, clean repo structure.
No backend yet. State persists via localStorage in the browser.
// PHASE 1 ONLY — replace passphrase with Entra auth in Phase 2

## Stack
- Frontend: Single HTML file (vanilla JS, no framework — Phase 1 only)
- Hosting: Azure Static Web Apps (Free tier)
- IaC: Bicep — all Azure resources defined as code, no portal clicking
- CI/CD: GitHub Actions
- Auth: None yet (Phase 2 adds Entra ID via MSAL)
- API: None yet (Phase 2 adds Azure Functions)
- Database: None yet (Phase 2 adds Azure Table Storage)

## Repo Structure
```
skill-portal/
├── .github/workflows/deploy.yml   # SWA deployment pipeline
├── .claude/rules/                 # Supplementary Claude context
├── docs/adr/                      # Architecture Decision Records
├── infra/
│   ├── main.bicep                 # Entry point for all IaC
│   └── modules/staticWebApp.bicep # SWA module
├── src/
│   └── index.html                 # Phase 1 — entire frontend
├── CLAUDE.md                      # This file
└── README.md
```

## Commands
```bash
# Deploy infrastructure (run from repo root)
az deployment group create \
  --resource-group rg-skill-portal-dev \
  --template-file infra/main.bicep \
  --parameters appName=skill-portal environment=dev

# Get live URL after deployment
az deployment group show \
  --resource-group rg-skill-portal-dev \
  --name deploy-swa \
  --query "properties.outputs.liveUrl.value" \
  --output tsv

# Get SWA deployment token (for GitHub Actions secret)
az staticwebapp secrets list \
  --name skill-portal-dev \
  --resource-group rg-skill-portal-dev \
  --query "properties.apiKey" --output tsv

# Validate Bicep before deploying
az bicep build --file infra/main.bicep
```

## Code Conventions
- Bicep: camelCase params, kebab-case resource names, always include tags block
- Resource naming pattern: `{type}-{appName}-{environment}` e.g. `rg-skill-portal-dev`
- Always tag Azure resources: project, environment, managedBy: bicep
- Commit messages follow conventional commits: feat:, fix:, docs:, infra:, ci:
- One logical change per commit — no bundling unrelated changes
- ADR for every significant architecture decision in docs/adr/

## Critical Rules
- Never hardcode secrets, tokens, or API keys — use Key Vault refs or GitHub secrets
- Never click through Azure portal to create resources — write Bicep
- Never modify infra outside of Bicep — drift breaks reproducibility
- src/ must remain deployable as a static site with no build step in Phase 1
- Do not introduce a Node build pipeline until Phase 2 explicitly requires it

## Phase Roadmap (for context, do not implement ahead)
- Phase 1: Static tracker, Azure SWA, GitHub Actions, Bicep ✓
- Phase 2: Entra ID SSO, Azure Functions API, Table Storage backend
- Phase 3: AI tutoring layer per skill (Claude API via Azure Functions)
- Phase 4: Team dashboard, role management, policy/compliance tracking
