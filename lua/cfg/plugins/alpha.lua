return {
	"goolord/alpha-nvim",
	config = function ()
		local dashboard = require "alpha.themes.dashboard"

		local header = [[
			███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
			████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
			██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
			██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
			██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
			╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
		]]
		-- thx lazyvim https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/ui/alpha.lua#L22
		dashboard.section.header.val = vim.split(header, "\n")

		dashboard.section.footer.val = require "alpha.fortune"()

		dashboard.section.buttons.val = {
			dashboard.button("n", " New file", "<cmd>ene<CR>"),
			dashboard.button("SPC ff", " Find files"),
			dashboard.button("SPC fr", " Recent"),
			dashboard.button("SPC lu", "󰚰 Update lazy"),
			dashboard.button("q", " Quit", "<cmd>qa!<CR>")
		}

		require "alpha".setup(dashboard.config)
	end
}
