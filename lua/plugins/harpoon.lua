return {
    'ThePrimeagen/harpoon',
    keys = {
      { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Harpoon: Add file" },
      { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon: Toggle quick menu" },
      { "<C-h>", function() require("harpoon.ui").nav_next() end, desc = "Harpoon: Navigate next" },
      { "<C-t>", function() require("harpoon.ui").nav_prev() end, desc = "Harpoon: Navigate prev" },
    }
}
