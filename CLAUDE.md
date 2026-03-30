# CLAUDE.md — Last War Strategic Intelligence Platform

## Identity

**Operator**: SahinD — R4 officer (title: Butler) in MHF alliance (Muhafız Birliği), Server S2011
**Language**: User communicates in Turkish; game/technical content is in English
**Role**: Strategic intelligence platform for screenshot processing, alliance data management, event planning, and account optimization

---

## Repository Purpose

This is a **strategic knowledge base** for the mobile game "Last War: Survival Game" — not a code repository. It contains markdown documents used for game strategy consulting, server intelligence, and player progression tracking.

## Document Structure

| File | Version | Description |
|------|---------|-------------|
| LastWar_MasterGuide.md | — | Complete game knowledge base (~53K). Authoritative reference for all mechanics and strategy. |
| servers/S2011/S2011_v8.md | v8 | Server 2011 overview — milestones, CSW impact, political structure, threat assessment, activity log |
| servers/S2011/Alliances/ | — | Per-alliance intelligence files: MHF.md (full roster), SNW1.md, MAZ1.md, 4NKA.md, Xel.md, rIp.md, nOvA.md, etc. |
| servers/S2011/Rankings/ | — | Historical ranking snapshots by date: Alliance_Power/, Individual_Power/, Total_Hero_Power/, Headquarters_Level/ |
| servers/S2008/S2008.md | — | Server 2008 data (rival/neighboring server for CSW) |
| servers/S2011/Players/SahinD_v9.md | v9 | Player profile — stats, heroes, gear, growth log |
| MHF_Code_of_Conduct.md | — | Alliance rules document (when added) |

---

## Game Terminology

| Term | Meaning |
|------|---------|
| R1–R5 | Alliance rank tiers (R5 = leader, R4 = officers, R1 = new member) |
| HQ | Headquarters building (max level 30) |
| Individual Power | Total account power (troops, buildings, research, heroes combined) |
| Hero Power | Separate metric — hero levels, skills, gear, stars only |
| T9/T10/T11 | Troop tiers (T10 unlocked at HQ 30, T11 upcoming) |
| VS Day | Alliance Duel — daily scoring events Mon–Sat, specific focus per day |
| CSW | Cross-Server War — servers compete head-to-head |
| KVK | Kill vs Kill event variant |
| NAP | Non-Aggression Pact between alliances |
| Waterfall | Cascade troop training through barracks levels for VS Day efficiency |
| Rung 1–5 | Waterfall configuration tiers based on barracks level spread |
| Desert Storm | Weekly 20v20 PvP event |
| Ghost Ops | Weekly hero fragment source (Thursday) |
| Mono-type | Single troop type squad (+20% HP/ATK/DEF formation bonus) |
| UR | Ultra Rare gear quality (the only quality worth upgrading) |
| Dead base | Inactive player base farmed for resources |
| Rally | Coordinated multi-player attack on a target |
| KoS | Kill on Sight — hostile designation |

**Alliance Tags**: MHF, SNW1, MAZ1, 4NKA, TrTU, Xel, SAB1, ALP1, rIp, ZPD, nOvA, PWAR, 8sam

---

## Server Context

### Server S2011

- **Season**: Season 1, approximately Day 106 (as of v8). Season 2 starts ~Day 121 (approximately April 13, 2026).
- **Coalition**: SNW1 + MHF + MAZ1 (dominant power bloc)
- **Coalition combined power**: ~14B, 105 players in top 200
- **Presidency rotation**: SNW → MHF → MAZ1, weekly on Fridays. MHF holds presidency during Season 2 transition — Capitol holder retains control for first 28 days.

### Key Rivals

