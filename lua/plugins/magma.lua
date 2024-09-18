return {
    'dccsillag/magma-nvim', 
    build = ':UpdateRemotePlugins',
    config = function()
        -- Magma mappings
        vim.keymap.set('n', '<LocalLeader>r', function()
            return vim.api.nvim_exec('MagmaEvaluateOperator', true)
        end, { expr = true })

        vim.keymap.set("n", "<Leader>rr", function()
            vim.cmd("MagmaEvaluateLine")
        end, { silent = true })

        vim.keymap.set("x", "<Leader>r", function()
            vim.cmd("MagmaEvaluateVisual")
        end, { silent = true })

        vim.keymap.set("n", "<Leader>rc", function()
            vim.cmd("MagmaReevaluateCell")
        end, { silent = true })

        vim.keymap.set("n", "<Leader>rd", function()
            vim.cmd("MagmaDelete")
        end, { silent = true })

        vim.keymap.set("n", "<Leader>ro", function()
            vim.cmd("MagmaShowOutput")
        end, { silent = true })

        vim.g.magma_automatically_open_output = false
    end
}
