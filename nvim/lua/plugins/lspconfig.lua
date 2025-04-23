return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"css_variables",
					"emmet_language_server",
					"eslint",
					"html",
					"intelephense",
					"jsonls",
					"lua_ls",
					"tailwindcss",
					"twiggy_language_server",
					"volar",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				"bashls",
				"css_variables",
				"emmet_language_server",
				"eslint",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"tailwindcss",
				"twiggy_language_server",
				"volar",
			}

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
