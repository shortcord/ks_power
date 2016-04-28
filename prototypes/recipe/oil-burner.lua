data:extend({
	{
		type = "recipe",
		name = "OilSteamBoiler",
		enabled = false,
		energy_required = 15,
		ingredients =
			{
				{"copper-plate", 16},
				{"steel-plate", 12},
				{"pipe", 10},
				{"concrete", 6},
			},
		result = "OilSteamBoiler"
	},

	--[[ Due to the way this mod does legacy support for steam engines ]]--
	{type = "recipe-category", name = "OilBurn"},
	{
		type = "recipe",
		name = "burn-crude-oil",
		energy_required = 5,
		enabled = "false",
		category = "OilBurn",
		ingredients =
			{
				{type="fluid", name="water", amount=300},
				{type="fluid", name="crude-oil", amount=1},
			},
		results =
			{
				{type="fluid", name="water", amount=300}
			},
		icon = "__KS_Power__/graphics/icons/burn-crude-oil.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-f"
	},
	{
		type = "recipe",
		name = "burn-heavy-oil",
		energy_required = 5,
		enabled = "false",
		category = "OilBurn",
		ingredients =
			{
				{type="fluid", name="water", amount=300},
				{type="fluid", name="heavy-oil", amount=1},
			},
		results =
			{
				{type="fluid", name="water", amount=300}
			},
		icon = "__KS_Power__/graphics/icons/burn-heavy-oil.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-g"
	},
	{
		type = "recipe",
		name = "burn-light-oil",
		energy_required = 5,
		enabled = "false",
		category = "OilBurn",
		ingredients =
			{
				{type="fluid", name="water", amount=300},
				{type="fluid", name="light-oil", amount=0.5},
			},
		results =
			{
				{type="fluid", name="water", amount=300}
			},
		icon = "__KS_Power__/graphics/icons/burn-light-oil.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-h"
	},
})