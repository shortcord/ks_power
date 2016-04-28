data:extend({
	{
		type = "technology",
		name = "petroleum-generator",
		icon = "__KS_Power__/graphics/diesel-generator-t1.png",
		icon_size = 128,
		effects = {
			{type = "unlock-recipe", recipe = "petroleum-generator"},
			{type = "unlock-recipe", recipe = "diesel-fuel"},
			{type = "unlock-recipe", recipe = "diesel-fuel-rich"}
		},
		prerequisites = {"advanced-oil-processing","engine"},
		unit =
			{
			count = 150,
			ingredients = {
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"science-pack-3", 1}
				},
			time = 60
			},
		order = "f-b-d"
	}
})