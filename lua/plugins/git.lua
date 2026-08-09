return {
	"lewis6991/gitsigns.nvim",
	opts = {
		preview_config = {
			border = "rounded",
		},
	},
	keys = {
		{
			"<leader>gh",
			function()
				vim.cmd([[Gitsigns preview_hunk]])
			end,
			desc = "Git Diff (Preview Hunk)",
		},
	},
}
