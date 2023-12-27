local keymap = vim.keymap

-- Directory navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
keymap.set("n", "<leader>t", ":NvimTreeFindFileToggle<CR>", {noremap = true, silent = true})

