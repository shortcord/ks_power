data:extend({
    {
        type = "item",
        name = "burner-generator",
        icon = "__KS_Power__/graphics/icons/burner-generator-icon.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy",
        order = "b[steam-power]-c[burner-generator]",
        place_result = "burner-generator",
        stack_size = 10
    },
    {
        type = "item",
        name = "burner-generator-power",
        icon = "__KS_Power__/graphics/icons/burner-generator-icon.png",
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        order = "d-j",
        place_result = "burner-generator-power",
        stack_size = 50
    }
})