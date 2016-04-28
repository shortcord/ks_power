data:extend({
    {
		type = "recipe",
		name = "diesel-fuel",
		category = "chemistry",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{type="fluid", name="petroleum-gas", amount=4},
		},
		results = {
			{type="fluid", name="diesel-fuel", amount=2}
		},
		icon = "__KS_Power__/graphics/diesel-fuel-recipe-petro.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-i[diesel-fuel]"
	},
	{
		type = "recipe",
		name = "diesel-fuel-rich",
		category = "chemistry",
		enabled = false,
		energy_required = 2,
		ingredients = {
			{type="fluid", name="petroleum-gas", amount=4},
			{type="fluid", name="light-oil", amount=4}
		},
		results = {
			{type="fluid", name="diesel-fuel", amount=8}
		},
		icon = "__KS_Power__/graphics/diesel-fuel-recipe-rich.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-i[diesel-fuel-rich]"
	}
})