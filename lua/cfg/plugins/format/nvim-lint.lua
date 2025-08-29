return {
	"mfussenegger/nvim-lint",
	opts = {
		linters_by_ft = {
			javascript = { "eslint_d" },
		},
	},
	config = function(_, opts)
		local lint = require("lint")
		lint.linters_by_ft = opts.linters_by_ft

		-- kinda scuffed solution
		vim.api.nvim_create_autocmd("BufWritePost", {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
