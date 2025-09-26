vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = false
vim.opt.number = false
vim.opt.signcolumn = "auto"
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.opt.foldcolumn = "0"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true -- Persistent undo
vim.opt.cursorline = true -- Highlight current line
vim.cmd.colorscheme = "catppuccin"
vim.opt.statuscolumn = "%s %=%{printf('%1d', v:lnum)} "
