local wk = require "which-key"
local lazy = require("lazy")

wk.add {
	-- window close
	{ "<leader>wc", "<cmd>bdelete<CR>", desc = "Close Window" },

	{ "<leader>l", name = "Lazy", group = "lazy" },
	{ "<leader>lu", lazy.update, name = "Lazy Update" }
}
