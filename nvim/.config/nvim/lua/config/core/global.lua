local opt = vim.opt

opt.termguicolors = true
opt.background = "dark"

opt.cursorline = true
opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.shiftwidth = 2
opt.smartcase = true
opt.ignorecase = true
opt.wrap = false
opt.swapfile = false
opt.backspace = "indent,eol,start"

opt.undofile = true
opt.backup = false

opt.hlsearch = false
opt.clipboard:append("unnamedplus")

opt.cmdheight = 0
opt.showmode = false

opt.signcolumn = "yes"
opt.scrolloff = 8

opt.splitbelow = true
opt.splitright = true

opt.updatetime = 250

opt.spelllang = "en_us"
opt.spell = true

vim.g.user_emmet_leader_key = "<C-e>"
vim.g.user_emmet_mode = "i"
