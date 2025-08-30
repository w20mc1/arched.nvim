local wk = require("which-key")
local lazy = require("lazy")

-- thx ai
local function closeWindow()
	local current = vim.api.nvim_get_current_buf()
	vim.cmd.bprevious() -- Switch to previous buffer first
	vim.schedule(function()
		vim.cmd.bdelete(current) -- Then delete the original one
	end)
end

wk.add({
	-- window close
	{ "<leader>wc", closeWindow, desc = "Close Window" },

	{ "<leader>l", name = "Lazy", group = "lazy" },
	{ "<leader>lu", lazy.update, name = "Lazy Update" },
})
