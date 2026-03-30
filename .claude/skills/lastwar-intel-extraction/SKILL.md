---
name: lastwar-intel-extraction
description: >
  Process Last War game screenshots into structured intelligence data. USE THIS SKILL when the user:
  uploads a ZIP file, uploads screenshots, uploads images, sends photos, says "extract", "process screenshots",
  "update intel", "parse images", "read these", "what's in these", "process these", uploads any file without
  explanation (screenshot processing is the #1 workflow), mentions "alliance roster screenshots",
  "power ranking screenshots", "player profile screenshots", or any image-based data extraction task.
  This is the PRIMARY skill — trigger it aggressively on any file upload.
---

# Last War Intelligence Extraction Pipeline

You are processing Last War: Survival Game screenshots into structured intelligence data for Server S2011. This is the most common workflow — treat every file upload as a potential screenshot processing task unless clearly stated otherwise.

## Full Extraction Pipeline

### Step 1: Receive & Inventory

1. If ZIP file: unzip to working directory, list all files
2. Count total images and note file types
3. Sort by filename/number for sequential processing
4. Report: "Found X images. Processing sequentially."

### Step 2: Sequential Image Viewing

**View EVERY image. Do NOT skip any.** Process in order:

For each image:
1. Open/view the image
2. Identify screenshot type (see recognition guide below)
3. Extract all visible data points
4. Note any uncertain readings with [?]
5. Move to next image

### Step 3: Screenshot Type Recognition

| Type | Visual Indicators | Data to Extract |
|------|-------------------|-----------------|
| Alliance Roster | Member list with ranks, power values | Name, Rank (R1-R5), Title, Power, HQ level |
| Power Rankings (Individual) | Ranked list with crown/trophy icons | Rank, Name, Alliance tag, Individual Power |
| Power Rankings (Hero) | Ranked list with hero icon | Rank, Name, Alliance tag, Hero Power |
| Alliance Rankings | Alliance list with shields | Rank, Tag, Alliance Name, Total Power, Member count |
| Player Profile | Single player detail view | All visible stats, heroes, buildings |
| World Map | Map view with bases | Coordinates, alliance tags, base positions |
| Event Results | Score tables | Player/alliance scores, rewards tier |
| Transfer/Migration | Join/leave notifications | Player name, from alliance, to alliance, date |

### Step 4: Data Extraction Rules

#### Player Names
- **Preserve EXACT unicode** — Turkish characters (ş, ğ, ı, ö, ü, ç), Arabic script, Japanese (ツ), special symbols (★, ♠, etc.)
- **Never normalize** names — `ツ O r k u N ツ` stays exactly as written, including spaces
- **Flag ambiguous** readings with [?]: `bobmarleyfaruk [?]` if partially obscured
- Common OCR pitfalls: `I` vs `l` vs `1`, `O` vs `0`, `rn` vs `m`

#### Power Values
- Extract **exact numbers** — never round (99,437,521 not "~99.4M")
- **Distinguish Individual Power vs Hero Power** — these are different metrics, often shown on different screens
- Use comma separators for readability: 4,782,000,000
- If value partially visible, record what's visible + [partial]: `4,78_,___,___` [partial]

#### Alliance Tags
- Exact 4-character tags: MHF, SNW1, MAZ1, 4NKA, etc.
- Track tag changes between versions (player moved alliances)
- Record as shown — case-sensitive

#### HQ Levels
- Range: 1–30 (30 is max)
- Often shown as small icon near player name
- If not visible, mark as "—"

#### Rank Badges (R1–R5)
- R5: Leader (gold crown) — one per alliance
- R4: Officers (silver badge) — up to 10 per alliance
- R4 Titles: Butler, Warlord, Muse, Recruiter, Steward, Architect, etc.
- R3: Senior members
- R2: Members
- R1: New/probationary members

### Step 5: Cross-Reference

After extracting all data:
1. Load the previous version file (e.g., `servers/S2011/S2011_v8.md`)
2. Match players by name (exact match required)
3. Calculate deltas:
   - Power change: `new - old` (show as +X or -X)
   - Rank change: `old_rank - new_rank` (positive = climbed)
   - Alliance changes: flag transfers with source → destination
4. Identify NEW players not in previous version
5. Identify MISSING players from previous version (potential transfers out or kicks)

### Step 6: Delta Calculation

```
Growth Rate = (new_power - old_power) / old_power × 100
Power Gap = (leader_power - subject_power) / leader_power × 100
Days Between = new_day - old_day
Daily Growth = (new_power - old_power) / days_between
```

### Step 7: Structured Output

Match the existing intelligence file format exactly:
- Tables with: Rank | Name | Tag | Power | Change | Notes
- Use emoji flags: 🔥 critical change, ⚠️ warning, 📈 growth, 📉 decline, 🆕 new entry, ❌ departed
- Percentage precision: one decimal (e.g., +12.3%)
- Power abbreviations in summaries: B (billion), M (million)

### Step 8: Quality Control

Before delivering output, verify:
- [ ] Total entry count matches expected (state count explicitly)
- [ ] No duplicate entries
- [ ] All uncertain readings flagged with [?]
- [ ] Power values are exact (not rounded)
- [ ] Player names preserve special characters
- [ ] Cross-reference deltas are calculated correctly
- [ ] Screenshot count matches files processed (no images skipped)

Report: "Processed X/Y images. Extracted Z entries. W uncertain readings."

## Python Processing for Large Datasets

When processing 50+ entries, write a Python script:

```python
# Pattern: read extracted data, match against previous version, calculate deltas
import csv
# Read previous version data
# Match by player name (exact)
# Calculate power deltas, rank changes
# Flag transfers, new entries, departures
# Output formatted markdown tables
```

Save scripts to working directory, output files to output directory.

## Output Format

The final output should be a complete updated section ready to paste into the next version of the intelligence file. Include:

1. **Extraction Summary** at the top:
   ```
   ## Extraction Report
   - Source: [X] screenshots from [date/description]
   - Server Day: [N]
   - Entries extracted: [count]
   - Uncertain readings: [count] (flagged with [?])
   - Previous version: S2011_v[N].md (Day [M])
   ```

2. **Data tables** in the standard format
3. **Notable changes** section highlighting significant movements
4. **Transfer log** if any alliance changes detected
