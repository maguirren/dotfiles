--TokyoNight
return{
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd ([[colorscheme tokyonight-night]])
    end,
}

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
