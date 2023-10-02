local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local f = ls.function_node

local same = function(index)
	return f(function(arg)
		-- do something
		print(vim.inspect(arg[0]), vim.inspect(arg[1]))
		return arg[1]
	end, { index })
end

local months = {
	"January",
	"February",
	"March",
	"April",
	"May",
	"June",
	"July",
	"August",
	"September",
	"October",
	"November",
	"December",
}

local colors = {
	"Red",
	"Green",
	"Blue",
	"White",
	"Black",
}

local function makeChoices(choices)
	local res = {}
	for _key, value in pairs(choices) do
		table.insert(res, t(value))
	end
	return res
end

ls.add_snippets("all", {
	s("ternary", {
		-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
		i(1, "cond"),
		t(" ? "),
		i(2, "then"),
		c(3, { t("first"), t("second"), t("third") }),
		t(" : "),
	}),
	s("month", c(1, makeChoices(months))),
	s("color", c(1, makeChoices(colors))),
	-- s({ trig = "ct" }, { f(function()
	-- 	return os.date("%D - %H : %M")
	-- end) }),
	-- s(
	-- 	"var",
	-- 	fmt([[{} {} = {}]], {
	-- 		i(1),
	-- 		f(function(arg)
	-- 			local res = vim.split(arg[1][1], ".", { plain = true })
	-- 			return res[#res] or ""
	-- 		end, { 2 }),
	-- 		i(2),
	-- 	})
	-- ),
	-- s("test", fmt([[one: {} two: {}]], { i(1), t(1) })),
})
