vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- black python formatting
vim.keymap.set("n", "<leader>fmt", ":silent !black %<cr>")

-- characters
vim.keymap.set("n", "<leader>a", "i→")

-- terminal
vim.keymap.set("n", "<leader>h", ":split")
vim.keymap.set("n", "<leader>v", ":vsplit")
vim.keymap.set("n", "<leader>t", ":split | terminal<CR>", { noremap = true, silent = true })

-- path
vim.keymap.set("n", "<leader>cp", function()
	local full_path = vim.fn.expand("%")
	vim.fn.setreg("+", full_path)
	print("Copied to clipboard: " .. full_path)
end, { desc = "Copy full path to clipboard" })

-- Keymap to toggle line wrap
vim.keymap.set("n", "<leader>w", function()
	vim.wo.wrap = not vim.wo.wrap
	print("Wrap: " .. (vim.wo.wrap and "ON" or "OFF"))
end, { desc = "Toggle line wrap" })

-- Other shortcuts
-- gf: go to file (on a link)
