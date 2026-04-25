#!/bin/bash
# Compiles Bicep to ARM JSON first to avoid az's internal compiler mismatch,
# then deploys to Azure.
set -euo pipefail

RESOURCE_GROUP="${1:-rg-skill-portal-dev}"
APP_NAME="${2:-skill-portal}"
ENVIRONMENT="${3:-dev}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPILED="/tmp/skill-portal-main.json"

export PATH="$HOME/.azure/bin:$PATH"

echo "Compiling main.bicep..."
bicep build "$SCRIPT_DIR/main.bicep" --outfile "$COMPILED"

echo "Deploying to $RESOURCE_GROUP (appName=$APP_NAME, environment=$ENVIRONMENT)..."
az deployment group create \
  --resource-group "$RESOURCE_GROUP" \
  --template-file "$COMPILED" \
  --parameters appName="$APP_NAME" environment="$ENVIRONMENT"
