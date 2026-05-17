require("lualine").setup({
	options = {
		theme = "auto",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = {
			"diagnostics",
			"encoding",
			"filetype",
		},
		lualine_y = {},
		lualine_z = { "location" },
	},
})
