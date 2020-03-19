-- Load settings early.
ScriptHost:LoadScript( "scripts/settings.lua" )

-- Load the items
Tracker:AddItems( "items/equipment.json" )
Tracker:AddItems( "items/dreams.json" )
Tracker:AddItems( "items/emblems.json" )
Tracker:AddItems( "items/inventory.json" )
Tracker:AddItems( "items/souls.json" )
Tracker:AddItems( "items/stones.json" )

local isSimple = string.find( Tracker.ActiveVariantUID, "map_simple" )
local isEquipment = string.find( Tracker.ActiveVariantUID, "items_equipment" )
local isSkarsnik = string.find( Tracker.ActiveVariantUID, "items_skarsnik" )

if ( isSkarsnik ~= nil and isSkarsnik > 0 ) then
  Tracker:AddItems( "items/skarsnik.json" )
end

if (isSimple ~= nil and isSimple > 0) then
  for j=1,6 do
    Tracker:AddItems( "items/labels/world" .. j .. ".json" )
  end
  ScriptHost:LoadScript( "scripts/logic.lua" )

  Tracker:AddMaps( "maps/maps.json" )

  for j=1,6 do
    Tracker:AddLocations( "locations/world" .. j .. ".json" )
  end

  if ( isEquipment ~= nil and isEquipment > 0 ) then
    Tracker:AddLayouts( "layouts/tracker_equipment.json" )
  else
    Tracker:AddLayouts( "layouts/tracker.json" )
  end
else
  if ( isEquipment ~= nil and isEquipment > 0 ) then
    Tracker:AddLayouts( "layouts/itemonly_equipment.json" )
  elseif isSkarsnik ~= nil and isSkarsnik > 0 then
    Tracker:AddLayouts( "layouts/itemonly_skarsnik.json" )
  else
    Tracker:AddLayouts( "layouts/itemonly.json" )
  end
end

if ( isEquipment ~= nil and isEquipment > 0 ) then
  Tracker:AddLayouts( "layouts/broadcast_equipment.json" )
elseif isSkarsnik ~= nil and isSkarsnik > 0 then
  Tracker:AddLayouts( "layouts/broadcast_skarsnik.json" )
else
  Tracker:AddLayouts( "layouts/broadcast.json" )
end

if _VERSION == "Lua 5.3" then
  ScriptHost:LoadScript( "scripts/autotracking.lua" )
else
  print( "Auto-tracker is unsupported by your tracker version" )
end
