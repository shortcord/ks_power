data:extend({
	{
		type = "technology",
		name = "OilBurning",
		icon = "__KS_Power__/graphics/oil-boiler-tech2.png",
		icon_size = 128,
		effects =
		{
			{type = "unlock-recipe", recipe = "OilSteamBoiler"},
			{type = "unlock-recipe", recipe = "burn-crude-oil"},
			{type = "unlock-recipe", recipe = "burn-light-oil"},
			{type = "unlock-recipe", recipe = "burn-heavy-oil"},
		},
		prerequisites = {"oil-processing","concrete"},
		unit =
			{
			count = 100,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1}
				},
			time = 30
			},
		order = "f-b-c",
	},
})