vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.o.splitbelow = true
vim.g.user_emmet_leader_key="<C-e>"
vim.opt.number = true          -- Show absolute line number
vim.opt.relativenumber = true -- Show relative line numbers

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Add Terminal commands within neovim
-- Open terminal in horizontal split
vim.keymap.set("n", "<leader>h", function()
  vim.cmd("split | terminal")
end, { desc = "Open horizontal terminal" })

-- Open terminal in vertical split
vim.keymap.set("n", "<leader>v", function()
  vim.cmd("vsplit | terminal")
end, { desc = "Open vertical terminal" })

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

