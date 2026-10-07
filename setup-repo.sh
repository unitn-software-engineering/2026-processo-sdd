#!/bin/bash
set -e

ORG="unitn-software-engineering"
REPO="2026-processo-sdd"
DESCRIPTION="Percorso didattico AI-Native SDLC — Corso IS 2026"

echo "→ Creazione repo $ORG/$REPO..."
gh repo create "$ORG/$REPO" \
  --public \
  --description "$DESCRIPTION" \
  --add-readme=false

echo "→ Inizializzazione Git locale..."
cd "$(dirname "$0")"
git init
git add .
git commit -m "docs: setup sito Jekyll AI-Native SDLC"

echo "→ Push su GitHub..."
git remote add origin "https://github.com/$ORG/$REPO.git"
git branch -M main
git push -u origin main

echo "→ Abilitazione GitHub Pages (branch main, cartella /docs)..."
gh api repos/$ORG/$REPO/pages \
  --method POST \
  -f source[branch]=main \
  -f source[path]=/docs

echo ""
echo "✅ Fatto! Il sito sarà disponibile tra qualche minuto su:"
echo "   https://$ORG.github.io/$REPO"
