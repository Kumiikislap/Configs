vim.g.mapleader= ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n','<leader>pv', vim.cmd.Rex)

vim.keymap.set('i','jj', '<Esc>')

--Yanking to clipboard
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>yap', '\"+yap')
vim.keymap.set('v', '<leader>yap', '\"+yap')

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.api.nvim_set_keymap("n", "<leader>w", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

vim.keymap.set('n', '<C-s>', ':update<cr>', {})

vim.keymap.set('i', '<C-s>', ':update<cr>', {})

vim.keymap.set('n', '<leader>r', ':CMakeRun<cr>')

vim.keymap.set('n', '<leader>t', ':ToggleTerm<cr>')
vim.keymap.set('t', '<C-k>', '<Cmd>wincmd k<CR>') --switching to vim

vim.keymap.set({ 'n' }, '<C-k>', function()       require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })
