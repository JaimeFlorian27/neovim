local opt = vim.opt


-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false


--Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '88'
opt.signcolumn = "yes"
opt.scrolloff = 10

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("_")
opt.iskeyword:append("-")
opt.mouse:append('a')
