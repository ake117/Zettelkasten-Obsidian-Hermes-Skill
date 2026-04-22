     1|#!/usr/bin/env bash
     2|# Zettelkasten Validation Script
     3|# Checks a directory for slip-box health: orphans, broken links, stale fleeting notes, hub quality.
     4|
     5|set -euo pipefail
     6|
     7|TARGET="${1:-.}"
     8|FLAGS="${2:-}"
     9|
    10|# Normalize path
    11|TARGET="$(cd "$TARGET" 2>/dev/null && pwd)" || { echo "ERROR: Invalid path '$1'" >&2; exit 1; }
    12|
    13|CRITICAL=0
    14|WARNING=0
    15|INFO=0
    16|
    17|echo "=== Zettelkasten Validation Report ==="
    18|echo "Path: $TARGET"
    19|echo "Date: $(date '+%Y-%m-%d %H:%M')"
    20|echo ""
    21|
    22|# Collect all markdown files (exclude .obsidian)
    23|mapfile -t MD_FILES < <(find "$TARGET" -name "*.md" -not -path "*/.obsidian/*" -not -path "*/.git/*" -not -path "*/node_modules/*" 2>/dev/null | sort)
    24|
    25|TOTAL=${#MD_FILES[@]}
    26|echo "--- Summary ---"
    27|echo "Total markdown files: $TOTAL"
    28|echo ""
    29|
    30|if [ "$TOTAL" -eq 0 ]; then
    31|    echo "No markdown files found. Confirm this is a Zettelkasten/Obsidian vault."
    32|    exit 0
    33|fi
    34|
    35|# --- Orphan Detection ---
    36|# An orphan is a .md file with no [[wikilinks]] pointing to it and no outgoing [[wikilinks]].
    37|# We check outgoing links (wikilinks in the file) and incoming links (other files linking to this file).
    38|
    39|if [ -z "$FLAGS" ] || [ "$FLAGS" = "--orphans" ]; then
    40|    echo "--- Orphan Detection (no links in or out) ---"
    41|
    42|    ORPHANS=()
    43|    for file in "${MD_FILES[@]}"; do
    44|        basename_noext="$(basename "$file" .md)"
    45|
    46|        # Check outgoing links
    47|        outgoing=$(grep -c '\[\[' "$file" 2>/dev/null || true)
    48|        outgoing=${outgoing:-0}
    49|
    50|        # Check incoming links (other files that [[link]] to this file's name)
    51|        incoming=0
    52|        for other in "${MD_FILES[@]}"; do
    53|            [ "$other" = "$file" ] && continue
    54|            if grep -q "\[\[${basename_noext}" "$other" 2>/dev/null; then
    55|                incoming=$((incoming + 1))
    56|            fi
    57|        done
    58|
    59|        if [ "$outgoing" -eq 0 ] && [ "$incoming" -eq 0 ]; then
    60|            relpath="${file#$TARGET/}"
    61|            ORPHANS+=("$relpath")
    62|        fi
    63|    done
    64|
    65|    if [ ${#ORPHANS[@]} -gt 0 ]; then
    66|        echo "CRITICAL: Found ${#ORPHANS[@]} orphaned notes (no links in or out):"
    67|        for o in "${ORPHANS[@]}"; do
    68|            echo "  - $o"
    69|        done
    70|        CRITICAL=$((CRITICAL + ${#ORPHANS[@]}))
    71|    else
    72|        echo "OK: No orphaned notes detected."
    73|    fi
    74|    echo ""
    75|fi
    76|
    77|# --- Sink-Only Notes (outgoing links but no incoming) ---
    78|if [ -z "$FLAGS" ] || [ "$FLAGS" = "--orphans" ]; then
    79|    echo "--- Sink Notes (outgoing links only, nothing links in) ---"
    80|
    81|    SINKS=()
    82|    for file in "${MD_FILES[@]}"; do
    83|        basename_noext="$(basename "$file" .md)"
    84|
    85|        outgoing=$(grep -c '\[\[' "$file" 2>/dev/null || true)
    86|        outgoing=${outgoing:-0}
    87|        [ "$outgoing" -eq 0 ] && continue
    88|
    89|        incoming=0
    90|        for other in "${MD_FILES[@]}"; do
    91|            [ "$other" = "$file" ] && continue
    92|            if grep -q "\[\[${basename_noext}" "$other" 2>/dev/null; then
    93|                incoming=$((incoming + 1))
    94|                break
    95|            fi
    96|        done
    97|
    98|        if [ "$incoming" -eq 0 ]; then
    99|            relpath="${file#$TARGET/}"
   100|            SINKS+=("$relpath")
   101|        fi
   102|    done
   103|
   104|    if [ ${#SINKS[@]} -gt 0 ]; then
   105|        echo "WARNING: Found ${#SINKS[@]} notes with outgoing but no incoming links:"
   106|        for s in "${SINKS[@]}"; do
   107|            echo "  - $s"
   108|        done
   109|        WARNING=$((WARNING + ${#SINKS[@]}))
   110|    else
   111|        echo "OK: All linked notes have both incoming and outgoing connections."
   112|    fi
   113|    echo ""
   114|fi
   115|
   116|# --- Broken Wikilinks ---
   117|if [ -z "$FLAGS" ] || [ "$FLAGS" = "--structure" ]; then
   118|    echo "--- Broken Wikilink Detection ---"
   119|
   120|    BROKEN=0
   121|    for file in "${MD_FILES[@]}"; do
   122|        # Extract all [[wikilinks]] from the file
   123|        while IFS= read -r link; do
   124|            # Clean the link: extract target name (before | or #)
   125|            target="$(echo "$link" | sed 's/\[\[//' | sed 's/\]\]//' | sed 's/|.*//' | sed 's/#.*//' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')"
   126|
   127|            [ -z "$target" ] && continue
   128|
   129|            # Check if a matching file exists
   130|            found=0
   131|            for candidate in "${MD_FILES[@]}"; do
   132|                candidate_base="$(basename "$candidate" .md)"
   133|                if [ "$candidate_base" = "$target" ]; then
   134|                    found=1
   135|                    break
   136|                fi
   137|            done
   138|
   139|            if [ "$found" -eq 0 ]; then
   140|                relpath="${file#$TARGET/}"
   141|                echo "  CRITICAL: $relpath links to missing note '$target'"
   142|                BROKEN=$((BROKEN + 1))
   143|            fi
   144|        done < <(grep -oE '\[\[[^]]+\]\]' "$file" 2>/dev/null || true)
   145|    done
   146|
   147|    if [ "$BROKEN" -gt 0 ]; then
   148|        CRITICAL=$((CRITICAL + BROKEN))
   149|        echo "Found $BROKEN broken wikilink(s)."
   150|    else
   151|        echo "OK: No broken wikilinks detected."
   152|    fi
   153|    echo ""
   154|fi
   155|
   156|# --- Stale Fleeting Notes ---
   157|if [ -z "$FLAGS" ]; then
   158|    echo "--- Stale Fleeting Notes (older than 7 days) ---"
   159|
   160|    WEEK_AGO=$(date -d "7 days ago" "+%Y-%m-%d" 2>/dev/null || date -v-7d "+%Y-%m-%d" 2>/dev/null || echo "")
   161|    STALE=0
   162|
   163|    for file in "${MD_FILES[@]}"; do
   164|        # Check if file is tagged as fleeting
   165|        if grep -qi 'fleeting' "$file" 2>/dev/null; then
   166|            # Get file modification date
   167|            mod_date=$(stat -c "%Y" "$file" 2>/dev/null || stat -f "%m" "$file" 2>/dev/null || echo "0")
   168|            file_date=$(date -d "@$mod_date" "+%Y-%m-%d" 2>/dev/null || echo "9999-99-99")
   169|
   170|            if [ -n "$WEEK_AGO" ] && [[ "$file_date" < "$WEEK_AGO" ]]; then
   171|                relpath="${file#$TARGET/}"
   172|                echo "  WARNING: $relpath (fleeting note from $file_date)"
   173|                STALE=$((STALE + 1))
   174|            fi
   175|        fi
   176|    done
   177|
   178|    if [ "$STALE" -gt 0 ]; then
   179|        WARNING=$((WARNING + STALE))
   180|        echo "Found $STALE stale fleeting note(s). Process or discard them."
   181|    else
   182|        echo "OK: No stale fleeting notes."
   183|    fi
   184|    echo ""
   185|fi
   186|
   187|# --- Hub Note Quality ---
   188|if [ -z "$FLAGS" ] || [ "$FLAGS" = "--structure" ]; then
   189|    echo "--- Hub Note Quality ---"
   190|
   191|    for file in "${MD_FILES[@]}"; do
   192|        # Detect hub notes: tagged as moc/hub, or in Maps/MOC folder
   193|        basename_noext="$(basename "$file" .md)"
   194|        is_hub=0
   195|
   196|        if grep -qiE 'moc|hub|map.of.content' "$file" 2>/dev/null; then
   197|            is_hub=1
   198|        fi
   199|        relpath="${file#$TARGET/}"
   200|        if [[ "$relpath" == Maps/* ]] || [[ "$relpath" == MOC/* ]]; then
   201|            is_hub=1
   202|        fi
   203|
   204|        if [ "$is_hub" -eq 1 ]; then
   205|            link_count=$(grep -oE '\[\[[^]]+\]\]' "$file" 2>/dev/null | wc -l || echo "0")
   206|            if [ "$link_count" -lt 5 ]; then
   207|                echo "  INFO: $relpath (hub with only $link_count links — consider adding more or converting to a regular note)"
   208|                INFO=$((INFO + 1))
   209|            fi
   210|        fi
   211|    done
   212|    echo ""
   213|fi
   214|
   215|# --- Final Summary ---
   216|echo "=== Summary ==="
   217|echo "CRITICAL: $CRITICAL"
   218|echo "WARNING:  $WARNING"
   219|echo "INFO:     $INFO"
   220|echo ""
   221|
   222|if [ "$CRITICAL" -gt 0 ]; then
   223|    echo "Action required: Fix CRITICAL items (orphans, broken links) to maintain slip-box health."
   224|    exit 1
   225|elif [ "$WARNING" -gt 0 ]; then
   226|    echo "Suggestions available: Review WARNING items during your next weekly review."
   227|    exit 0
   228|else
   229|    echo "Slip-box is healthy. Continue weekly maintenance."
   230|    exit 0
   231|fi
   232|