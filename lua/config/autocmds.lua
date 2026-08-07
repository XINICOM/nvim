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

-- 自动切换输入法
local imselect = "C:\\Program Files\\imselect\\im-select.exe"
local eng_im = "1033"
local ch_im = "2052"

vim.api.nvim_create_augroup("AutoSwitchIM", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
	group = "AutoSwitchIM",
	pattern = "*",
	callback = function()
		vim.fn.jobstart({ imselect, ch_im })
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	group = "AutoSwitchIM",
	pattern = "*",
	callback = function()
		vim.fn.jobstart({ imselect, eng_im })
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	group = "AutoSwitchIM",
	pattern = "*",
	callback = function()
		vim.fn.jobstart({ imselect, eng_im })
	end,
})

vim.api.nvim_create_autocmd("VimLeave", {
	group = "AutoSwitchIM",
	pattern = "*",
	callback = function()
		vim.fn.jobstart({ imselect, ch_im })
	end,
})

-- 进入 insert 模式时禁用相对行号，退出时恢复
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vim.opt.relativenumber = false
	end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.opt.relativenumber = true
	end,
})
