return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'mason-org/mason.nvim',
  },
  config = function()
    vim.lsp.enable({
      'bashls',
      'clangd',
      'html',
      'emmet_language_server',
      'cssls',
      'ts_ls',
      'omnisharp',
    })
  end,
}
