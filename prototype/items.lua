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
}