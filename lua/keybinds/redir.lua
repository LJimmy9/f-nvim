function Redir(cmd, rng, start, end_)
	local output
	if cmd:match("^!") then
		cmd = cmd:gsub(" %%", " " .. vim.fn.shellescape(vim.fn.escape(vim.fn.expand("%:p"), "\\")), 1):match("^!(.*)")
		if rng == 0 then
			output = vim.fn.systemlist(cmd)
		else
			local lines = {}
			for i = start, end_ do
				table.insert(lines, vim.fn.getline(i))
			end
			local joined_lines = table.concat(lines, "\n")
			local cleaned_lines = vim.fn.substitute(vim.fn.shellescape(joined_lines), "'\\\\''", "\\\\'", "g")
			output = vim.fn.systemlist(cmd .. " <<< $" .. cleaned_lines)
		end
	else
		output = {}
		vim.cmd("redir => output")
		vim.cmd("execute " .. cmd)
		vim.cmd("redir END")
		for line in output[1]:gmatch("[^\r\n]+") do
			table.insert(output, line)
		end
		table.remove(output, 1)
	end
	local last_line = vim.fn.line("$")
	vim.fn.setline(last_line + 1, "")
	vim.fn.setline(last_line + 2, output)
end

vim.cmd([[
    command! -nargs=1 -complete=command -bar -range Redir lua Redir(<q-args>, <range>, <line1>, <line2>)
    command! -nargs=1 -complete=command -range Redir lua Redir(<q-args>, <range>, <line1>, <line2>)
]])

Keymap("n", "<leader>rd", '_v$c<Esc>:Redir !<c-r>"')
