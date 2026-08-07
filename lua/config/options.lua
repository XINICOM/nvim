-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.loadplugins = true
vim.opt.wrap = true

-- 跳转到第一个匹配
vim.opt.incsearch = true

-- 搜索大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 使用自定义的终端
vim.opt.shell = "cmd /c set PWSH_INIT_MODE=_nvim && pwsh -nologo"

-- 缩进相关
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- 视觉效果
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
