---
title: Setup iniziale
layout: default
nav_order: 2
---

# Setup iniziale

Prima di iniziare qualsiasi US, il repository deve esistere con una base minima: una descrizione del progetto, i requisiti iniziali, il contesto per OpenCode, e la struttura delle cartelle. Questo si fa **una volta sola** all'inizio del progetto.

**Feature e User Story.** I requisiti sono organizzati in due livelli: le **feature** raggruppano comportamenti correlati (es. Gestione prestiti), le **User Story** descrivono i comportamenti singoli dal punto di vista dell'utente (es. US-07: restituzione libro). Il backlog in `requirements.md` è organizzato per feature.

**Due momenti dell'analisi.** L'analisi dei requisiti avviene in due momenti distinti: una fase *upfront* nel setup (backlog, feature, priorità → `requirements.md`), e una fase *just-in-time* nel ciclo, quando si prende in mano una US e si approfondiscono i dettagli → `intent.md`.

---

## Commit 1 — `docs: add README`

Crea `README.md` con un editor di testo. Scrivi: nome del progetto, una o due frasi di descrizione, lo stack tecnologico scelto.

```markdown
# EasyLib

Piattaforma fullstack per la gestione dei prestiti bibliotecari universitari.
Gli studenti consultano il catalogo, verificano la disponibilità delle copie
e gestiscono i propri prestiti attivi.

## Stack
- **Backend**: Node.js, Express 5, MongoDB (Mongoose), JWT
- **Frontend**: Vue 3, Vite
- **Test**: Jest, Supertest
```

```bash
git commit -m "docs: add README"
```

## Commit 2 — `docs: add requirements`

Crea `docs/requirements.md`. Identifica e documenta: gli attori del sistema, le entità principali con i loro attributi chiave, e il backlog iniziale organizzato per feature (ID, User Story, Priorità Must/Should/Could Have, Stato).

```bash
git commit -m "docs: add requirements"
```

## Commit 3 — `chore: scaffold project structure`

Crea manualmente la struttura di cartelle derivata dai requisiti: una cartella per ogni risorsa identificata, un file placeholder per ogni entità. Aggiungi `.gitignore`, `package.json` con le dipendenze, e `.env.example`.

```bash
git commit -m "chore: scaffold project structure"
```

---

## Con OpenCode

La procedura manuale ha tre commit. Con OpenCode si aggiunge un quarto: `AGENTS.md` viene generato automaticamente a partire da `README.md` e `docs/requirements.md`.

### Commit 1 — README

```
EasyLib è una piattaforma per la gestione dei prestiti bibliotecari
universitari. Stack scelto: Node.js + Express 5 per il backend,
MongoDB con Mongoose per la persistenza, Vue 3 + Vite per il frontend,
Jest + Supertest per i test.

Genera README.md con nome del progetto, descrizione in due righe e stack.
```

### Commit 2 — requirements

```
Leggi README.md. Comportati come un analista dei requisiti e fai
le domande necessarie per definire:
1. Gli attori del sistema
2. Le entità principali del dominio con i loro attributi chiave
3. Un backlog iniziale in formato tabella, organizzato per feature:
   ID | User Story | Priorità (Must/Should/Could Have) | Stato

Non inventare requisiti. Se hai dubbi su scope o regole di
business, segnalali come domande aperte.
Genera il documento docs/requirements.md
```

### Commit 3 — AGENTS.md (solo AI)

```
Leggi README.md e docs/requirements.md.
Genera AGENTS.md come file di contesto per le future sessioni OpenCode.
Includi: convenzioni di stack, vincoli espliciti, dove trovare
requisiti e artefatti.
Non inventare dettagli architetturali — il codice non esiste ancora.
```

### Commit 4 — scaffold

```
Leggi README.md e docs/requirements.md.
Crea la struttura di cartelle e i file di configurazione base.
```
