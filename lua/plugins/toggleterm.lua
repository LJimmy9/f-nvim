return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	opts = function()
		Keymap("t", "<esc>", [[<C-\><C-n>]])
		Keymap("n", "<leader>1", ":ToggleTerm1<CR>")
		Keymap("n", "<leader>2", ":ToggleTerm2<CR>")
		Keymap("n", "<leader>tt", ":ToggleTermToggleAll")
	end,
}
