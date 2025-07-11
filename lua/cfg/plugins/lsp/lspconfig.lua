return {
	"neovim/nvim-lspconfig",
	config = function()
		local wk = require("which-key")

		vim.lsp.config("*", {
			on_attach = function()
				wk.add({
					{ "<leader>c", desc = "Code", group = "code" },
					{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action" },
					{ "<leader>cr", vim.lsp.buf.rename, desc = "Rename" },
				})
			end,
		})

		vim.diagnostic.config({
			virtual_text = true,
			severity_sort = true,
		})
	end,
}
