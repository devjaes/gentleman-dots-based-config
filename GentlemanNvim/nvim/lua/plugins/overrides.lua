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
-- {
--     "stevearc/conform.nvim",
--     opts = {
--       formatters_by_ft = {
--         javascript = { "prettier" },
--         typescript = { "prettier" },
--         javascriptreact = { "prettier" },
--         typescriptreact = { "prettier" },
--         vue = { "prettier" },
--         html = { "prettier" },
--         css = { "prettier" },
--         json = { "prettier" },
--         lua = { "stylua" },
--       },
--     },
--   },
--   -- Configuraci¢n para nvim-lint (linter)
--   {
--     "mfussenegger/nvim-lint",
--     opts = function(_, opts)
--       opts.linters_by_ft = {
--         javascript = { "eslint_d" },
--         typescript = { "eslint_d" },
--         javascriptreact = { "eslint_d" },
--         typescriptreact = { "eslint_d" },
--         vue = { "eslint_d" },
--       }
--       return opts
--     end,
--   },
}
