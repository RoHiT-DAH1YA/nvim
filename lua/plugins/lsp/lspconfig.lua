return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        local lsp_format = function () 
            vim.lsp.buf.format({})
        end

        lspconfig.ast_grep.setup({})
        lspconfig.denols.setup({})
    end,
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
}
