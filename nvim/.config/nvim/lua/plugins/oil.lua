require("oil").setup({
	delete_to_trash = true,
	skip_confirm_for_simple_edits = false,
	watch_for_changes = true,

	win_options = {
		signcolumn = "yes:2",
	},

	float = {
		border = "rounded",
		max_width = 100,
		max_height = 30,
		win_options = {
			number = false,
			relativenumber = false,
		},
	},

	confirmation = {
		border = "rounded",
	},
})

require("oil-git-status").setup({})
