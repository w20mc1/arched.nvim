return {
	"goolord/alpha-nvim",
	config = function ()
		local dashboard = require "alpha.themes.dashboard"
		local cowlib = require "cfg.lib.cowsay"

		dashboard.section.header.val = {
			"███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			"████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			"██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			"██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			"██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			"╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
		}

		dashboard.section.footer.val = cowlib.cowsay(require "alpha.fortune"())

		dashboard.section.buttons.val = {
			dashboard.button("n", " New file", "<cmd>ene | startinsert<CR>"),
			dashboard.button("SPC ff", " Find files"),
			dashboard.button("SPC fr", " Recent"),
			dashboard.button("q", " Quit", "<cmd>qa!<CR>")
		}
		require "alpha".setup(dashboard.config)
	end
}
