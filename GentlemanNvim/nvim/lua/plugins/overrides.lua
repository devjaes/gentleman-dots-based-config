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
  -- Configuraci¢n para conform.nvim (formateador)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = function()
          if vim.fn.filereadable(".eslintrc") == 1 then
            return { "prettier", "eslint_d" }
          else
            return { "prettier" }
          end
        end,
        typescript = function()
          if vim.fn.filereadable(".eslintrc") == 1 then
            return { "prettier", "eslint_d" }
          else
            return { "prettier" }
          end
        end,
        javascriptreact = function()
          if vim.fn.filereadable(".eslintrc") == 1 then
            return { "prettier", "eslint_d" }
          else
            return { "prettier" }
          end
        end,
        typescriptreact = function()
          if vim.fn.filereadable(".eslintrc") == 1 then
            return { "prettier", "eslint_d" }
          else
            return { "prettier" }
          end
        end,
        vue = function()
          if vim.fn.filereadable(".eslintrc") == 1 then
            return { "prettier", "eslint_d" }
          else
            return { "prettier" }
          end
        end,
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
      },
    },
  },
  -- Configuraci¢n para nvim-lint (linter)
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
-- return {
--   -- change trouble config
--   {
--     "folke/trouble.nvim",
--     opts = { use_diagnostic_signs = true },
--   },
--   -- add symbols-outline
--   {
--     "simrat39/symbols-outline.nvim",
--     cmd = "SymbolsOutline",
--     keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
--     config = true,
--   },
--   -- ConfiguraciÃ³n para conform.nvim (formateador)
--   {
--     "stevearc/conform.nvim",
--     opts = {
--       formatters_by_ft = {
--         javascript = { "prettier", "eslint_d" },
--         typescript = { "prettier", "eslint_d" },
--         javascriptreact = { "prettier", "eslint_d" },
--         typescriptreact = { "prettier", "eslint_d" },
--         vue = { "prettier", "eslint_d" },
--         html = { "prettier" },
--         css = { "prettier" },
--         json = { "prettier" },
--         lua = { "stylua" },
--       },
--       -- format_on_save = function(bufnr)
--       --   if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
--       --     return
--       --   end
--       --   return { timeout_ms = 500, lsp_fallback = true }
--       -- end,
--     },
--   },
--   -- ConfiguraciÃ³n para nvim-lint (linter)
--   {
--     "mfussenegger/nvim-lint",
--     opts = {
--       linters_by_ft = {
--         javascript = { "eslint_d" },
--         typescript = { "eslint_d" },
--         javascriptreact = { "eslint_d" },
--         typescriptreact = { "eslint_d" },
--         vue = { "eslint_d" },
--       },
--     },
--   },
-- }
