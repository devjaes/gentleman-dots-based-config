return {

  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

  -- remove inlay_hints from default
  {
    "neovim/nvim-lspconfig",
    events = "VeryLazy",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        angularls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname)
          end,
        },
      },
    },
  },

  -- eslint config
  -- require("lspconfig").eslint.setup({
  --   on_attach = function(client, bufnr)
  --     vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })
  --     -- Puedes agregar más opciones si deseas
  --   end,
  --   settings = {
  --     format = { enable = true },
  --   },
  --   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  -- }),
}
