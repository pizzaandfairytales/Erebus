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
	}
    
}