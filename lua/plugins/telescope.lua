return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').load_extension('fzy_native')   
  end,
}
