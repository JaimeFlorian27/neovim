local Plug = vim.fn['plug#']

vim.call('plug#begin') 

-- nvim tree
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'

-- treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})

-- lualine
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.1' })

-- theme
Plug 'ellisonleao/gruvbox.nvim'

-- autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'windwp/nvim-autopairs'

vim.call('plug#end')
