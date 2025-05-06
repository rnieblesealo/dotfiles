local function setup()
	require("tokyonight").setup({
		style = "night", -- options: storm, night, day
		light_style = "day",
		transparent = true,
		terminal_colors = true,
		styles = {
			comments = { italic = false },
			keywords = { italic = false },
			functions = {},
			variables = {},
			sidebars = "transparent", -- "dark", "transparent" or "normal"
			floats = "transparent",
		},

		day_brightness = 0.3,
		dim_inactive = true,
		lualine_bold = true,
		cache = true,

		plugins = {
			all = package.loaded.lazy == nil,
			auto = true,
			telescope = true,
			treesitter = true,
		},
	})

	-- apply the theme
	vim.cmd("colorscheme tokyonight")
end

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = setup,
}
