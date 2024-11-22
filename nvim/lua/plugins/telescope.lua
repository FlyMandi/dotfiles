return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					colorscheme = {
						enable_preview = true,
					},
					find_files = {
						hidden = true,
						find_command = {
							"rg",
							"--files",
							"--glob",
							"!{.git/*,.next/*,.svelte-kit/*,target/*,node_modules/*}",
							"--path-separator",
							"/",
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
