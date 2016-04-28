require "defines"
require "util"


function find_boilers(surface)
	for c in surface.get_chunks() do
		for key, steampot in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="OilSteamBoiler"})) do
			table.insert(global.steampot, steampot)
		end
	end
end --func end





function check_pots()
	if global.steampot ~= nil then
		for k,steampot in pairs(global.steampot) do
			if steampot.valid then
				if steampot.fluidbox[3] ~= nil then
					local steambox = steampot.fluidbox[3]
					steamtemp = 100
					steambox["temperature"] = 100
					steampot.fluidbox[3] = steambox
				end
				else
					table.remove(global.steampot, k)
			end
		end
	end
end --func end
