-- Base16 colorscheme for Neovim

-- Set background mode for light themes
vim.o.background = "light"

require('base16-colorscheme').setup({
    base00 = '#111C18',
    base01 = '#23372B',
    base02 = '#53685B',
    base03 = '#C1C497',
    base04 = '#F6F5DD',
    base05 = '#C1C497',
    base06 = '#D7C995',
    base07 = '#9EEBB3',
    base08 = '#0F744D',
    base09 = '#1A8C5B',
    base0A = '#E5C736',
    base0B = '#549e6a',
    base0C = '#2DD5B7',
    base0D = '#0B985C',
    base0E = '#185F44',
    base0F = '#75bbb3',
})

-- Disable terminal background transparency for nvim
vim.api.nvim_set_hl(0, 'Normal', { bg = '#111C18', fg = '#C1C497' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#111C18', fg = '#C1C497' })

local function set_hl_multiple(groups, value)
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, value)
    end
end

vim.api.nvim_set_hl(0, 'Visual', {
    bg = '#53685B',
    fg = '#C1C497',
})

set_hl_multiple({ 'TSComment', 'Comment' }, {
    fg = '#C1C497',
})

set_hl_multiple({ 'TSMethod', 'Method' }, {
    fg = '#0B985C',
})

set_hl_multiple({ 'TSFunction', 'Function' }, {
    fg = '#185F44',
})

vim.api.nvim_set_hl(0, 'Keyword', {
    fg = '#185F44',
})

vim.api.nvim_set_hl(0, 'MsgArea', {
    bg = '#23372B',
    fg = '#0B985C',
})
