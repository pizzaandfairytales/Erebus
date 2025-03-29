local planet_map_gen = {}

planet_map_gen.erebus = function()
  return {
    width = 32 * 30,
    height = 32 * 30,
    terrain_segmentation = 1,
    water = 0,

    property_expression_names = {
      elevation = "vulcanus_elevation",
      temperature = "vulcanus_temperature",
      moisture = "vulcanus_moisture",
      aux = "aux_basic",
      cliffiness = "vulcanus_cliffiness",
      cliff_elevation = "vulcanus_elevation_offset",
    },

    noise_expressions = {
      elevation = "vulcanus_elevation",
      temperature = "vulcanus_temperature",
      moisture = "vulcanus_moisture",
      aux = "aux_basic",
    },

    cliff_settings = {
      name = "vulcanus_cliff",
      cliff_elevation_0 = 0.1,
      cliff_elevation_interval = 0.1,
      cliff_smoothing = 0.5,
      richness = 0.95,
    },

    autoplace_controls = {
      ["enemy-base"] = { frequency = 0.5, size = 1, richness = 1 },
      ["sulfuric_acid_geyser"] = { frequency = 1.2, size = 1.0, richness = 1.1 },
      ["vulcanus_volcanism"] = { frequency = 0.8, size = 0.8, richness = 0.8 },
    },

    autoplace_settings = {
      tile = {
        treat_missing_as_default = false,
        settings = {
          ["volcanic-soil-dark"] = {},
          ["volcanic-soil-light"] = {},
          ["volcanic-ash-soil"] = {},
          ["volcanic-ash-flats"] = {},
          ["volcanic-ash-light"] = {},
          ["volcanic-ash-dark"] = {},
          ["volcanic-cracks"] = {},
          ["volcanic-cracks-warm"] = {},
          ["volcanic-folds"] = {},
          ["volcanic-folds-flat"] = {},
          ["lava"] = {},
          ["lava-hot"] = {},
          ["volcanic-folds-warm"] = {},
          ["volcanic-pumice-stones"] = {},
          ["volcanic-cracks-hot"] = {},
          ["volcanic-jagged-ground"] = {},
          ["volcanic-smooth-stone"] = {},
          ["volcanic-smooth-stone-warm"] = {},
          ["volcanic-ash-cracks"] = {},
        },
      },
      decorative = {
        treat_missing_as_default = false,
        settings = {
          ["vulcanus-rock-decal-large"] = {},
          ["vulcanus-crack-decal-large"] = {},
          ["vulcanus-sand-decal"] = {},
          ["vulcanus-lava-fire"] = {},
          ["sulfur-stain"] = {},
          ["sulfur-stain-small"] = {},
          ["sulfuric-acid-puddle"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
        },
      },
      entity = {
        treat_missing_as_default = false,
        settings = {
          ["sulfuric-acid-geyser"] = {},
          ["vulcanus-chimney"] = {},
          ["vulcanus-chimney-cold"] = {},
        },
      },
    },
  }
end

return planet_map_gen
