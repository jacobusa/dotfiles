return {
  {

    "nvim-mini/mini.surround",
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        replace = "cs",
        find = "",
        find_left = "",
        highlight = "S",
        update_n_lines = "",
      },
    },
  },
  -- {
  --   "nvim-mini/mini.map",
  --   event = "VeryLazy",
  --   config = function(_, opts)
  --     require("mini.map").setup(opts)
  --   end,
  -- },
  {
    "nvim-mini/mini.diff",
    event = "VeryLazy",
    keys = {
      {
        "<leader>go",
        function()
          require("mini.diff").toggle_overlay(0)
        end,
        desc = "Toggle mini.diff overlay",
      },
    },
    -- opts = {
    --   view = {
    --     style = "sign",
    --     signs = {
    --       add = "▎",
    --       change = "▎",
    --       delete = "",
    --     },
    --   },
    -- },
  },
}
