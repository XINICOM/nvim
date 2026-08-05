return {
	{
		"saghen/blink.cmp",
		opts = function(_, opts)
			opts.sources.default = function()
				if vim.bo.filetype == "markdown" then
					return { "lsp", "path", "snippets" }
				else
					return { "lsp", "path", "snippets", "buffer" }
				end
			end
		end,
	},
}
