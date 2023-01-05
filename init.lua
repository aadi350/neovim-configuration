-- -- use Space as leader
-- vim.g.mapleader = "\\"


-- Setup globals
require "globals.remaps"
require "globals.options"

require "lsp.lsp"

require "plugins.packer"

require("bufferline").setup{}

vim.g.shell = "/usr/bin/zsh"
