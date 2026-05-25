return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("vscode")
    end,
  },
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha",
      integrations = {
        snacks = {
          enabled = true,
        },
      },
    },
    -- config = function()
    --   vim.cmd.colorscheme("catppuccin-nvim")
    -- end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- compile = true,
      transparent = false,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },

    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },
}
