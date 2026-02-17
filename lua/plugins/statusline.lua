return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = { globalstatus = true },
		sections = { lualine_c = { { "filename", path = 1, file_status = true } } },
	},
	config = function(_, opts)
		vim.opt.showmode = false
		require("lualine").setup(opts)
	end,
}
