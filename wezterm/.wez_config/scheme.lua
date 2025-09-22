-- ~/.wez_config/scheme.lua - WezTerm color scheme configuration
-- Last updated: September 22, 2025

-- Setup themes path
local themes_path = os.getenv('HOME') .. '/.wez_themes/'
package.path = package.path .. ';' .. themes_path .. '?.lua'

local M = {}

-- Color settings
M.config = {
  force_reverse_video_cursor = true,
}

-- Load themes module
local themes = require('init')

-- Load theme function (now using themes module)
function M.load_theme(theme_name)
  return themes.load(theme_name)
end

-- Get available themes
function M.available_themes()
  return themes.available
end

return M

