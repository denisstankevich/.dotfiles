local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config("*", {
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"cssls",
	"jsonls",
	"basedpyright",
	"ruff",
})
