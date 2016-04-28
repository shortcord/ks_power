data:extend({
	{
		type = "recipe",
		name = "coal-liquefaction",
		category = "chemistry",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{type="item", name="coal", amount=2},
			{type="fluid", name="water", amount=2}
		},
		results = {
			{type="fluid", name="crude-oil", amount=1}
		},
		icon = "__KS_Power__/graphics/coal-liquefaction.png",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-i[diesel-fuel]"
	}
})