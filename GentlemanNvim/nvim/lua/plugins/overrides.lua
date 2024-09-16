return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
  -- Configuración para conform.nvim (formateador)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier", "eslint_d" },
        typescript = { "prettier", "eslint_d" },
        javascriptreact = { "prettier", "eslint_d" },
        typescriptreact = { "prettier", "eslint_d" },
        vue = { "prettier", "eslint_d" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
      },
      -- format_on_save = function(bufnr)
      --   if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      --     return
      --   end
      --   return { timeout_ms = 500, lsp_fallback = true }
      -- end,
    },
  },
  -- Configuración para nvim-lint (linter)
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        vue = { "eslint_d" },
      },
    },
  },
}
