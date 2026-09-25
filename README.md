# nvim-config

Personal Neovim Lua config using lazy.nvim, with `Irell/` core options/keymaps and `plugins/` specs for LSP, completion, Telescope, Treesitter, and UI (kanagawa).

## Setup

Requires Neovim >= 0.9 and git.

```sh
git clone https://github.com/Zane-dev16/nvim-config.git ~/.config/nvim
nvim  # lazy.nvim bootstraps itself on first launch
```

Then run `:Lazy sync` inside Neovim to install/update plugins. Alternatively, symlink an existing checkout: `ln -s /path/to/nvim-config ~/.config/nvim`.
