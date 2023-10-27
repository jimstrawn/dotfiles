return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {'<leader>fb', "<cmd>Telescope buffers<cr>", mode = "n", desc = "Find buffer"},
    {'<leader>ff', "<cmd>Telescope find_files<cr>", mode = "n", desc = "Find file"},
    {'<leader>fg', "<cmd>Telescope git_files<cr>", mode = "n", desc = "Find git file"},
    {'<leader>fs', "<cmd>Telescope live_grep<cr>", mode = "n", desc = "Find string in cwd"},
  },
  config = function()
    require('telescope').load_extension('fzy_native')   
  end,
}
