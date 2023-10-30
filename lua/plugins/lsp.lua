return {
  {  
    'williamboman/mason.nvim', 
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      ensure_installed = { 'lua_ls' },
      require('mason-lspconfig').setup()
    end,
  }
}
