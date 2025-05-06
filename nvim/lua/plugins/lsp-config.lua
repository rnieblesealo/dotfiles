-- setup mason itself
local function setup_mason()
	require("mason").setup()
end

-- set up mason lsp config
local function setup_mason_lspconfig()
	require("mason-lspconfig").setup()
end

-- configure lsp themselves
local function setup_nvim_lspconfig()
	-- get capabilities
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	-- get lsp config module
	local lspconfig = require("lspconfig")

	-- configure each lsp; add capabilities for snippets and whatever else is necessary
	lspconfig.lua_ls.setup({ capabilities = capabilities })
	lspconfig.cmake.setup({ capabilities = capabilities })
	lspconfig.pylsp.setup({ capabilities = capabilities })
	lspconfig.html.setup({ capabilities = capabilities })
	lspconfig.cssls.setup({ capabilities = capabilities })
	lspconfig.ts_ls.setup({ capabilities = capabilities })
	lspconfig.jdtls.setup({ capabilities = capabilities })
	lspconfig.biome.setup({ capabilities = capabilities }) -- requires config files at base of script; google for more
	lspconfig.eslint.setup({ capabilities = capabilities })
	lspconfig.texlab.setup({ capabilities = capabilities })
	lspconfig.sqlls.setup({ capabilities = capabilities })
	-- lspconfig.harper_ls.setup({ capabilities = capabilities })

	-- keybinds!
	vim.keymap.set("n", "<leader>x", vim.lsp.buf.hover, {}) -- hover info
	vim.keymap.set("n", "<leader>z", vim.lsp.buf.definition, {}) -- go to definiton
	vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action, {}) -- code actions
	vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, {}) -- error view

	-- configure inline display
	vim.diagnostic.config({
		virtual_text = true, -- Enables inline error messages
		signs = true, -- Enable signs in the gutter
		underline = true, -- Underline errors
		update_in_insert = false, -- Update diagnostics in insert mode
		severity_sort = true, -- Sort diagnostics by severity
	})
end

return {
	{
		"williamboman/mason.nvim",
		config = setup_mason,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = setup_mason_lspconfig,
	},
	{
		"neovim/nvim-lspconfig",
		config = setup_nvim_lspconfig,
	},
}
