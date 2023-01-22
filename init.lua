-- -- use Space as leader
-- vim.g.mapleader = "\\"


-- Setup globals
require "globals.remaps"

require "lsp.lsp"

require "plugins.packer"

require("bufferline").setup{}

vim.g.shell = "/usr/bin/zsh"

require "globals.options"

function save_view()
    vim.api.nvim_command('mkview')
end

vim.api.nvim_command('au BufWritePost * lua save_view()')

function load_view()
    vim.api.nvim_command('loadview')
end

vim.api.nvim_command('au BufReadPost * lua load_view()')
vim.cmd[[colorscheme tokyonight]]
