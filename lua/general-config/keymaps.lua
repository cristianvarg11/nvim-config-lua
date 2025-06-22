local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("i", ",e", "<ESC>")
vim.keymap.set("n", "qq", ":q<CR>")
vim.keymap.set("n", "qf", ":q!<CR>")
vim.keymap.set("n", ",w", ":w<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
