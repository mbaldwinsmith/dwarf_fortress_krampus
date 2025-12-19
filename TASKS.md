# TASKS

## v1.0 – Core release (shippable, FUN, stable)

### Creature & mechanics
- [x] Confirm Krampus creature raw includes seasonal tokens, megabeast tags, and required body part categories (HAND, MOUTH, HORN, FOOT).
- [x] Wire all interactions (birch lash, dread aura, judgement) via `CAN_DO_INTERACTION`.
- [x] Implement interaction-based birch lash as the sole source of correction (no double-dipping attacks).
- [x] Tune wait periods so Krampus alternates naturally between movement and abilities.
- [x] Ensure judgement is rare and memorable, not spammy.
- [x] Ensure dread aura is disruptive but not fortress-ending.

### Syndromes & balance
- [x] Finalize syndrome effects emphasizing pain, fear, shame, nausea, and brief stuns over lethality.
- [x] Sanity-check durations, severities, and probabilities to avoid permanent trauma or tantrum spirals.
- [x] Verify all syndromes apply only to intended targets (dwarves unless explicitly expanded).

### Items & loot
- [x] Implement birch twig item with consistent naming, size, and value.
- [x] Implement Krampus sack item with clear flavour and purpose.
- [x] Confirm item IDs are unique and conflict-safe.

### Polish & documentation
- [x] Add clear section headers and concise comments in all raw files.
- [x] Validate all IDs and cross references across creature, interaction, and item files.
- [x] Write README with feature overview, installation steps, and known issues.
- [x] Add CHANGELOG entry for v1.0 release.

### Testing
- [x] Static scan for invalid tokens or missing body parts in `BP_REQUIRED`.
- [x] Review targeting logic (range, line of sight, max targets).
- [x] Confirm mod loads cleanly alongside vanilla raws.

---

## v1.1 – Festive polish & flavour

### Presentation
- [x] Enrich creature description with bells, birch, and midwinter folklore.
- [x] Improve item descriptions with unsettling festive flavour.

### Behaviour tuning
- [x] Fine-tune aura range and duration based on play feedback.
- [x] Add minor variation to judgement effects for replayability.
- [x] Add a Krampus remembers bias so judgement favors previously corrected dwarves.

### Documentation
- [x] Expand README with balance notes and expected difficulty.
- [x] Add combat log callouts for interaction hits.
- [x] Add folklore combat log language for interaction messages.

### Loot, reactions & workshops
- [x] Add Krampus horns or fur as high-value crafting materials.

### Worldgen & integration
- [x] Ensure all IDs use a clear namespace prefix (`KRAMPUS_`).
