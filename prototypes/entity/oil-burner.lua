data:extend({
	{
		type = "assembling-machine",
		name = "OilSteamBoiler",
		icon = "__KS_Power__/graphics/icons/OilSteamBoiler.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "OilSteamBoiler"},
		max_health = 200,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_slots = 1,
		allowed_effects = {"speed", "pollution"},
		animation =
		{
			north =
			{
				priority = "extra-high",
				width = 128,
				height = 128,
				line_length = 8,
				shift = {0.5, -0.4},
				filename = "__KS_Power__/graphics/ob-south-2.png",
				frame_count = 8,
				animation_speed = 0.4,
				run_mode = "forward-then-backward",
			},
			south =
			{
				priority = "extra-high",
				width = 128,
				height = 128,
				line_length = 8,
				shift = {0.5, -0.2},
				filename = "__KS_Power__/graphics/ob-north-2.png",
				frame_count = 8,
				animation_speed = 0.4,
				run_mode = "forward-then-backward",
			},
			east =
			{
				priority = "extra-high",
				width = 128,
				height = 144,
				line_length = 8,
				shift = {0.4, -0.5},
				filename = "__KS_Power__/graphics/ob-west-3.png",
				frame_count = 8,
				animation_speed = 0.4,
				run_mode = "forward-then-backward",
			},
			west =
			{
				priority = "extra-high",
				width = 128,
				height = 144,
				line_length = 8,
				shift = {0.35, -0.5},
				filename = "__KS_Power__/graphics/ob-east-3.png",
				frame_count = 8,
				animation_speed = 0.4,
				run_mode = "forward-then-backward",
			}
		},
		working_sound =
		{
			sound =
			{
				filename = "__KS_Power__/sounds/oil-boiler-loop-2.ogg",
				volume = 0.5
			},
			idle_sound = { filename = "__KS_Power__/sounds/steam-offlet.ogg", volume = 0.35 },
			max_sounds_per_type = 2,
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 4 / 4,
		},
		energy_usage = "30kW",
		ingredient_count = 3,
		crafting_categories = {"OilBurn"},
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections =
				{
					{ type="input", position = {-1, -2} }
				}
			},
			{
				production_type = "input",
				base_area = 10,
				base_level = -1,
				pipe_connections =
				{
					{ type="input", position = {1, -2} }
				}
			},
			{
				production_type = "output",
				base_level = 1,
				pipe_connections =
				{
					{ position = {0, 2} }
				}
			}
		}
	},
})