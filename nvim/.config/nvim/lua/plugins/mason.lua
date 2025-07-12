return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",        -- Lua LSP
        "marksman",      -- Markdown LSP
        "ts_ls",         -- TypeScript/JavaScript LSP
        "tailwindcss",   -- Tailwind CSS LSP
        "eslint",        -- ESLint LSP
      },
      automatic_installation = true,
    })
  end,
}
