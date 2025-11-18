vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>pp", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

-- switching windows
vim.keymap.set("n", "<leader>sh", "<C-W>h")
vim.keymap.set("n", "<leader>sj", "<C-W>j")
vim.keymap.set("n", "<leader>sk", "<C-W>k")
vim.keymap.set("n", "<leader>sl", "<C-W>l")

-- closing window
vim.keymap.set("n", "<leader>sq", "<C-W>q")

-- creating vertical split window
vim.keymap.set("n", "<leader>sv", "<C-W>v")
