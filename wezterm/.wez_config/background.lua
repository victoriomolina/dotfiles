-- ~/.wez_utils/background.lua - WezTerm background configuration
-- Last updated: September 22, 2025

local M = {}

-- Background image path
M.bg_image = os.getenv("HOME") .. '/.wez_assets/wallpapers/bg-blurred.png'

-- Background configuration
M.config = {
  opacity = 0.8,
  blur = 20,
}

return M

