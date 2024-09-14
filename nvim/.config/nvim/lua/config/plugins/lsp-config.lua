return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "jsonls",
          "tailwindcss",
          "eslint",
          "cssls",
          'gopls',
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local keymap = vim.keymap
      local opts = { noremap = true, silent = true }
      local capabilities = cmp_nvim_lsp.default_capabilities()
      local util = require "lspconfig/util"

      local on_attach = function(_, bufnr)
        opts.buffer = bufnr

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Go to definition"
        keymap.set("n", "gd", vim.lsp.buf.definition, opts)

        opts.desc = "Code actions"
        keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show buffer diagnostics (Telescope)"
        keymap.set("n", "<leader>dd", "<CMD>Telescope diagnostics bufnr=0<CR>", opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

        opts.desc = "Hover"
        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
      end
      -- Change the Diagnostic symbols on icons
      local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = { -- make the language server recognize "vim" global
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      lspconfig.ts_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.tailwindcss.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.eslint.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      })
    end,
  },
}
