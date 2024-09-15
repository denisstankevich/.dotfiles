return {
  --[[ "nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<CMD>Neotree filesystem toggle reveal<CR>" },
	},
	opts = {
		sources = { "filesystem", "buffers", "git_status", "document_symbols" },
		open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
		filesystem = {
			bind_to_cwd = false,
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
		},
		popup_border_style = "rounded",
		hide_root_node = true,
		retain_hidden_root_indent = true,
		window = {
			position = "float",
			mappings = {
				["<space>"] = "none",
			},
		},
	},
	-- vim.keymap.set("n", "<leader>e", "<CMD>Neotree filesystem toggle reveal<CR>"), ]]
}
