data:extend {
	{
			type = "fluid",
		    name = "erebus-compressed-steam",
		    subgroup = "fluid",
		    default_temperature = 15,
		    max_temperature = 5000,
		    heat_capacity = "0.2kJ",
		    icon = "__base__/graphics/icons/fluid/steam.png",
		    base_color = {0.5, 0.5, 0.5},
		    flow_color = {1.0, 1.0, 1.0},
		    order = "a[fluid]-a[water]-b[steam]",
		    gas_temperature = 15,
		    auto_barrel = false
		},
		{
		    type = "tool",
		    name = "brimstone-science-pack",
		    localised_description = {"item-description.science-pack"},
		    icon = "__erebus__/graphics/icons/brimstone-science-pack.png",
		    subgroup = "science-pack",
		    color_hint = { text = "M" },
		    order = "h",
		    stack_size = 200,
		    default_import_location = "erebus",
		    weight = 1*kg,
		    durability = 1,
		    durability_description_key = "description.science-pack-remaining-amount-key",
		    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
		    durability_description_value = "description.science-pack-remaining-amount-value",
		    random_tint_color = item_tints.bluish_science
		  },
}