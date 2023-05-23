-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- key remaps
local map = vim.api.nvim_set_keymap
options = { noremap = true }
map( 'n', "<leader>e", ':NvimTreeToggle<cr>', options)
