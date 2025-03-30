local erebus_map_gen = {}

erebus_map_gen.GetErebusMapSettings = function()
	local map_gen_setting = table.deepcopy(data.raw.planet.vulcanus.map_gen_settings)

	map_gen_setting.property_expression_names = {}

	map_gen_setting.autoplace_controls = {}

	map_gen_setting.territory_settings = {}

	map_gen_setting.cliff_settings = {}

	map_gen_setting.autoplace_settings["tile"] =
	{
	    settings =
	    {
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
	      ["volcanic-folds-warm"] = {},
	      ["volcanic-pumice-stones"] = {},
	      ["volcanic-cracks-hot"] = {},
	      ["volcanic-jagged-ground"] = {},
	      ["volcanic-smooth-stone"] = {},
	      ["volcanic-smooth-stone-warm"] = {},
	      ["volcanic-ash-cracks"] = {},
		  ["erebus-sulfuric-acid"] = {frequency = 0.2, size = 0.8, richness = 0.8},
	    }
	}

	map_gen_setting.autoplace_settings["decorative"] =
	{
	  settings =
	  {
	      ["vulcanus-rock-decal-large"] = {frequency = 0.15, size = 0.4, richness = 0.3},
	      ["vulcanus-crack-decal-large"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["vulcanus-crack-decal-huge-warm"] = {frequency = 0.15, size = 0.3, richness = 0.25},
	      ["vulcanus-dune-decal"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["vulcanus-sand-decal"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["calcite-stain"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["calcite-stain-small"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["sulfur-stain"] = {frequency = 0.2, size = 0.4, richness = 0.4},
	      ["sulfur-stain-small"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["sulfuric-acid-puddle"] = {frequency = 0.25, size = 0.4, richness = 0.4},
	      ["sulfuric-acid-puddle-small"] = {frequency = 0.25, size = 0.4, richness = 0.4},
	      ["crater-small"] = {frequency = 0.2, size = 0.4, richness = 0.3},
	      ["crater-large"] = {frequency = 0.15, size = 0.5, richness = 0.3},
	      ["pumice-relief-decal"] = {frequency = 0.15, size = 0.3, richness = 0.2},
	      ["small-volcanic-rock"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["medium-volcanic-rock"] = {frequency = 0.15, size = 0.3, richness = 0.3},
	      ["tiny-volcanic-rock"] = {frequency = 0.25, size = 0.3, richness = 0.3},
	      ["tiny-rock-cluster"] = {frequency = 0.15, size = 0.3, richness = 0.3},
	      ["small-sulfur-rock"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["tiny-sulfur-rock"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["sulfur-rock-cluster"] = {frequency = 0.2, size = 0.3, richness = 0.3},
	      ["waves-decal"] = {frequency = 0.1, size = 0.2, richness = 0.2},
	  }
	}

	map_gen_setting.autoplace_settings["entity"] = {
	    settings = {
	      ["huge-volcanic-rock"] = {frequency = 0.15, size = 0.5, richness = 0.4},
	      ["big-volcanic-rock"] = {frequency = 0.2, size = 0.5, richness = 0.4},
	      ["crater-cliff"] = {frequency = 0.15, size = 0.4, richness = 0.3},
	      ["vulcanus-chimney"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["vulcanus-chimney-faded"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["vulcanus-chimney-cold"] = {frequency = 0.15, size = 0.3, richness = 0.25},
	      ["vulcanus-chimney-short"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["vulcanus-chimney-truncated"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	      ["ashland-lichen-tree"] = {frequency = 0.2, size = 0.4, richness = 0.3},
	      ["ashland-lichen-tree-flaming"] = {frequency = 0.1, size = 0.3, richness = 0.2},
	    }
	}

	return map_gen_setting
end

return erebus_map_gen
