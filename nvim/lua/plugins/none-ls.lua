local function setup()
	local null_ls = require("null-ls")

	-- uses lsp linting if no sources available
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.clang_format,
		},
	})

	vim.keymap.set("n", "<leader>v", vim.lsp.buf.format, {}) -- call lsp format function
end

return {
	"nvimtools/none-ls.nvim",
	config = setup,
}
