-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- lua/config/options.lua

local opt = vim.opt

-- indentation
opt.tabstop = 2 -- how many spaces a <Tab> in file counts for
opt.shiftwidth = 2 -- spaces used for each step of (auto)indent
opt.softtabstop = 2 -- backspace treats 2 spaces as a tab
opt.expandtab = true -- use spaces instead of tab characters
opt.smartindent = true -- automatically indent new lines
opt.autoindent = true -- copy indent from current line when starting new one
