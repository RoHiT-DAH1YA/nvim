return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",

    config = function()
        local textobject = require("nvim-treesitter-textobjects.select")

        require("nvim-treesitter-textobjects").setup({
            select = {
                lookahead = true,

                selection_modes = {
                    ["@parameter.outer"] = "v",
                    ["@function.outer"] = "V",
                    ["@class.outer"] = "<c-v>",
                },

                include_surrounding_whitespace = true,
            },
        })

        vim.keymap.set({ "x", "o" }, "af", function()
            textobject.select_textobject("@function.outer", "textobjects")
        end)

        vim.keymap.set({ "x", "o" }, "if", function()
            textobject.select_textobject("@function.inner", "textobjects")
        end)

        vim.keymap.set({ "x", "o" }, "ac", function()
            textobject.select_textobject("@class.outer", "textobjects")
        end)

        vim.keymap.set({ "x", "o" }, "ic", function()
            textobject.select_textobject("@class.inner", "textobjects")
        end)

        vim.keymap.set({ "x", "o" }, "as", function()
            textobject.select_textobject("@scope", "locals")
        end)
    end,
}
