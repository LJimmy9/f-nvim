return {
	"nat-418/boole.nvim",
	opts = {
		mappings = {
			increment = "<leader>a",
			decrement = "<leader>x",
		},
		-- User defined loops
		additions = {
			{ "Foo", "Bar", "Baz" },
			{ "tic", "tac", "toe" },
			{ "dark", "light" },
		},
		allow_caps_additions = {
			{ "enable", "disable" },
			-- enable → disable
			-- Enable → Disable
			-- ENABLE → DISABLE
		},
	},
}
