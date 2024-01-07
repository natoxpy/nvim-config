vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true

-- use space for tabs and whatnot 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Bufferline keys
vim.keymap.set('n', '<leader>bp', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>bC', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>')

-- Rust Formatting 
vim.keymap.set('n', '<leader>rf', ':%!rustfmt<CR>')
