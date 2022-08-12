vim.g.mapleader = ","

-- ui
-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})         -- Ctrl+a : select all
-- tabline
vim.api.nvim_set_keymap('n', '<Tab>', ':TablineBufferNext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':TablineBufferPrevious<CR>', {noremap = true})
