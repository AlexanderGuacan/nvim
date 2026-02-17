local map = vim.keymap.set

map("n", "j", "gj", { desc = "Navigate down (visual line)" })
map("n", "k", "gk", { desc = "Navigate up (visual line)" })

map("n", "<C-d>", "<C-d>zz", { desc = "Jumping next half page and keep curso in the middle" })
map("n", "<C-u>", "<C-u>zz", { desc = "Jumping previous half page and keep curso in the middle" })

map("v", ">", ">gv", { desc = "Increment indentation and keep selection" })
map("v", "<", "<gv", { desc = "Decrement indentation and keep selection" })

map("n", "gb", ":bn<CR>", { silent = true, desc = "Next buffer" })
map("n", "gB", ":bp<CR>", { silent = true, desc = "Previous buffer" })
map("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Delete buffer" })

map("n", "<M-j>", ":m +1<CR>==", { silent = true, desc = "Move line down" })
map("n", "<M-k>", ":m -2<CR>==", { silent = true, desc = "Move line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selectioned lines down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selectioned lines up" })
