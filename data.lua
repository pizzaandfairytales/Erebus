local planet_catalogue_vulcanus = require("__space-age__.prototypes.planet.procession-catalogue-vulcanus")


local erebus = {
    type = "planet",
    name = "erebus",
    orbit = {
      parent = {
        type = "planet",
        name = "vulcanus",
      },
      distance = 1.3,
      orientation = 0.4,
      sprite = {
        type = "sprite",
        filename = "__base__/graphics/icons/stone.png",
        size = 64,
        scale = 0.5,
      },
    },
    map_gen_settings = table.deepcopy(data.raw.planet["vulcanus"].map_gen_settings),
    subgroup = "satellites",
    label_orientation = 0.55,
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64,
    starmap_icon = "__base__/graphics/icons/stone.png",
    starmap_icon_size = 64,
    gravity_pull = 10,
    draw_orbit = false,
    magnitude = 0.5,
    order = "d[vulcanus]-a[erebus]",
    pollutant_type = nil,
    solar_power_in_space = 120,
    platform_procession_set = {
      arrival = { "planet-to-platform-b" },
      departure = { "platform-to-planet-a" },
    },
    planet_procession_set = {
      arrival = { "platform-to-planet-b" },
      departure = { "planet-to-platform-a" },
    },
    procession_graphic_catalogue = planet_catalogue_vulcanus,
    surface_properties = {
      ["day-night-cycle"] = 5 * 60 * 60,
      ["magnetic-field"] = 120,
      ["solar-power"] = 120,
      pressure = 5,
      gravity = 0.2,
      temperature = 251,
    },
    surface_render_parameters = {
      shadow_opacity = 0.6,
    }
  }

PlanetsLib:extend({erebus})

PlanetsLib.borrow_music(data.raw["planet"]["vulcanus"], erebus)

data:extend {{
    type = "technology",
    name = "planet-discovery-erebus",
    icons = PlanetsLib.technology_icon_constant_planet("__base__/graphics/icons/stone.png", 64),
    icon_size = 64,
    essential = true,
    localised_description = {"space-location-description.erebus"},
    effects = {
        {
            type = "unlock-space-location",
            space_location = "erebus",
            use_icon_overlay_constant = true
        }
    },
    prerequisites = {
        "space-science-pack",
    },
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 45,
    },
    order = "ea[erebus]",
}}
