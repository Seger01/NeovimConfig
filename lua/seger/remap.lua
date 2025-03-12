vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>pp", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- switching windows
vim.keymap.set("n", "<leader>sh", "<C-W>h")
vim.keymap.set("n", "<leader>sj", "<C-W>j")
vim.keymap.set("n", "<leader>sk", "<C-W>k")
vim.keymap.set("n", "<leader>sl", "<C-W>l")

-- closing window
vim.keymap.set("n", "<leader>sq", "<C-W>q")

-- creating horizontal split window
vim.keymap.set("n", "<leader>ss", "<C-W>s")

-- creating vertical split window
vim.keymap.set("n", "<leader>sv", "<C-W>v")

-- Debugger remaps
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dt', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
