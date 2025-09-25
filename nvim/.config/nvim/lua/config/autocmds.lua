-- ~/.config/nvim/lua/config/autocmds.lua - LazyVim's automatic commands
-- Last updated: September 25, 2025
-- @see https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Disable concelleavel
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "*" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})
