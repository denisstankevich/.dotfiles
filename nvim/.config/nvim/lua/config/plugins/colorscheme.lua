return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavor = "mocha",
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotree = true,
        noice = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        harpoon = true,
        which_key = true,
      },
    },
    priority = 1000,
  },
}
