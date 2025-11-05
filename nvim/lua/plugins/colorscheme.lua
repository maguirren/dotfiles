--TokyoNight
--return{
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--    config = function()
--        vim.cmd ([[colorscheme tokyonight-night]])
--    end,
--}

-- TokyoDark
--return{
--    "tiagovla/tokyodark.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {
--        transparent_background = true,
--    },
--    config = function()
--        vim.cmd ([[colorscheme tokyodark]])
--    end,
--}

-- Black Metal
return{
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
        require("black-metal").setup({
            -- MAIN OPTIONS --
            --theme = "burzum",
            --theme = "emperor",
            --theme = "marduk",
            --theme = "mayhem",
            theme = "taake",
            --theme = "thyrfing",
            --theme = "dark-funeral",
            variant = "dark",
            colored_docstrings = true,
            transparent = false,
            -- PLUGINS --
            plugin = {
                lualine = {
                    bold = true,
                    plain = false,
                }
            },
        })
        require("black-metal").load()
    end,
}
