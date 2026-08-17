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
			custom_filter = function(buf)
				local forbidden_buftypes = { "terminal" }

				for _, buftype in ipairs(forbidden_buftypes) do
					if vim.bo[buf].buftype == buftype then
						return false
					end
				end

				return true
			end,
		},
	},
}
