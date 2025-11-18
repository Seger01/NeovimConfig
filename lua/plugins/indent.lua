return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            _G.set_indent_lines = function()
                local highlight = {
                    "RainbowRed",
                    "RainbowYellow",
                    "RainbowBlue",
                    "RainbowOrange",
                    "RainbowGreen",
                    "RainbowViolet",
                    "RainbowCyan",
                }

                local hooks = require "ibl.hooks"
                hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#EA6962" })
                    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D8A657" })
                    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7DAEA3" })
                    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#E78A4E" })
                    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A9B665" })
                    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D3869B" })
                    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89B482" })
                end)

                require("ibl").setup { indent = { highlight = highlight } }
            end

            vim.api.nvim_create_autocmd("BufRead", {
                pattern = "*.vhd",
                callback = function()
                    set_indent_lines()
                end,
            })
        end,
    },
}
