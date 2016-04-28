data:extend({
	{
		type = "technology",
		name = "coal-liquefaction-tech",
		icon = "__KS_Power__/graphics/coal-liquefaction.png",
		icon_size = 32,
		effects = {
			{type = "unlock-recipe", recipe = "coal-liquefaction"},
			{type = "unlock-recipe", recipe = "coal-from-crude"}
		},
		prerequisites = {"advanced-oil-processing"},
		unit =
			{
			count = 110,
			ingredients = {
					{"science-pack-1", 2},
					{"science-pack-2", 1},
					{"science-pack-3", 1}
				},
			time = 40
			},
		order = "f-b-d"
	}
})