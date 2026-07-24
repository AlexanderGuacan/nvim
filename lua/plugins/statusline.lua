return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		sections = {
			lualine_b = {
				"branch",
				"diff",
			},
			lualine_c = {
				{ "filename", path = 1, file_status = true },
			},
			lualine_x = {
				"diagnostics",
				"filetype",
			},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_sections = {
			lualine_c = {
				{ "filename", path = 1, file_status = true },
			},
			lualine_x = {
				"diagnostics",
				"filetype",
			},
		},
	},
	config = function(_, opts)
		vim.opt.showmode = false
		require("lualine").setup(opts)
	end,
}
