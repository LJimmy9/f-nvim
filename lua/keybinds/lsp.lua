Keymap("n", "<leader>gh", vim.diagnostic.open_float)

Keymap("n", "K", vim.lsp.buf.hover)

Keymap("n", "gd", vim.lsp.buf.definition)
Keymap("n", "<leader>gd", vim.lsp.buf.declaration)

Keymap("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>")
