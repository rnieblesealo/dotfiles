local function setup()
  local builtin = require("telescope.builtin") -- get telescope builtin module

  vim.keymap.set("n", "<leader>f", builtin.find_files, {})
  vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
  vim.keymap.set("n", "<leader>b", builtin.buffers, {})
  vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
end

local function ui_select_setup()
  -- this is your opts table
  require("telescope").setup({
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown({
          -- even more opts
        }),

        -- pseudo code / specification for writing custom displays, like the one
        -- for "codeactions"
        -- specific_opts = {
        --   [kind] = {
        --     make_indexed = function(items) -> indexed_items, width,
        --     make_displayer = function(widths) -> displayer
        --     make_display = function(displayer) -> function(e)
        --     make_ordinal = function(e) -> string
        --   },
        --   -- for example to disable the custom builtin "codeactions" display
        --      do the following
        --   codeactions = false,
        -- }
      },
    },
  })
  -- to get ui-select loaded and working with telescope, you need to call
  -- load_extension, somewhere after setup function:
  require("telescope").load_extension("ui-select")
end

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = setup,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = ui_select_setup,
  },
}
