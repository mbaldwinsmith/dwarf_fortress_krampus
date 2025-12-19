# dwarf_fortress_krampus

A festive Dwarf Fortress raw mod that brings **Krampus** to life as a midwinter megabeast. He spreads dread, judges the naughty, lashes dwarves with birch-switch justice, kidnaps the unwary, and leaves unsettling folklore behind. Seasonal, psychological, and gloriously FUN.

## Features
- **Seasonal megabeast** tuned for late autumn and winter, modeled with cold-biome spawns
- **Interaction-based abilities** rather than raw damage spam:
  - Birch-switch lash (pain and shame focused)
  - Passive midwinter dread aura
  - Rare, memorable judgement attack
- **Folklore-themed loot hooks**, including birch twigs and a creepy sack
- **Raw-only mod**, no DFHack or scripting required
- Designed to disrupt, destabilise, and terrify rather than simply kill

## Installation
1. Copy the `raw` folder from this repository into your Dwarf Fortress save or mod directory.  
   The mod follows the modern `raw/objects` layout used by both Steam and Classic.
2. Confirm the following files appear under `raw/objects/`:
   - `creature_krampus.txt`
   - `interaction_krampus.txt`
   - `item_krampus.txt`
3. Generate a **new world** to ensure Krampus is placed correctly in worldgen.

## File guide
- `raw/objects/creature_krampus.txt`  
  Krampus creature definition, including seasonal presence and interaction hooks.
- `raw/objects/interaction_krampus.txt`  
  Interaction-based lash, dread aura, and judgement syndromes targeting dwarves.
- `raw/objects/item_krampus.txt`  
  Birch twig weapon and sack tool placeholders for loot and flavour expansion.

## Design philosophy
- **FUN over lethality**: pain, fear, shame, and disruption matter more than raw damage.
- **Folklore first**: Krampus behaves like a mythic punisher, not a generic monster.
- **Modular by default**: extras and future expansions can live alongside the core without breaking it.

## Known issues / notes
- Balance values are intentionally conservative and expected to be tuned after in-game testing.
- Emotional syndromes can be powerful; adjust ranges and durations carefully if modifying.
- Seasonal timing is approximated via taiga, tundra, and mountain biomes because raws do not support true season-only spawns.
- This mod is not beginner-friendly and may destabilise poorly prepared fortresses.

## License
Use, modify, and expand freely. If you build something festive and terrible on top of this, that’s a success.
