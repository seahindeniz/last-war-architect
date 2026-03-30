---
name: lastwar-strategy
description: >
  Last War gameplay strategy — event planning, waterfall training, hero optimization, gear upgrades,
  drone components, resource management, and combat tactics. USE THIS SKILL when the user asks about:
  waterfall, VS Day, "barracks config", "what to upgrade", "hero skills", "gear upgrade", "drone components",
  "chip production", event scoring, speedups, diamonds, "Kill Event", CSW, "Desert Storm tactics",
  troop training, "research priority", "resource management", "gold shortage", "Zombie Invasion",
  "what should I build", "T10 requirements", "how to score more", event optimization, combat strategy,
  "mono-type bonus", "formation", "squad composition", rally strategy, garrison defense,
  shield timing, or ANY gameplay optimization question.
---

# Last War Strategy Engine

You are providing strategic optimization advice for Last War: Survival Game. All recommendations should reference the 10 Core Strategic Principles from CLAUDE.md and be tailored to SahinD's current account state (HQ 30, Tank squad, ~99.4M power).

## Waterfall Training System

### Concept
Instead of training troops directly at the highest tier, you train T1 troops across all barracks on Monday–Thursday, then on Friday (VS Day Training Day), you cascade-upgrade them through barracks in sequence from highest to lowest level. This produces ~4× more VS Day points than direct training.

### Rung Configurations

| Rung | Barracks Levels | T1 Trained | Cascade Path | Efficiency |
|------|----------------|------------|--------------|------------|
| 1 | 20-20-20-20 | T1 in all | All convert at same level | 1× (baseline) |
| 2 | 20-20-20-25 | T1 in L20s | L20→L20→L20→L25 | ~2× |
| 3 | 20-20-25-27 | T1 in L20s | L20→L20→L25→L27 | ~3× |
| 4 | 24-25-27-30 | T1 in L24 | L24→L25→L27→L30 | ~4× |
| 5 | 25-27-30-30 | T1 in L25 | L25→L27→L30→L30 | ~4.5× |

**SahinD's current config**: 24-25-25-27 (approaching Rung 4: 24-25-27-30)
**Next upgrade**: Push the L25 → L27, then L27 → L30

### Weekly Schedule
- **Mon–Thu**: Train T1 troops in lowest barracks, fill queues
- **Friday (VS Day Training)**: Execute waterfall cascade top-down
  1. Highest barracks: upgrade T1 → max tier available
  2. Transfer to next highest, upgrade
  3. Continue cascade down
  4. Use training speedups ONLY during this event
- **Sat–Sun**: Regular play, resource recovery

### Barracks Upgrade Priority
Always upgrade one barracks at a time to maintain waterfall capability:
```
Current: 24-25-25-27
Step 1: 24-25-27-27 (upgrade one L25 → L27)  — SKIP, go to step 2
Step 2: 24-25-27-30 (upgrade L27 → L30) ← TARGET (Rung 4)
Step 3: 25-27-30-30 (upgrade L24 → L25, then → L27... long term)
```

## VS Day Daily Schedule

| Day | Event | Key Actions | Resource Focus |
|-----|-------|-------------|----------------|
| Mon | Power Day | Use pre-saved speedups on buildings/research | Speedups |
| Tue | Hero Day | Level heroes, upgrade skills, equip gear | Hero EXP, medals |
| Wed | Research Day | Start research, merge drone components | RSS, components |
| Thu | Training Day (minor) | Queue troops, Ghost Ops participation | Food, recruits |
| Fri | Training Day (major) | **WATERFALL CASCADE** — biggest scoring day | Speedups, T1 troops |
| Sat | Kill Day | Kill zombies, hunt enemies (if Kill Event) | Stamina, march speed |

## Hero Development

### Skill Priority
**Rule: All heroes to Skill Level 20 before pushing ANY hero further.**

Why: The cost curve is exponential. Getting 8 heroes to L20 costs less than getting 1 hero from L20 to L30. The aggregate power gain from L20-across-all is greater.

### Squad Composition (Tank — SahinD's Focus)
Mono-type squad = +20% HP/ATK/DEF formation bonus = ~44% effective power advantage

**Tank Heroes Priority**:
1. Main tank heroes to max stars + L20 skills first
2. Support heroes that buff tank troops
3. Universal heroes that work with any troop type

### Star Priority
- Stars give flat stat increases
- Prioritize starring your MAIN squad heroes
- Ghost Ops (Thursday) is the ONLY source for late-game fragments: Lucius, Morrison, Adam, Fiona

## Gear Progression

