vim.g.mapleader = ","

-- tools
-- telescope
vim.api.nvim_set_keymap('n', '<Leader>fp', ':lua require("telescope").extensions.project.project{}<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fr', ':lua require("telescope").extensions.frecency.frecency{}<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fw', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope git_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fz', ':Telescope zoxide list<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>cs', ':Telescope colorscheme<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>km', ':Telescope keymaps<CR>', {noremap = true, silent = true})
-- sniprun
vim.api.nvim_set_keymap('v', '<Leader>r', ":SnipRun<CR>", {noremap = true})
-- trouble
vim.api.nvim_set_keymap('n', '<Leader>tr', ":TroubleToggle<CR>", {noremap = true, silent = true})



-- ui
-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})              -- Ctrl+n : Open file explorer
-- tabline
vim.api.nvim_set_keymap('n', '<Tab>', ':TablineBufferNext<CR>', {noremap = true})           -- Tab : Jump to next buffer file
vim.api.nvim_set_keymap('n', '<S-Tab>', ':TablineBufferPrevious<CR>', {noremap = true})     -- Shift+Tab : Jump to previous buffer file
