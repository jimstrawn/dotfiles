return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      width = 35,
      side = "left",
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  },
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeToggle<CR>",
      desc = "Toggle File Explorer",
    },
  },
}
