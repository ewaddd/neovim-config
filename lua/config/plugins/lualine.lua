return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_nightfly = require('lualine.themes.nightfly')
    custom_nightfly.normal.b.bg = '#011627'
    custom_nightfly.insert.b.bg = '#011627'
    custom_nightfly.normal.c.bg = '#011627'

    require('lualine').setup({
      options = {
        theme = custom_nightfly,
        section_separators = '',
        component_separators = ''
      }
    })
  end
}
