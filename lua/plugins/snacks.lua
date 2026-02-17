local picker = {
	enabled = true,
	sources = { explorer = { layout = { layout = { position = "right" } } } },
}

local notifier = { enabled = true, top_down = false }

return {
	"folke/snacks.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim" },
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = notifier,
		picker = picker,
		statuscolumn = { enabled = true },
		words = { enabled = true },
		-- bigfile = { enabled = true },
		-- quickfile = { enabled = true },
		-- scope = { enabled = true },
		-- scroll = { enabled = true },
	},
	keys = {
		-- Top Pickers & Explorer
		{
			"<leader>n",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>q",
			function()
				Snacks.picker.qflist()
			end,
			desc = "Quickfix List",
		},

		-- Search
		{
			"<leader>sc",
			function()
				Snacks.picker.commands()
			end,
			desc = "Commands",
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Buffer Diagnostics",
		},
		{
			"<leader>sD",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Keymaps",
		},

		-- Find
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Config Files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},

		-- LSP
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"grr",
			function()
				Snacks.picker.lsp_references()
			end,
			desc = "References",
		},
		{
			"gO",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"gri",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Go to implementations",
		},
		{
			"grt",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},

		-- Git --
		{
			"<leader>gf",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Git Files",
		},
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "Git Branches",
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Git Status",
		},
		{
			"<leader>gd",
			function()
				Snacks.picker.git_diff()
			end,
			desc = "Git Diff (Hunks)",
		},

		-- Others
		{
			"<c-/>",
			function()
				Snacks.terminal()
			end,
			mode = { "n", "t" },
			desc = "Toggle Terminal",
		},
		{
			"<c-_>",
			function()
				Snacks.terminal()
			end,
			mode = { "n", "t" },
			desc = "which_key_ignore",
		},
	},
}
