return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')

    telescope.setup {
      defaults = {
        mappings = {
          i = {
            ['<S-j>'] = actions.move_selection_next,
            ['<S-k>'] = actions.move_selection_previous
          }
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      }
    }
    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files)
    vim.keymap.set('n', '<leader>fs', builtin.live_grep)
    vim.keymap.set('n', '<leader>fg', builtin.git_files)
  end
}
