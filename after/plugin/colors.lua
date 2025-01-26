local function rosepine()
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)


    -- vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
end

local c = {
    bright3    = '#f6c2a5',
    bright2    = '#ea9a7d',
    bright1    = '#e16a5e',
    normal     = '#d22f32',
    dark1      = '#b1274e',
    dark2      = '#931b46',
    dark3      = '#631033',
    dark4      = '#42001f',
    background = '#101010',
    test       = '#11ff00',
}

local function catpuccin_red()
    require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
        term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = false,            -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15,          -- percentage of the shade to apply to the inactive window
        },
        no_italic = true,               -- Force no italic
        no_bold = false,                -- Force no bold
        no_underline = false,           -- Force no underline
        styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" },    -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        color_overrides = {
            mocha = {
                mantle = "#000000",
                -- mantle = "#353b45",
                base = "#000000",
                -- base = "#282c34",
                surface0 = "#000000", -- current document telescope search
                -- surface0 = "#3e4451",
                surface1 = c.dark3,   -- includes line numbers
                -- surface1 = "#545862",
                surface2 = "#ffffff",
                -- surface2 = "#565c64",
                text = c.bright3, -- is variable names
                -- text = "#abb2bf",
                rosewater = "#ffffff",
                lavender = c.bright3,
                red = "#e06c75",
                peach = c.bright2, -- function calls and function definitions
                -- peach = "#d19a66",
                yellow = c.bright1,
                -- yellow = "#e5c07b",
                green = c.dark1,
                -- green = "#98c379",
                teal = c.bright3, -- color of characters 'char'
                -- teal = "#56b6c2",
                blue = c.bright1, -- function definition in python
                -- blue = "#61afef",
                mauve = c.normal,
                -- mauve = "#c678dd",
                -- flamingo = "#be5046",
                flamingo = "#ffffff",

                -- now patching extra palettes
                maroon = "#ffffff",
                -- maroon = "#e06c75",
                sky = c.normal, --
                -- sky = "#d19a66",

                -- extra colors not decided what to do
                pink = "#ffffff",
                -- pink = "#F5C2E7",
                sapphire = "#ffffff",
                -- sapphire = "#74C7EC",

                subtext1 = "#ffffff",
                -- subtext1 = "#BAC2DE",
                subtext0 = "#ffffff",
                -- subtext0 = "#A6ADC8",
                overlay2 = c.dark1, -- symbols (){} ;
                -- overlay2 = "#9399B2",
                overlay1 = "#7F849C",
                -- overlay1 = "#7F849C",
                overlay0 = "#6C7086",
                -- overlay0 = "#6C7086",

                crust = "#000000",
                -- crust = "#11111B",
                -- mantle = "#f6c2a5",
                -- base = "#f6c2a5",
                -- surface0 = "#f6c2a5",
                -- surface1 = "#f6c2a5",
                -- surface2 = "#f6c2a5",
                -- text = "#f6c2a5",
                -- rosewater = "#f6c2a5",
                -- lavender = "#f6c2a5",
                -- red = "#f6c2a5",
                -- peach = "#f6c2a5",
                -- yellow = "#f6c2a5",
                -- green = "#f6c2a5",
                -- teal = "#f6c2a5",
                -- blue = "#f6c2a5",
                -- mauve = "#f6c2a5",
                -- flamingo = "#f6c2a5",
                --
                -- -- now patching extra palettes
                -- maroon = "#f6c2a5",
                -- sky = "#f6c2a5",
                --
                -- -- extra colors not decided what to do
                -- pink = "#f6c2a5",
                -- sapphire = "#f6c2a5",
                --
                -- subtext1 = "#f6c2a5",
                -- subtext0 = "#f6c2a5",
                -- overlay2 = "#f6c2a5",
                -- overlay1 = "#f6c2a5",
                -- overlay0 = "#f6c2a5",
                --
                -- crust = "#f6c2a5",
            },
        },
        -- integrations = {
        -- cmp = true,
        -- gitsigns = true,
        -- nvimtree = true,
        -- treesitter = true,
        -- notify = false,
        -- mini = {
        --     enabled = true,
        --     indentscope_color = "",
        -- },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        -- },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
end


local function catpuccin()
    require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
        term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = false,            -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15,          -- percentage of the shade to apply to the inactive window
        },
        no_italic = true,               -- Force no italic
        no_bold = false,                -- Force no bold
        no_underline = false,           -- Force no underline
        styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" },    -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        highlight_overrides = {
            mocha = function(mocha)
                return {
                    LineNr = { fg = "#b4befe" },
                }
            end,
            -- mocha = function(mocha)
            --     return {
            --         Comment = { fg = mocha.flamingo },
            --     }
            -- end,
        },
        -- color_overrides = {
        --     mocha = {
        --         surface1 = "#ccd0da",
        --     },
        -- },
        -- integrations = {
        -- cmp = true,
        -- gitsigns = true,
        -- nvimtree = true,
        -- treesitter = true,
        -- notify = false,
        -- mini = {
        --     enabled = true,
        --     indentscope_color = "",
        -- },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        -- },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
end

function reddish()
    require('reddish')._load()
    -- color = color or "reddish"
    -- vim.cmd.colorscheme(color)
end

function gruvbox()
    -- values shown are defaults and will be used if not provided
    require('gruvbox-material').setup({
        italics = true,      -- enable italics in general
        contrast = "medium", -- set contrast, can be any of "hard", "medium", "soft"
        comments = {
            italics = true,  -- enable italic comments
        },
        background = {
            transparent = false, -- set the background to transparent
        },
        float = {
            force_background = false, -- force background on floats even when background.transparent is set
            background_color = nil,   -- set color for float backgrounds. If nil, uses the default color set
            -- by the color scheme
        },
        signs = {
            highlight = true, -- whether to highlight signs
        },
        customize = nil,      -- customize the theme in any way you desire, see below what this
        -- configuration accepts
    })
end

-- rosepine()
-- catpuccin()
gruvbox()
-- reddish()
