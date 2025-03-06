return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            HarpoonUI = require("harpoon.ui")
            local harpoon = require("harpoon")
            harpoon.setup()
        end,
        keys = {
            { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "harpoon file", },
            { "<C-k>", function() HarpoonUI.toggle_quick_menu() end, desc = "harpoon quick menu", },
            { "1", function() HarpoonUI.nav_file(1) end, desc = "harpoon to file 1", },
            { "2", function() HarpoonUI.nav_file(2) end, desc = "harpoon to file 2", },
            { "3", function() HarpoonUI.nav_file(3) end, desc = "harpoon to file 3", },
            { "4", function() HarpoonUI.nav_file(4) end, desc = "harpoon to file 4", },
            { "<C-]>", function() HarpoonUI.nav_next() end, desc = "harpoon to file 4", },
            { "<C-[>", function() HarpoonUI.nav_prev() end, desc = "harpoon to file 4", },
        },
    }
}
