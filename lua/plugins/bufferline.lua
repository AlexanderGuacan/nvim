return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, level)
				local icon = level == "error" and " " or (level == "warning" and " " or " ")
				return " " .. icon
			end,
			show_buffer_close_icons = false,
			show_tab_indicators = false,
		},
	},
}
