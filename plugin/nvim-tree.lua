require('nvim-tree').setup({
		view = {
				relativenumber = false
		}
})

vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle <CR>', { noremap = true})
