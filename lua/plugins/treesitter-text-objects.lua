local keys = {
	func = "f",
	cl = "c",
	param = "p",
	block = "b",
	cond = "i",
}

return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				lsp_interop = {
					enable = true,
					border = "none",
					floating_preview_opts = {},
					peek_definition_code = {
						["<leader>da" .. keys.func] = "@function.outer",
						["<leader>da" .. keys.cl] = "@class.outer",
						["<leader>da" .. keys.param] = "@parameter.outer",
						["<leader>da" .. keys.cond] = "@conditional.outer",
					},
				},
				select = {
					enable = true,

					-- Automatically jump forward to textobj, similar to targets.vim
					lookahead = true,

					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment region" },
						["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment region" },

						["a" .. keys.param] = {
							query = "@parameter.outer",
							desc = "Select outer part of a parameter/field region",
						},

						["i" .. keys.param] = {
							query = "@parameter.inner",
							desc = "Select inner part of a parameter/field region",
						},

						["a" .. keys.cond] = {
							query = "@conditional.outer",
							desc = "Select outer part of a conditional region",
						},
						["i" .. keys.cond] = {
							query = "@conditional.inner",
							desc = "Select inner part of a conditional region",
						},

						["al"] = { query = "@loop.outer", desc = "Select outer part of a loop region" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of a loop region" },

						["a" .. keys.block] = { query = "@block.outer", desc = "Select outer part of a block region" }, -- overrides default text object block of parenthesis to parenthesis
						["i" .. keys.block] = { query = "@block.inner", desc = "Select inner part of a block region" }, -- overrides default text object block of parenthesis to parenthesis

						["a" .. keys.func] = {
							query = "@function.outer",
							desc = "Select outer part of a function region",
						},
						["i" .. keys.func] = {
							query = "@function.inner",
							desc = "Select inner part of a function region",
						},

						["a" .. keys.cl] = { query = "@class.outer", desc = "Select outer part of a class region" },
						["i" .. keys.cl] = { query = "@class.inner", desc = "Select inner part of a class region" },
					},
					include_surrounding_whitespace = true,
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>m" .. keys.param] = "@parameter.inner", -- swap object under cursor with next
						["<leader>m" .. keys.func] = "@function.outer", -- swap object under cursor with next
						["<leader>m" .. keys.cond] = "@conditional.outer", -- swap object under cursor with next
					},
					swap_previous = {
						["<leader>m" .. string.upper(keys.param)] = "@parameter.inner", -- swap object under cursor with previous
						["<leader>m" .. string.upper(keys.func)] = "@function.outer", -- swap object under cursor with next
						["<leader>m" .. string.upper(keys.cond)] = "@conditional.outer", -- swap object under cursor with next
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["[" .. keys.func] = "@function.outer",
						["[" .. keys.param] = "@parameter.outer",
						["[" .. keys.cond] = "@conditional.outer",
						["[" .. keys.block] = { query = "@block.inner", desc = "Select inner part of a block region" },
						["[" .. keys.cl] = { query = "@class.outer", desc = "Next class start" },
					},
				},
			},
		})
	end,
}
