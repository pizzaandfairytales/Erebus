data:extend {
	{
	    type = "technology",
	    name = "planet-discovery-erebus",
	    icons = util.technology_icon_constant_planet("__space-age__/graphics/technology/vulcanus.png"),
	    icon_size = 256,
	    essential = true,
	    effects =
	    {
	      {
	        type = "unlock-space-location",
	        space_location = "erebus",
	        use_icon_overlay_constant = true
	      }
	    },
	    prerequisites = {"metallurgic-science-pack"},
	    unit =
	    {
	      count = 3000,
	      ingredients =
	      {
	        {"automation-science-pack", 1},
	        {"logistic-science-pack", 1},
	        {"chemical-science-pack", 1},
	        {"production-science-pack", 1},
	        {"utility-science-pack", 1},
	        {"space-science-pack", 1},
	        {"metallurgic-science-pack", 1}
	      },
	      time = 60
	    }
	  },
}
