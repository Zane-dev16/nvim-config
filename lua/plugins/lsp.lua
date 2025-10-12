return {
    {
        "williamboman/mason.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("mason").setup()
        end,
        enabled = false
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = { "BufReadPre", "BufNewFile" },
        version = "1.32.0",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "clangd",
                }
            })
        end,
        enabled = false
    },
    {
        "neovim/nvim-lspconfig",
        version = "0.1.7",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",  -- Explicitly include this dependency
        },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities=capabilities,
            })
            lspconfig.pyright.setup({
                capabilities=capabilities,
            })
            lspconfig.clangd.setup({
                capabilities=capabilities,
            })

            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
            vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
            vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end,
        enabled = false
    }
}
