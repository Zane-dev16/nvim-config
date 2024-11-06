
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pr", "<leader>p :!open -a Skim %:r.pdf<CR>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

vim.keymap.set("n", "<leader>gl", vim.cmd.Glow)

-- Mapping to copy the name of the current file to the clipboard
vim.api.nvim_set_keymap('n', '<leader>cf', ':let @" = expand("%")<CR>', { noremap = true, silent = true })

-- Mapping to copy the full path of the current file to the clipboard
vim.api.nvim_set_keymap('n', '<leader>cp', ':let @" = expand("%:p")<CR>', { noremap = true, silent = true })
