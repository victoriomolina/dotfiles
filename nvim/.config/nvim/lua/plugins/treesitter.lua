-- ~/.config/nvim/lua/plugins/treesitter.lua - Treesitter config
-- Last updated: September 26, 2025

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        -- Frontend / Web
        "html",
        "css",
        "scss",
        "javascript",
        "jsdoc",
        "typescript",
        "tsx",
        "vue",
        "markdown",
        "markdown_inline",

        -- Backend / Server
        "python",
        "php",
        "sql",
        "http",
        "perl",

        -- C / C++
        "c",
        "cpp",

        -- Scripting / Shell
        "fish",
        "lua",
        "luadoc",
        "vim",

        -- Infra / Config
        "dockerfile",
        "yaml",
        "toml",
        "json",
        "gitignore",

        -- Data
        "csv",
      },
    },
    config = function(_, opts)
      -- MDX support
      vim.filetype.add({
        extension = { mdx = "mdx" },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
