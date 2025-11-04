return{
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<C-e>'] = { 'hide', 'fallback' },
            ['<C-y>'] = { 'select_and_accept', 'fallback' },
            ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
            ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
          },

        appearance = {
            nerd_font_variant = 'mono',
            kind_icons = {
                Snippets = " ",
            },
        },

        completion = { documentation = { auto_show = false } },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer'},
            providers = {
                snippets = {
                    opts = {
                        friendly_snippets = true,
                        search_path = { "~/.config/nvim/snippets" },
                    },
                },
            },
        },
    },
  --opts_extend = { "sources.default" }
}
