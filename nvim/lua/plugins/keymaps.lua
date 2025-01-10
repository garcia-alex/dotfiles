-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- nvim-comment
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

-- format code using LSP
vim.keymap.set("n", "<leader>fmt", ":silent !black %<cr>")

-- git
vim.keymap.set("n", "<leader>g", ":Git<cr>")
-- Type dd on the file to see the difference

-- pencil
vim.keymap.set("n", "<leader>p", ":PencilSoft<cr>")
-- used in conjunction with wrap

-- obsidian
vim.keymap.set("n", "<leader>on", ":ObsidianNewFromTemplate")
-- then type in filename.md
-- also look into ObsidianLinkhello.mdhello.md
