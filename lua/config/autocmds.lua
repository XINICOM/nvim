-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 定义一个专门用于 Markdown 拼写控制的自动命令组
vim.api.nvim_create_augroup("markdown_spell_control", { clear = true })

-- 当进入 Markdown 文件时，关闭拼写检查
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.md", -- 你也可以添加其他扩展名，如 *.markdown
	group = "markdown_spell_control",
	callback = function()
		vim.opt_local.spell = false
	end,
})

-- 当离开 Markdown 文件时，恢复拼写检查（如果你希望在其他文件中启用）
-- 如果你想保留全局拼写检查，这个步骤是必要的
vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*.md",
	group = "markdown_spell_control",
	callback = function()
		-- 这里恢复为你的默认设置，如果你不确定，可以设为 true
		-- 但更稳妥的做法是恢复为全局设置，而非写死
		vim.opt_local.spell = vim.opt.spell:get()
	end,
})
