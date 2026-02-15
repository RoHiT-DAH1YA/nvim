return {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup({
        style = "dark",  -- Use "light" or "dark"
        width = 100,     -- Set to a high value to ensure full width
        height = 100,    -- Set to a high value to ensure full height
        width_ratio = 1.0,
        height_ratio  = 1.0,
        -- border = "shadow", -- Remove border
        pager = true,   -- Disable pager mode
      })
    end,
    cmd = "Glow",
}
