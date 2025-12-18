# dwarf_fortress_krampus

Festive Dwarf Fortress raw mod that brings Krampus to life as a midwinter megabeast. He spreads dread, judges the naughty, lashes dwarves with birch-switch justice, kidnaps the unwary, and leaves unsettling folklore behind.

## Features
- Seasonal Krampus megabeast tuned for late autumn and winter worldgen appearances with full megabeast triggers
- Interaction-focused kit: birch lash, disruptive dread aura, and a rare judgement burst with guilt and paralysis pulses
- Folklore-friendly loot hooks for birch twigs and a creepy sack with tuned size and value
- Raw-only packaging to drop into Steam or Classic installs

## Installation
1. Copy the `raw` folder from this repository into your Dwarf Fortress save or mod directory. It follows the modern `raw/objects` layout used by Steam and Classic.
2. Ensure the new files appear under `raw/objects/` alongside your existing raws:
   - `creature_krampus.txt`
   - `interaction_krampus.txt`
   - `item_krampus.txt`
3. Generate a new world to guarantee Krampus is placed correctly.

## File guide
- `raw/objects/creature_krampus.txt` — creature definition with seasonal presence, body part categories for interaction hooks, and tuned wait periods
- `raw/objects/interaction_krampus.txt` — lash, dread aura, and judgement syndromes targeting dwarves
- `raw/objects/item_krampus.txt` — birch twig weapon and sack tool entries with consistent naming

## Known issues / notes
- Worldgen and interaction pacing are tuned for a first release but still need live testing to confirm balance.
- Syndromes target dwarves only for now; expand with care if you add other holiday visitors.
- Raws are written for modern layouts; report any token errors when mixing with older versions.
