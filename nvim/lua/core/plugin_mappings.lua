vim.g.mapleader = ","

-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', '<Leader>co', ':Copilot<CR><C-w>L', {noremap = true, silent = true})

-- editor
-- nvim-comment
vim.api.nvim_set_keymap('n', '<Leader>/', ':CommentToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<Leader>/', ':CommentToggle<CR>', {noremap = true, silent = true})
-- toggleterm
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', {noremap = true, silent = true})
-- diffview
vim.api.nvim_set_keymap('n', '<Leader>dv', ':DiffviewOpen<CR>', {noremap = true, silent = true})


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
vim.api.nvim_set_keymap('n', '<Leader>ra', "ggVG:SnipRun<CR>`.", {noremap = true})
-- trouble
vim.api.nvim_set_keymap('n', '<Leader>tr', ":TroubleToggle<CR>", {noremap = true, silent = true})


-- ui
-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})              -- Ctrl+n : Open file explorer
-- tabline
vim.api.nvim_set_keymap('n', '<Tab>', ':TablineBufferNext<CR>', {noremap = true})           -- Tab : Jump to next buffer file
vim.api.nvim_set_keymap('n', '<S-Tab>', ':TablineBufferPrevious<CR>', {noremap = true})     -- Shift+Tab : Jump to previous buffer file


-- other
vim.api.nvim_set_keymap('v', '<Leader>cb', ':y+<CR>', {noremap = true})     -- Shift+Tab : Jump to previous buffer file
