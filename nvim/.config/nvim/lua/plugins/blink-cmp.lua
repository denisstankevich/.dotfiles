require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	appearance = {
		nerd_font_variant = "mono",
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		menu = {
			scrollbar = true,
			draw = {
				columns = {
					{ "kind_icon" },
					{ "label", "label_description", gap = 1 },
					{ "kind" },
				},
			},
		},
		list = {
			selection = {
				preselect = true,
				auto_insert = false,
			},
		},
	},

	signature = { enabled = true },

	fuzzy = { implementation = "prefer_rust_with_warning" },
})
