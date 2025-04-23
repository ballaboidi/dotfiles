return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"astro",
				"dockerfile",
				"lua",
				"gitignore",
				"html",
				"java",
				"javascript",
				"json",
				"markdown",
				"nginx",
				"php",
				"twig",
				"typescript",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
