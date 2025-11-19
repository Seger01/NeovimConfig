return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },
                sync_install = false,
                auto_install = true,
                parser_install_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter",
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
            vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/lazy/nvim-treesitter")
        end,
    },
    'nvim-treesitter/playground',
}