### Rules
1. **UR (Ultra Rare) gear ONLY** — all other rarities are waste
2. **Upgrade in 10-level increments** at breakpoints (L10, L20, L30...)
3. **Complete sets before pushing individual pieces** — set bonuses outweigh single-piece stats
4. Focus on squad-matching gear (Tank gear for Tank squad)

### Upgrade Order
1. Weapon (highest ATK contribution)
2. Armor (highest DEF contribution)
3. Helmet → Boots → Accessories (diminishing returns)

## Drone Component System

### Below Level 7: Triple Merge
- 3 × Lv.N → 1 × Lv.(N+1)
- To reach Lv.7 from scratch: 729 Lv.1 components (3^6)
- **Right-side components from choice chests** — left side is overrepresented in random drops
- **Wednesday merges** — Alliance Duel Research Day gives points for component merging

### Above Level 7: Dual Merge + Gold
- 2 × Lv.N + gold → 1 × Lv.(N+1)
- Lv.7 → Lv.8: 2 × Lv.7 + 180,000 gold
- Gold cost escalates dramatically at higher levels

**SahinD's drone**: Thermal Imager Lv.7, needs 2nd Lv.7 copy + 180K gold for Lv.8

## Chip Production Priority (Tank Squad)

1. **ATK chips** — Tank DPS output (highest priority)
2. **DEF chips** — Tank survivability
3. **HP chips** — Tank durability
4. Remaining chip types by star level (higher star = more efficient)

## Research Priority

### Two Tech Center Strategy
- Tech Center 1: Long-duration research (Development tree)
- Tech Center 2: Short research for VS Day scoring (Alliance Duel tree)

### Tree Priority
1. **Development** — unlocks troop tiers, building levels
2. **Alliance Duel** — VS Day scoring bonuses
3. **Special Forces** — hero and troop combat buffs
4. **Economy** — resource production (lowest priority for HQ 30)

### Gold Bottleneck
- T10 research nodes cost ~500M-600M gold each
- **Zombie Invasion** is the top gold source — never miss it
- Dead base farming for supplemental gold
- Do NOT spend gold on anything non-essential

## Resource Management

### Diamond Spending Priority
1. **VIP points** (permanent progression)
2. **30-day VIP activation** (daily rewards compound)
3. **Shields** (protection during events)
4. **VIP Store stamina** (300 diamonds/week max)
5. Never spend on: speedups (use event rewards), resources (farmable), cosmetics

### Gold Conservation
- Gold is THE bottleneck at HQ 30 for T10 research
- Sources ranked: Zombie Invasion > Alliance gifts > Dead base farming > Production
- Never use gold for troop healing (use RSS instead)
- Save gold for: T10 research nodes, drone upgrades (Lv.7+)

## Event Strategies

### Kill Event
- **Rival 5× multiplier** — attack designated rival alliance for 5× kill points
- **Alliance Assault teleport** — teleport next to target, rally, port back
- **Garrison** strong bases near borders to bait attacks
- **Shield timing**: shield 5 min before event ends to protect accumulated troops
- Hospital capacity > troop deployment to minimize permanent losses

### Cross-Server War (CSW)
Three roles:
1. **Capitol team** — capture and hold the Capitol building
2. **Cannon team** — control cannon positions for zone advantages
3. **Burn squad** — sweep enemy resource tiles and unshielded bases

Preparation: coordinate with coalition, assign roles 48h before, practice rally timing

### Desert Storm (Weekly 20v20)
- **Building capture priority**: HQ > Barracks > Hospital > Resource buildings
- **Nuclear Silo timing trick**: Capture silo, time nuke for maximum enemy troop presence
- **Science Hub**: +research speed buff = force multiplier for entire team
- **Ghost marches**: Send then recall marches to confuse enemy about your true attack target
- **Matchmaking manipulation**: Include strategic lower-power members to drop bracket

## Planning Template

When creating event plans, output TWO formats:

### 1. Markdown Plan
```
## [Event Name] Plan — Day [N]
### Timeline
| Phase | Time | Action | Resources Needed |
|-------|------|--------|-----------------|

### Resource Checklist
- [ ] Speedups: [amount needed]
- [ ] Shields: [count]
- [ ] Gold: [amount]
- [ ] Diamonds: [amount]

### Point Targets
| Target | Points | Strategy | Priority |
|--------|--------|----------|----------|

### Risk Assessment
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|

### Alliance Announcement (Turkish)
[Turkish-language announcement for alliance chat]
```

### 2. Excel Plan (via openpyxl)
- Tab 1: Timeline (color-coded by phase)
- Tab 2: Resource requirements (red = shortage, green = sufficient)
- Tab 3: Point targets and progress tracking
- Tab 4: Team assignments
