return {
    -- base16-nvim is configured via matugen.lua, not here
    {
        "RRethy/base16-nvim",
        priority = 1000,
        lazy = false,
    },
    -- {
    --     "f4z3r/gruvbox-material.nvim",
    --     priority = 1000,
    --     config = function()
    --         require('gruvbox-material').setup({
    --             italics = true,
    --             contrast = "medium",
    --             comments = {
    --                 italics = true,
    --             },
    --             -- background = {
    --             --     transparent = false,
    --             -- },
    --             -- float = {
    --             --     force_background = false,
    --             --     background_color = nil,
    --             -- },
    --             -- signs = {
    --             --     -- force_background = true,
    --             -- },
    --             -- customize = nil,
    --         })
    --         -- vim.cmd.colorscheme("gruvbox-material")
    --     end,
    -- },
}
