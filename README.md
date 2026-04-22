# Zettelkasten Obsidian Hermes Skill

A [Hermes Agent](https://github.com/nicepkg/hermes) skill for building and maintaining a **Zettelkasten (slip-box)** knowledge system using atomic, linked notes in [Obsidian](https://obsidian.md).

Adapted from [Zettelkasten-Obsidian-Claude-Code-Skill](https://github.com/ake117/Zettelkasten-Obsidian-Claude-Code-Skill) for the Hermes skill format.

## What It Does

- **Note classification** — Identify and create the right note type (Fleeting, Literature, Permanent, Hub, Structure)
- **Workflow guidance** — Capture, literature processing, permanent note creation, linking, hub building
- **Vault validation** — Detect orphans, broken wikilinks, stale fleeting notes, and hub quality issues
- **Troubleshooting** — Common problems and fixes for Zettelkasten practitioners

## File Structure

```
├── SKILL.md                        # Skill definition and routing
├── references/
│   ├── note-types.md               # Five note types, decision tree, naming conventions
│   ├── examples.md                 # Correct/incorrect examples, edge cases, misclassifications
│   ├── workflows.md                # Step-by-step operational workflows
│   └── common-problems.md          # Pain points, troubleshooting, validation guidance
├── scripts/
│   └── validate.sh                 # Vault health-check script
└── README.md
```

## Installation

Copy (or symlink) the entire `zettelkasten` directory into your Hermes skills folder:

```bash
# Option 1: Copy directly
cp -r . ~/.hermes/skills/zettelkasten/

# Option 2: Clone and symlink
git clone https://github.com/ake117/Zettelkasten-Obsidian-Hermes-Skill.git
ln -s "$(pwd)/Zettelkasten-Obsidian-Hermes-Skill" ~/.hermes/skills/zettelkasten
```

## Usage

Once installed, the skill activates automatically when you ask Hermes about:

- Creating or classifying notes
- Processing literature or fleeting notes
- Building hub notes or linking ideas
- Running vault health checks

### Validation Script

Run standalone vault health checks:

```bash
# Full check
bash scripts/validate.sh /path/to/obsidian/vault

# Only orphan detection
bash scripts/validate.sh /path/to/obsidian/vault --orphans

# Only structure checks
bash scripts/validate.sh /path/to/obsidian/vault --structure
```

## Customization

Edit `SKILL.md` to adjust:

- **Vault path** — Change `/home/ake/Documents/ake_obsidian/` to your vault location
- **Tags** — Add or remove tags in the frontmatter
- **Routing** — Modify which reference file loads for which intent

## Core Principles

1. **Atomicity** — One idea per note
2. **Autonomy** — Each note is self-contained
3. **Own words** — Permanent notes in your understanding, not copied
4. **Connectivity** — Every permanent note links to at least one other
5. **Bottom-up** — Structure emerges from links, not top-down folders

## License

MIT
