local function setup()
	-- disable netrw, vim builtin file explorer (it will be replaced by this)
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1


	-- set mapping to toggle tree
  local api = require("nvim-tree.api")

	local opts = {
		noremap = true,
		silent = true,
		nowait = true,
	}

	vim.keymap.set("n", "<Leader>n", api.tree.open, opts)

	-- set up nvim tree
	require("nvim-tree").setup()
end

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	config = setup,
}
