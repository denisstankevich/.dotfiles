vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "Save file" })
--[[ vim.keymap.set("n", "<leader>e", function()
	require("oil").toggle_float()
end, { desc = "Toggle Oil Explorer" }) ]]

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split verticaly" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontaly" })
vim.keymap.set("n", "<leader>sx", "<CMD>close<CR>", { desc = "Close selected split" })

vim.keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tn", "<CMD>tabn<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tp", "<CMD>tabp<CR>", { desc = "Previous tab" })

vim.keymap.set("n", "C-u", "<C-u>zz", { desc = "Jump a half page up" })
vim.keymap.set("n", "C-d", "<C-u>zz", { desc = "Jump a half page down" })
