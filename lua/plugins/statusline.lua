return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			theme = "gruvbox_dark",
			globalstatus = true,
			component_separators = {
				left = "",
				right = "",
			},
			section_separators = {
				right = "",
				left = "",
			},
		},
		sections = {
			lualine_b = {},
			lualine_c = {
				{
					"branch",
					icon = "",
				},
				"diagnostics",
				{ "filename", path = 1 },
			},
			lualine_x = {
				"encoding",
				"fileformat",
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
