-- key remaps
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map("", "C-Up", "<C-U>TmuxNavigateUp<cr>", opts)
map("", "C-Down", "<C-U>TmuxNavigateDown<cr>", opts)
map("", "C-Right", "<C-U>TmuxNavigateRight<cr>", opts)
map("", "C-Left", "<C-U>TmuxNavigateLeft<cr>", opts)

