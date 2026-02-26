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
			"java",
			"latex",
			"lua",
			"python",
		})
	end,
}
