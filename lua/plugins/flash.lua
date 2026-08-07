return {
	{
		"folke/flash.nvim",
		keys = {
			{
				"gn",
				function()
					require("flash").treesitter()
				end,
				desc = "Incremental Selection",
			},
		},
	},
}
