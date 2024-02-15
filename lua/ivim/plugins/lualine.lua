return {
  "nvim-lualine/lualine.nvim",
  --  event = "User FileOpened",
  lazy = false,
  config = function()
    require("lualine").setup({
      options = {
        disabled_filetypes = {
          statusline = { "alpha" },
        },
        globalstatus = true,
        theme = "catppuccin",
      },
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
