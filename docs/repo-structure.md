---
title: Struttura del repo
layout: default
nav_order: 10
---

# Struttura del repo di riferimento

Questa è la struttura che emerge naturalmente alla fine del percorso. Ogni livello aggiunge uno strato — lo studente non la vede tutta subito, la costruisce pezzo per pezzo.

```
.
├── AGENTS.md                          # entry point per OpenCode
├── docs/
│   ├── requirements.md                # backlog organizzato per feature
│   ├── architecture.md
│   └── data-model.md
├── intent/
│   ├── catalogo-libri/                # feature
│   │   ├── intent.md                  # intent della feature
│   │   ├── us-01-visualizza/
│   │   │   ├── spec.md
│   │   │   └── plan.md
│   │   └── us-02-filtra/
│   │       ├── spec.md
│   │       └── plan.md
│   ├── autenticazione/
│   │   ├── intent.md
│   │   └── us-03-login/
│   │       ├── spec.md
│   │       └── plan.md
│   └── gestione-prestiti/
│       ├── intent.md
│       ├── us-04-prestito/
│       │   ├── spec.md
│       │   └── plan.md
│       └── us-07-restituzione/
│           ├── spec.md
│           └── plan.md
├── src/
└── .github/
    └── workflows/
        └── ci.yml
```
