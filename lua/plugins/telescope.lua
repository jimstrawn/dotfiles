return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()

    local telescope = require("telescope")
    local actions = require ("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      }
    })

    telescope.load_extension('fzy_native')   
   
    local keymap = vim.keymap
    
    keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "Find buffer"})
    keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = "Find file"})
    keymap.set('n', '<leader>fg', "<cmd>Telescope git_files<cr>", { desc = "Find git file"})
    keymap.set('n', '<leader>fs', "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd"})
  end
}
