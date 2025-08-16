vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.undodir = os.getenv('HOME') ..'/.vim/undodir'
vim.opt.undofile = true

vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'

vim.opt.updatetime = 150
vim.opt.timeoutlen = 1000

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.scrolloff = 10
vim.opt.cursorline = true
