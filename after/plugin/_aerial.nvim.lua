require('aerial').setup()
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')

require('telescope').load_extension('aerial')

vim.keymap.set('n', '<leader>fs', ':Telescope aerial<CR>', {buffer = bufnr})
vim.keymap.set('n', '<leader>m', ':AerialNavToggle<CR>', { noremap=true, silent=true })
