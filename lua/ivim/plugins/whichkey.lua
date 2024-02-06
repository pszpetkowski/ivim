return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.register({
      [";"] = { "<cmd>Alpha<cr>", "Alpha" },
      ["c"] = { "<cmd>bd<cr>", "Close Buffer" },
      ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      ["l"] = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        d = { "<cmd>Mason<cr>", "Dashboard" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        l = { "<cmd>lua vim.diagnostic.open_float()<cr>", "List Diagnostics" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
      },
      ["p"] = {
        name = "Plugins",
        d = { "<cmd>Lazy<cr>", "Dashboard" },
      },
      ["Q"] = { "<cmd>q!<cr>", "Quit (force)" },
      ["q"] = { "<cmd>q<cr>", "Quit" },
    }, { prefix = "<leader>" })
  end,
}
