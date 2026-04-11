return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"bash",
			"c",
			"cmake",
			"cpp",
			"html",
			"javascript",
			"latex",
			"lua",
			"python",
			"typescript",
		})
	end,
}
