return {
	{
		"saghen/blink.cmp",
		opts = function(_, opts)
			--     opts.sources.default = function()
			--         if vim.bo.filetype == "markdown" then
			--             return { "lsp", "path", "snippets" }
			--         else
			--             return { "lsp", "path", "snippets", "buffer" }
			--         end
			--     end
			if vim.bo.filetype == "markdown" then
				opts.sources.default = { "lsp", "path", "snippets" }
			else
				opts.sources.default = { "lsp", "path", "snippets", "buffer" }
			end
		end,
	},
}
