return {
  "nvim-mini/mini.icons",
  version = false,
  lazy = false,
  priority = 1000,
  opts = {
    default = {
      directory = { hl = "MiniIconsGrey" },
    },
  },
  config = function(_, opts)
    require("mini.icons").setup(opts)
  end,
}
