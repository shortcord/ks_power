
require "defines"
require "util"


function find_generators(surface)
	if global.petroleum_generator == nil then
		global.petroleum_generator = {}
	for c in surface.get_chunks() do
  for key, petroleum_generator in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="petroleum-generator"})) do

      table.insert(global.petroleum_generator, petroleum_generator)
  end
end
--game.players[1].print("Migrated Diesel Generators")
end
end




function check_generators()
	if global.petroleum_generator ~= nil then
		for k,gen in pairs(global.petroleum_generator) do
			--if k % 10 == game.tick % 10 then
					if gen.valid then
						if gen.fluidbox[1] ~= nil then 
						local pot = gen.fluidbox[1]
						local p = gen.position
					
            -- The idea behind this temerature is cause all generators use steam to produce electricity
            -- So based on the fluid being pumped into the generators we heat it up and in return we get steam then that powers turbines to produce electricity
            -- Again the fluid being pumped into the generators is limited on just how hot it can get so that's the reason behind the special diesel fuel fluid 
          
						if pot.type == "petroleum-gas" then
						pot["temperature"] = 80
						gen.surface.pollute({p.x, p.y}, 0.8/60)

						elseif pot.type == "light-oil" then      
            pot["temperature"] = 100
						gen.surface.pollute({p.x, p.y}, 1/60)

						elseif pot.type == "diesel-fuel" then      
            pot["temperature"] = 100
						gen.surface.pollute({p.x, p.y}, 1.2/60)

						elseif pot.type == "heavy-oil" then      
            pot["temperature"] = 60
						gen.surface.pollute({p.x, p.y}, 0.6/60)

						else pot["temperature"] = 15 end

						gen.fluidbox[1] = pot

            end
          else table.remove(global.petroleum_generator, k)
      end
    end
  end
end