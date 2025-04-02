data:extend {
    {
        type = "recipe-category",
        name = "erebus-fluid-compression"
    },
}


data:extend {
	{
	    type = "recipe",
	    category = "erebus-fluid-compression",
	    name = "erebus-steam-compression",
	    enabled = true,
	    allow_productivity = false,
	    subgroup = "fluid",
	    icons =
	    {
	        {
	            icon = data.raw["fluid"]["steam"].icon,
	        },
	    },
	    energy_required = 1,
	    ingredients = {
	        { type = "fluid", name = "steam", amount = 500 }
	    },
	    results = {
	        { type = "fluid", name = "erebus-compressed-steam", amount = 250 },
	    }
	},
	{
	    type = "recipe",
	    name = "brimstone-science-pack",
	    icon = "__erebus__/graphics/icons/brimstone-science-pack.png",
		category = "chemistry",
	    enabled = false,
	    ingredients =
	    {
	      {type = "item", name = "iron-plate", amount = 1},
	      {type = "item", name = "sulfur", amount = 5},
	      {type = "fluid", name = "water", amount = 100}
	    },
	    surface_conditions =
	    {
	      {
	        property = "gravity",
	        min = 0,
	        max = 1000
	      }
	    },
	    energy_required = 10,
	    results =
	    {
	      {type = "item", name = "brimstone-science-pack", amount = 1}
	    },
	    allow_productivity = true,
	    main_product = "brimstone-science-pack"
	  },
    
}