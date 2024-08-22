vim.opt.number = true

vim.g.mapleader = " "

--vim.api.nvim_set_keymap("n", "<C-S-r", ":Neotree focus<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-n>", ":tabnew<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-tab>", ":tabnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-w>", ":tabclose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-e>", ":Neotree toggle<CR>", {noremap = true, silent = true})

require('plugins')
