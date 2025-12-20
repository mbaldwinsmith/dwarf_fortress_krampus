# Changelog

Dates use the ISO `YYYY-MM-DD` format to keep entries chronological.

## 2025-12-18
- Clarified the changelog date headings to note the ISO format.
- Corrected early changelog entries to use the proper year.
- Added TASKS checklist with milestones and stretch goals for the Krampus mod.
- Updated AGENTS instructions to consult and maintain the task list.
- Added initial raw folder structure with Krampus creature, interactions, and themed item placeholders.
- Updated README with installation steps, file guide, and known placeholder notes.

## 2025-12-19
- Tuned Krampus creature hooks with clearer body definitions and paced interaction verbs and ranges.
- Refined lash, dread aura, and judgement syndromes to emphasize pain, guilt, and fear without permanent harm.
- Polished birch twig and sack items with consistent value, size, and attack flavour.
- Updated README to reflect tuned mechanics and current scope notes.
- Removed the invalid NO_AGING token from the Krampus creature raw to fix loading errors.
- Removed manual target prompts from Krampus interactions so AI can select targets in fortress mode.
- Increased Krampus body size to make him less vulnerable to bare-handed brawls.
- Boosted Krampus body size to megabeast scale.
- Added natural combat skills so Krampus lands attacks more reliably and defends better.
- Raised Krampus toughness to help him survive elite weapon strikes.
- Increased Krampus combat skill levels to improve accuracy and defense against elites.
- Restored horn penetration so Krampus remains lethal against unarmored foes.
- Added interaction target verbs so the combat log clearly shows when lash, dread aura, or judgement land.
- Increased Krampus endurance and updated the birch lash log text to call out the switch.
- Enriched Krampus description with bells, birch switches, and sack folklore.
- Renamed birch switch and sack items for unsettling festive flavour.
- Added a low chance of dizziness to judgement for minor variation.
- Added a Krampus graphic.
- Extended the dread aura to cover a large radius with mild guilt and fear.
- Added README balance notes with expected difficulty and tuning guidance.
- Namespaced the birch switch item ID to `ITEM_WEAPON_KRAMPUS_BIRCH_SWITCH`.
- Updated README installation steps to cover Steam Workshop and manual mod folder installs.
- Documented the graphics folder in README installation and file guide.
- Replaced deprecated combat skill tokens with MELEE_COMBAT, GRASP_STRIKE, and STANCE_STRIKE.
- Updated interaction verbs to use folklore phrasing in combat logs.
- Fixed invalid raw tokens across creature, interactions, items, and graphics, and aligned seasonal flavor with cold biomes.
- Added a long-lived Krampus mark applied by lash and, at low chance, dread aura to bias future judgement.
- Added a marked-only judgement interaction with a slightly shorter cooldown and stronger emotions.
- Consolidated the lash and mark syndromes to prevent duplicate birch lash log lines.
- Raised guilt intensity across lash, dread aura, and judgement so it shows up more reliably in dwarf thoughts.

## 2025-12-20
- Added DFHack auto-announcements for Krampus arrival and death with a bundled script and onLoad init hook.
- Documented the optional DFHack announcements and file locations in the README.
- Extended Krampus emotional effect durations so guilt, fear, and shame linger longer.
- Greatly extended the duration of Krampus syndrome effects so emotions and discomfort linger for months.
- Fixed Krampus corpse loot to use materials so the birch switch and soot-black sack drop correctly.
- Removed the sack loot drop so Krampus leaves only a birch switch.
- Removed horn and fur value tuning references to reflect itemcorpse-only loot.
- Added a DFHack helper to spawn the birch switch on Krampus death.
