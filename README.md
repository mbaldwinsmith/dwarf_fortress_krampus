# dwarf_fortress_krampus

Festive Dwarf Fortress raw mod that brings Krampus to life as a midwinter megabeast. He spreads dread, judges the naughty, lashes dwarves with birch-switch justice, kidnaps the unwary, and leaves unsettling folklore behind.

## Features
- Seasonal Krampus megabeast tuned for late autumn and winter worldgen appearances
- Interaction-focused kit: birch lash, dread aura, and a rarer judgement burst
- Folklore-friendly loot hooks for birch twigs and a creepy sack
- Raw-only packaging to drop into Steam or Classic installs

## Installation
1. Copy the `raw` folder from this repository into your Dwarf Fortress save or mod directory. It follows the modern `raw/objects` layout used by Steam and Classic.
2. Ensure the new files appear under `raw/objects/` alongside your existing raws:
   - `creature_krampus.txt`
   - `interaction_krampus.txt`
   - `item_krampus.txt`
3. Generate a new world to guarantee Krampus is placed correctly.

## File guide
- `raw/objects/creature_krampus.txt` — creature definition with seasonal presence and interaction hooks
- `raw/objects/interaction_krampus.txt` — lash, dread aura, and judgement syndromes targeting dwarves
- `raw/objects/item_krampus.txt` — birch twig weapon and sack tool placeholders

## Known issues / notes
- Numbers are placeholder friendly; adjust ranges, wait periods, and syndrome severities after in-game testing.
- Hookups reference IDs consistently, but further balancing is expected before release.
