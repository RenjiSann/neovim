-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kyazdani42/nvim-tree.lua',
    event = 'VimEnter',
    config = function()
      require('nvim-tree').setup()
      local api = require 'nvim-tree.api'
      local toggle_cmd = function()
        api.tree.toggle {
          find_file = false,
          focus = true,
          path = {},
          update_root = false,
        }
      end

      vim.keymap.set('n', '<leader>n', toggle_cmd, { desc = 'SAUCISSE' })
      require('which-key').setup()
      require('which-key').add {
        { '<leader>n', desc = 'Toggle [N]vimTree', mode = { 'n' } },
      }
    end,
    cmd = {
      'NvimTreeClipboard',
      'NvimTreeFindFile',
      'NvimTreeOpen',
      'NvimTreeRefresh',
      'NvimTreeToggle',
    },
  },
}
