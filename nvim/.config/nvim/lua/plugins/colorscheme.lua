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
