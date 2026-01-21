return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "bash",
      "c",
      "cpp",
      "c_sharp",
      "css",
      "gitignore",
      "html",
      "javascript",
      "json",
      "markdown",
      "typescript",
      "vim",
      "vimdoc",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
      }
    },
  },
  config = function (_, opts)
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      require('nvim-treesitter.configs').setup(opts)
  end,
}
