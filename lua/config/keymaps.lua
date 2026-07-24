local map = vim.keymap.set

map("n", "<C-d>", "M<C-d>", { desc = "Jump half page down and place cursor in the middle" })
map("n", "<C-u>", "M<C-u>", { desc = "Jump half page up and place cursor in the middle" })

map("n", "n", "nzz", { desc = "Repeat last search in forward direction and keep cursor in the middle" })
map("n", "N", "Nzz", { desc = "Repeat last search in backward direction and keep cursor in the middle" })

map("v", ">", ">gv", { desc = "Increment indentation and keep selection" })
map("v", "<", "<gv", { desc = "Decrement indentation and keep selection" })

map("n", "gb", ":bnext<CR>", { silent = true, desc = "Go to next buffer" })
map("n", "gB", ":bprevious<CR>", { silent = true, desc = "Go to previous buffer" })
map("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Delete buffer" })

map("n", "<M-j>", ":m +1<CR>==", { silent = true, desc = "Move line down" })
map("n", "<M-k>", ":m -2<CR>==", { silent = true, desc = "Move line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selectioned lines down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selectioned lines up" })
