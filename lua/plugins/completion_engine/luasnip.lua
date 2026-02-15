return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  config = function()
    -- This loads any snippets defined in your lua/snippets/ directory
    require("luasnip.loaders.from_lua").lazy_load({ 
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" } 
    })
  end,
}
