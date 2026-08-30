vim.g.mapleader = " "
require("plugin")
require("options")
require("remaps")

vim.cmd([[autocmd FileType markdown setlocal wrap linebreak nolist]])

-- vim.cmd.colorscheme("vague")
vim.cmd.colorscheme("bamboo")
