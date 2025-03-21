return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "python",
      "markdown",
      "markdown_inline",
      "c",
      "html",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
        
