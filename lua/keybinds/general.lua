Keymap("n", "H", "Hzz")
Keymap("n", "L", "Lzz")

Keymap("n", "<leader>so", function()
	RunCommands({ "w", "so" })
end)

Keymap("n", "<leader>er", ":NvimTreeToggle<CR>")

Keymap("n", "<leader>ss", function()
	RunCommands({ "w" })
end)

Keymap({ "n", "v" }, "<leader>nh", ":nohl<CR>")

Keymap("n", "<leader>lr", ":LspRestart<CR>")
Keymap("n", "<leader>qq", ":q<CR>")
Keymap("n", "<leader>vs", ":vs<CR>")
-- Expands current tab. Close to return
Keymap("n", "<leader>vv", ":tab split<CR>")
Keymap("n", "<leader>w", "<C-w>")

Keymap("v", "J", ":m '>1<CR>gv=gv")
Keymap("v", "K", ":m '<-2<CR>gv=gv")

Keymap("n", "<leader>o", "<C-o>")
Keymap("n", "<leader>i", "<C-i>")

-- Open command list
Keymap("n", "<leader>cl", ":<C-f>")

Keymap({ "n", "v" }, "<leader>p", '"0p')

Keymap("i", "<C-l>", "<Right>")
Keymap("i", "<C-h>", "<Left>")
