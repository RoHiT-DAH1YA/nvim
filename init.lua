vim.g.mapleader = " "
require("options")
require("plugin")
require("remaps")

vim.cmd([[autocmd FileType markdown setlocal wrap linebreak nolist]])

-- vim.cmd.colorscheme("vague")
 vim.cmd.colorscheme("bamboo")
