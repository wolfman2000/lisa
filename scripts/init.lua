-- Load settings early.
ScriptHost:LoadScript( "scripts/settings.lua" )

-- Load the items
Tracker:AddItems( "items/equipment.json" )
Tracker:AddItems( "items/dreams.json" )
Tracker:AddItems( "items/emblems.json" )
Tracker:AddItems( "items/inventory.json" )
Tracker:AddItems( "items/souls.json" )
Tracker:AddItems( "items/stones.json" )

local i = 0
local j = 0
i, j = string.find( Tracker.ActiveVariantUID, "map_simple" )
local x = 0
local y = 0
x, y = string.find( Tracker.ActiveVariantUID, "items_equipment" )

if (i ~= nil and i > 0) then
  for i=1,6 do
    Tracker:AddItems( "items/labels/world" .. i .. ".json" )
  end

  ScriptHost:LoadScript( "scripts/logic.lua" )

  Tracker:AddMaps( "maps/maps.json" )

  for i=1,6 do
    Tracker:AddLocations( "locations/world" .. i .. ".json" )
  end

  if ( x ~= nil and x > 0 ) then
    Tracker:AddLayouts( "layouts/tracker_equipment.json" )
  else
    Tracker:AddLayouts( "layouts/tracker.json" )
  end
else
  if ( x ~= nil and x > 0 ) then
    Tracker:AddLayouts( "layouts/itemonly_equipment.json" )
  else
    Tracker:AddLayouts( "layouts/itemonly.json" )
  end
end

if ( x ~= nil and x > 0 ) then
  Tracker:AddLayouts( "layouts/broadcast_equipment.json" )
else
  Tracker:AddLayouts( "layouts/broadcast.json" )
end

if _VERSION == "Lua 5.3" then
  ScriptHost:LoadScript( "scripts/autotracking.lua" )
else
  print( "Auto-tracker is unsupported by your tracker version" )
end
