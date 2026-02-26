return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		keymap = { preset = "super-tab" },

		appearance = { nerd_font_variant = "mono" },

		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = false } },

		signature = { enabled = true },

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = { default = { "lsp", "path", "snippets", "buffer" } },

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
