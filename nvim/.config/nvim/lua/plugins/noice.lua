-- ~/.config/nvim/lua/plugins/noice.lua - Folke's noice.nvim config
-- Last updated: September 25, 2025

return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
}
