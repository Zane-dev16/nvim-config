return {
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true })
        vim.keymap.set('n', '<leader>fs', ':FloatermShow<CR>', { noremap = true })

    end
}
