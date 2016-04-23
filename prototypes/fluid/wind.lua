data:extend({
    { --odd thing
        type = "fluid",
        name = "wind",
        default_temperature = 0,
        max_temperature = 100,
        heat_capacity = "1KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = "__KS_Power__/graphics/wind-fluid.png",
        order = "a[fluid]-z[wind]",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
	}
})