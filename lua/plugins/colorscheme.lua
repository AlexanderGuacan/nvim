return {
    "catppuccin/nvim",
    name = "colorscheme",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd("colorscheme catppuccin-mocha") end
}
