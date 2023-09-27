return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = function()
		require("nvim-autopairs").setup({})
	end, -- this is equalent to setup({}) function
}
