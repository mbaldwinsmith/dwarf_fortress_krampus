# dwarf_fortress_krampus

A festive Dwarf Fortress raw mod that brings **Krampus** to life as a midwinter megabeast. He spreads dread, judges the naughty, lashes dwarves with birch-switch justice, kidnaps the unwary, and leaves unsettling folklore behind. Seasonal, psychological, and gloriously FUN.

## Features
- **Seasonal megabeast** tuned for late autumn and winter, modeled with cold-biome spawns
- **Interaction-based abilities** rather than raw damage spam:
  - Birch-switch lash (pain and shame focused)
  - Long-range dread omen, with stronger effects up close
  - Rare, memorable judgement attack with occasional disorientation
- **Combat log callouts** so interaction hits are easy to spot
- **High endurance** to keep Krampus fighting longer
- **Megabeast-scale build** so bare-handed dwarves have a harder time punching him down
- **Elite combat training** to land hits more reliably and stay in the fight
- **Supernatural toughness** to survive elite weapon strikes
- **Folklore-themed loot drops**, including birch switches
- **Optional DFHack helpers** for announcements and birch switch drops, auto-enabled if DFHack is installed
- **No DFHack required** to use the mod
- Designed to disrupt, destabilise, and terrify rather than simply kill

## Installation
1. Steam Workshop option, subscribe to the mod and enable it in the Mods list.
2. Manual option, copy this mod folder (it contains `info.txt`, `objects/`, and `graphics/`) into your `Dwarf Fortress/mods/` directory, then enable it in the Mods list.
3. Confirm the following files appear under `objects/`:
   - `creature_krampus.txt`
   - `interaction_krampus.txt`
   - `item_krampus.txt`
4. Generate a **new world** to ensure Krampus is placed correctly in worldgen.

## DFHack (optional)
If DFHack is installed, the mod auto-runs `krampus_announce` to announce Krampus arriving and being slain.
It also spawns the birch switch on death, because itemcorpse drops do not trigger for living megabeasts.
To disable it, remove or comment out `krampus_announce` in `hack/init/onLoad.init`.

## File guide
- `objects/creature_krampus.txt`  
  Krampus creature definition, including seasonal presence and interaction hooks.
- `objects/interaction_krampus.txt`  
  Interaction-based lash, dread aura, and judgement syndromes targeting dwarves.
- `objects/item_krampus.txt`  
  Birch switch weapon entry for loot and flavour expansion.
- `graphics/`  
  Krampus sprites and graphics definitions.
- `hack/scripts/krampus_announce.lua`  
  DFHack script that announces Krampus arrival and death, and spawns the birch switch.
- `hack/init/onLoad.init`  
  DFHack init file that auto-runs the announcement script.

## Design philosophy
- **FUN over lethality**: pain, fear, shame, and disruption matter more than raw damage, although Krampus is still lethal in close quarters.
- **Folklore first**: Krampus behaves like a mythic punisher, not a generic monster.
- **Remembered judgement**: Krampus seems to remember those he has already corrected, his judgement feels personal.
- **Modular by default**: extras and future expansions can live alongside the core without breaking it.

## Balance notes
- Krampus is tuned to overwhelm unarmored dwarves, armored elites can still win with numbers or a lucky strike.
- The dread omen is long range and mild, proximity and judgement make it spike.
- Lash and judgement are interaction-based, tweaking wait periods shifts frequency without inflating raw damage.
- Krampus syndromes now linger for months, with dread and judgement leaving long-lived fear and guilt.

## License
Use, modify, and expand freely. If you build something festive and terrible on top of this, that's a success.
