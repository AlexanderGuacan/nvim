return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		keymap = {
			preset = "super-tab",
			["<C-u>"] = { "scroll_signature_up", "fallback" },
			["<C-d>"] = { "scroll_signature_down", "fallback" },
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
