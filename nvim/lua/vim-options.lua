vim.cmd("set nowrap") -- don't wrap text
vim.cmd("set expandtab") -- use spaces for indentation when tab is pressed
vim.cmd("set tabstop=2") -- width of tab, in spaces
vim.cmd("set softtabstop=2") -- width of soft tab (inserted when we indent something), in spaces
vim.cmd("set shiftwidth=2") -- width of auto-indentation, in spaces
vim.cmd("set number") -- non-relative line numbers

vim.g.mapleader = " " -- set space as the leader key
vim.o.guicursor = "n-v-c:block-Cursor" -- use block cursor

vim.opt.foldcolumn = "0" -- disable fold bar
