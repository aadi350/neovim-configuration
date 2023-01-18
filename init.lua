-- -- use Space as leader
-- vim.g.mapleader = "\\"


-- Setup globals
require "globals.remaps"

require "lsp.lsp"

require "plugins.packer"

require("bufferline").setup{}

vim.g.shell = "/usr/bin/zsh"

require "globals.options"
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.vpm"},
  callback = function()
	if vim.fn.exists('g:Goyo') == 0 then
	   vim.cmd[[Goyo]]
	end
	vim.g.shiftwidth = 4
	vim.g.ft=python
  end
})

