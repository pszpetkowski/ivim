return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>;", "<cmd>Dashboard<cr>", desc = "Dashboard" },
      { "<leader>c", "<cmd>bd<cr>", desc = "Close Buffer" },
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
      { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Terminal" },
      { "<leader>l", group = "LSP" },
      { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
      { "<leader>ld", "<cmd>Mason<cr>", desc = "Dashboard" },
      { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
      { "<leader>ll", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "List Diagnostics" },
      { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
      { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
      { "<leader>p", group = "Plugins" },
      { "<leader>pd", "<cmd>Lazy<cr>", desc = "Dashboard" },
      { "<leader>s", group = "Search" },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Find text" },
      { "<leader>sT", "<cmd>TodoTelescope<cr>", desc = "Search TODOs" },
      {
        mode = { "n", "v" },
        { "<leader>Q", "<cmd>q!<cr>", desc = "Quit (force)" },
        { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
      }
    })
  end,
}
