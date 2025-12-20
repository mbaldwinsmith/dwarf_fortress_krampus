-- DFHack announcements for Krampus arrival and death.

local eventful = require('plugins.eventful')

local DROP_BIRCH_SWITCH = true

local function is_krampus(unit)
  if not unit then
    return false
  end

  local raw = df.global.world.raws.creatures.all[unit.race]
  return raw and raw.creature_id == 'KRAMPUS'
end

local function is_fortress_mode()
  if dfhack.world and dfhack.world.isFortressMode then
    return dfhack.world.isFortressMode()
  end

  return df.global.gamemode == df.game_mode.FORTRESS
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
    dfhack.items.moveToGround(item, pos)
  end
end

eventful.onUnitSpawned.krampus_announce = function(id)
  if not is_fortress_mode() then
    return
  end

  local unit = df.unit.find(id)
  if not is_krampus(unit) then
    return
  end

  if not unit.flags1.active_invader then
    return
  end

  announce_arrival()
end

eventful.onUnitDeath.krampus_announce = function(id)
  if not is_fortress_mode() then
    return
  end

  local unit = df.unit.find(id)
  if not is_krampus(unit) then
    return
  end

  spawn_birch_switch(unit)
  announce_death()
end
