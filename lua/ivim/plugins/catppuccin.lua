core_utils = require("ivim.core.utils")

local themes = {
  dark = "catppuccin-macchiato",
  light = "catppuccin-latte",
}

return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        cmp = true,
        dashboard = true,
        mason = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        neotree = true,
        treesitter = true,
        which_key = true,
      },
    })
    local color_scheme = core_utils.get_system_color_scheme()
    vim.cmd("colorscheme " .. themes[color_scheme])
  end,
}
