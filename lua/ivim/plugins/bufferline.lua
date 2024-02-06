return {
  "akinsho/bufferline.nvim",
  event = "User FileOpened",
  lazy = true,
  config = function()
    require("bufferline").setup()
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
