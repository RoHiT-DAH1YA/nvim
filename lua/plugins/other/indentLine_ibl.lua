-- this makes the indent line appear
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "▏",
      -- char = "│",
      -- char = "┆",
      -- char = "┊",
      -- highlight = { "Function", "Label" },
      highlight = "IblIndent",
    },
    whitespace = {
        highlight = "WhiteScope",
    },
    scope = {
      enabled = true,
      highlight = "PurpleScope",
    },
  },
  config = function(_, opts)
    local hooks = require("ibl.hooks")

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "WhiteScope", {
        fg = "#31322F",
      })
      vim.api.nvim_set_hl(0, "PurpleScope", {
        fg = "#327D78",
        bold = true,
      })

      vim.api.nvim_set_hl(0, "GrayIndent", {
        fg = "#4B5263",
        bold = false
      })
    end)

    require("ibl").setup(opts)
  end,
}
