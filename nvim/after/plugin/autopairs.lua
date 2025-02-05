local has_autopairs, autopairs = pcall(require, "nvim-autopairs")

if not has_autopairs then
	vim.notify("nvim-autopairs is missing", vim.log.levels.WARN)
	return
end

---@diagnostic disable: missing-parameter
local Rule = require "nvim-autopairs.rule"

autopairs.setup {
	map_c_w = true,
	map_c_h = true,
	enable_check_bracket_line = false,
}

autopairs.add_rules {
	Rule(" ", " "):with_pair(function(opts)
		local pair = opts.line:sub(opts.col - 1, opts.col)
		return vim.tbl_contains({ "()", "[]", "{}" }, pair)
	end),
	Rule("( ", " )")
		:with_pair(function()
			return false
		end)
		:with_move(function(opts)
			return opts.prev_char:match ".%)" ~= nil
		end)
		:use_key ")",
	Rule("{ ", " }")
		:with_pair(function()
			return false
		end)
		:with_move(function(opts)
			return opts.prev_char:match ".%}" ~= nil
		end)
		:use_key "}",
	Rule("[ ", " ]")
		:with_pair(function()
			return false
		end)
		:with_move(function(opts)
			return opts.prev_char:match ".%]" ~= nil
		end)
		:use_key "]",
}
