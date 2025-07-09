-- lsp tutorial

vim.lsp.start({
    name="clanD",
    cmd = "/home/fyodor/coding/lsp servers/clangd_20.1.0/bin/clangd",
    root_dir = vim.fn.getcwd(),
})
