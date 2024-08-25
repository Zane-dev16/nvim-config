return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            require("catppuccin").setup({
                flavour = "macchiato",
                transparent_background = true
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function ()
            vim.cmd.colorscheme "kanagawa-wave"
        end
    }
}
