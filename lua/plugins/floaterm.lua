return {
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true })
        vim.keymap.set('n', '<leader>fs', ':FloatermToggle<CR>', { noremap = true })
        vim.keymap.set('t', '<C-q>', "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true })

    end
}
