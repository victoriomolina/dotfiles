-- ~/.wez_config/init.lua - WezTerm config loader
-- Last updated: September 22, 2025

local config_path = os.getenv('HOME') .. '/.wez_config/'

local M = {}

-- Load all configuration modules
M.background = dofile(config_path .. 'background.lua')
M.fontbook = dofile(config_path .. 'fontbook.lua')
M.layout = dofile(config_path .. 'layout.lua')
M.performance = dofile(config_path .. 'performance.lua')
M.tabbar = dofile(config_path .. 'tabbar.lua')
M.scheme = dofile(config_path .. 'scheme.lua')

return M

