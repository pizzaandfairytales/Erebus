local planet_catalogue_vulcanus = require("__space-age__.prototypes.planet.procession-catalogue-vulcanus")
require("prototype.entity.entity")
local erebus_map_gen = require("prototype.planet.erebus-map-gen")
local util = require("__core__.lualib.util")



local erebus = {
  type = "planet",
  name = "erebus",
  orbit = {
    parent = { type = "planet", name = "vulcanus" },
    distance = 1.3,
    orientation = 0.4,
    sprite = {
      type = "sprite",
      filename = "__base__/graphics/icons/stone.png",
      size = 64,
      scale = 0.5,
    },
  },
  map_gen_settings = erebus_map_gen.GetErebusMapSettings(),
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
    gravity = 0.2
  },
  surface_render_parameters = {
    shadow_opacity = 0.6,
  }
}

PlanetsLib:extend({erebus})
PlanetsLib.borrow_music(data.raw["planet"]["vulcanus"], erebus)


local erebus_surface_condition = {
  surface_conditions = {
    {type = "name", name = "erebus"}
  }
}