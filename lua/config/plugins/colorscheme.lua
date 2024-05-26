return {
  'bluz71/vim-nightfly-colors',
  name = 'nightfly',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.nightflyItalics = false
    vim.g.nightflyNormalFloat = true
    vim.g.nightflyWinSeparator = 3

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = 'rounded'
      }
    )
    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
      vim.lsp.handlers.signatureHelp, {
        border = 'rounded'
      }
    )
    vim.diagnostic.config({ float = { border = 'rounded' } })

    vim.cmd.colorscheme('nightfly')
  end
}
