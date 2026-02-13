#!/usr/bin/env bash
# Book_Map — Codex sandbox setup
# Installs minimal dependencies for validation scripts.

set -euo pipefail

echo "Book_Map Codex sandbox setup"

# Ensure scripts are executable
chmod +x scripts/*.sh 2>/dev/null || true

echo "Setup complete."
