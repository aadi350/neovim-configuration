require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent"
  },
  on_highlights = function(hl, colors)
    hl.CursorLineNr = {
      fg = colors.yellow
    }
  end
})

require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}

vim.cmd('colorscheme tokyonight')
