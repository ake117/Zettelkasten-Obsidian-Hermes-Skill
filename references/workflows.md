     1|# Zettelkasten Workflows
     2|
     3|## 1) Capture (Fleeting Notes)
     4|
     5|Time estimate: 30 seconds per idea.
     6|
     7|Steps:
     8|1. Write the idea down immediately — do not wait.
     9|2. Use any medium: notebook, phone, daily note, voice memo, scrap of paper.
    10|3. Keep it raw. No editing, no organizing, no linking.
    11|4. Mark it as fleeting (tag, folder, or daily note section).
    12|5. Move on. Do not dwell.
    13|
    14|Walkthrough:
    15|- Reading an article, an idea strikes: "Constraints enable creativity by narrowing the search space."
    16|- Jot in daily note under `## Fleeting` or in a `Fleeting/` folder.
    17|- Done. Process later.
    18|
    19|## 2) Literature Processing
    20|
    21|Time estimate: 10-20 minutes per source.
    22|
    23|Steps:
    24|1. After reading (or during), write a literature note.
    25|2. Record the source: author, title, page/URL/section.
    26|3. Summarize key ideas **in your own words**. Never copy-paste.
    27|4. Identify individual ideas that could become permanent notes.
    28|5. Link to the literature note from any permanent notes you extract.
    29|
    30|Walkthrough:
    31|- Source: *Thinking in Systems* by Donella Meadows, chapter 3.
    32|- Literature note: `Meadows - Thinking in Systems.md` with key ideas summarized.
    33|- Extract: "Stocks and flows are the building blocks of systems" becomes its own permanent note, linked back to the literature note.
    34|
    35|## 3) Permanent Note Creation
    36|
    37|Time estimate: 5-10 minutes per note.
    38|
    39|Steps:
    40|1. Review fleeting notes and literature notes for ideas worth keeping.
    41|2. For each idea, create a new permanent note.
    42|3. Write it as if explaining to your future self: clear, complete, standalone.
    43|4. Give it a title that describes the idea (not the source).
    44|5. Find at least one connection: link to an existing permanent note.
    45|6. Optionally link back to the source literature note.
    46|7. Delete or archive the fleeting note. Do not keep it as a permanent note.
    47|
    48|Walkthrough:
    49|- Fleeting note: "Constraints enable creativity by narrowing the search space."
    50|- Permanent note: `Constraints narrow search space.md`
    51|  - Body: "Creative work benefits from constraints. By limiting options, constraints reduce the space of possible solutions, making it easier to explore. This is why writing prompts, timeboxes, and design systems all improve output quality."
    52|  - Links: `[[Creative friction]]`, `[[Design systems reduce decision fatigue]]`
    53|  - Source link: `[[Meadows - Thinking in Systems]]`
    54|
    55|## 4) Linking and Connecting
    56|
    57|Time estimate: 2-3 minutes per note (ongoing).
    58|
    59|Steps:
    60|1. Before finishing any permanent note, search the slip-box for related notes.
    61|2. Add forward links (`[[related-idea]]`) to the note body where the connection is natural.
    62|3. Optionally add backlinks by editing the linked note to reference the new note.
    63|4. When a cluster of 5+ notes forms, create or update a hub note.
    64|
    65|Link placement rules:
    66|- Place links **in context**, not as a bare list at the bottom.
    67|- Explain why the link is relevant in the sentence that contains it.
    68|- Every link should answer: "Why would I want to jump to this note from here?"
    69|
    70|Walkthrough:
    71|- New note: `[[Small batches reduce risk]]`
    72|- Search reveals: `[[Iterative delivery]]`, `[[Feedback loops reinforce behavior]]`, `[[Cost of delay]]`
    73|- Add links in context: "Small batches reduce the cost of failure, which connects to [[Cost of delay]] in scheduling decisions."
    74|- Update hub note `[[Agile Delivery]]` to include the new note.
    75|
    76|## 5) Hub Note Creation
    77|
    78|Time estimate: 10-15 minutes per hub.
    79|
    80|Steps:
    81|1. Identify a cluster of 5+ related permanent notes.
    82|2. Create a hub note named after the theme or topic.
    83|3. Group the linked notes with brief annotations explaining each link's relevance.
    84|4. Link to related hub notes (cross-topic connections).
    85|5. Review and update when new notes join the cluster.
    86|
    87|Walkthrough:
    88|- Cluster discovered: 8 notes related to systems thinking.
    89|- Hub note: `Systems Thinking.md`
    90|  - `[[Stocks and flows model system behavior]]` — foundational concept
    91|  - `[[Feedback loops reinforce behavior]]` — how systems self-regulate
    92|  - `[[Constraints narrow search space]]` — limiting options improves outcomes
    93|  - `[[Emergence in complex systems]]` — whole is greater than parts
    94|  - ... etc.
    95|- Cross-link: `[[Systems Thinking]]` linked from `[[Software Architecture]]` hub.
    96|
    97|## 6) Weekly Review
    98|
    99|Time estimate: 20-30 minutes.
   100|
   101|Steps:
   102|1. Process all remaining fleeting notes — promote or discard.
   103|2. Review literature notes for unextracted ideas.
   104|3. Check for orphaned permanent notes (no incoming or outgoing links).
   105|4. Update hub notes with any new permanent notes from the week.
   106|5. Identify emerging clusters that may need a new hub note.
   107|6. Review one or two old permanent notes to discover new connections.
   108|
   109|Walkthrough:
   110|- 12 fleeting notes from the week: 4 promoted to permanent, 8 discarded.
   111|- 3 literature notes with unextracted ideas: extract 6 new permanent notes.
   112|- 2 orphaned notes found: link them to existing notes.
   113|- New cluster around "decision-making" with 6 notes: create `Decision Making.md` hub.
   114|
   115|## 7) Monthly Maintenance
   116|
   117|Time estimate: 30-45 minutes.
   118|
   119|Steps:
   120|1. Run validation script: `scripts/validate.sh`
   121|2. Review all hub notes for completeness and accuracy.
   122|3. Identify stale or superseded notes for update or archival.
   123|4. Check for note duplicates (same idea, different wording).
   124|5. Review the graph for disconnected clusters — build bridges.
   125|6. Assess whether structure notes are needed for large domains.
   126|
   127|Walkthrough:
   128|- Validation shows: 4 orphans, 1 broken link, 2 potential duplicates.
   129|- Merge duplicate notes, fix broken link, link orphans to relevant notes.
   130|- "Software Engineering" domain now spans 3 hub notes: create a structure note.
   131|