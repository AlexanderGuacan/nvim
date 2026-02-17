vim.api.nvim_create_autocmd("FileType", {
	pattern = { "*" },
	callback = function()
		local ok = pcall(vim.treesitter.start)
		if not ok then
			return
		end

		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
