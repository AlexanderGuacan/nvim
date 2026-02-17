return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason-org/mason.nvim" },
	config = function()
		vim.lsp.enable({ "bashls", "clangd", "texlab", "lua_ls", "pyright" })
	end,
}
