return {
	"echasnovski/mini.indentscope",
	version = "*",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	opts = {
		symbol = "│",
		options = { try_as_border = true },
	},
}
