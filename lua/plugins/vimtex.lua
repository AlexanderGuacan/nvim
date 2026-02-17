return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "zathura_simple"
		vim.g.vimtex_compiler_latexmk = { out_dir = vim.fn.getcwd() .. "/build" }
		vim.g.vimtex_syntax_enabled = 0
		vim.g.vimtex_syntax_conceal_disable = 1
	end,
}
