-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- 在 ~/.config/nvim/lua/plugins/keymaps.lua 中添加
vim.keymap.set("n", "gh", "H", { desc = "Move to top of screen" })
vim.keymap.set("n", "gl", "L", { desc = "Move to bottom of screen" })
