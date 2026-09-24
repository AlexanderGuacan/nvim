local map = vim.keymap.set

map("n", "<c-u>", "<c-u>zz", { desc = "Scroll up half page and place cursor in the middle of the screen" })
map("n", "<c-d>", "<c-d>zz", { desc = "Scroll down half page and place cursor in the middle of the screen" })

map("n", "n", "nzz", { desc = "Repeat last search in forward direction and keep cursor in the middle" })
map("n", "N", "Nzz", { desc = "Repeat last search in backward direction and keep cursor in the middle" })

map("v", ">", ">gv", { desc = "Increment indentation and keep selection" })
map("v", "<", "<gv", { desc = "Decrement indentation and keep selection" })

map("n", "<leader>e", ":Explore<CR>", { silent = true, desc = "Open file explorer" })
map("n", "<leader>q", ":copen<CR>", { silent = true, desc = "Open quickfix list" })
map("n", "<leader>sr", ":registers<CR>", { silent = true, desc = "Open registers list" })
map("n", "<leader>bb", ":ls<CR>", { silent = true, desc = "Open buffers list" })
map("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Delete buffer" })

map("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
		max_width = 80,
	})
end, { desc = "Display hover information about the symbol under the cursor in a floating window" })

map("i", "<C-s>", function()
	vim.lsp.buf.signature_help({
		border = "rounded",
		max_width = 80,
	})
end, { desc = "Display signature information about the symbol under the cursor in a floating window" })
