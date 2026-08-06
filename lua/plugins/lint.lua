return {
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters = {
				-- 注意：LazyVim 现在默认使用 markdownlint-cli2
				["markdownlint-cli2"] = {
					args = { "--disable", "MD025", "--" },
				},
			},
		},
	},
}
