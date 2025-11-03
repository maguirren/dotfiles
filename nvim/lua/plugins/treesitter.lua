return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    --event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua",
            --"luadoc",
            "python",
            "bash",
            "c",
            "css",
            "diff",
            "dockerfile",
            "go",
            "html",
            "http",
            "javascript",
            "java",
            "jinja",
            "json",
            "kotlin",
            "markdown",
            "php",
            "rust",
            "sql",
            "todotxt",
            "toml",
            "typescript",
            "vim",
            "vimdoc",
            "xml",
            "yaml",
            "zathurarc",
        },
        highlight = { enable = true, },
        indent = { enable = true, },
        textobjects = {
            select = {
                enable = true,
                lookahed = true,
                keymaps = {
                    ["af"] = "@function.outer",
                }
            }
        },
    },

}
