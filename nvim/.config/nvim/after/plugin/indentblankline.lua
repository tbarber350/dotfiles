vim.opt.list = true
vim.opt.listchars:append "eol:↴"
-- adjust the color of the indent lines
vim.cmd [[highlight IndentBlanklineChar guifg=#3b4252 gui=nocombine]]

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
