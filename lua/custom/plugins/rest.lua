return {
  'rest-nvim/rest.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      opts.skip_ssl_verification = true
      table.insert(opts.ensure_installed, 'http')
    end,
  },
}
