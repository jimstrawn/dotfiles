return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    require("which-key").setup({
      preset = "modern",
      delay = 200,
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
      win = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 0,
        zindex = 1000,
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
      },
      keys = {
        scroll_down = "<c-d>",
        scroll_up = "<c-u>",
      },
      sort = { "local", "order", "group", "alphanum", "mod" },
      expand = 0,
      replace = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
        ellipsis = "…",
        mappings = false,
      },
      show_help = true,
      show_keys = true,
      disable = {
        buftypes = {},
        filetypes = {},
      },
    })

    -- Document existing key chains
    require("which-key").add({
      { "<leader>f", group = "Find" },
      { "<leader>h", group = "Git Hunk" },
      { "<leader>t", group = "Toggle" },
      { "<leader>p", group = "Project" },
      { "<leader>c", group = "Code" },
      { "<leader>r", group = "Rename/Restart" },
      { "<leader>d", group = "Diagnostics" },
    })
  end,
}