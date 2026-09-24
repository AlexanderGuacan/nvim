local opt = vim.opt

-- Text indentation
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.breakindent = true
opt.linebreak = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 4
opt.signcolumn = "yes"

-- Buffers and windows
opt.splitright = true
opt.splitbelow = true

-- Folds
opt.foldlevel = 99
opt.foldlevelstart = 99

-- Extras
opt.confirm = true
opt.path:append("**")

vim.diagnostic.config({
	virtual_text = true,
	float = {
		border = "rounded",
		source = "if_many",
	},
})

vim.lsp.document_color.enable(true, nil, {
	style = "virtual",
})
