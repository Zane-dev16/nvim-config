return {
    {
        "NeogitOrg/neogit",
        tag = "v0.0.1",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
            "ibhagwan/fzf-lua",              -- optional
            "echasnovski/mini.pick",         -- optional
        },
        config = true
    },
    {
        "lewis6991/gitsigns.nvim",
        config = true
    }

}