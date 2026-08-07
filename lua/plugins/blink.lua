return {
	{
		"saghen/blink.cmp",
		opts = {
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				per_filetype = {
					markdown = { "lsp", "path", "snippets" },
				},
			},
		},
	},
}
