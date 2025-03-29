local name = "erebus-fluid-compressor"

data:extend({
	{
		type = "assembling-machine",
		name = name,
		icon = "__erebus__/graphics/icon/thermal-plant.png",
		icon_size = 64,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.5, result = name },
		max_health = 150,
		corpse = "medium-remnants",
		heating_energy = "0W",
		module_slots = 5,
		allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
		dying_explosion = "big-explosion",
		collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
		selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },

		graphics_set =
		{
			animation =
			{
				layers =
				{
					{
						filename = "__erebus__/graphics/entity/thermal-plant/thermal-plant-hr-animation-1.png",
						priority="high",
						width = 2640/8,
						height = 3280/8,
						frame_count = 64,
						line_length = 8,
						shift = util.by_pixel(0, 0),
						scale = 0.5,
					},
					{
						filename = "__erebus__/graphics/entity/thermal-plant/thermal-plant-hr-animation-2.png",
						priority="high",
						width = 2640/8,
						height = 820/8,
						frame_count = 16,
						line_length = 8,
						repeat_count = 4,
						shift = util.by_pixel(8.5, 3),
						scale = 0.5,
					},
					{
						filename = "__erebus__/graphics/entity/thermal-plant/thermal-plant-hr-shadow.png",
						priority="high",
						width = 900,
						height = 500,
						frame_count = 1,
						repeat_count = 64,
						shift = util.by_pixel(8.5, 3),
						scale = 0.5,
						draw_as_shadow = true,
					},
				}
			}
		},
		forced_symetry = "vertical",
		working_sound = {
			sound = {
				{
					filename = "__base__/sound/assembling-machine-t2-1.ogg",
					volume = 0.5,
				},
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
			apparent_volume = 1.5,
			max_sounds_per_type = 3,
			fade_in_ticks = 10,
			fade_out_ticks = 30,
		},
		idle_sound = { filename = "__base__/sound/idle1.ogg" },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		crafting_categories = {"erebus-fluid-compression"},
		source_inventory_size = 1,
		result_inventory_size = 2,
		crafting_speed = 1.4,
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
				always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
				pipe_covers = pipecoverspictures(),
				volume = 1000,
				pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0, 2 } } }
			},
			{
				production_type = "output",
				pipe_picture = require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
				always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
				pipe_covers = pipecoverspictures(),
				volume = 100,
				pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0, -2 } } }
			},
		},
		fluid_boxes_off_when_no_fluid_recipe = false,
		energy_source =
		{
			type = "electric",
			fuel_categories = { "chemical" },
			effectivity = .6,
			fuel_inventory_size = 1,
			emissions_per_minute = { pollution = 2 },
			usage_priority = "tertiary",
		},
		energy_usage = "500kW",
		ingredient_count = 4
	},
	{
		default_import_location = "erebus",
		type = "item",
		name = name,
		icon = "__erebus__/graphics/icon/thermal-plant.png",
		icon_size = 64,
		place_result = name,
		subgroup = "production-machine",
		order = "d[thermal-plant]",
		stack_size = 50,
		scale = .63,
	},
	{
		type = "recipe",
		name = name,
		enabled = false,
		ingredients = {
			{ type = "item", name = "steel-plate",        amount = 10 },
			{ type = "item", name = "iron-gear-wheel",    amount = 10 },
			{ type = "item", name = "electronic-circuit", amount = 3 },
		},
		results = {
			{ type = "item", name = "erebus-fluid-compressor", amount = 1 },
		}
	}
})
