data:extend({
    { -- inventory item
		type = "item",
		name = "petroleum-generator",
		icon = "__KS_Power__/graphics/diesel-generator-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",
		order = "b[steam-power]-d[petroleum-generator]",
		place_result = "petroleum-generator",
		stack_size = 20,
	},
})