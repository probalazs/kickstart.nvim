-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'famiu/bufdelete.nvim',
    keys = {
      { '<leader>bd', '<cmd>Bdelete<CR>', desc = '[B]uffer [D]elete' },
    },
  },
  { 'editorconfig/editorconfig-vim' },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    keys = {
      { 's', function() require('flash').jump() end, mode = { 'n', 'x', 'o' }, desc = 'Flash jump' },
      { 'S', function() require('flash').treesitter() end, mode = { 'n', 'x', 'o' }, desc = 'Flash treesitter' },
    },
  },
  {
    'mg979/vim-visual-multi',
    event = 'VeryLazy',
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<C-\>]],
      direction = 'vertical',
      size = 80,
    },
  },
}
