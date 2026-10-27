return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			bash = { "beautysh" },
			cmake = { "cmake_format" },
			cpp = { "clang-format" },
			css = { "prettier" },
			html = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "prettier", "jq", stop_after_first = true },
			lua = { "stylua" },
			markdown = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 3000,
			lsp_format = true,
		},
	},
	init = function()
		vim.o.formatexpr = "v:lua:require'conform'.formatexpr()"
	end,
}
