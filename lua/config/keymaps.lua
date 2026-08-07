-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- 在 ~/.config/nvim/lua/plugins/keymaps.lua 中添加
map("n", "gh", "H", { desc = "Move to top of screen" })
map("n", "gl", "L", { desc = "Move to bottom of screen" })

-- jk 用以 esc
map({ "i", "x", "s" }, "jk", "<esc>", { desc = "Esc" })

-- 使用 <leader>v 来唤起 Visual Block 模式
vim.api.nvim_create_user_command("EnterVisualBlock", function()
	vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-v>", true, false, true), "n")
end, { desc = "Enter Visual Block mode" })

map("n", "<leader>v", "<cmd>EnterVisualBlock<CR>", { desc = "Visual Block" })

-- 分屏快捷键
-- map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "vertical split" })
-- map("n", "<leader>sh", "<cmd>split<CR>", { desc = "horizon split" })
-- map("n", "<leader>so", "<cmd>split<CR>", { desc = "windows only" })
