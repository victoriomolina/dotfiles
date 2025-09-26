-- ~/.config/nvim/lua/plugins/noice.lua - Folke's noice.nvim config
-- Last updated: September 26, 2025

return {
  -- Noice
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
  -- Notification timeout
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 7500,
    },
  },
}
