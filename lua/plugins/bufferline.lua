return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			show_buffer_close_icons = false,
			show_tab_indicators = false,
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, level)
				local icon = level:match("error") and "" or (level:match("warning") and "" or "")
				return icon
			end,
		},
	},
}
