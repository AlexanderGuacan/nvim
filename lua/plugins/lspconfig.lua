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
		automatic_enable = true,
		ensure_installed = {
			"bashls",
			"clangd",
			"lua_ls",
			"neocmake",
			"pyright",
			"texlab",
		},
	},
}
