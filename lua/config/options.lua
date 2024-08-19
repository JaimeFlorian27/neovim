local opt = vim.opt


-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
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

-- filetype assignments
vim.cmd([[autocmd! BufRead,BufNewFile *.usd set filetype=usd]])
vim.cmd([[autocmd! BufRead,BufNewFile *.usda set filetype=usd]])

vim.cmd([[autocmd! BufRead,BufNewFile *.qml set filetype=qmljs]])
