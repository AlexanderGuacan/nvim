return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		automatic_enable = true,
		ensure_installed = {
			"bashls",
			"clangd",
			"neocmake",
			"jdtls",
			"lua_ls",
			"pyright",
			"texlab",
		},
	},
}
