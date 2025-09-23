-- ~/.wez_config/keymap.lua - WezTerm key bindings
-- Last updated: September 23, 2025

local wezterm = require('wezterm')
local act = wezterm.action
local M = {}

-- Determine modifiers based on OS
M.mod = wezterm.target_triple:find('windows') and 'CTRL' or 'CMD'
M.double_mod = 'CTRL|SHIFT'

-- Smart tmux
M.smart_split = wezterm.action_callback(function(window, pane)
  local dim = pane:get_dimensions()
  
  local split_action = dim.pixel_height > dim.pixel_width 
    and act.SplitVertical({ domain = 'CurrentPaneDomain' })
    or act.SplitHorizontal({ domain = 'CurrentPaneDomain' })
  
  window:perform_action(split_action, pane)
end)

-- Default config
M.config = {
  disable_defaults = false,
}

-- Custom keymap
M.keymap = {
  -- New tab
  { mods = M.mod, key = 't', action = act.SpawnTab('CurrentPaneDomain') },

  -- Move tabs
  { mods = M.double_mod, key = 'LeftArrow', action = act.MoveTabRelative(-1) },
  { mods = M.double_mod, key = 'RightArrow', action = act.MoveTabRelative(1) },
  { mods = M.double_mod, key = 'R', action = wezterm.action.RotatePanes("Clockwise") },

  -- TMUX splits
  { mods = M.mod, key = 'Return', action = M.smart_split },
  { mods = M.double_mod, key = '%', action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }) },
  { mods = M.double_mod, key = '"', action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },

  -- Move between panes
  { mods = M.mod, key = 'LeftArrow', action = act.ActivatePaneDirection('Left') },
  { mods = M.mod, key = 'RightArrow', action = act.ActivatePaneDirection('Right') },
  { mods = M.mod, key = 'UpArrow', action = act.ActivatePaneDirection('Up') },
  { mods = M.mod, key = 'DownArrow', action = act.ActivatePaneDirection('Down') },

  -- Clipboard
  { mods = M.mod, key = 'c', action = act.CopyTo('Clipboard') },
  { mods = M.mod, key = 'v', action = act.PasteFrom('Clipboard') },
  { mods = M.mod, key = "X", action = act.ActivateCopyMode },

  -- Scrollback
  { mods = M.mod, key = 'u', action = act.ScrollByPage(-0.5) },
  { mods = M.mod, key = 'd', action = act.ScrollByPage(0.5) },
}

return M

