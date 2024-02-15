return {
  "nvim-treesitter/nvim-treesitter",
  event = "User FileOpened",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
    })
  end,
}
