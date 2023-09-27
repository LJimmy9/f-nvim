Keymap("n", "H", "Hzz")
Keymap("n", "L", "Lzz")

Keymap("n", "<leader>so", function()
	RunCommands({ "w", "so" })
end)
Keymap("n", "<leader>er", function()
	RunCommands({ "E" })
end)

Keymap("n", "<leader>ss", function()
	RunCommands({ "w" })
end)

Keymap("n", "<leader>lr", ":LspRestart<CR>")
Keymap("n", "<leader>qq", ":q<CR>")
Keymap("n", "<leader>vs", ":vs<CR>")
-- Expands current tab. Close to return
Keymap("n", "<leader>vv", ":tab split<CR>")
Keymap("n", "<leader>ww", "<C-w>w")

Keymap("v", "J", ":m '>1<CR>gv=gv")
Keymap("v", "K", ":m '<-2<CR>gv=gv")
