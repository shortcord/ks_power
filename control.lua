require "defines"
require "util"
require "scripts.boiler"
require "scripts.turbine"
require "scripts.burner-gen"
require "scripts.diesel-gen"


script.on_configuration_changed(function(data)
   if data.mod_changes ~= nil and data.mod_changes["KS_Power"] ~= nil and data.mod_changes["KS_Power"].old_version == nil then
    local s = game.surfaces["nauvis"]
     find_boilers(s)
     find_turbines(s)
     find_burners(s)
     find_generators(s)
     for k, f in pairs (game.forces) do 
        f.reset_recipes()
     end
   end
 end)




script.on_event(defines.events.on_tick, function(event)

    if (game.tick % 25000) == 0 then
      change_wind_day()
    end

    if (game.tick % 2500) == 0 then
      change_wind_hour()

    end

    if (game.tick % 75) == 0 then
      tick_wind()
    end
    check_turbines()
    check_pots()
    check_burners()
    check_generators()
end)




function BuiltEntity(event)
--	game.players[1].print("builtentity")
  if event.created_entity.name == "OilSteamBoiler" then
    if global.steampot == nil then global.steampot = {} end
    local steampot = event.created_entity
      table.insert(global.steampot, steampot)
  end

  if event.created_entity.name == "wind-turbine" then
    if global.wind_turbine == nil then global.wind_turbine = {} end
      local wind_turbine = event.created_entity
          table.insert(global.wind_turbine, wind_turbine)
          wind_turbine.fluidbox[1] = {
            type="wind", 
            amount=100, 
            temperature=(game.wind_speed*2500)
          }
  end

  if event.created_entity.name == "burner-generator" then

    if global.burner == nil then global.burner= {} end

      local burner = event.created_entity
      local surface = burner.surface
      local XY = burner.position
      local lid =	surface.create_entity{name = "burner-generator-power", position = XY, force= game.forces.neutral}
            if global.burner == nil
            then global.burner = {}
            end
          table.insert(global.burner, burner)
          
          burner.fluidbox[1] = {
            type="water", 
            amount=100, 
            temperature=15
          }
          
          lid.fluidbox[1] = {
            type="water", 
            amount=0.95, 
            temperature=15
          }
  end

  if event.created_entity.name == "petroleum-generator" then	

    if global.petroleum_generator == nil then global.petroleum_generator = {} end
      local petroleum_generator = event.created_entity
            if global.petroleum_generator == nil
            then global.petroleum_generator = {}
            end
          table.insert(global.petroleum_generator, petroleum_generator)

  end


end

function MinedEntity(event)
  if event.entity.name == "burner-generator" then
  local b = event.entity
  local X = b.position.x 
  local Y = b.position.y + 0.5
  
    
    local power = {}
    lid =	b.surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
    if lid[1] ~= nil then
      lid[1].destroy()
    end
    
  end

end


script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_preplayer_mined_item , MinedEntity)
script.on_event(defines.events.on_entity_died , MinedEntity)
script.on_event(defines.events.on_robot_pre_mined  , MinedEntity)