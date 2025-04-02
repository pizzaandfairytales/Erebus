-- burner asembler combined with a metalurgical tool.
-- the default special recipe is steel.
-- from other mods it gets cobalt and tungsten carbide.

local name = "mechanical-forge"

local working_visualisations = {

    {
        always_draw = true,
        animation = {
            stripes = {
                {
                    filename = "__erebus__/graphics/entity/mechanical-forge/manufacturer-hr-animation-1.png",
                    width_in_frames = 8,
                    height_in_frames = 8
                },
                {
                    filename = "__erebus__/graphics/entity/mechanical-forge/manufacturer-hr-animation-2.png",
                    width_in_frames = 8,
                    height_in_frames = 8
                }
            },

            priority = "high",
            width = 2160 / 8,
            height = 2256 / 8,
            scale = .63,
            frame_count = 8 * 8 + 8 * 8,
            animation_speed = 1,
            run_mode = "forward",
            shift = { 0, 0 }
        }
    }, {
    always_draw = true,
    animation = {
        stripes = {
            {
                filename = "__erebus__/graphics/entity/mechanical-forge/manufacturer-hr-emission-1.png",
                width_in_frames = 8,
                height_in_frames = 8
            },
            {
                filename = "__erebus__/graphics/entity/mechanical-forge/manufacturer-hr-emission-2.png",
                width_in_frames = 8,
                height_in_frames = 8
            }
        },
        priority = "high",
        width = 2160 / 8,
        height = 2256 / 8,
        scale = .63,
        blend_mode="additive",
        frame_count = 8 * 8 + 8 * 8,
        animation_speed = 1,
        run_mode = "forward",
        shift = { 0, 0 },
        draw_as_glow = true
    }
}, {
    always_draw = true,
    animation = {
        filename = "__erebus__/graphics/entity/mechanical-forge/manufacturer-hr-shadow.png",
        priority = "high",
        scale = .63/2,
        width = 1200,
        height = 700,
        shift = { -1.02, 0.29 },
        frame_count = 1,
        line_length = 1,
        draw_as_shadow = true,
        animation_speed = 0.1
    },
}
}

data:extend({
    {
        type = "assembling-machine",
        name = name,
        icon = "__erebus__/graphics/icons/mechanical-forge.png",
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

        graphics_set = {
            idle_animation = working_visualisations[1].animation,
            working_visualisations = working_visualisations
        },
        forced_symetry = "vertical",
        working_sound = {
            sound = {
                {
                    filename = "__erebus__/sound/advanced-assembling-machine.ogg",
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
        crafting_categories = {"basic-crafting", "crafting"},
        source_inventory_size = 1,
        result_inventory_size = 2,
        crafting_speed = 1.4,
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { -2, 2 } } }
            },
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
                pipe_picture_frozen = require("__space-age__.prototypes.entity.cryogenic-plant-pictures")
                .pipe_picture_frozen,
                always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0, 2 } } }
            },
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 2, 2 } } }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { -2, -2 } } }
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
                pipe_picture_frozen = require("__space-age__.prototypes.entity.cryogenic-plant-pictures")
                .pipe_picture_frozen,
                always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0, -2 } } }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 2, -2 } } }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        energy_source =
        {
            type = "burner",
            fuel_categories = { "chemical" },
            effectivity = .6,
            --            usage_priority = "secondary-input",
            fuel_inventory_size = 1,
            emissions_per_minute = { pollution = 2 },
        },
        energy_usage = "500kW",
        ingredient_count = 4
    }, {
    default_import_location = "erebus",
    type = "item",
    name = name,
    icon = "__erebus__/graphics/icon/mechanical-forge.png",
    icon_size = 64,
    place_result = name,
    subgroup = "production-machine",
    order = "d[mechanica-forge]",
    stack_size = 50,
    scale = .63,
}, {
    type = "recipe",
    name = name,
    enabled = false,
    ingredients = {
        { type = "item", name = "steel-plate",        amount = 10 },
        { type = "item", name = "iron-gear-wheel",    amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 3 },
    },
    results = {
        { type = "item", name = "mechanical-forge", amount = 1 },
    }
}
})
