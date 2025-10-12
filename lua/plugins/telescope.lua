return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        {'<leader>pf', '<cmd>Telescope find_files<cr>'},
        {'<leader>pg', '<cmd>Telescope live_grep<cr>'},
        {'<leader>pb', '<cmd>Telescope buffers<cr>'},
        {'<leader>ph', '<cmd>Telescope help_tags<cr>'},
    }
}
