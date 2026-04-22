     1|# Common Problems and Troubleshooting
     2|
     3|## Quick Triage
     4|
     5|1. Is this note an idea (not just a reference)? If it is a reference, it is a literature note.
     6|2. Is this note atomic (one idea only)? If not, split it.
     7|3. Is this note connected (at least one link)? If not, it is an orphan — link it.
     8|
     9|## Frequent Pain Points
    10|
    11|### "My notes feel like a dump of information"
    12|
    13|This usually means notes are literature-style summaries, not permanent notes. Literature notes record source material; permanent notes are atomic ideas in your own words.
    14|
    15|**Fix:** Review each note and ask: "Does this express a single idea I understand well enough to explain to someone?" If not, it is probably still a literature note or needs splitting.
    16|
    17|### "I have hundreds of notes but no connections"
    18|
    19|This is common when notes are written without the linking step. The Zettelkasten gains value from links, not from the notes themselves.
    20|
    21|**Fix:** Set a rule: every permanent note must link to at least one other note before you consider it "done." During weekly review, find and link 5 orphaned notes.
    22|
    23|### "I cannot find anything"
    24|
    25|Two possible causes:
    26|1. **No hub notes:** Create hub notes for clusters of 5+ related permanent notes. They serve as entry points.
    27|2. **Poor titles:** Permanent notes should have descriptive titles that state the idea. "Notes on chapter 3" is useless. "Feedback delay reduces system stability" is findable.
    28|
    29|**Fix:** Review titles of existing notes. Rename any that describe the source instead of the idea. Create hub notes for major clusters.
    30|
    31|### "Fleeting notes pile up and never get processed"
    32|
    33|Fleeting notes are only useful if processed within 1-2 days.
    34|
    35|**Fix:** Add a daily or weekly recurring task to process fleeting notes. For each: promote to permanent (if the idea holds up) or discard. Never let them accumulate past a week.
    36|
    37|### "I keep writing about the same idea in different notes"
    38|
    39|Duplicate ideas fragment your slip-box and weaken connections.
    40|
    41|**Fix:** Before writing a permanent note, search the vault for similar notes. If you find one:
    42|- Extend the existing note instead of creating a new one, OR
    43|- If the new note represents a distinct angle, create it but link to the existing note explaining the relationship.
    44|
    45|### "Links feel forced and random"
    46|
    47|Links should be placed in context, explaining why the connection matters. A bare list of links at the bottom of a note is a weak hub, not meaningful linking.
    48|
    49|**Fix:** Write links into the body of the note as part of a sentence. "This connects to [[X]] because..." is better than just appending `[[X]]`.
    50|
    51|### "I am paralyzed by perfectionism"
    52|
    53|A Zettelkasten is a living system. Notes do not need to be perfect on the first write. They can be refined, split, merged, and re-linked over time.
    54|
    55|**Fix:**
    56|- Start with rough permanent notes and refine during weekly reviews.
    57|- Do not overthink the "right" title or the "right" link. You can always adjust later.
    58|- Volume and consistency matter more than perfection.
    59|
    60|### "Hub notes are overwhelming"
    61|
    62|A hub note with 30+ links is no longer useful as a navigation tool.
    63|
    64|**Fix:** Split large hub notes into sub-topics. For example, "Software Engineering" with 40 links becomes:
    65|- Hub: "Software Engineering" (links to sub-hubs)
    66|- Hub: "Testing" (links to testing notes)
    67|- Hub: "Architecture" (links to architecture notes)
    68|
    69|### "I cannot decide between PARA and Zettelkasten"
    70|
    71|They solve different problems and can coexist:
    72|
    73|| Aspect | PARA | Zettelkasten |
    74||--------|------|-------------|
    75|| Organization | Top-down folders | Bottom-up links |
    76|| Focus | Actionability (projects first) | Idea connectivity |
    77|| Best for | Managing work output | Developing thinking |
    78|| Note types | Projects, Areas, Resources, Archive | Fleeting, Literature, Permanent, Hub |
    79|
    80|**Fix:** Use PARA for actionability (what am I working on?) and Zettelkasten for knowledge development (how do my ideas connect?). Many Obsidian vaults blend both: PARA for folder structure, Zettelkasten linking for idea-level notes.
    81|
    82|## Validation Guidance
    83|
    84|Use `scripts/validate.sh` when users ask for slip-box health checks.
    85|
    86|Examples:
    87|
    88|- Full check: `scripts/validate.sh ~/Documents/ake_obsidian`
    89|- Only orphans: `scripts/validate.sh ~/Documents/ake_obsidian --orphans`
    90|- Only structure: `scripts/validate.sh ~/Documents/ake_obsidian --structure`
    91|
    92|Interpret report severities:
    93|
    94|- CRITICAL: orphaned notes (no links in or out), broken wikilinks
    95|- WARNING: notes with no incoming links (sink-only notes), fleeting notes older than 7 days
    96|- INFO: hub notes with fewer than 5 links, potential duplicate titles, untagged notes
    97|
    98|## Error Cases
    99|
   100|- Invalid path: user should pass a valid directory; script exits non-zero with stderr message.
   101|- No markdown files found: confirm the path points to a Zettelkasten or Obsidian vault.
   102|- No findings: slip-box is healthy; continue weekly maintenance.
   103|