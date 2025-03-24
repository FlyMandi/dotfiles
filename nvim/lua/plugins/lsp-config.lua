return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				log_level = vim.log.levels.DEBUG,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "powershell_es", "jdtls", "lemminx" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		--TODO: find out how to quickly jump to next reference/definition
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = vim.tbl_deep_extend(
				"force",
				vim.lsp.protocol.make_client_capabilities(),
				require("cmp_nvim_lsp").default_capabilities()
			)

			capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

			lspconfig.glsl_analyzer.setup({ capabilities = capabilities })

			lspconfig.lua_ls.setup({ capabilities = capabilities })

			lspconfig.clangd.setup({ capabilities = capabilities })

			lspconfig.jdtls.setup({ capabilities = capabilities })

			lspconfig.lemminx.setup({ capabilities = capabilities })

			lspconfig.powershell_es.setup({
				capabilities = capabilities,
				bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services/",
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "dec", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "def", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "ref", vim.lsp.buf.references, {})
			vim.keymap.set("n", "ren", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
