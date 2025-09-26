-- ~/.config/nvim/lua/plugins/smear.lua - Smear cursor animation
-- Last updated: September 26, 2025

return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
    },
  },
}