| Alliance | Power | Threat | Notes |
|----------|-------|--------|-------|
| 4NKA | 4.11B (#5) | Critical | Fastest growing (+63.7%), recruiting MHF members |
| Xel | 4.12B (#4) | Critical | Lost ツ O r k u N ツ to MHF but still growing |
| rIp | 4.06B (#6) | High | Steady growth |
| nOvA | 3.86B (#7) | High | Consistent performer |
| PWAR | 3.38B (#10) | Medium-High | Surged +45.4%, climbed 6 ranks |

### MHF Alliance

- **Leader**: ツ O r k u N ツ (R5)
- **R4 Officers (10)**: Zeus Says yCan, SahinD (Butler), GÖKHANBAŞ (Warlord), HulyaS (Muse), atiderlerr (Recruiter), Billy Butcher 4735, bobmarleyfaruk, FEDERAL777, ATAkapTANN, A R L E S
- **Members**: ~93–94
- **Power**: ~4.78B (#2 on server, gap to SNW1 narrowed to 3.2%)

---

## SahinD Account Stats

- **Individual Power**: ~99.4M (MHF #1, Server ~top 10)
- **Hero Power**: ~56.4M (Server #8)
- **HQ**: Level 30 (Max)
- **Barracks**: 24, 25, 25, 27 (one upgrading toward L30 for 24-25-27-30 Rung 4 waterfall)
- **Drone**: Thermal Imager Lv.7 (needs 2nd Lv.7 copy + 180,000 gold for Lv.8)
- **Squad**: Tank (mono-type)

---

## File Versioning Rules

- Versioned files use suffix: `S2011_v8.md` → `S2011_v9.md` → `S2011_v10.md` (within their `servers/S20XX/` directory)
- Version number appears in BOTH the filename AND the document header
- Increment version on significant updates (new data snapshots, not minor corrections)
- Always note the server day number when creating new versions
- Preserve ALL historical data — Activity Logs, Growth Tables, Transfer records
- Append new entries; never overwrite historical data

---

## 10 Core Strategic Principles

1. **Waterfall training** is ~4× more efficient than direct training on VS Day (Friday)
2. **Never use speedups outside scoring events** — wastes ~50% value
3. **Mono-type squads** give +20% HP/ATK/DEF formation bonus = ~44% effective power advantage
4. **Hero skills to L20 across all heroes** before pushing any further
5. **UR gear only**, upgraded in 10-level increments at breakpoints
6. **Right-side drone components** from choice chests (left side overrepresented in drops)
7. **Wednesday component merges** for Alliance Duel Research Day points
8. **Gold is the T10 bottleneck** (~500M-600M per research node, Zombie Invasion is top source)
9. **Ghost Ops every Thursday** — only source of late-game hero fragments (Lucius, Morrison, Adam, Fiona)
10. **Diamond priority**: VIP points → 30-day VIP activation → shields → VIP Store stamina (300 diamonds/week)

---

## Standard Workflows

### 1. Screenshot Processing (Most Common)

1. Receive ZIP/images from user
2. Unzip and inventory all files
3. View each image sequentially — do NOT skip any
4. Extract data: player names (exact unicode), power values (exact numbers), alliance tags, HQ levels, ranks
5. Cross-reference against previous version file
6. Calculate deltas (power changes, rank movements, transfers)
7. Output updated versioned markdown file
8. Include extraction summary: total entries, uncertain readings, count verification

### 2. Intelligence Updates

1. Confirm current version number and server day
2. Identify new data points from screenshots/user input
3. Calculate all changes (power deltas, growth rates, rank shifts)
4. Create new version file with incremented version number
5. Update Activity Log section with timestamped entry
6. Highlight notable changes: 🔥 critical, ⚠️ warning, 📈 growth, 📉 decline

### 3. Event Planning

1. Build event timeline with dates and phases
2. Create resource checklist (speedups, resources, diamonds, shields)
3. Set point targets per phase
4. Risk assessment (threats, contingencies)
5. Draft Turkish-language alliance announcement
6. Output as markdown + Excel (.xlsx with openpyxl, color-coded tabs)

### 4. World Map Placement

1. Sort alliance members by priority tier
2. Assign to rings (H1→H5) based on priority
3. Apply manual overrides (see placement rules below)
4. Generate interactive HTML + coordinate list
5. HTML must use `var` (not let/const), standard `for` loops (not forEach), string concatenation (no template literals)

---

## World Map Placement System

- **Marshal building center**: x434, y459
- **Orientation**: Higher Y = north
- **Mirror formula**: `new_y = 2 × 459 − old_y`
- **Grid spacing**: 6 units between cells
- **Ring structure**: H1 (8 slots) → H2 (16) → H3 (24) → H4 (32) → H5 (13+)
- **Priority order**: R4/R5 in Hero Top 200 → Hero Top 200 non-R4 → remaining by HQ level + power

### Manual Overrides (Always Preserve)

- Zeus Says yCan ↔ GÖKHANBAŞ swap
- FEDERAL777 ↔ HulyaS swap
- zoro353535 & Zoro3535 adjacent (y=462, x=422 and x=428)

---

## Working Patterns

### File Handling
- Python scripts go to working directory
- Output files go to output directory
- Source files (intelligence docs, guide) are read-only — create new versions, don't modify originals
- Use `grep -n` before text replacements to find exact line numbers

### Quality Standards
- Always verify day number and baseline data before calculations
- Report extraction summaries with counts and uncertain readings flagged with [?]
- Player names: preserve exact unicode, Arabic, special characters — never normalize
- Power values: exact numbers, never round, distinguish Individual vs Hero power
- Alliance tags: exact 4-character tags, track changes between versions

### Output Formats
- `.md` — versioned intelligence files, player profiles
- `.xlsx` — multi-tab Excel via openpyxl with color-coded formatting
- `.html` — interactive maps and visualizations (ES5 JavaScript constraints)
- `.svg` — multilingual graphics
- `.txt` — simple exports

### Iteration Pattern
- Multiple versions with targeted corrections, not full rebuilds
- When processing large datasets (50+ entries), use Python for automation
- Cross-reference every update against LastWar_MasterGuide.md recommendations
