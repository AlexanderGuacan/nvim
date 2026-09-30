return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "bash",
      "c",
      "cmake",
      "cpp",
      "html",
      "javascript",
      "markdown",
      "markdown_inline",
      "json",
      "jsx",
      "lua",
      "regex",
      "tsx",
      "typescript",
    })
  end,
}
