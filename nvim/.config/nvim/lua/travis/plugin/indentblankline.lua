vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
