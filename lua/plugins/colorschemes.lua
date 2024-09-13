return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function ()
            require("catppuccin").setup({
                flavour = "macchiato",
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function ()
            vim.cmd("colorscheme kanagawa-wave")
        end
    }
}
