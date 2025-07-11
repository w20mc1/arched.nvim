return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	tag = "0.1.8",
	config = function()
		local wk = require("which-key")
		local builtin = require("telescope.builtin")

		wk.add({
			{ "<leader>f", desc = "Files", group = "files" },
			{ "<leader>ff", builtin.find_files, desc = "Find files" },
			{ "<leader>fr", builtin.oldfiles, desc = "Recent files" },
		})
	end,
}
