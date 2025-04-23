-- ~/.config/nvim/lua/custom/nvim-tree.lua

local M = {}

M.setup = function()
  require("nvim-tree").setup({
    git = {
      enable = true,
      ignore = false,  -- Show .gitignored files
    },
    filters = {
      dotfiles = false, -- Show hidden files (starting with .)
    },
    view = {
      width = 35,
      side = "left",
    },
    renderer = {
      highlight_git = true,
    },
  })
end

return M
