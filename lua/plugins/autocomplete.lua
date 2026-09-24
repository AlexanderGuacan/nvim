return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = {
			preset = "super-tab",
		},

		appearance = { nerd_font_variant = "mono" },

		completion = {
			documentation = { auto_show = false },
			ghost_text = { enabled = true },
			list = { selection = { preselect = true, auto_insert = false } },
		},

		cmdline = {
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},

		sources = { default = { "lsp", "path", "snippets", "buffer" } },

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
