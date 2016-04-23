
require "defines"
require "util"

function find_turbines(surface)
	if global.wind_turbine == nil then
		global.wind_turbine = {}
		for c in surface.get_chunks() do
			local filter = surface.find_entities_filtered({
					area = {
						{c.x * 32, c.y * 32}, 
						{c.x * 32 + 32, 
						c.y * 32 + 32}
					}, 
					name ="wind-turbine"
				})
			
			for key, wind_turbine in pairs(filter) do
				table.insert(global.wind_turbine, wind_turbine)
			end
		end
	end
end




function check_turbines()
   if global.wind_turbine ~= nil then

  	    for k,gen in pairs(global.wind_turbine) do
      		if k % 250 == game.tick % 250 then

				if gen.valid then
         			if gen.fluidbox[1] ~= nil then 

         					local pot = gen.fluidbox[1]
							pot["amount"] = 10				
							pot["temperature"] = 100*(game.wind_speed*25)
							gen.fluidbox[1] = pot
							
					else table.remove(global.wind_turbine, k)

					end				
				end
			end
		end
	end
end
		
function change_wind_hour()

	if global.wind_hour == nil
		then global.wind_hour = 0.02
	end
global.wind_hour = math.random(5,40)/1000
end

function change_wind_day()
	if global.wind_day == nil then 
		global.wind_day = 1
	end
	global.wind_day = math.random(80,120)/100
end

function tick_wind()
if global.wind_hour == nil then
		global.wind_hour = 0.02
	end
if global.wind_day == nil then
		global.wind_day = 1
	end
	
	local nv = global.wind_hour * global.wind_day
	local v = game.wind_speed

	if nv > v then 
		dv = (nv-v)/45
		game.wind_speed = v + dv
	end

	if nv < v then
		dv = (v-nv)/45
		game.wind_speed = v - dv
	end
end			
