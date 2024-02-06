local map = vim.api.nvim_set_keymap

-- BufferLine
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { noremap = true, silent = true })
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true, silent = true })
