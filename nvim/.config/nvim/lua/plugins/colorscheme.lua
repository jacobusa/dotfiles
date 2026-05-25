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
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.g.gruvbox_material_background = "hard"
      -- vim.g.gruvbox_material_foreground = "material"
      -- vim.g.gruvbox_material_ui_contrast = "high"
      -- vim.g.gruvbox_material_float_style = "dim"
      -- vim.g.gruvbox_material_enable_italic = true
      --
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
