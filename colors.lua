-- Base16 colorscheme for Neovim

-- Set background mode for light themes
vim.o.background = "light"

require('base16-colorscheme').setup({
    base00 = '#f2e5bc',
    base01 = '#ebdbb2',
    base02 = '#d5c4a1',
    base03 = '#bdae93',
    base04 = '#665c54',
    base05 = '#504945',
    base06 = '#3c3836',
    base07 = '#282828',
    base08 = '#9d0006',
    base09 = '#af3a03',
    base0A = '#b57614',
    base0B = '#79740e',
    base0C = '#427b58',
    base0D = '#076678',
    base0E = '#8f3f71',
    base0F = '#d65d0e',
})

-- Disable terminal background transparency for nvim
vim.api.nvim_set_hl(0, 'Normal', { bg = '#f2e5bc', fg = '#504945' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#f2e5bc', fg = '#504945' })

local function set_hl_multiple(groups, value)
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, value)
    end
end

vim.api.nvim_set_hl(0, 'Visual', {
    bg = '#d5c4a1',
    fg = '#504945',
})

set_hl_multiple({ 'TSComment', 'Comment' }, {
    fg = '#bdae93',
})

set_hl_multiple({ 'TSMethod', 'Method' }, {
    fg = '#076678',
})

set_hl_multiple({ 'TSFunction', 'Function' }, {
    fg = '#8f3f71',
})

vim.api.nvim_set_hl(0, 'Keyword', {
    fg = '#8f3f71',
})

vim.api.nvim_set_hl(0, 'MsgArea', {
    bg = '#ebdbb2',
    fg = '#076678',
})
