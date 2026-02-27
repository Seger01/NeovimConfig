-- Base16 colorscheme for Neovim

-- Set background mode for light themes
vim.o.background = "light"

require('base16-colorscheme').setup({
    base00 = '#1e1e2e',
    base01 = '#313244',
    base02 = '#45475a',
    base03 = '#6c7086',
    base04 = '#a6adc8',
    base05 = '#cdd6f4',
    base06 = '#f5e0dc',
    base07 = '#b4befe',
    base08 = '#f38ba8',
    base09 = '#fab387',
    base0A = '#f9e2af',
    base0B = '#a6e3a1',
    base0C = '#94e2d5',
    base0D = '#89b4fa',
    base0E = '#cba6f7',
    base0F = '#f2cdcd',
})

-- Disable terminal background transparency for nvim
vim.api.nvim_set_hl(0, 'Normal', { bg = '#1e1e2e', fg = '#cdd6f4' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1e1e2e', fg = '#cdd6f4' })

local function set_hl_multiple(groups, value)
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, value)
    end
end

vim.api.nvim_set_hl(0, 'Visual', {
    bg = '#45475a',
    fg = '#cdd6f4',
})

set_hl_multiple({ 'TSComment', 'Comment' }, {
    fg = '#6c7086',
})

set_hl_multiple({ 'TSMethod', 'Method' }, {
    fg = '#89b4fa',
})

set_hl_multiple({ 'TSFunction', 'Function' }, {
    fg = '#cba6f7',
})

vim.api.nvim_set_hl(0, 'Keyword', {
    fg = '#cba6f7',
})

vim.api.nvim_set_hl(0, 'MsgArea', {
    bg = '#313244',
    fg = '#89b4fa',
})
