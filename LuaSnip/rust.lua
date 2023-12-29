local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("rust", {
	s("new String", fmt("let {} = String::new();", { i(1, "str") })),
})
