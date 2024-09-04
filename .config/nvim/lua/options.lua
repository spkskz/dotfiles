local g = vim.g
local opt = vim.opt

-- Global
g.mapleader = " "
g.maplocalleader = " "

-- General
opt.mouse = 'a'
opt.swapfile = false
opt.completeopt = 'menuone,noinsert,noselect'
opt.cmdheight = 0
opt.title = true
opt.scrolloff = 10
opt.inccommand = 'split'

-- Neovim UI
opt.number = true
opt.showmatch = true
opt.colorcolumn = '100'
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.laststatus = 3
opt.wrap = false
opt.signcolumn = 'yes:2'

-- Tabs, indent
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- Memory, CPU
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.updatetime = 250
opt.undofile = true
opt.backup = false
opt.redrawtime = 10000

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

g.netrw_banner = 0
