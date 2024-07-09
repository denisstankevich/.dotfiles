return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

    -- stylua: ignore
		dashboard.section.buttons.val = {
      dashboard.button("SPC ff",        "󰱼  Find File",          "<cmd> Telescope find_files <cr>"),
      dashboard.button("SPC fw",        "  Find Word",          "<cmd> Telescope live_grep <cr>"),
      dashboard.button("SPC fr",        "  Recent Files",       "<cmd> Telescope oldfiles <cr>"),
      dashboard.button("l",             "󰒲  Lazy",               "<cmd> Lazy <cr>"),
      dashboard.button("q",             "  Quit",               "<cmd> qa <cr>"),
			-- dashboard.button("SPC fe",         " File Explorer",      "<cmd>Neotree filesystem toggle reveal<CR>"),
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
