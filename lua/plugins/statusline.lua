return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			globalstatus = true,
			component_separators = {
				left = "",
				right = "",
			},
		},
		sections = {
			lualine_b = {
				"branch",
			},
			lualine_c = {
				{ "filename", path = 1 },
			},
			lualine_x = {
				"diagnostics",
				"lsp_status",
				"filetype",
			},
			lualine_y = {},
			lualine_z = {},
		},
	},
	config = function(_, opts)
		vim.opt.showmode = false
		require("lualine").setup(opts)
	end,
}
