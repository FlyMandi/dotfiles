return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-k>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
            vim.keymap.set("n", "<C-]>", function() harpoon:list():next() end)
            vim.keymap.set("n", "<C-[>", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<C-n>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<C-e>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<C-i>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<C-o>", function() harpoon:list():select(4) end)
        end,
    }
}
