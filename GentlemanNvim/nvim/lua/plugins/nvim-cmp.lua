return {
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" }, -- Aseguramos que se cargue también para cmdline
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Añadido para LSP
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline", -- Importante para el autocompletado en línea de comandos
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")

      -- Configuración básica
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
              require("luasnip").expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
              require("luasnip").jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
          { name = "emoji" },
        },
      })

      -- Configuración específica para comandos con ":"
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline({
          ["<Tab>"] = {
            c = function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              else
                cmp.complete()
                cmp.select_next_item()
              end
            end,
          },
          ["<S-Tab>"] = {
            c = function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              else
                cmp.complete()
                cmp.select_prev_item()
              end
            end,
          },
        }),
        sources = cmp.config.sources({
          { name = "path" },
          { name = "cmdline", keyword_length = 1 },
        }),
      })

      -- Configuración para búsqueda con "/"
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "buffer" },
        }),
      })
    end,
  },
}
