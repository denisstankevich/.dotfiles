return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    opt = true,
  },
  config = function()
    local lazy_status = require("lazy.status")

    require("lualine").setup({
      options = {
        theme = "auto",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          "diagnostics",
          "encoding",
          "filetype",
        },
        lualine_y = {},
        lualine_z = { "location" },
      },
    })
  end,
}
