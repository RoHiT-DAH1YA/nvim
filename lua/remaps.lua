vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sc", ":nohl<CR>")

-- md files
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown Preview" })
vim.keymap.set("n", "<leader>mg", ":Glow<CR>", { desc = "Glow Markdown Preview" })

-- Map 'leader + y' in Visual Mode to copy to system clipboard
vim.keymap.set("v", '<leader>cp', '"+y', { desc = 'Copy selected to clipboard' })

-- ========== remaps for lsp =================
-- error Diagnostics keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show error" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics list" })

-- ========== remaps for luasnip =================

local ls = require "luasnip"
-- <C-k> is expand the snippet
vim.keymap.set({"i", "s"}, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true})
-- <C-j> is to go back in the sinppet list
vim.keymap.set({"i", "s"}, "<C-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true})

-- <C-l> is to show the list of snippet
vim.keymap.set({"i", "s"}, "<C-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true})
-- <leader><leader>s hot reload luasnip snippets
vim.keymap.set("n", "<leader><leader>s", function()
    require("luasnip.loaders.from_lua").load({
        paths = { vim.fn.stdpath("config") .. "/lua/snippets" }
    })
  print("Snippets reloaded")
  end
)
