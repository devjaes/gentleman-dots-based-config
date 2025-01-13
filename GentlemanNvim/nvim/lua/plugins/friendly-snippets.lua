return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip").filetype_extend("javascript", { "javascriptreact" })
      -- Opcional: también puedes agregar esto si quieres los snippets en typescript
      require("luasnip").filetype_extend("typescript", { "typescriptreact" })
    end,
  },
}
