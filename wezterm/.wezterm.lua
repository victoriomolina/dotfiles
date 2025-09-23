-- ~/.wezterm.lua - WezTerm configuration file
-- Last updated: September 23, 2025

-- Imports
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local cfg = dofile(os.getenv("HOME") .. "/.wez_config/init.lua")

-- Load theme using scheme module
local theme = cfg.scheme.load_theme("kanagawa-dragon")

-- Performance and rendering
config.max_fps = cfg.performance.config.max_fps
config.animation_fps = cfg.performance.config.animation_fps
config.cursor_blink_rate = cfg.performance.config.cursor_blink_rate
config.prefer_egl = cfg.performance.config.prefer_egl
config.scrollback_lines = cfg.performance.config.scrollback_lines

-- Terminal window (using layout config)
config.initial_cols = cfg.layout.config.initial_cols
config.initial_rows = cfg.layout.config.initial_rows
config.enable_scroll_bar = cfg.layout.config.enable_scroll_bar
config.window_decorations = cfg.layout.config.decorations
config.window_close_confirmation = cfg.layout.config.close_confirmation
config.window_padding = cfg.layout.config.padding

-- Background styling
config.window_background_image = cfg.background.bg_image
config.window_background_opacity = cfg.background.config.opacity
config.macos_window_background_blur = cfg.background.config.blur

-- Font configuration
config.font = wezterm.font_with_fallback(cfg.fontbook.font_fallback)
config.font_size = cfg.fontbook.config.size
config.line_height = cfg.fontbook.config.line_height

-- Color scheme
-- @see https://wezterm.org/colorschemes/index.html
config.colors = theme
config.force_reverse_video_cursor = cfg.scheme.config.force_reverse_video_cursor

-- Tab bar appearance
config.enable_tab_bar = cfg.tabbar.config.enable_tab_bar
config.hide_tab_bar_if_only_one_tab = cfg.tabbar.config.hide_tab_bar_if_only_one_tab
config.show_tab_index_in_tab_bar = cfg.tabbar.config.show_tab_index_in_tab_bar
config.use_fancy_tab_bar = cfg.tabbar.config.use_fancy_tab_bar

-- Key binding
-- @see https://wezterm.org/config/keys.html
config.disable_default_key_bindings = cfg.keys.config.disable_defaults
config.keys = cfg.keys.keymap

-- Initialize layout
cfg.layout.setup_gui_startup()

return config
