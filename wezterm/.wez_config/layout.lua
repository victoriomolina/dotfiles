-- ~/.wez_utils/layout.lua - WezTerm layout configuration
-- Last updated: September 22, 2025

local wezterm = require('wezterm')

local M = {}

-- Window configuration
M.config = {
  initial_cols = 125,
  initial_rows = 30,
  enable_scroll_bar = false,
  decorations = 'RESIZE',
  close_confirmation = 'NeverPrompt',
  padding = {
    left = 0,
    right = 0,
    top = 10,
    bottom = 0,
  },
}

-- Setup window layout on startup
function M.setup_gui_startup()
  wezterm.on('gui-startup', function(cmd)
    local screen = wezterm.gui.screens().active
    local ratio = 0.75
    local width, height = screen.width * ratio, screen.height * ratio

    local tab, pane, window = wezterm.mux.spawn_window {
      position = {
        x = (screen.width - width) / 2,
        y = (screen.height - height) / 2,
        origin = 'ActiveScreen',
      },
    }

    window:gui_window():set_inner_size(width, height)
  end)
end

return M

