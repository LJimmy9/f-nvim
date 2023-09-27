local builtin = require("telescope.builtin")
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

vim.keymap.set("n", "<leader>fj", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		-- winblend = 10,
		previewer = false,
	}))
end)
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- vim.keymap.set("n", "<leader>e", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

Keymap("n", "<leader>gh", vim.diagnostic.open_float)

Keymap("n", "K", vim.lsp.buf.hover)

Keymap("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>")
