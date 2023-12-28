Keymap("n", "H", "Hzz")
Keymap("n", "L", "Lzz")

Keymap("n", "<leader>so", function()
	RunCommands({ "w", "so" })
end)

Keymap("n", "<leader>er", ":NvimTreeToggle<CR>")

Keymap("n", "<leader>gd", function()
	RunCommands({ ":normal *", ":nohl" })
end)

Keymap("n", "<leader>ss", function()
	vim.lsp.buf.format()
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

-- Open command list
Keymap("n", "<leader>cl", ":<C-f>")

Keymap("i", "<C-l>", "<Right>")
Keymap("i", "<C-h>", "<Left>")

Keymap("v", "<leader>cw", ":s///g<Left><Left><Left>")

Keymap("n", "<leader>cd", ":cd %:p:h <CR>")

Keymap({ "n", "v" }, "<leader>d", [["_d]])
