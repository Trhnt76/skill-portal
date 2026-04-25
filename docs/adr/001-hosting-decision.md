# ADR 001 — Azure Static Web Apps for Phase 1 Hosting

**Date:** 2026-04-24  
**Status:** Accepted

## Context

Need a personal dev and portfolio hosting platform for the Skill Portal.
Requirements: low cost, Azure-native, CI/CD from GitHub, no cold start issues
for a static frontend.

## Decision

Azure Static Web Apps Free tier. Globally distributed CDN, custom domains,
GitHub Actions integration built in, PR preview environments at no cost.

## Consequences

- No server-side rendering at Phase 1 — acceptable for a static tracker
- Phase 2 will add Azure Functions as the API layer via SWA's built-in
  Functions integration, which keeps everything in one deployment unit
- Free tier limit: 100GB bandwidth/month — not a concern at this scale