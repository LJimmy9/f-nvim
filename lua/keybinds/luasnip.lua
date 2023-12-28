Keymap({ "i", "n" }, "<c-q>", '<cmd>lua require("luasnip.extras.select_choice")()<cr>')
Keymap({ "n", "v" }, "<leader>le", require("luasnip.loaders").edit_snippet_files)
-- Keymap({ "n", "v" }, "<leader>ls", "<cmd>source ~/.config/")
