---
name: zettelkasten
description: Use this skill when the user wants to create, classify, link, or maintain Zettelkasten-style atomic notes in Obsidian. Triggers include writing permanent notes, processing literature, creating fleeting captures, building hub notes, deciding note type, linking notes together, reviewing the slip-box, or finding orphaned or disconnected notes.
tags: [obsidian, zettelkasten, knowledge-management, note-taking]
---

# Zettelkasten

Use this skill to help users build and maintain a Zettelkasten (slip-box) knowledge system using atomic, linked notes in their Obsidian vault.

## Routing

Pick the entry point based on user intent:

- Note classification and "what type of note is this?" questions: load `references/note-types.md`
- Example requests and edge-case comparisons: load `references/examples.md`
- Operational process requests (capture, literature processing, linking, review): load `references/workflows.md`
- Troubleshooting pain points and validation guidance: load `references/common-problems.md`

If the request is broad or does not clearly match one route, default to `references/note-types.md`.

**Hermes:** Use `skill_view(name='zettelkasten', file_path='references/note-types.md')` to load reference files.

## Output Convention

- Classification guidance and Q&A: answer in chat
- Validation workflows: run `scripts/validate.sh` via terminal and write report output to `ZK-validation-YYYY-MM-DD.md` in the vault root
- When creating notes, write directly to the Obsidian vault at `/home/ake/Documents/ake_obsidian/`

## Terminology

- Use "slip-box" or "Zettelkasten" for the overall note collection
- Use "zettel" (plural: "zettels") for individual atomic notes
- Use "note types" (Fleeting, Literature, Permanent, Hub, Structure) for the classification system
- Use "links" or "wikilinks" for `[[note-name]]` connections between zettels

## Core Principles

These principles apply to every interaction:

1. **Atomicity** — One idea per note. If a note contains multiple ideas, split it.
2. **Autonomy** — Each note is self-contained and understandable without reading others.
3. **Own words** — Permanent notes must be written in the user's own understanding, not copied.
4. **Connectivity** — Every permanent note must link to at least one other note. Isolated notes are orphans.
5. **Bottom-up** — Structure emerges from links, not top-down folders. Let patterns arise organically.

## Validation Workflow

When the user asks to validate structure or slip-box health:

1. Load `references/common-problems.md` for interpretation guidance.
2. Run `scripts/validate.sh` via terminal: `bash ~/.hermes/skills/zettelkasten/scripts/validate.sh /home/ake/Documents/ake_obsidian`
3. Save report output to `ZK-validation-YYYY-MM-DD.md` in the vault root if user wants a file.
4. Summarize critical findings and recommended next actions.
