#!/bin/sh
set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting Vault Initialization..."
npm run vault:init

echo "Running Vault Transit..."
npm run vault:transit

echo "Starting Application in Production Mode..."
exec npm run start:prod
