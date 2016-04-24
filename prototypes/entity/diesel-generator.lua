data:extend({
	{
		type = "generator",
		name = "petroleum-generator",
		icon = "__KS_Power__/graphics/diesel-generator-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = { 
			mining_time = 2, 
			result = "petroleum-generator"
		},
		max_health = 300,
		corpse = "big-remnants",
        dying_explosion = "medium-explosion",
		effectivity = 100,
		fluid_usage_per_tick = 0.01,
		resistances = { 
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-0.7, -2.7}, {0.7, 2.7}},
		selection_box = {{-1, -3}, {1, 3}},
		fluid_box = {
			base_area = 1,
			base_level = -1,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {-1.5, 0.5} },
				{ position = {1.5, 0.5} },
			},
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-output"
		},
		vehicle_impact_sound = { 
			filename = "__base__/sound/car-metal-impact.ogg", 
			volume = 0.65 
		},
		horizontal_animation =
		{
			filename = "__KS_Power__/graphics/diesel-engine-ha0.png",
			width = 224,
			height = 128,
			frame_count = 8,
			line_length = 8,
			shift = {0.5,-0.40}
		},
		vertical_animation =
		{
			filename = "__KS_Power__/graphics/diesel-engine-va0.png",
			width = 128,
			height = 224,
			frame_count = 8,
			line_length = 8,
			shift = {0.8,0.1}
		},
        smoke = {
            {
                name = "petroleum-gen-smoke",
                north_position = {0.42, -0.85},
                east_position = {-1.15, -2.0},
                frequency = 10 / 32,
                starting_vertical_speed = 0.06,
                slow_down_factor = 1,
                starting_frame_deviation = 60,
            },
            {
                name = "petroleum-gen-smoke",
                north_position = {-0.42, -0.85},
                east_position = {-1.15, -1.8},
                frequency = 10 / 32,
                starting_vertical_speed = 0.06,
                slow_down_factor = 1,
                starting_frame_deviation = 60,
            }
        },
		working_sound =
		{
			sound = {
					{
						filename = "__KS_Power__/sounds/diesel-loop-1.ogg",
						volume = 1
					},
					{
						filename = "__KS_Power__/sounds/diesel-loop-2.ogg",
						volume = 1
					},
					{
						filename = "__KS_Power__/sounds/diesel-loop-3.ogg",
						volume = 1
					},
			},
			match_speed_to_activity = true,
			max_sounds_per_type = 2,
		},

		min_perceived_performance = 0.1,
		performance_to_sound_speedup = 0.2
	},
})