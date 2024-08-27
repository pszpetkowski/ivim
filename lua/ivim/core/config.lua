-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Lines
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false
vim.opt.cursorline = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufWinEnter" }, {
  callback = function(args)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })
    if not (vim.fn.expand("%") == "" or buftype == "nofile") then
      vim.api.nvim_exec_autocmds("User", { pattern = "FileOpened" })
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client.supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true)
    end

    vim.diagnostic.config({
      underline = true,
      severity_sort = true,
    })

    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  end,
})
