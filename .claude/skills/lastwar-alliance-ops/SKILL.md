---
name: lastwar-alliance-ops
description: >
  Alliance operations — roster management, world map base placement, diplomacy, event coordination,
  and R4 leadership tasks for MHF alliance. USE THIS SKILL when the user mentions: roster, member list,
  "base positions", "world map", "placement", "ring system", "coordinate", promotions, kicks, demotions,
  NAP, diplomacy, "presidency rotation", "code of conduct", "alliance rules", Desert Storm teams,
  rally coordination, "R4 duties", "officer tasks", "member evaluation", "coalition meeting",
  "alliance announcement", "event coordination", "pre-event", "post-event", team composition,
  matchmaking, or any alliance leadership/management task.
---

# MHF Alliance Operations

You are supporting SahinD (R4, Butler) in managing MHF alliance operations on Server S2011. MHF is the #2 alliance (~4.78B power, ~93-94 members) in the ruling coalition with SNW1 and MAZ1.

## World Map Placement System

### Coordinate System
- **Marshal building center**: x434, y459
- **Orientation**: Higher Y = north, Higher X = east
- **Grid spacing**: 6 units between cells
- **Mirror formula** (for symmetrical placement): `new_y = 2 × 459 − old_y`

### Ring Structure

| Ring | Slots | Distance from Center | Priority |
|------|-------|---------------------|----------|
| H1 | 8 | Adjacent to Marshal | R5 + top R4s |
| H2 | 16 | 1 ring out | Remaining R4s + Hero Top 200 |
| H3 | 24 | 2 rings out | Hero Top 200 non-R4 |
| H4 | 32 | 3 rings out | HQ 30 by power |
| H5 | 13+ | 4 rings out | Remaining members |

### Priority Order for Placement
1. R4/R5 who are in Server Hero Power Top 200
2. Non-R4 members in Server Hero Power Top 200
3. Remaining members sorted by HQ level (descending), then Individual Power (descending)

### Manual Overrides (ALWAYS preserve these)
- **Zeus Says yCan ↔ GÖKHANBAŞ**: swap positions (personal request)
- **FEDERAL777 ↔ HulyaS**: swap positions
- **zoro353535 & Zoro3535**: must be adjacent at y=462, x=422 and x=428

### HTML Output Constraints
When generating interactive placement maps:
- Use `var` — NOT `let` or `const`
- Use standard `for` loops — NOT `forEach`, `map`, `filter`
- Use string concatenation (`+`) — NOT template literals (backticks)
- These constraints ensure compatibility with the user's viewing environment

### Placement Output Format
1. **Coordinate list**: Name | Ring | x | y | Priority Tier
2. **Interactive HTML map** with hover tooltips showing player details
3. **Movement instructions** for members who need to relocate

## Roster Management

### Tracking Fields per Member

| Field | Description |
|-------|-------------|
| Name | Exact unicode, never normalize |
| Rank | R1–R5 |
| Title | R4 titles: Butler, Warlord, Muse, Recruiter, etc. |
| Individual Power | Current value |
| Hero Power | Current value |
| HQ Level | 1–30 |
| Join Date | Server day joined MHF |
| Previous Alliance | Tag of prior alliance (if transfer) |
| Activity Status | Active / Semi-active / Inactive / On leave |
| Squad Type | Tank / Shooter / Fighter (if known) |

### Current R4 Officers (10 slots)

| Name | Title | Notes |
|------|-------|-------|
| Zeus Says yCan | — | — |
| SahinD | Butler | The user |
| GÖKHANBAŞ | Warlord | — |
| HulyaS | Muse | — |
| atiderlerr | Recruiter | — |
| Billy Butcher 4735 | — | — |
| bobmarleyfaruk | — | — |
| FEDERAL777 | — | — |
| ATAkapTANN | — | — |
| A R L E S | — | — |

## Promotion & Demotion Criteria

### Promotion to R4 (When Slot Available)
Evaluate in order of weight:
1. **Power contribution** (top 10 in alliance Individual Power)
2. **Activity** (daily logins, VS Day participation ≥5/6 days)
3. **Hero development** (Hero Power in server Top 200 preferred)
4. **HQ level** (30 required for R4 consideration)
5. **Loyalty** (time in MHF, no recent alliance hopping)
6. **Communication** (responds to alliance chat, follows R4 directives)

### Demotion / Kick Criteria
- **Inactivity**: 3+ days without login (warn at 2 days)
- **Missed VS Days**: <3/6 participation without notice → warning; <2/6 → demotion
- **NAP violations**: attacking NAP partners = immediate demotion + possible kick
- **Disobedience**: ignoring R4/R5 directives during events (rally calls, shield orders)
- **Process**: Warning → R4 discussion → R5 approval → action

## Coalition Structure

### SNW1 + MHF + MAZ1 Coalition
- **Presidency rotation**: SNW1 → MHF → MAZ1, handoff every Friday
- **Capitol holder** retains control for first 28 days of new season
- **Coalition Discord/group** for R4+ coordination
- **Resource sharing**: Rally support, Desert Storm team coordination, garrison help

### NAP Rules
**Standard NAP Terms**:
- No attacking NAP partner members (troops, bases, gatherers)
- No tile-stealing from NAP partners
- No recruiting from NAP partners without their R4 approval
- Duration: indefinite unless formally terminated (72h notice)

**Violation Escalation**:
1. First offense → Warning to offender + apology to victim
2. Second offense → R4 mediation between alliances
3. Third offense → KoS designation + NAP termination

### Diplomatic Relations Template

| Alliance | Status | Terms | Since | Contact | Notes |
|----------|--------|-------|-------|---------|-------|
| SNW1 | Coalition | Full NAP + mutual defense | Day 1 | [R4 name] | — |
| MAZ1 | Coalition | Full NAP + mutual defense | Day 1 | [R4 name] | — |
| [Others] | NAP/Neutral/Hostile | [Terms] | [Day] | [Contact] | — |

## Desert Storm Team Composition

### Structure
- **20 active fighters** + **10 reserves** per team
- 5 sub-teams of 4 players each
- Each sub-team needs: 1 tank, 1 shooter, 1 fighter, 1 flex (or 2 of strongest type)

### Role Assignments
- **Rally leads**: Highest hero power players (set targets)
- **Garrison**: Highest troop count (defend captured buildings)
- **Burners**: Fast march speed + high ATK (resource buildings)
- **Scouts**: Lowest power in team (scout enemy formations before rallies)

### Matchmaking Manipulation
- Total team power determines matchmaking bracket
- Including a few lower-power members can drop bracket while keeping top fighters
- Optimal: 15 strong + 5 strategic weak selections

## Event Coordination Templates

### Pre-Event Checklist
```
## [Event Name] — Day [N], [Date]
### Preparation (48h before)
- [ ] R4 coordination meeting
- [ ] Resource stockpile check (per member)
- [ ] Shield inventory
- [ ] Speedup inventory
- [ ] Rally target list
- [ ] Team assignments posted

### Alliance Announcement (Turkish)
[Draft Turkish-language message for alliance chat]

### Point Targets
| Tier | Points | Reward | Difficulty |
|------|--------|--------|------------|
```

### Post-Event Report
```
## [Event Name] Results — Day [N]
### Alliance Performance
- Alliance Rank: [X]
- Total Points: [N]
- Top Contributors: [list]

### Individual Highlights
- MVP: [player, contribution]
- Most Improved: [player]

### Lessons Learned
- [What went well]
- [What to improve]
```
