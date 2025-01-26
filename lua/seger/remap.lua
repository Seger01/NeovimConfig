vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":wa<cr>")

-- vim.keymap.set("n", "<leader>pv",)


vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")



vim.keymap.set("i", "jk", "<Esc>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>pp", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- switching windows
vim.keymap.set("n", "<leader>th", "<C-W>h")
vim.keymap.set("n", "<leader>tj", "<C-W>j")
vim.keymap.set("n", "<leader>tk", "<C-W>k")
vim.keymap.set("n", "<leader>tl", "<C-W>l")

-- closing window
vim.keymap.set("n", "<leader>tq", "<C-W>q")

-- creating horizontal split window
vim.keymap.set("n", "<leader>ts", "<C-W>s")

-- creating vertical split window
vim.keymap.set("n", "<leader>tv", "<C-W>v")

-- vim.keymap.set("i", "<C-H>", "<C-W>", { noremap = true })
vim.keymap.set("i", "<C-j>", "<C-W>")

-- plantuml
vim.keymap.set("n", "<leader><leader>soil", ":Soil<cr>")

-- PythonKeymap
vim.keymap.set("n", "<leader><leader>run", ":terminal python main.py<cr>")

-- Debugger remaps
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dt', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
