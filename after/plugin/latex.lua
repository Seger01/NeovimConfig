-- Make the function global by assigning it to _G
_G.compile_tex = function()
    -- Get the full path of the current file
    local file_path = vim.fn.expand("%:p")
    -- Get the directory of the current file
    local file_dir = vim.fn.expand("%:p:h")
    -- Change the file extension to ".pdf"
    local pdf_path = file_path:gsub("%.tex$", ".pdf")

    vim.cmd(":w")

    -- Compile the LaTeX file using 'latexmk'
    vim.cmd("silent !latexmk -C")
    vim.cmd("silent !latexmk -pdf '" .. file_path .. "'")
    vim.cmd(":set wrap")
end

-- Make the function global by assigning it to _G
_G.compile_tex_debug = function()
    -- Get the full path of the current file
    local file_path = vim.fn.expand("%:p")

    -- Get the directory of the current file
    local file_dir = vim.fn.expand("%:p:h")

    -- Change the file extension to ".pdf"
    local pdf_path = file_path:gsub("%.tex$", ".pdf")

    -- Compile the LaTeX file using 'latexmk'
    vim.cmd("silent !latexmk -C")
    vim.cmd(":terminal latexmk -pdf '" .. file_path .. "'")
end

-- Make the function global by assigning it to _G
_G.open_tex = function()
    -- Get the full path of the current file
    local file_path = vim.fn.expand("%:p")
    -- Get the directory of the current file
    local file_dir = vim.fn.expand("%:p:h")
    -- Change the file extension to ".pdf"
    local pdf_path = file_path:gsub("%.tex$", ".pdf")

    vim.cmd("silent !evince '" .. pdf_path .. "' &")
end

-- Make the function global by assigning it to _G
_G.spell_check = function()
    vim.cmd(":setlocal spell spelllang=en_us")
end

-- -- Map the key (e.g., <leader>p) to compile and open the corresponding PDF
-- vim.api.nvim_set_keymap("n", "<leader>make", ":lua compile_tex()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>ltd", ":lua compile_tex_debug()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>lto", ":lua open_tex()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>spellcheck", ":lua spell_check()<CR>", { noremap = true, silent = true })

vim.cmd("let g:vimtex_view_general_viewer = 'evince'")
vim.cmd("let g:vimtex_quickfix_ignore_filters = ['Underfull','Overfull']")

-- vim.api.nvim_create_autocmd("BufWritePost", {
--     pattern = "*.tex",
--     -- callback = compile_and_open_pdf(),
--     callback = function()
--         -- vim.cmd("silent! !pdflatex % >/dev/null 2>&1")
--         -- vim.cmd("redraw!")
--         compile_and_open_pdf()
--     end,
-- })
-- vim.cmd [[autocmd BufWritePre <buffer> lua compile_and_open_pdf()]]
