---
name: Skill Portal — project state
description: Live URL, deployment status, content coverage, and open next steps
type: project
---

Live site confirmed working on Azure Static Web Apps.
**URL:** https://ashy-bay-024883f0f.7.azurestaticapps.net/

**Why:** Phase 1 goal — static tracker on Azure SWA with GitHub Actions CI/CD — is complete and verified.

**How to apply:** Treat deploy-and-test as done. Next focus is content population and Phase 2 planning.

## Current build state (as of 2026-04-29)

- `src/index.html` — JSON-driven UI, role tabs, category accordions, 1–5 scoring, skill detail drawer, localStorage persistence (`sp-scores`)
- `src/taxonomy.json` — 6 roles, 41 categories, 272 unique skills, 167 KB
- Admin passphrase: `portal2025` (Phase 1 only — replace with Entra ID auth in Phase 2)

## Content coverage

| Role | Skills with content |
|---|---|
| AI Engineer | 44/44 ✓ complete, all `reviewCycle: "6-month"` |
| Azure Cloud Engineer | 4/64 (shared priority skills only: Entra ID, Bicep, Zero Trust, GitHub Actions) |
| AWS Cloud Engineer | 2/55 (Zero Trust + GitHub Actions shared) |
| Platform Engineer | 2/50 (Bicep + GitHub Actions shared) |
| Staff Engineer | 0/34 |
| Project Management | 0/39 |

Priority skills (Entra ID, Bicep, GitHub Actions, Zero Trust) have masteryLevels + resources but are **missing `reviewCycle` flag** — needs a quick follow-up pass.

## Open next steps

1. Add `reviewCycle: "6-month"` to the 5 priority skills (9 JSON occurrences)
2. Azure Cloud Engineer role content — highest priority next role (project's primary stack)
3. Populate `cheatSheets[]` for AI Engineer skills
4. Phase 2 planning: Azure Functions + Table Storage backend for score persistence and admin content editing
