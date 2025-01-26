-- Make the function global by assigning it to _G
_G.compile_and_open_pdf = function()
    -- Get the full path of the current file
    local file_path = vim.fn.expand("%:p")

    -- Get the directory of the current file
    local file_dir = vim.fn.expand("%:p:h")

    -- Change the file extension to ".pdf"
    local pdf_path = file_path:gsub("%.tex$", ".pdf")

    -- Compile the LaTeX file using 'latexmk'
    vim.cmd(":setlocal spell spelllang=en_us")
    vim.cmd(":! latexmk -pdf '" .. file_path .. "'")
    -- vim.cmd("silent !cd " .. file_dir .. " && texliveonfly '" .. file_path .. "'")

    -- Check if the PDF was successfully created
    if vim.fn.filereadable(pdf_path) == 1 then
        -- Open the PDF file using the preferred viewer
        vim.cmd("silent !zathura '" .. pdf_path .. "' &")
    else
        print("PDF compilation failed!")
    end
end

-- Map the key (e.g., <leader>p) to compile and open the corresponding PDF
vim.api.nvim_set_keymap("n", "<leader><leader>xx", ":lua compile_and_open_pdf()<CR>", { noremap = true, silent = true })

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
