#!/bin/bash
set -e

# 1. Pull latest changes (rebase mode)
git pull --rebase --autostash origin main

# 2. Stage and commit local changes only if there are any
if ! git diff --quiet || ! git diff --cached --quiet; then
    git add -A
    git commit -m "Auto-sync on $(hostname) at $(date)"
else
    echo "No changes to commit."
fi

# 3. Push to remote
git push origin main
