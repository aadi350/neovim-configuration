options = { noremap = true }

vim.api.nvim_set_keymap('n', '<Leader>f', ':GFiles<CR>', options)
-- local input_string = vim.fn.input("Search For > ")
--     if (input_string == '') then
--       return
--     end
-- require("telescope.builtin").grep_string({
--       search = input_string,
-- })
