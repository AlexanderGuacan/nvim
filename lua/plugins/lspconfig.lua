return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {},
		},
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"bashls",
			"clangd",
			"cssls",
			"emmet_language_server",
			"eslint",
			"html",
			"lua_ls",
			"neocmake",
			"pyright",
			"texlab",
			"ts_ls",
		},
	},
}
