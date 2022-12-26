-- use Space as leader
vim.g.mapleader = " "

-- Setup globals
require "globals.options"
require "globals.remaps"

require "lsp.lsp"

require "plugins.packer"

vim.opt.termguicolors = false 
require("bufferline").setup{}
