return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	opts = {
		scope = {
			show_start = false,
			enabled = false,
		},
		indent = {
			char = "│",
			tab_char = "│",
		},
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"trouble",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"lazyterm",
				"oil",
			},
		},
	},
}
