return {
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				sources = {
					explorer = {
						hidden = true,
						ignored = true,
					},
					files = {
						hidden = true,
						ignored = true,
					},
				},

				-- actions = {
				-- 	["<C-s>"] = { "file_split", mode = { "n" } },
				-- },
			},
		},
	},
}
