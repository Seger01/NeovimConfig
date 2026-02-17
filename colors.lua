-- Base16 colorscheme for Neovim

-- Set background mode for light themes
vim.o.background = "light"

require('base16-colorscheme').setup({
    base00 = '#16172d',
    base01 = '#1b1c36',
    base02 = '#30365F',
    base03 = '#686f9a',
    base04 = '#818596',
    base05 = '#ecf0c1',
    base06 = '#c1c3cc',
    base07 = '#ffffff',
    base08 = '#e33400',
    base09 = '#e39400',
    base0A = '#f2ce00',
    base0B = '#5ccc96',
    base0C = '#00a3cc',
    base0D = '#7a5ccc',
    base0E = '#b3a1e6',
    base0F = '#ce6f8f',
})

-- Disable terminal background transparency for nvim
vim.api.nvim_set_hl(0, 'Normal', { bg = '#16172d', fg = '#ecf0c1' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#16172d', fg = '#ecf0c1' })

local function set_hl_multiple(groups, value)
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, value)
    end
end

vim.api.nvim_set_hl(0, 'Visual', {
    bg = '#30365F',
    fg = '#ecf0c1',
})

set_hl_multiple({ 'TSComment', 'Comment' }, {
    fg = '#686f9a',
})

set_hl_multiple({ 'TSMethod', 'Method' }, {
    fg = '#7a5ccc',
})

set_hl_multiple({ 'TSFunction', 'Function' }, {
    fg = '#b3a1e6',
})

vim.api.nvim_set_hl(0, 'Keyword', {
    fg = '#b3a1e6',
})

vim.api.nvim_set_hl(0, 'MsgArea', {
    bg = '#1b1c36',
    fg = '#7a5ccc',
})
