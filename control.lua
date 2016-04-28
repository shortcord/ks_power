require "defines"
require "util"
require "controlScripts.boiler"
require "controlScripts.turbine"
require "controlScripts.diesel-gen"

-- Create globals
if global.steampot == nil then
	global.steampot = {} -- Oil Steam Boiler
end

if global.wind_turbine == nil then
	global.wind_turbine = {} -- Wind Turbine
end

if global.petroleum_generator == nil then
	global.petroleum_generator = {} -- Diesel Generator
end

script.on_configuration_changed(function(data)
	if data.mod_changes ~= nil and data.mod_changes["KS_Power"] ~= nil and data.mod_changes["KS_Power"].old_version == nil then
		local s = game.surfaces["nauvis"]
		find_boilers(s)
		find_turbines(s)
		find_generators(s)
		for k, f in pairs (game.forces) do
			f.reset_recipes()
		end
	end
end)

script.on_event(defines.events.on_tick, function(event)
-- every 25,000 ticks we do this
	if (game.tick % 25000) == 0 then
	change_wind_day()
	end

-- every 2,500 ticks we do this
	if (game.tick % 2500) == 0 then
	change_wind_hour()

	end
-- every 75 ticks we
	if (game.tick % 75) == 0 then
	tick_wind()
	end

	check_turbines()
	check_pots()
	check_generators()
end)

function BuiltEntity(event)
	if event.created_entity.name == "OilSteamBoiler" then
		local steampot = event.created_entity
			table.insert(global.steampot, steampot)
	end

	if event.created_entity.name == "wind-turbine" then
		local wind_turbine = event.created_entity

		table.insert(global.wind_turbine, wind_turbine)
		wind_turbine.fluidbox[1] = {
		type = "wind",
		amount = 100,
		temperature = (game.wind_speed*2500)
		}
	end

	if event.created_entity.name == "petroleum-generator" then
		local petroleum_generator = event.created_entity

		table.insert(global.petroleum_generator, petroleum_generator)
	end -- event.created_entity.name == "petroleum-generator"
end --func BuiltEntity(event)

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)