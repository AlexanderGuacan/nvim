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
			"json",
			"jsx",
			"lua",
			"python",
			"tsx",
			"typescript",
			"javascript",
		})
	end,
}
