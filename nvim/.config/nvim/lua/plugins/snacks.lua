-- ~/.config/nvim/lua/plugins/snacks.lua - LazyVim Snacks
-- Last updated: September 25, 2025

return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- Hidden files
        ignored = true, -- .gitignore files
      },
    },
  },
}
