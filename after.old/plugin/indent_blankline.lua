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
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#EA6962" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D8A657" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7DAEA3" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#E78A4E" })
        -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A9B665" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D3869B" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89B482" })
        -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)

    -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    --     vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#EA6962" })
    --     vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D8A657" })
    --     vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7DAEA3" })
    --     vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#E78A4E" })
    --     vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A9B665" })
    --     vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D3869" })
    --     vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89B482" })
    -- end)

    require("ibl").setup { indent = { highlight = highlight } }
end

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*.*",
    -- callback = compile_and_open_pdf(),
    callback = function()
        -- vim.cmd("silent! !pdflatex % >/dev/null 2>&1")
        -- vim.cmd("redraw!")
        set_indent_lines()
    end,
})
