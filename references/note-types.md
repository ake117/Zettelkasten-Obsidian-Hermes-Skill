     1|# Zettelkasten Note Types
     2|
     3|## The Five Types
     4|
     5|| Type | Lifespan | Purpose | Location Pattern |
     6||------|----------|---------|------------------|
     7|| **Fleeting** | Temporary (hours-days) | Quick capture of an idea | `Fleeting/` or daily notes |
     8|| **Literature** | Permanent | Notes from sources in your own words | `Sources/` or `Literature/` |
     9|| **Permanent** | Permanent (the core) | Atomic, linked ideas — the slip-box | Root or themed folders |
    10|| **Hub** | Permanent | Navigation/index note linking to related permanent notes | `Maps/` or `MOC/` |
    11|| **Structure** | Semi-permanent | Higher-order organization, tables of contents | `Maps/` |
    12|
    13|## Decision Tree: What Type of Note Is This?
    14|
    15|```text
    16|Incoming idea or content
    17|  |
    18|  +-- Is this a raw, unprocessed thought to deal with later?
    19|  |    |
    20|  |    +-- Yes -> Fleeting Note
    21|  |
    22|  +-- Is this from an external source (book, article, conversation)?
    23|  |    |
    24|  |    +-- Yes -> Literature Note
    25|  |
    26|  +-- Is this an original idea, insight, or synthesis in your own words?
    27|  |    |
    28|  |    +-- Yes -> Permanent Note
    29|  |
    30|  +-- Is this an index/navigation note linking to many other notes?
    31|       |
    32|       +-- Yes -> Hub Note
    33|```
    34|
    35|## Type Details
    36|
    37|### 1. Fleeting Notes
    38|
    39|**Purpose:** Capture ideas before they vanish. Think of them as mental sticky notes.
    40|
    41|**Characteristics:**
    42|- Short, raw, unpolished
    43|- No pressure to be well-written
    44|- Processed within 1-2 days (either promoted or discarded)
    45|- Do NOT accumulate — process regularly
    46|
    47|**When to create:** In a meeting, walking, reading, shower-thoughts, any moment an idea strikes.
    48|
    49|**Fleeting note checklist:**
    50|- [ ] Captured the core idea in 1-3 sentences
    51|- [ ] Tagged or dated for later processing
    52|- [ ] No attempt to polish or expand
    53|
    54|**Promotion path:** Fleeting -> Permanent (if the idea holds up after review)
    55|
    56|### 2. Literature Notes
    57|
    58|**Purpose:** Record what you learned from a source, in your own words, with a reference.
    59|
    60|**Characteristics:**
    61|- One note per source (or one per major concept from a source)
    62|- Written in your own words — never copy-paste
    63|- Includes bibliographic reference
    64|- Can contain multiple concepts from one source
    65|- Serves as raw material for permanent notes
    66|
    67|**When to create:** While or shortly after reading a book, article, paper, watching a lecture, or having a conversation.
    68|
    69|**Literature note checklist:**
    70|- [ ] Source reference included (author, title, page/URL)
    71|- [ ] Written in your own words
    72|- [ ] Key concepts identified
    73|- [ ] Links to related literature notes (if applicable)
    74|
    75|**Promotion path:** Literature -> Permanent (extract individual ideas into atomic notes)
    76|
    77|### 3. Permanent Notes
    78|
    79|**Purpose:** The core of the Zettelkasten. Each is a single, atomic idea connected to other ideas.
    80|
    81|**Characteristics:**
    82|- **Atomic:** One idea, one note
    83|- **Self-contained:** Understandable without reading the source or linked notes
    84|- **Own words:** Written as if explaining to a future self
    85|- **Linked:** Connected to at least one other permanent note
    86|- **Titled by content:** Title describes the idea, not the source
    87|
    88|**When to create:**
    89|- After processing literature notes and extracting individual ideas
    90|- When a fleeting note survives review and becomes a real insight
    91|- When you discover a connection between existing notes
    92|- When a new idea emerges from thinking (not reading)
    93|
    94|**Permanent note checklist:**
    95|- [ ] One idea only
    96|- [ ] Self-contained (understandable standalone)
    97|- [ ] Written in your own words
    98|- [ ] Title describes the idea (not the source)
    99|- [ ] At least one link to another permanent note
   100|- [ ] Not a copy of a literature note (it adds your thinking)
   101|
   102|### 4. Hub Notes (Map of Content)
   103|
   104|**Purpose:** Navigation. A hub note groups and links to related permanent notes on a theme.
   105|
   106|**Characteristics:**
   107|- Contains links, not content
   108|- Brief annotations or context for each link
   109|- Evolves as new notes are added to the cluster
   110|- Not a rigid outline — organic and growing
   111|
   112|**When to create:**
   113|- When a cluster of 5+ permanent notes forms around a theme
   114|- When you need a way to navigate a topic quickly
   115|- When a topic becomes complex enough to warrant an index
   116|
   117|**Hub note checklist:**
   118|- [ ] Links to all relevant permanent notes
   119|- [ ] Brief annotation for each link (not just a bare list)
   120|- [ ] Links to related hub notes (if applicable)
   121|- [ ] Updated when new permanent notes join the cluster
   122|
   123|### 5. Structure Notes
   124|
   125|**Purpose:** Higher-order organization for large topics spanning multiple hub notes.
   126|
   127|**Characteristics:**
   128|- Links to hub notes, not individual permanent notes
   129|- Provides a table-of-contents view of a broad domain
   130|- Rare — only needed when the slip-box grows large
   131|
   132|**When to create:**
   133|- When you have multiple hub notes within a broad domain
   134|- When navigation across hubs becomes difficult
   135|
   136|## Naming Conventions
   137|
   138|- **Permanent notes:** Name describes the idea. E.g., `Feedback loops reinforce behavior.md`
   139|- **Literature notes:** Include source reference. E.g., `Ahrens - How to Take Smart Notes.md`
   140|- **Hub notes:** Name the theme. E.g., `Systems Thinking.md`
   141|- **Fleeting notes:** Date-stamp or inbox location. E.g., lives in daily note or `Fleeting/` folder
   142|
   143|## ID Systems (Optional)
   144|
   145|If the user wants ID-based linking (classic Zettelkasten style):
   146|
   147|- Format: `YYYYMMDDHHMM` or sequential (e.g., `202604121130`)
   148|- Place ID in frontmatter or filename
   149|- Wikilinks use human-readable titles; IDs serve as unique identifiers
   150|
   151|Most Obsidian users prefer title-based naming with wikilinks. IDs add complexity without clear benefit in a digital system. Recommend title-based naming unless the user specifically wants IDs.
   152|