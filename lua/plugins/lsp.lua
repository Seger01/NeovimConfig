return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'rafamadriz/friendly-snippets',
        },
        config = function()
            local lsp = require('lsp-zero')

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    -- 'clangd',
                    -- 'lua_ls',
                    -- 'pylsp',
                    -- 'jsonls',
                    -- 'bashls',
                },
                handlers = {
                    lsp.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end
                },
            })

            local cmp = require('cmp')
            local cmp_action = require('lsp-zero').cmp_action()

            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                })
            })

            lsp.set_preferences({
                suggest_lsp_servers = false,
                sign_icons = {
                    error = 'E',
                    warn = 'W',
                    hint = 'H',
                    info = 'I'
                }
            })

            lsp.on_attach(function(client, bufnr)
                local opts = { buffer = bufnr, remap = false }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end)

            lsp.setup()

            -- Format on save
            vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            local cfg = {
                debug = false,
                log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log",
                verbose = false,
                bind = true,
                doc_lines = 10,
                max_height = 12,
                max_width = 80,
                wrap = true,
                floating_window = true,
                floating_window_above_cur_line = true,
                floating_window_off_x = 1,
                floating_window_off_y = 0,
                close_timeout = 4000,
                fix_pos = false,
                hint_enable = false,
                hint_prefix = "P ",
                hint_scheme = "String",
                hint_inline = function() return false end,
                hi_parameter = "LspSignatureActiveParameter",
                handler_opts = {
                    border = "rounded"
                },
                always_trigger = false,
                auto_close_after = nil,
                extra_trigger_chars = {},
                zindex = 200,
                padding = '',
                transparency = nil,
                shadow_blend = 36,
                shadow_guibg = 'Black',
                timer_interval = 200,
                toggle_key = nil,
                toggle_key_flip_floatwin_setting = false,
                select_signature_key = nil,
                move_cursor_key = nil,
            }
            require('lsp_signature').setup(cfg)
        end,
    },
}
