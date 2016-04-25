data:extend({
    {
    type = "boiler",
    name = "burner-generator",
    icon = "__KS_Power__/graphics/icons/burner-generator-icon.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "burner-generator"},
    fast_replaceable_group = "Burner_Generator",
    max_health = 125,
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -0.6}, {1.2, 0.6}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_box = {
      base_area = 10.0,
      pipe_connections = {}
    },
    energy_consumption = "120kW",
    burner = {
      effectivity = 0.4,
      fuel_inventory_size = 2,
      emissions = 0.1 / 10,
      smoke = {
        {
          name = "smoke",
          deviation = {0, 0},
          position = {0.1, -1.3},
          frequency = 1
        }
      }
    },
    structure = {
        left =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        down =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        left_down =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        right_down =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        left_up =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        right_up =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        t_down =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        },
        t_up =
        {
            filename = "__KS_Power__/graphics/entity/burner-generator.png",
            priority = "extra-high",
            width = 121,
            height = 80,
            shift = {0.6,0}
        }
    },
    fire = {
        down =
        {
            filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
            priority = "extra-high",
            width = 11,
            height = 11,
            frame_count = 32,
            line_length = 8,
            shift = {0, -(0.28125 -1)}
        },
        left =
        {
            filename = "__base__/graphics/entity/boiler/boiler-fire-left.png",
            priority = "extra-high",
            width = 5,
            height = 7,
            frame_count = 14,
            shift = {-0.4375, -0.09375}
        },
        right =
        {
            filename = "__base__/graphics/entity/boiler/boiler-fire-right.png",
            priority = "extra-high",
            width = 6,
            height = 9,
            frame_count = 14,
            shift = {0.46875, -0.0625}
        }
    },
    burning_cooldown = 20,
    pictures = pipepictures()
  },
})