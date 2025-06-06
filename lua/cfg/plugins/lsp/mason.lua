return {
	{
	    "mason-org/mason.nvim",
	    opts = {}
	},
	{
	    "mason-org/mason-lspconfig.nvim",
	    opts = {
		    ensure_installed = {
			    "pyright",
			    "ts_ls",
			    "lua_ls"
		    }
	    },
	    dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	    },
	}
}
