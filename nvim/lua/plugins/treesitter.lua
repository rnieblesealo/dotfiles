local function setup()
  local ts_config = require("nvim-treesitter.configs")

  ts_config.setup({
    auto_install = true,
    highlight = { enable = true }, -- enables highlghting
    indent = { enable = true }     -- enables code-dependent auto-indending
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = setup
}
