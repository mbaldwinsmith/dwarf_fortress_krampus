-- DFHack announcements and loot helper for Krampus.
--@ module = true

local eventful = require('plugins.eventful')

local GLOBAL_KEY = 'krampus_announce'

local DROP_BIRCH_SWITCH = true
local BIRCH_SWITCH_QUALITY = df.item_quality.Masterwork

local function is_krampus(unit)
  if not unit then
    return false
  end

  local raw = df.global.world.raws.creatures.all[unit.race]
  return raw and raw.creature_id == 'KRAMPUS'
end

local function is_supported_mode()
  local mode = df.global.gamemode
  return mode == df.game_mode.FORTRESS
    or mode == df.game_mode.ADVENTURE
    or mode == df.game_mode.ARENA
end

local function announce_arrival()
  dfhack.gui.showZoomAnnouncement(
    "The Krampus has come for naughty dwarves.",
    COLOR_LIGHTRED,
    true
  )
end

local function announce_death()
  dfhack.gui.showAnnouncement(
    "The Krampus is slain. The bells are silent.",
    COLOR_WHITE
  )
end

local function has_switch_at(pos, subtype)
  for _, item in ipairs(df.global.world.items.other.WEAPON) do
    if item.subtype == subtype then
      local ipos = item.pos
      if ipos.x == pos.x and ipos.y == pos.y and ipos.z == pos.z then
        return true
      end
    end
  end

  return false
end

local function spawn_birch_switch(unit)
  if not DROP_BIRCH_SWITCH then
    return
  end

  local pos = unit.pos
  if not pos then
    return
  end

  local item_token = 'WEAPON:ITEM_WEAPON_KRAMPUS_BIRCH_SWITCH'
  local item_type = dfhack.items.findType(item_token)
  local item_subtype = dfhack.items.findSubtype(item_token)
  if item_type == -1 or item_subtype == -1 then
    return
  end

  local matinfo = dfhack.matinfo.find('CREATURE_MAT:KRAMPUS:BIRCH_WOOD')
  if not matinfo then
    return
  end

  if has_switch_at(pos, item_subtype) then
    return
  end

  local items = dfhack.items.createItem(
    unit,
    item_type,
    item_subtype,
    matinfo.type,
    matinfo.index
  )

  if not items then
    return
  end

  for _, item in ipairs(items) do
    item.quality = BIRCH_SWITCH_QUALITY
    dfhack.items.moveToGround(item, pos)
  end
end

local function enable_hooks()
  eventful.enableEvent(eventful.eventType.UNIT_NEW_ACTIVE, 1)
  eventful.enableEvent(eventful.eventType.UNIT_DEATH, 1)

  eventful.onUnitNewActive[GLOBAL_KEY] = function(id)
    if not is_supported_mode() then
      return
    end

    local unit = df.unit.find(id)
    if not is_krampus(unit) then
      return
    end

    if not unit.flags1.active_invader
      and df.global.gamemode == df.game_mode.FORTRESS
    then
      return
    end

    announce_arrival()
  end

  eventful.onUnitDeath[GLOBAL_KEY] = function(id)
    if not is_supported_mode() then
      return
    end

    local unit = df.unit.find(id)
    if not is_krampus(unit) then
      return
    end

    spawn_birch_switch(unit)
    announce_death()
  end
end

local function disable_hooks()
  eventful.onUnitNewActive[GLOBAL_KEY] = nil
  eventful.onUnitDeath[GLOBAL_KEY] = nil
end

dfhack.onStateChange[GLOBAL_KEY] = function(sc)
  if sc == SC_MAP_LOADED then
    enable_hooks()
  elseif sc == SC_MAP_UNLOADED then
    disable_hooks()
  end
end

if dfhack.isMapLoaded() then
  enable_hooks()
end
