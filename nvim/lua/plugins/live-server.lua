local function setup()
	require("live-server").setup({
		args = {
			"--port=3000",
			"--browser=firefox",
		},
	})
end

return {
	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = setup,
	},
}
