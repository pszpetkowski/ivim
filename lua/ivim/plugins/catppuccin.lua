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
    local color_scheme = core_utils.get_system_color_scheme()
    vim.cmd("colorscheme " .. themes[color_scheme])
  end,
}
