-- ~/.wez_themes/init.lua - WezTerm themes loader
-- Last updated: September 22, 2025

-- Setup theme path
local themes_path = os.getenv('HOME') .. '/.wez_themes/'
package.path = package.path .. ';' .. themes_path .. '?.lua'

local M = {}

-- Available themes
M.available = {
  'cyberdream',
  -- Add more themes here as you create them
}

-- Load theme function
function M.load(theme_name)
  theme_name = theme_name or 'cyberdream'
  
  -- Validate theme exists
  local theme_exists = false
  for _, available_theme in ipairs(M.available) do
    if available_theme == theme_name then
      theme_exists = true
      break
    end
  end
  
  if not theme_exists then
    error('Theme "' .. theme_name .. '" not found. Available themes: ' .. table.concat(M.available, ', '))
  end
  
  return require(theme_name)
end

-- Quick access to specific themes
M.cyberdream = function() return M.load('cyberdream') end

return M

