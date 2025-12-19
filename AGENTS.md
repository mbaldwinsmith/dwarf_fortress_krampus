# AGENTS.md

This repository contains a small Dwarf Fortress mod that adds **Krampus** as a seasonal **megabeast** with **interaction-based** syndromes (lash/judgement/aura) and themed loot (e.g., birch twigs / sack). You are CODEX. Make changes conservatively, keep raws readable, and leave clear comments.

## Project goals

- Add **KRAMPUS** as a DF creature with:
  - Seasonal presence (late autumn + winter)
  - Psychological pressure (dread aura)
  - Targeted punishment (judgement)
  - Close-range **interaction-based birch lash** (syndrome application)
  - Optional kidnapping flavour (grab / sack theme)
- Keep the mod **fun**, **folkloric**, and **DF-authentic** (pain/emotions > raw lethality).
- Ship as a **drop-in raw mod** with minimal dependencies.

## Non-goals

- DFHack scripting (unless explicitly requested later)
- Overly complex worldgen / entity politics
- Perfect balance across every fortress scenario on first pass

## Target DF version assumptions

- Assume modern DF raw mod layout for Steam/Classic-compatible “raw objects” style mods.
- If version-specific tokens are required, prefer the most broadly compatible approach and document any constraints in README.

## Repository layout (expected)

- `raw/objects/`
  - `creature_krampus.txt`
  - `interaction_krampus.txt` (judgement, dread aura, birch lash)
  - `item_krampus.txt` (optional: birch twigs, sack tool)
  - Any additional material/plant raws if introduced
- `README.md` (install + features + known issues)
- `CHANGELOG.md` (short, human-readable)
- `AGENTS.md` (this file)

If files don’t exist yet, create them in the above structure.

## Naming conventions

- Creature ID: `KRAMPUS`
- Interactions:
  - `KRAMPUS_BIRCH_LASH`
  - `KRAMPUS_JUDGEMENT`
  - `KRAMPUS_DREAD_AURA`
- Items:
  - `ITEM_WEAPON_KRAMPUS_BIRCH_SWITCH` (or tool-based alternative)
  - `ITEM_KRAMPUS_SACK`

Be consistent across raws. Do not silently rename IDs without updating all references.

## Design rules

1. **Interaction-based lash is authoritative**
   - The birch “lash” should be an interaction applying a syndrome.
   - Avoid double-dipping by also having a physical birch attack unless explicitly desired.
2. **FUN over lethality**
   - Prefer pain, shame, fear, nausea, brief stun over high-damage killing moves.
3. **Aura should be subtle**
   - Short-duration syndromes with frequent reapplication beats long, oppressive durations.
4. **Judgement should be rare**
   - Longer `WAIT_PERIOD`, single target, stronger emotional impact.
5. **Readable raws**
   - Use comments and clear separators.
   - Group creature attacks, then interaction hooks.

## Implementation checklist

When adding or modifying mechanics, ensure:

- `KRAMPUS` has `[CAN_DO_INTERACTION:...]` blocks for:
  - Lash (melee/short range)
  - Judgement (medium range, rarer)
  - Dread aura (short range, frequent, capped targets)
- Interactions specify:
  - Clear targeting (`LINE_OF_SIGHT`, range)
  - Appropriate `WAIT_PERIOD`
  - Syndromes with sensible durations
- All objects compile without missing IDs or typos.

## Balancing knobs (preferred defaults)

- `KRAMPUS_BIRCH_LASH`
  - Range: 2–4 tiles
  - `WAIT_PERIOD`: ~35–60
  - Effects: strong pain + shame, occasional stun
- `KRAMPUS_DREAD_AURA`
  - Range: ~10 tiles
  - `WAIT_PERIOD`: ~25–75
  - Effects: mild unease/fear + small speed penalty, short duration
- `KRAMPUS_JUDGEMENT`
  - Range: ~15 tiles
  - `WAIT_PERIOD`: ~150–300
  - Effects: horror/guilt + brief slow, small paralysis chance (low prob)

If tuning, change **one knob at a time** and note it in `CHANGELOG.md`.

## Testing protocol

We cannot run DF here, so testing is “static correctness” + “sanity review”:

- Validate all referenced tokens/IDs exist.
- No duplicate object IDs.
- Interactions target dwarves only (unless intentionally expanded).
- Confirm body part requirements exist (e.g., HAND/MOUTH categories used in `BP_REQUIRED`).
- Keep durations and severities within reasonable ranges.

Add a short “Known Issues / Notes” section to README if anything is uncertain.

## Documentation requirements

Every meaningful change must include:

- A `CHANGELOG.md` entry (date + short bullet)
- README update if it affects installation, behaviour, or balance

README should include:
- What Krampus does
- When he appears (seasonal)
- What syndromes/interactions exist (plain English)
- How to install (where to place the folder)

## Style preferences

- No em dashes in documentation (use commas or parentheses).
- Keep prose concise and slightly playful in tone.
- Comments in raws should be short and helpful.

## Safe defaults for new features

If adding new content (toys, workshops, reindeer thralls, etc.), implement as optional extras behind separate files and keep core experience stable.

## What to do first if asked for a new feature

1. Identify the best raw file to change.
2. Make the smallest working addition.
3. Update any cross-references.
4. Update README + CHANGELOG.
5. Provide a brief summary of changes.

## Deliverables format

When responding with changes, output:
- The full contents of any modified raw files (or a clear diff if requested).
- Any new files in full.
- A short changelog entry.

## Task tracking

Check `TASKS.md` for the current breakdown and mark tasks as complete when you finish them.
