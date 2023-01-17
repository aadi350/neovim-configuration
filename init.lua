-- -- use Space as leader
-- vim.g.mapleader = "\\"


-- Setup globals
require "globals.remaps"
require "globals.options"

require "lsp.lsp"

require "plugins.packer"

require("bufferline").setup{}

vim.g.shell = "/usr/bin/zsh"

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.vpm"},
  callback = function()
    vim.cmd[[Goyo]]
	vim.g.shiftwidth = 4
	vim.g.ft=python
  end
})
