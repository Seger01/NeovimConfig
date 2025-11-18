return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)

            require('telescope').setup {
                defaults = {
                    pickers = {
                        git_files = { recurse_submodules = false },
                    },
                    mappings = {
                        i = {}
                    }
                },
                pickers = {
                    git_files = {
                        use_git_root = false,
                        recurse_submodules = false,
                    }
                },
                extensions = {}
            }
        end,
    },
}
