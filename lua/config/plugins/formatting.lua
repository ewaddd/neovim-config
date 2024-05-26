return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')

    conform.setup({
      formatter_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        html = { 'prettier' },
        python = { 'isort', 'black' },
        lua = { 'stylua' },
      },
      format_on_save = { timeout = 500, lsp_fallback = true }
    })

    vim.keymap.set('n', '<leader>fm', function()
      conform.format({ timeout = 500, lsp_fallback = true })
    end)
  end
}
