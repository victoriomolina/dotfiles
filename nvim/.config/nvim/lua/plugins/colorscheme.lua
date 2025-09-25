-- ~/.config/nvim/lua/plugins/colorscheme.lua - LazyVim theme
-- Last updated: September 25, 2025

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      require("kanagawa").setup({
        transparent = true,
        theme = "dragon",
      })

      vim.cmd("colorscheme kanagawa")
    end,
  },
}
