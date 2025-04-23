-- Map <Esc> in terminal mode to go to Normal mode
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Toggle relative numbers
vim.keymap.set("n", "<leader>rn", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative numbers" })

vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
