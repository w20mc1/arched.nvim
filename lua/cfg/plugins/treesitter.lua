return {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'main', 
	lazy = false, 
	config = function()
		require "nvim-treesitter.configs".setup {
			ensure_installed = {
				"c", 
				"cpp", 
				"lua", 
				"python", 
				"html", 
				"css",
				"vim",
				"vimdoc",
				"javascript"
			},
			sync_install = true,
			highlight = { enable = true }
		}
	end
}
