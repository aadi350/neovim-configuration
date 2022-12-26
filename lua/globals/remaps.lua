options = { noremap = true }

-- Change panes on vim ctrl mappings
vim.api.nvim_set_keymap('n', '<C-h>', ':<C-U>TmuxNavigateLeft<CR>', options)
vim.api.nvim_set_keymap('n', '<C-j>', ':<C-U>TmuxNavigateDown<CR>', options)
vim.api.nvim_set_keymap('n', '<C-k>', ':<C-U>TmuxNavigateUp<CR>', options)
vim.api.nvim_set_keymap('n', '<C-l>', ':<C-U>TmuxNavigateRight<CR>', options)

-- list buffers
vim.api.nvim_set_keymap('n', '<Leader>b', ':ls<CR>:b<Space>', options)
 
-- go through buffers with Tab
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {})

--resize windows with C- arrow keys
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Up>', ':horizontal resize +3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Down>', ':horizontal resize -3<CR>', options)

--tags
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', options)

--copy to clipboard
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', {}) 

