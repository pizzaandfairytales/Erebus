local tile_collision_masks = require("__base__.prototypes.tile.tile-collision-masks")

data:extend({
  {
    type = "tile",
    name = "erebus-sulfuric-acid",
    collision_mask = tile_collision_masks.water(),
    layer = 71,
    variants = {
      main = {
        {
          picture = "__base__/graphics/terrain/water/water1.png",
          count = 1,
          size = 1,
          tint = {r = 0.9, g = 1.0, b = 0.3, a = 1}
        }
      },
      empty_transitions = true,
    },
    map_color = {r = 0.8, g = 1.0, b = 0.2},
    absorptions_per_second = {pollution = 0},
    can_be_part_of_blueprint = false,

    autoplace = {
	    probability_expression = .25,
    }
  }
})