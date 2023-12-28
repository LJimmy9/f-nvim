local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("rs", {
	s("String", {
		i(1, "String::new()"),
	}),
})
