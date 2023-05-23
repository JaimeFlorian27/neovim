-- vim options
vim.opt.number = true

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
vim.cmd [[colorscheme gruvbox]]

