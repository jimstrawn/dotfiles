return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "python",
        "bash",
        "json",
        "yaml",
        "markdown",
        "html",
        "css",
        "go",
        "rust",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
  end,
}