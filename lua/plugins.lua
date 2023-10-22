local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
-- nvim tree
'nvim-tree/nvim-web-devicons',
'nvim-tree/nvim-tree.lua',
'nvim-lualine/lualine.nvim',
'nvim-lua/plenary.nvim',
'ellisonleao/gruvbox.nvim',
'projekt0n/github-nvim-theme',
'neovim/nvim-lspconfig',
'hrsh7th/cmp-nvim-lsp',
'hrsh7th/cmp-buffer',
'hrsh7th/cmp-path',
'hrsh7th/cmp-cmdline',
'hrsh7th/nvim-cmp',
'windwp/nvim-autopairs',
'ray-x/lsp_signature.nvim',
'stevearc/aerial.nvim',
'christoomey/vim-tmux-navigator',
'ggandor/leap.nvim',
'lewis6991/gitsigns.nvim',
{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
'Vimjas/vim-python-pep8-indent',
'danymat/neogen',
{
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
},
{ "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
    require("nvim-treesitter.configs").setup {
        ensure_installed = { "c", "lua", "rust" },
        highlight = { enable = true, }
    }
end },
})
