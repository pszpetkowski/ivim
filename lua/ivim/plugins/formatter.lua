return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  lazy = true,
  opts = {
    -- Define formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      rust = { "rustfmt" },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
}
