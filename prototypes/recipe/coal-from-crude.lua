data:extend({
	{
		type = "recipe",
		name = "coal-from-crude",
		category = "chemistry",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{type="fluid", name="crude-oil", amount=1}
		},
		results = {
			{type="item", name="coal", amount=1}
		},
		icon = "__KS_Power__/graphics/coal-from-crude.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-i[diesel-fuel]"
	}
})