---
name: lastwar-server-management
description: >
  Manage versioned server intelligence files, power rankings, alliance comparisons, and threat analysis
  for Last War S2011/S2008. USE THIS SKILL when the user asks about: server status, alliance comparisons,
  "who is strongest", "coalition strength", "threat level", "power gap", "who transferred", "player transfers",
  "alliance growth", S2011 or S2008, "update server file", "new version", "power rankings", "top alliances",
  "rivalry analysis", competitive landscape, "season 2 preparation", coalition health, political structure,
  diplomatic shifts, "activity log", or any server-level intelligence question.
---

# Server Intelligence Management

You manage versioned intelligence files for Last War servers (primarily S2011, secondarily S2008). These files track the complete competitive landscape — alliance power, individual rankings, transfers, and political dynamics.

## File Versioning System

### Naming Convention
```
servers/S2011/S2011_v8.md  →  servers/S2011/S2011_v9.md  →  servers/S2011/S2011_v10.md
```

### Version Increment Rules
- Increment on: new data snapshots, significant alliance changes, post-event updates
- Do NOT increment for: typo fixes, formatting changes, minor corrections
- Version number appears in TWO places: filename AND document header (keep in sync)
- Always note server day in the header: `# S2011 Intelligence Report — v9 (Day 112)`

### Creating a New Version
1. Confirm current version number with user
2. Confirm current server day number
3. Read the current version file completely
4. Apply new data
5. Calculate all deltas against previous data
6. Write new version file (do NOT modify the original)
7. Update Activity Log as the last section entry

## Intelligence File Sections

Every server intelligence file should contain these sections in order:

### 1. Overview
- Server number, season, day count
- Coalition structure and current president
- Total server power (sum of top alliances)
- Key events since last version

### 2. Alliance Power Rankings (Top 50)

| Rank | Δ | Tag | Alliance Name | Power | Change | Growth % | Members | Notes |
|------|---|-----|---------------|-------|--------|----------|---------|-------|

- Δ column: ▲2, ▼1, — (no change), 🆕 (new entry)
- Power: exact values with comma separators
- Change: +/- from previous version
- Growth %: percentage change since previous version

### 3. Individual Power Rankings (Top 200)

| Rank | Δ | Name | Tag | Individual Power | Change | Notes |
|------|---|------|-----|-----------------|--------|-------|

### 4. Hero Power Rankings (Top 200)

| Rank | Δ | Name | Tag | Hero Power | Change | Notes |
|------|---|------|-----|------------|--------|-------|

### 5. Alliance Distribution Analysis
- How many players each alliance has in Top 200 (Individual and Hero)
- Coalition vs non-coalition split
- Concentration index (does one alliance dominate?)

### 6. Transfer Log

| Date/Day | Player | From | To | Power | Impact | Notes |
|----------|--------|------|----|-------|--------|-------|

- Track direction: alliance tag → alliance tag
- Note power carried (impacts both alliances)
- Flag R4 transfers as 🔥 critical
- Identify patterns: "3 players left MHF for 4NKA in 2 weeks"

### 7. Threat Assessment

For each rival alliance, assess:
- **Power trajectory**: growing/stable/declining + rate
- **Recruitment activity**: poaching from coalition? recruiting externals?
- **Leadership stability**: R5/R4 changes?
- **Event performance**: VS Day consistency, Desert Storm results
- **CSW readiness**: troop composition, hero development depth
- **Overall threat level**: Critical / High / Medium / Low

### 8. Political Structure
- Coalition membership and terms
- Presidency rotation schedule (with dates)
- NAP agreements (with whom, terms, expiry)
- Hostile designations (KoS list)
- Neutral parties

### 9. Activity Log

```
### Day [N] — [Date] (v[X])
- [Change 1]
- [Change 2]
- Notable: [highlight with emoji]
```

Append new entries; never overwrite historical log entries.

## Analysis Patterns

### Power Gap Analysis
```
Gap % = (leader_power - subject_power) / leader_power × 100
Gap Trend = current_gap% - previous_gap%
If gap shrinking → subject catching up (flag with 📈)
If gap growing → subject falling behind (flag with 📉)
Projection: At current growth rates, gap closes in X days
```

### Transfer Pattern Mapping
```
For each transfer:
1. Direction: Source alliance → Destination alliance
2. Power impact: how much power moved
3. Pattern detection:
   - Multiple transfers same direction = systematic recruitment
   - R4 transfers = leadership instability (🔥)
   - Power > 50M transfers = significant impact
   - Coalition → non-coalition = coalition weakness
```

### Growth Rate Comparison
```
Daily Growth = (current_power - previous_power) / days_elapsed
Weekly Projection = daily_growth × 7
Monthly Projection = daily_growth × 30
Growth Rate % = (current - previous) / previous × 100
Server Average Growth = sum(all_growth) / alliance_count
Above/Below Average = alliance_growth / server_average
```

### Coalition Health Check
```
1. Combined power vs next strongest bloc
2. Top 200 representation (target: >50%)
3. Internal power balance (no single ally >60% of coalition)
4. Transfer losses to non-coalition (net flow)
5. Presidency rotation compliance (on schedule?)
6. Internal disputes or NAP violations
```

## Server Day Calculation

Server S2011 launched on approximately December 15, 2025.
```
Server Day = (current_date - launch_date).days + 1
```
Always confirm with user if uncertain — day count is critical for all temporal analysis.

## Output Standards

- **Emoji flags**: 🔥 critical, ⚠️ warning, 📈 growth/positive, 📉 decline/negative, 🆕 new, ❌ removed, 🔄 transfer, 👑 leadership change
- **Bold formatting**: **alliance names**, **player names** on first mention in analysis
- **Percentage precision**: one decimal place (12.3%, not 12.34%)
- **Power abbreviations** in analysis text: B (billion), M (million) — but exact values in tables
- **Rank change notation**: ▲3 (climbed 3), ▼2 (dropped 2), — (unchanged)
