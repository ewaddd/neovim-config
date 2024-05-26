return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    { 'folke/neodev.nvim', opts = {} }
  },
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local on_attach = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
      vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, { buffer = 0 })
      vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, { buffer = 0 })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
      vim.keymap.set('n', '<leader>fd', ':Telescope diagnostics<CR>', { buffer = 0 })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
    end

    mason.setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗'
        }
      }
    })

    mason_lspconfig.setup({
      handlers = {
        function(server_name)
          lspconfig[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
          }
        end,
      }
    })
  end
}
