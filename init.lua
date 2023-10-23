-- vim options
vim.opt.relativenumber = true
vim.opt.autochdir = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- assigning filetypes
vim.cmd([[autocmd! BufRead,BufNewFile *.usd set filetype=usd]])
vim.cmd([[autocmd! BufRead,BufNewFile *.usda set filetype=usd]])

vim.cmd([[autocmd! BufRead,BufNewFile *.vert set filetype=glsl]])
vim.cmd([[autocmd! BufRead,BufNewFile *.frag set filetype=glsl]])
vim.cmd([[autocmd! BufRead,BufNewFile *.tesc set filetype=glsl]])
vim.cmd([[autocmd! BufRead,BufNewFile *.tese set filetype=glsl]])
vim.cmd([[autocmd! BufRead,BufNewFile *.geom set filetype=glsl]])
vim.cmd([[autocmd! BufRead,BufNewFile *.comp set filetype=glsl]])

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
vim.cmd [[colorscheme rose-pine]]

