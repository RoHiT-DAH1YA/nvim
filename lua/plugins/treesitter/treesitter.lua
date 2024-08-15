return {

    "nvim-treesitter/nvim-treesitter",
        config = function () 
            require("nvim-treesitter.configs").setup {
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript" },

                auto_install = true,
                highlight = {
                    enable = true, -- enable highlighting by default
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
                            node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>si",
                        node_decremental = "<Leader>sn",
                    },
                },
                textobjects = {
                    select = {
                        enable = true,
                        -- Automatically jump forward to textobj, similar to targets.vim
                            lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                                ['@function.outer'] = 'V', -- linewise
                                    ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            }
    end
}

