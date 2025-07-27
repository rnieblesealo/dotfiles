local function setup()
  require("luasnip.loaders.from_vscode").lazy_load() -- get snippets

  local cmp = require("cmp")

  cmp.setup({
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body) -- select snippet engine (luasnip)
      end,
    },

    -- setup key mappings for when in snippet window
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }), -- accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    -- add completion sources
    sources = cmp.config.sources({
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
    }),

    -- style snip windows
    window = {
      --completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
  })
end

return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/nvim-cmp",
    config = setup,
  },
}
