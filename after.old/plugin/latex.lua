-- Make the function global by assigning it to _G
_G.spell_check = function()
    vim.cmd(":setlocal spell spelllang=en_us")
end

vim.api.nvim_set_keymap("n", "<leader><leader>spellcheck", ":lua spell_check()<CR>", { noremap = true, silent = true })

vim.cmd("let g:vimtex_view_general_viewer = 'evince'")
vim.cmd("let g:vimtex_quickfix_ignore_filters = ['Underfull','Overfull']")

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = { "*.txt", "*.md", "*.tex" },
    callback = function()
        vim.opt_local.wrap = true
    end,
})
