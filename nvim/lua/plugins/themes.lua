return {
    {
        "xiyaowong/transparent.nvim",
        lazy = false,

    },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true,
				contrast = "hard",
				palette_overrides = {},
				overrides = {
					["String"] = { fg = "#99FF20" },
					["@string"] = { fg = "#99FF20" },

					["Type"] = { fg = "#9090FF" },
					["Function"] = { fg = "#EED030" },

					["Identifier"] = { fg = "#75EEFF" },

					["@variable"] = { fg = "#00AAD0" },
					["@variable.parameter"] = {
						italic = true,
						fg = "#b9d3eb",
					},
					["@lsp.type.parameter"] = {
						italic = true,
						fg = "#b9d3eb",
					},

					["@constant"] = { fg = "#00AAD0" },

					["Boolean"] = { fg = "#FF20FF" },
					["StorageClass"] = { fg = "#E950A0" },
				},
				dim_inactive = false,
				transparent_mode = false,
			})
		end,
	},
}
