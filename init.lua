-- vim options
vim.opt.number = true
vim.opt.autochdir = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- assigning filetypes
vim.cmd([[autocmd! BufRead,BufNewFile *.usd set filetype=usd]])
vim.cmd([[autocmd! BufRead,BufNewFile *.usda set filetype=usd]])

-- key remaps
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map("", ",", "<Nop>", opts)
vim.g.mapleader = ','
vim.g.maplocalleader = ','


-- plugins
require("plugins")

-- theme
vim.o.background = "dark"
vim.cmd [[colorscheme github_dark_colorblind]]

