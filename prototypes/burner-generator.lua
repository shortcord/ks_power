data:extend({
  {
    type = "generator",
    name = "burner-generator-power",
    icon = "__KS_Power__/graphics/icons/burner-generator-icon.png",
    flags = {"placeable-neutral","player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "burner-generator"},
    max_health = 300,
    corpse = "small-remnants",
    effectivity = 4,
    fluid_usage_per_tick = 0.005,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-0.7, -0.6}, {0.7, 0.6}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    selectable_in_game = false,
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
       -- { position = {0, 0.8} }
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__KS_Power__/graphics/entity/blank.png",
      width = 50,
      height = 50,
      frame_count = 1,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__KS_Power__/graphics/entity/blank.png",
      width = 60,
      height = 60,
      frame_count = 1,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -1.3},
        east_position = {0, -1.3},
        deviation = {0, 0},
        frequency = 0.001,
        starting_vertical_speed = 0
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.5
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  }
})
