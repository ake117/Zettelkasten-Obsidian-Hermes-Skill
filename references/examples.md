     1|# Zettelkasten Examples
     2|
     3|## Correct Note Examples by Type
     4|
     5|### Fleeting Note
     6|
     7|```markdown
     8|---
     9|tags:
    10|  - fleeting
    11|  - inbox
    12|date: 2026-04-12
    13|---
    14|
    15|Constraints = creativity? Narrowing options makes the good ones easier to find. Think about this for design work.
    16|```
    17|
    18|### Literature Note
    19|
    20|```markdown
    21|---
    22|title: Ahrens - How to Take Smart Notes
    23|source:
    24|  author: Sonke Ahrens
    25|  title: How to Take Smart Notes
    26|  year: 2017
    27|tags:
    28|  - literature
    29|  - pkm
    30|  - zettelkasten
    31|date: 2026-04-12
    32|---
    33|
    34|# Ahrens - How to Take Smart Notes
    35|
    36|## Key Ideas
    37|
    38|- The slip-box is a thinking tool, not an archive. Notes should be written to generate ideas, not store them.
    39|- Writing is thinking. If you cannot write it down clearly, you do not understand it.
    40|- Links between notes create emergent structure. You do not need folders; connections reveal themes.
    41|- Permanent notes should be atomic (one idea each) and self-contained.
    42|
    43|## Connections
    44|- Relates to [[Writing clarifies thinking]]
    45|- Contrast with [[PARA method]] which uses top-down folders instead of bottom-up links
    46|```
    47|
    48|### Permanent Note (Atomic)
    49|
    50|```markdown
    51|---
    52|title: Constraints narrow search space
    53|tags:
    54|  - creativity
    55|  - systems-thinking
    56|  - design
    57|date: 2026-04-12
    58|---
    59|
    60|# Constraints Narrow Search Space
    61|
    62|Creative work benefits from constraints. By limiting options, constraints reduce the space of possible solutions, making it easier to explore. This principle applies across domains:
    63|
    64|- **Writing:** Prompts and word limits produce sharper prose than blank pages.
    65|- **Design:** Design systems and brand guidelines accelerate visual decisions.
    66|- **Engineering:** Architecture constraints (e.g., event-driven) reduce integration complexity.
    67|
    68|Constraints are not the enemy of creativity — they are its engine. Without boundaries, the search space is too large to navigate effectively.
    69|
    70|This connects to [[Feedback loops reinforce behavior]] because constraints create predictable feedback that guides iteration. Also see [[Small batches reduce risk]] for a related narrowing principle.
    71|
    72|## Sources
    73|- [[Ahrens - How to Take Smart Notes]]
    74|```
    75|
    76|### Hub Note (Map of Content)
    77|
    78|```markdown
    79|---
    80|title: Systems Thinking
    81|tags:
    82|  - moc
    83|  - systems-thinking
    84|date: 2026-04-12
    85|---
    86|
    87|# Systems Thinking
    88|
    89|A map of notes on how systems behave, adapt, and produce emergent outcomes.
    90|
    91|## Foundations
    92|- [[Stocks and flows model system behavior]] — the basic building blocks
    93|- [[Feedback loops reinforce behavior]] — positive and negative feedback
    94|- [[Constraints narrow search space]] — boundaries enable focus
    95|- [[Emergence in complex systems]] — wholes exceed their parts
    96|
    97|## Applications
    98|- [[Small batches reduce risk]] — iteration as a systems strategy
    99|- [[Cost of delay]] — timing in system optimization
   100|- [[Design systems reduce decision fatigue]] — constraints in practice
   101|
   102|## Related Hubs
   103|- [[Software Architecture]]
   104|- [[Decision Making]]
   105|```
   106|
   107|## 20 Correct Classification Examples
   108|
   109|| # | Content | Type | Why |
   110||---|---------|------|-----|
   111|| 1 | "Idea from the shower about linking notes" | Fleeting | Raw capture, unprocessed |
   112|| 2 | "Quote from podcast about deep work" | Fleeting | Quick capture of a thought |
   113|| 3 | Summary of Chapter 4 from *Atomic Habits* | Literature | From a source, own words, with reference |
   114|| 4 | Notes from a lecture on distributed systems | Literature | From a source, multiple concepts recorded |
   115|| 5 | Key takeaways from a conference talk | Literature | From an external source with reference |
   116|| 6 | "Habits form through cue-routine-reward loops" | Permanent | One atomic idea, own words, linked |
   117|| 7 | "Domain-driven design separates core from supporting logic" | Permanent | Single concept, standalone, linked |
   118|| 8 | "Writing is the best test of understanding" | Permanent | Original synthesis, self-contained |
   119|| 9 | "Tests document behavior; types document structure" | Permanent | Atomic insight, connected to other notes |
   120|| 10 | "Feedback delay reduces system stability" | Permanent | One idea from systems thinking domain |
   121|| 11 | Systems Thinking hub note | Hub | Navigation index for systems cluster |
   122|| 12 | Software Architecture hub note | Hub | Links to architecture-related permanent notes |
   123|| 13 | "PKM Methods" comparing PARA and Zettelkasten | Hub | Comparative index of related notes |
   124|| 14 | Note from meeting: "Decided to use event sourcing" | Literature | From a conversation/source, with context |
   125|| 15 | "Event sourcing trades read complexity for auditability" | Permanent | Atomic insight extracted from meeting |
   126|| 16 | Grocery list idea that popped into head | Fleeting | Raw mental capture, ephemeral |
   127|| 17 | Notes from reading RFC 7231 on HTTP semantics | Literature | Source-based, reference included |
   128|| 18 | "HTTP methods are verbs; status codes are outcomes" | Permanent | Atomic insight from the RFC, own words |
   129|| 19 | "API Design" hub note | Hub | Index for API-related permanent notes |
   130|| 20 | Engineering top-level structure note | Structure | Higher-order index linking hub notes |
   131|
   132|## Edge Cases
   133|
   134|### Literature vs Permanent
   135|
   136|- Literature note from a book, but includes your own original idea -> Split: literature note for the source, permanent note for your idea (linked to the literature note).
   137|- You write an idea that was *inspired* by a source but goes beyond it -> Permanent note (it is your thinking, not a summary). Optionally reference the source.
   138|
   139|### Fleeting vs Permanent
   140|
   141|- A fleeting note that is well-formed and clear -> Still process it through the permanent note workflow. Fleeting notes are always temporary.
   142|- A fleeting note that survives 3 days of review -> Likely a good candidate for a permanent note.
   143|
   144|### Hub vs Structure
   145|
   146|- A hub note linking 15 permanent notes on "testing" -> Hub note.
   147|- A structure note linking 4 hub notes ("Testing", "CI/CD", "Architecture", "Team Practices") under "Software Engineering" -> Structure note.
   148|
   149|## Common Misclassifications (10)
   150|
   151|1. Copy-pasting a paragraph from a book as a permanent note -> Should be a literature note, then extract ideas into permanent notes in your own words.
   152|2. Writing a permanent note titled "Chapter 5 Notes" -> Title should describe the idea, not the source. E.g., "Feedback delay reduces system stability."
   153|3. Creating a folder hierarchy to organize notes -> Zettelkasten uses links, not folders. Create hub notes instead.
   154|4. Putting two ideas in one permanent note -> Split into two atomic notes and link them.
   155|5. Keeping fleeting notes forever without processing -> Process within 1-2 days: promote or discard.
   156|6. Writing a hub note as a dump of links without annotations -> Every link needs a brief explanation of why it is there.
   157|7. Creating a hub note for 2-3 notes -> Hubs are for clusters of 5+. Just link the notes directly until the cluster grows.
   158|8. Writing a permanent note with no links -> Every permanent note should connect to at least one other. Isolated notes are orphans.
   159|9. Treating daily notes as permanent notes -> Daily notes are chronological containers, not idea-level notes. Extract ideas into permanent notes.
   160|10. Using tags instead of links for connections -> Tags categorize; links connect. Use both, but prioritize links for meaningful relationships.
   161|