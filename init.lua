local isWindows = vim.fn.has("win32")

-- Configure powershell if windows
if isWindows == 1 then
	local powershell_options = {

		shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
		shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
		shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
		shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
		shellquote = "",
		shellxquote = "",
	}

	for option, value in pairs(powershell_options) do
		vim.opt[option] = value
	end
end

vim.g.mapleader = " "

require("globals")

require("options")
require("lazy-setup")
require("keybinds")

-- vim.cmd.colorscheme("tokyonight")
vim.cmd.colors("simple-dark")
vim.g.peekaboo_window = "vert bo 80new"

local ls = require("luasnip")

ls.setup({
	snip_env = {
		s = function(...)
			local snip = ls.s(...)
			-- we can't just access the global `ls_file_snippets`, since it will be
			-- resolved in the environment of the scope in which it was defined.
			table.insert(getfenv(2).ls_file_snippets, snip)
			print("called here")
		end,
		parse = function(...)
			local snip = ls.parser.parse_snippet(...)
			table.insert(getfenv(2).ls_file_snippets, snip)
			print("called here")
		end,
		-- remaining definitions.
		...,
	},
	...,
})

require("luasnip.loaders.from_lua").load({ paths = "./LuaSnip" })
