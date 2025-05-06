local function setup()
	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = auto,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			ignore_focus = {},
			always_divide_middle = false,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = setup,
}
