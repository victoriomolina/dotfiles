-- ~/.wez_config/tabbar.lua - WezTerm tab bar configuration
-- Last updated: September 22, 2025

local M = {}

-- Tab bar appearance settings
M.config = {
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = false,
  use_fancy_tab_bar = true,
}

-- Tab bar styling function
function M.get_tab_bar_style(background_image, theme_background)
  return {
    background = background_image and 'rgba(0, 0, 0, 0)' or theme_background,
  }
end

return M

