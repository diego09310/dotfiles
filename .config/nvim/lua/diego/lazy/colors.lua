function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--    vim.opt.background = "light"
--    vim.api.nvim_set_hl(0, 'Normal', {ctermbg=0})
--    vim.api.nvim_set_hl(0, 'nonText', {ctermbg=0})
end

local themes = {
--         "desert",
--         "brightburn",
--         "tokyonight",
--         "gruvbox",
        "rose-pine-moon",
        "everforest",
}
function RandomTheme()
    math.randomseed(os.time())
    local color = themes[ math.random( #themes ) ]
    vim.cmd.colorscheme(color)
end

return {

    {
        "erikbackman/brightburn.vim",
        name = "brightburn",
        lazy = false,
        priority = 1000,
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                -- transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        priority = 1000,
        opts = {},
--         config = function()
--             ColorMyPencils()
--         end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        lazy = false,
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            require('rose-pine').setup({
                variant = "medium",
--                 disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },

   {
        "maxmx03/solarized.nvim",
        name = "solarized",
        lazy = false,
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- or "light"

            vim.cmd.colorscheme "solarized"
        end,
    },

    {
        "neanias/everforest-nvim",
        name = "everforest",
        lazy = false,
        version = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup({
            background = "medium",
            transparent_background_level = 0,
            italics = true,
            disable_italic_comments = false,
            on_highlights = function(hl, _)
                hl["@string.special.symbol.ruby"] = { link = "@field" }
            end,
        })
        end,
    }

}
