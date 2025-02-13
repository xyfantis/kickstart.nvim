return {
  'rest-nvim/rest.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, 'http')
    end,
  },
  init = function()
    vim.bo.formatexpr = ''
    vim.bo.formatprg = 'jq'
  end,
  config = function()
    vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<CR>', { desc = 'Run rest command' })
    vim.keymap.set('n', '<leader>re', '<cmd>Rest env select<CR>', { desc = 'Select rest env' })
  end,
}
