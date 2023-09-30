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

-- telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.1' })

-- theme
Plug 'ellisonleao/gruvbox.nvim'
Plug 'projekt0n/github-nvim-theme'

-- autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'windwp/nvim-autopairs'

-- snippets
Plug('L3MON4D3/LuaSnip', {tag = 'v2.*', ['do'] = 'make install_jsregexp'})

Plug 'ray-x/lsp_signature.nvim'

-- aerial (outliner)
Plug 'stevearc/aerial.nvim'
-- navigation
Plug 'christoomey/vim-tmux-navigator'

-- git
Plug 'lewis6991/gitsigns.nvim'

-- indentation
Plug 'lukas-reineke/indent-blankline.nvim'

-- python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'danymat/neogen'

vim.call('plug#end')
