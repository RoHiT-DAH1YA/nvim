return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets', "L3MON4D3/LuaSnip" },

  version = '1.*',

  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    keymap = { preset = 'default' },
    snippets = {
        preset = 'luasnip',
    },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
