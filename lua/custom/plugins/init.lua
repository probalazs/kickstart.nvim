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
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics (Trouble)' },
      { '<leader>xb', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Buffer diagnostics (Trouble)' },
    },
    opts = {},
  },
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
    'mrjones2014/legendary.nvim',
    priority = 10000,
    lazy = false,
    dependencies = { 'nvim-telescope/telescope.nvim' },
    keys = { { '<leader>?', '<cmd>Legendary<CR>', desc = '[?] Command palette' } },
    opts = {
      extensions = { lazy_nvim = true, which_key = { auto_register = true } },
    },
  },
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<CR>',        desc = '[G]it: [D]iffview open' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it: file [H]istory' },
      { '<leader>gH', '<cmd>DiffviewFileHistory<CR>',  desc = '[G]it: repo [H]istory' },
      { '<leader>gx', '<cmd>DiffviewClose<CR>',        desc = '[G]it: diffview close' },
    },
    opts = {},
  },
  {
    'NeogitOrg/neogit',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'sindrets/diffview.nvim' },
    keys = { { '<leader>gg', '<cmd>Neogit<CR>', desc = '[G]it: open Neo[G]it' } },
    opts = {
      graph_style = 'unicode',
      integrations = { diffview = true, telescope = true },
    },
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
