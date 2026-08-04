local opt = vim.opt
local diagnostic = vim.diagnostic

-- Text indentation
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.wrap = true
opt.breakindent = true
opt.linebreak = true

-- Search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignorecase = true

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 4
opt.signcolumn = "yes"
diagnostic.config({
	virtual_text = true,
	underline = true,
	signs = {
		text = {
			[diagnostic.severity.ERROR] = "",
			[diagnostic.severity.WARN] = "",
			[diagnostic.severity.INFO] = "",
			[diagnostic.severity.HINT] = "",
		},
	},
	float = {
		border = "rounded",
		source = "if_many",
	},
})

-- Buffers and windows
opt.equalalways = false
opt.splitkeep = "screen"
opt.splitright = true
opt.splitbelow = true

-- Folds
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99

-- Extras
opt.confirm = true
opt.path:append("**")
