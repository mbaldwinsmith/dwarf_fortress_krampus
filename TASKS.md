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
- [ ] Enrich creature description with bells, birch, and midwinter folklore.
- [ ] Adjust creature tile or colour for strong visual identity.
- [ ] Improve item descriptions with unsettling festive flavour.
- [ ] Add legends-friendly wording for exported stories.

### Behaviour tuning
- [ ] Fine-tune aura range and duration based on play feedback.
- [ ] Adjust lash frequency to feel “disciplinary” rather than chaotic.
- [ ] Add minor variation to judgement effects for replayability.

### Documentation
- [ ] Expand README with balance notes and expected difficulty.
- [ ] Add compatibility notes for other holiday or megabeast mods.
- [ ] Document tuning suggestions for fortress mode vs adventure mode.

---

## v2.0 – Expanded festive FUN (optional modules)

### Loot, reactions & workshops
- [ ] Add Krampus horns or fur as high-value crafting materials.
- [ ] Add optional reactions using birch twigs (toys, decorations, rituals).
- [ ] Introduce cursed festive items with mild psychological effects.
- [ ] Add a Toy Workshop or equivalent festive structure.

### Advanced behaviour
- [ ] Add variant judgement syndromes (repeat offenders, nobles, administrators).
- [ ] Add conditional behaviour for child-heavy fortresses.
- [ ] Add a chance for Krampus to disengage or retreat after successful judgements.
- [ ] Add ominous speech or bell-themed flavour interactions.

### Worldgen & integration
- [ ] Add legends-mode references (worship, demon lore, historical events).
- [ ] Ensure all IDs use a clear namespace prefix (`KRAMPUS_`).
- [ ] Provide guidance for safe integration with seasonal creature packs.

### Adventure mode & extras
- [ ] Validate behaviour in adventure mode and document expectations.
- [ ] Add adventure-facing dialogue or interactions if feasible.
- [ ] Consider reindeer thralls, counter-rituals, or banishment mechanics as optional extras.
