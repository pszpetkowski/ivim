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
      [";"] = { "<cmd>Dashboard<cr>", "Dashboard" },
      ["c"] = { "<cmd>bd<cr>", "Close Buffer" },
      ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      ["t"] = { "<cmd>ToggleTerm<cr>", "Terminal" },
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
      ["s"] = {
        name = "Search",
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        t = { "<cmd>Telescope live_grep<cr>", "Find text" },
        T = { "<cmd>TodoTelescope<cr>", "Search TODOs" },
      },
      ["Q"] = { "<cmd>q!<cr>", "Quit (force)" },
      ["q"] = { "<cmd>q<cr>", "Quit" },
    }, { prefix = "<leader>" })
  end,
}
