-- Normal mode
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})       -- Ctrl+h : move to left window
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})       -- Ctrl+l : move to right window
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})       -- Ctrl+j : move to bottom window
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})       -- Ctrl+k : move to top window
vim.api.nvim_set_keymap('n', '<C-a>', 'GVgg', {noremap = true})         -- Ctrl+a : select all
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {})                     -- Ctrl+s : save
vim.api.nvim_set_keymap('n', '<C-q>', ':wq<CR>', {})                    -- Ctrl+q : save and quit
vim.api.nvim_set_keymap('n', '<C-c>', ':bdelete<CR>', {})               -- Ctrl+c : close current tab


-- Insert mode
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {})                -- Ctrl+s : save
vim.api.nvim_set_keymap('i', '<C-q>', '<Esc>:wq<CR>', {})               -- Ctrl+q : save and quit

-- Command mode
vim.api.nvim_set_keymap('c', '<C-h>', '<Left>', {})                     -- Ctrl+h : move left
vim.api.nvim_set_keymap('c', '<C-l>', '<Right>', {})                    -- Ctrl+l : move right
vim.api.nvim_set_keymap('c', '<C-j>', '<Home>', {})                     -- Ctrl+j : move left
vim.api.nvim_set_keymap('c', '<C-k>', '<End>', {})                      -- Ctrl+k : move to head
vim.api.nvim_set_keymap('c', '<C-d>', '<BS>', {})                       -- Ctrl+d : move to tail


