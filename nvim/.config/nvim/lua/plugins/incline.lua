-- ~/.config/nvim/lua/plugins/incline.lua - LazyVim file names
-- Last updated: September 26, 2025

return {
  {
    "b0o/incline.nvim",
    event = "BufReadPre", -- Load this plugin before reading a buffer
    priority = 1200, -- Set the priority for loading this plugin
    opts = function()
      require("incline").setup({
        -- Window margin
        window = {
          margin = {
            vertical = 0,
            horizontal = 1,
          },
        },
        -- Hide the incline window when the cursorline is active
        hide = {
          cursorline = true,
        },
        -- Content rendering
        render = function(props)
          -- Get the filename
          local filename =
            vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename -- Indicate if the file is modified
          end

          -- Get the icon and color for the file
          local icon, color =
            require("nvim-web-devicons").get_icon_color(filename)

          -- Return the content to render
          return {
            { icon, guifg = color },
            { " " },
            { filename },
          }
        end,
      })
    end,
  },
}
