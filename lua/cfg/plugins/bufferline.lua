return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				diagnostics = "nvim_lsp"
			}
		}
	},
	{
		"roobert/bufferline-cycle-windowless.nvim",
		dependencies = {
		    { "akinsho/bufferline.nvim" },
		},
		config = function()
			local wk = require "which-key"

			require "bufferline-cycle-windowless".setup {
		      		default_enabled = true
	      		}

			wk.add {
				{ "<leader>w", desc = "Window", group = "window" },
				{ "<leader>wf", "<cmd>BufferLineCycleWindowlessNext<CR>", desc = "Window Forward" },
				{ "<leader>wb", "<cmd>BufferLineCycleWindowlessPrev<CR>", desc = "Window Backwards" }
			}
		end
	}
}
