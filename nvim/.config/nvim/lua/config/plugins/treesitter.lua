return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "markdown",
        "markdown_inline",
        "json",
        "lua",
        "javascript",
        "html",
        "css",
        "gitignore",
        "tsx",
        "typescript",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    })
  end,
}
