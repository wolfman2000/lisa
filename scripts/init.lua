-- Load the items
Tracker:AddItems( "items/equipment.json" )
Tracker:AddItems( "items/emblems.json" )
Tracker:AddItems( "items/inventory.json" )
Tracker:AddItems( "items/souls.json" )
Tracker:AddItems( "items/stones.json" )
Tracker:AddItems( "items/labels.json" )

ScriptHost:LoadScript( "scripts/logic.lua" )

Tracker:AddMaps( "maps/maps.json" )

for i=1,2 do
  Tracker:AddLocations( "locations/world" .. i .. ".json" )
end

Tracker:AddLayouts( "layouts/tracker.json" )
Tracker:AddLayouts( "layouts/broadcast.json" )
