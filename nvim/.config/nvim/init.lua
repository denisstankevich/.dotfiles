vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/rafamadriz/friendly-snippets",
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.x") },
	"https://github.com/vague-theme/vague.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/refractalize/oil-git-status.nvim",
	{ src = "https://github.com/nvim-mini/mini.surround", version = "stable" },
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
})

require("core.keymaps")
require("core.options")
require("plugins.blink-cmp")
require("plugins.colorscheme")
require("plugins.oil")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.conform")
require("plugins.gitsigns")
require("plugins.other")

vim.cmd.colorscheme("vague")
