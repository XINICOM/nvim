-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.loadplugins = true
vim.opt.wrap = true
vim.opt.shell = "cmd /c set PWSH_INIT_MODE=_nvim && pwsh -nologo"

vim.opt.tabstop = 4 -- 一个 <Tab> 等于 4 个空格
vim.opt.shiftwidth = 4 -- 缩进级别（按 >> 或 << 时移动的空格数）
vim.opt.softtabstop = 4 -- 输入 <Tab> 时的空格数
vim.opt.expandtab = true -- 用空格代替 tab 字符
