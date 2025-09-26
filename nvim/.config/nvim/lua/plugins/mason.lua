-- ~/.config/nvim/lua/plugins/mason.lua - Mason configuration
-- Last updated: September 26, 2025

return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "python-lsp-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "css-lsp",
        "selene",
        "stylua",
        "luacheck",
        "shellcheck",
        "shfmt",
      })
    end,
  },
}
