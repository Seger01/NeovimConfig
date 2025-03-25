-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    -- themes
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "Segerss/reddish.nvim", as = "reddish" }
    --

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'L3MON4D3/LuaSnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {
        "ray-x/lsp_signature.nvim",
    }

    use {
        "akinsho/toggleterm.nvim",
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "folke/which-key.nvim",
        config = function()
            -- vim.o.timeout = true
            -- vim.o.timeoutlen = 5000
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- use {
    --     "ggandor/leap.nvim",
    --     requires = {
    --         { "tpope/vim-repeat" },
    --     }
    -- }

    use {
        "easymotion/vim-easymotion",
        requires = {
            { "tpope/vim-repeat" },
        }
    }
    use { "xiyaowong/transparent.nvim", as = "transparent" }

    -- good plantUML plugin
    use {
        'weirongxu/plantuml-previewer.vim',
        requires = {
            { 'tyru/open-browser.vim' },
            { 'aklt/plantuml-syntax' },
        }
    }

    use("mfussenegger/nvim-dap")
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }

    use {
        "williamboman/mason.nvim",
        "jay-babu/mason-nvim-dap.nvim",
    }
    use("lervag/vimtex")
    use("github/copilot.vim")
    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })
    use("f4z3r/gruvbox-material.nvim")
    use("lukas-reineke/indent-blankline.nvim")
end
)
