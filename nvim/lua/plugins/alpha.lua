local function layout()
  local header = {
    "                                                               ",
    "                                ████████████                   ",
    "    ██      ██     ██████████  ██████████████   ███     ████   ",
    "  ██████   ████    █████████    ████████████    ███     █████  ",
    "  ███████ █████    ███              ███         ████    █████  ",
    "  ████ █████ ███   ██████████       ███         █████████████  ",
    "  ███    █   ███   ███ █████        ███         ████████████   ",
    "  ███        ████  ██              ████        ██████████████  ",
    " ████        ████  ███             ████        █████    █████  ",
    " ███         ███   ███████         ████        █████    ████   ",
    " ██          ███   █████████       ███          ██      ████   ",
    "              ██   █                            █        ███   ",
    "              ██                                               ",
    "                                                               ",
    "        ██            ██      ████    ████     ███             ",
    "        ███           ███     █████   █████  ████              ",
    "        ████          ███    ██████    █████████               ",
    "         ███     ██  ████    ███████    ███████                ",
    "         ████    ███  ███   ████████     █████                 ",
    "          ████  █████████   █████████   ███████                ",
    "           ████ █████████  ███    ████ █████████               ",
    "            ██████  █████ ███     ████ ███   ████              ",
    "            ██████   ████ ██                                   ",
    "             ████     █                                        ",
    "              ███                                              ",
  }

  local lyrics = {
    "We are not too different you and I",
    "And I guess that's why I keep coming back to you",
    "Maybe It's the color of your hair",
    "Or how you genuinely seem to care",
    "Maybe I'm just crazy for thinkin' time heals wounds",
    "And I’m digging down for secrets from the past",
    "That I’ve excluded from my head",
    "And maybe I'm not in my head",
    "Maybe I just miss your lips",
    "We are not too different you and me",
    "And now I see why I'm always craving you",
    "Maybe it's the way that you smell",
    "Or how you have me captured under your spell",
    "Maybe I'm just crazy for thinkin' time heals wounds",
    "And I’m digging down for secrets from the past",
    "That I’ve excluded from my head",
    "And maybe I'm not in my head",
    "Maybe I just miss your lips",
  }

  local function pickRandomLyric(array)
    return array[math.random(1, #array)]
  end

  local meth_wax_hl = "MethWax"

  vim.api.nvim_set_hl(0, meth_wax_hl, { fg = "#FB88FB", bg = "NONE" }) -- create hl group for meth wax color

  return {
    { type = "padding", val = 6 },
    {
      type = "text",
      val = "",
      opts = { hl = meth_wax_hl, position = "center" },
    },
    { type = "padding", val = 2 },
    {
      type = "text",
      val = pickRandomLyric(lyrics) .. "...",
      opts = { hl = meth_wax_hl, position = "center" },
    },
    { type = "padding", val = 2 },
  }
end

local function setup()
  local alpha = require("alpha")
  alpha.setup({
    layout = layout(),
  })
end

return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = setup,
}
