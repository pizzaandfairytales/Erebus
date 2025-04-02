local tile_collision_masks = require("__base__.prototypes.tile.tile-collision-masks")

local erebus_sulfuric_acid_tile_color = {r = 0.80, g = 0.70, b = 0.34, a = 1}
local erebus_sulfuric_acid_tile_color_secondary = {r = 0.94, g = 0.83, b = 0.40, a = 0.25}
local erebus_sulfuric_acid_tile_shallow_color = {r = 0.80, g = 0.76, b = 0.37, a = 1}

local erebus_sulfuric_acid_shallow_tile = table.deepcopy(data.raw["tile"]["deepwater"])
erebus_sulfuric_acid_shallow_tile.name = "erebus-sulfuric-acid-shallow"
erebus_sulfuric_acid_shallow_tile.effect_color = erebus_sulfuric_acid_tile_shallow_color
erebus_sulfuric_acid_shallow_tile.effect_color_secondary = erebus_sulfuric_acid_tile_color_secondary
erebus_sulfuric_acid_shallow_tile.fluid = "sulfuric-acid"
erebus_sulfuric_acid_shallow_tile.autoplace = {
	probability_expression = 0
}
erebus_sulfuric_acid_shallow_tile.allowed_neighbors = { 
	"volcanic-soil-dark", 
	"volcanic-soil-light",
	"volcanic-ash-soil",
	"volcanic-ash-flats",
	"volcanic-ash-light",
	"volcanic-ash-dark",
	"volcanic-cracks",
	"volcanic-cracks-warm",
	"volcanic-folds",
	"volcanic-folds-flat",
	"volcanic-folds-warm",
	"volcanic-pumice-stones",
	"volcanic-cracks-hot",
	"volcanic-jagged-ground",
	"volcanic-smooth-stone",
	"volcanic-smooth-stone-warm",
	"volcanic-ash-cracks"
}

local erebus_sulfuric_acid_tile = table.deepcopy(data.raw["tile"]["deepwater"])
erebus_sulfuric_acid_tile.name = "erebus-sulfuric-acid"
erebus_sulfuric_acid_tile.effect_color = erebus_sulfuric_acid_tile_color
erebus_sulfuric_acid_tile.effect_color_secondary = eberus_sulfuric_acid_tile_color_secondary
erebus_sulfuric_acid_tile.map_color = erebus_sulfuric_acid_tile_color
erebus_sulfuric_acid_tile.fluid = "sulfuric-acid"
erebus_sulfuric_acid_tile.allowed_neighbors = { 
	"erebus-sulfuric-acid-shallow"
}



data:extend({
	erebus_sulfuric_acid_tile, erebus_sulfuric_acid_shallow_tile
})