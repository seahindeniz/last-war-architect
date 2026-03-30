---
name: lastwar-player-profile
description: >
  Individual account tracking, upgrade planning, hero roster management, and growth projection for
  SahinD's Last War account. USE THIS SKILL when the user asks about: "my account", "my heroes",
  "my barracks", "my stats", "what should I focus on", "what to upgrade next", "SahinD stats",
  "player file update", "update my profile", personal progress, building levels, resource stockpiles,
  hero roster, "skill levels", "gear status", "drone progress", "power growth", "growth rate",
  "competitive position", "how do I compare", "gap analysis", "bottleneck", "upgrade path",
  "priority list", or ANY question about the user's individual account.
---

# SahinD Player Profile Management

You manage SahinD's personal player profile — tracking stats, planning upgrades, projecting growth, and identifying bottlenecks. Always reference the current profile file (SahinD_v[N].md) and cross-reference recommendations against LastWar_MasterGuide.md.

## Current Account Snapshot

| Stat | Value | Server Rank |
|------|-------|-------------|
| Individual Power | ~99.4M | ~Top 10 |
| Hero Power | ~56.4M | #8 |
| HQ Level | 30 (Max) | — |
| Alliance | MHF (#2) | R4 (Butler) |
| Squad Type | Tank | Mono-type |
| Barracks | 24, 25, 25, 27 | Approaching Rung 4 |
| Drone | Thermal Imager Lv.7 | — |

## Profile File Structure

The player profile file (SahinD_v[N].md) should contain these sections:

### 1. Player Overview
- Name, server, alliance, rank, title
- Key power metrics (Individual, Hero, Troop)
- HQ level and notable building levels

### 2. Building Inventory
List ALL 4 barracks individually with levels:
```
| Building | Level | Status | Next Upgrade | Cost | Time |
|----------|-------|--------|-------------|------|------|
| Barracks 1 | 24 | Ready | L25 | [RSS] | [time] |
| Barracks 2 | 25 | Ready | L26 | [RSS] | [time] |
| Barracks 3 | 25 | Upgrading | L27 (in progress) | — | [remaining] |
| Barracks 4 | 27 | Ready | L28 | [RSS] | [time] |
```
Also track: Tech Centers (×2), Hospital, Wall, resource buildings

### 3. Hero Roster
Per hero entry:

| Field | Description |
|-------|-------------|
| Name | Hero name |
| Type | Tank / Shooter / Fighter / Universal |
| Stars | Current star count |
| Skill 1 | Level (name if known) |
| Skill 2 | Level |
| Skill 3 | Level |
| Skill 4 | Level |
| Gear | Slot-by-slot: item name, quality, level |
| Priority | Main squad / Reserve / Development |

### 4. Strategic Priorities
Three tiers:
- **Short-term** (this week): immediate actions
- **Medium-term** (this month): upgrade paths, event prep
- **Long-term** (this season): competitive goals, power targets

### 5. Power Growth Log

| Day | Date | Individual Power | Hero Power | Delta | Daily Avg | Notes |
|-----|------|-----------------|------------|-------|-----------|-------|

### 6. Activity Log
Timestamped entries of significant changes, decisions, achievements.

## Update Procedure

1. **Confirm current version**: "Current file is SahinD_v[N].md, correct?"
2. **Read current version** completely
3. **Apply new data** from screenshots or user input
4. **Calculate deltas** against previous entry in growth log
5. **Run bottleneck check** (see below)
6. **Write new version** with incremented version number
7. **Update Activity Log** with today's changes
8. **Provide summary** of changes + current top priority

## Bottleneck Detection Engine

Check these in priority order. The FIRST bottleneck found is the current priority:

### 1. Barracks Configuration
```
Is any barracks actively upgrading? → Wait, don't start another
Are barracks at Rung 4 (24-25-27-30)? → If no, barracks upgrade is priority
Can waterfall produce T10 on VS Day? → If no, barracks upgrade is critical
```

### 2. Hero Skills
```
Are ALL heroes at Skill Level 20? → If no, skill upgrades are priority
Which hero has lowest average skill level? → That hero gets resources next
Any hero with one skill significantly lagging? → Even out first
```

### 3. Gear Status
```
All gear UR quality? → If no, replace non-UR pieces
Any gear at a 10-level breakpoint? → Upgrade to next breakpoint
Set bonuses complete? → Complete sets before pushing individual pieces
```

### 4. T10 Research Prerequisites
```
Missing T10 prerequisites in Development tree? → Priority research
Gold stockpile > 500M for next node? → If no, focus gold generation
Tech Center available? → Queue the longest research
```

### 5. VS Day Readiness
```
Speedup stockpile sufficient for Friday cascade? → If no, conserve speedups
T1 troop queues full for Mon-Thu? → If no, queue troops
Resource stockpile for training? → If no, farm resources
```

### 6. Power vs Hero Power Balance
```
Hero Power / Individual Power ratio
If < 50% → hero development is lagging
If > 70% → troop/building power needs attention
Sweet spot: 55-65%
SahinD current: 56.4M / 99.4M = 56.7% (healthy range)
```

## Building Upgrade Decision Framework (HQ 30)

At HQ 30, all buildings are available. Priority order:

1. **Barracks** → waterfall efficiency (THE top priority until Rung 4+)
2. **Tech Center** → research speed + VS Day scoring
3. **Hospital** → troop preservation in combat
4. **Resource buildings** → passive income
5. **Wall** → base defense (lowest priority for active players)

### Decision Template
```
## Upgrade Decision: [Building] L[X] → L[X+1]

### Cost
- Resources: [breakdown]
- Time: [duration]
- Speedups needed: [if any]

### Benefit
- Power gain: +[amount]
- Strategic value: [what it enables]
- VS Day impact: [point difference]

### Opportunity Cost
- What else could these resources do?
- Time spent upgrading vs. other priorities

### Recommendation: [PROCEED / DEFER / SKIP]
Reason: [brief justification]
```

## Growth Projection Formulas

### Daily Growth Rate
```
daily_growth = (current_power - previous_power) / days_elapsed
```

### Days to Target
```
days_to_target = (target_power - current_power) / daily_growth
projected_date = today + days_to_target
```

### Growth Rate Percentage
```
growth_rate = daily_growth / current_power × 100
```

### Competitive Benchmarking
```
vs_alliance_top10:
  median_power = median(top_10_alliance_members)
  gap = median_power - my_power
  percentile = rank_in_alliance / total_members × 100

vs_server_top20:
  gap_to_rank_1 = rank1_power - my_power
  gap_to_rank_20 = rank20_power - my_power
  days_to_top10 = gap_to_rank10 / daily_growth (if positive growth)
```

## Multi-Format Output

When updating or analyzing the player profile, offer appropriate formats:

### 1. Markdown (Versioned)
- Primary format: SahinD_v[N+1].md
- Full profile with all sections updated

### 2. Excel (Multi-tab)
```python
import openpyxl
# Tab 1: Current Stats (overview dashboard)
# Tab 2: Hero Roster (all heroes with skills/gear)
# Tab 3: Growth Log (historical power data)
# Tab 4: Upgrade Plan (prioritized list with costs)
# Tab 5: Comparison (vs alliance top 10, server top 20)
```

### 3. Summary Card
Quick-reference output:
```
═══ SahinD — Day [N] Summary ═══
Power: 99.4M (#[rank]) | Heroes: 56.4M (#8)
Barracks: 24-25-25-27 → Target: 24-25-27-30
Priority: [current top priority]
Growth: +[X]M/day ([Y]%)
Next milestone: [target] in ~[Z] days
═════════════════════════════════
```

### 4. Comparison Report
Side-by-side with specific rivals or alliance peers.
