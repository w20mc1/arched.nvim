return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	config = function()
		require("nvim-treesitter").install({
			"c",
			"cpp",
			"lua",
			"python",
			"html",
			"css",
			"vim",
			"vimdoc",
			"javascript",
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				-- thx ai

				local buftype = vim.bo.buftype

				-- Skip if buffer is not normal or if it's a file browser (heuristic)
				if buftype ~= "" then
					return
				end

				vim.treesitter.start()
			end,
		})
	end,
}
