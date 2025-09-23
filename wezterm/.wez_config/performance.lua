-- ~/.wez_config/performance.lua - WezTerm performance configuration
-- Last updated: September 22, 2025

local M = {}

-- Performance and rendering settings
M.config = {
  max_fps = 240,
  animation_fps = 60,
  cursor_blink_rate = 250,
  prefer_egl = true,
  scrollback_lines = 10000,
}

return M

