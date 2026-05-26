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
  {
    "nvim-mini/mini.map",
    event = "VeryLazy",
    config = function(_, opts)
      require("mini.map").setup(opts)
    end,
    opts = function()
      local map = require("mini.map")

      return {
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic(),
          map.gen_integration.gitsigns(),
        },

        symbols = {
          scroll_line = "█",
          scroll_view = "┃",
        },

        window = {
          side = "right",
          width = 6,
          winblend = 30,
          show_integration_count = false,
        },
      }
    end,
    keys = {
      {
        "<leader>mm",
        function()
          MiniMap.toggle()
        end,
        desc = "Toggle minimap",
      },
      {
        "<leader>mf",
        function()
          MiniMap.toggle_focus()
        end,
        desc = "Focus minimap",
      },
    },
  },
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
    opts = {
      view = {
        style = "sign",
        signs = {
          add = "▎",
          change = "▎",
          delete = "",
        },
      },
    },
  },
}
