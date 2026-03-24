-- Base16 colorscheme for Neovim

-- Set background mode for light themes
vim.o.background = "light"

require('base16-colorscheme').setup({
    base00 = '#f4f3ec',
    base01 = '#e7e6df',
    base02 = '#929181',
    base03 = '#878573',
    base04 = '#6c6b5a',
    base05 = '#5f5e4e',
    base06 = '#302f27',
    base07 = '#22221b',
    base08 = '#ba6236',
    base09 = '#ae7313',
    base0A = '#a5980d',
    base0B = '#7d9726',
    base0C = '#5b9d48',
    base0D = '#36a166',
    base0E = '#5f9182',
    base0F = '#9d6c7c',
})

-- Disable terminal background transparency for nvim
vim.api.nvim_set_hl(0, 'Normal', { bg = '#f4f3ec', fg = '#5f5e4e' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#f4f3ec', fg = '#5f5e4e' })

local function set_hl_multiple(groups, value)
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, value)
    end
end

vim.api.nvim_set_hl(0, 'Visual', {
    bg = '#929181',
    fg = '#5f5e4e',
})

set_hl_multiple({ 'TSComment', 'Comment' }, {
    fg = '#6c6b5a',
})

set_hl_multiple({ 'TSMethod', 'Method' }, {
    fg = '#36a166',
})

set_hl_multiple({ 'TSFunction', 'Function' }, {
    fg = '#5f9182',
})

vim.api.nvim_set_hl(0, 'Keyword', {
    fg = '#5f9182',
})

vim.api.nvim_set_hl(0, 'MsgArea', {
    bg = '#e7e6df',
    fg = '#36a166',
})
