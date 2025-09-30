-- ~/.config/nvim/lua/config/options.lua - LazyVim editor options
-- Last updated: September 29, 2025
-- @see https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Prettier
vim.g.lazyvim_prettier_needs_config = true

-- Telescope picker
vim.g.lazyvim_picker = "telescope"
