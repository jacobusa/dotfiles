return {
  -- {
  --   "Mofiqul/vscode.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("vscode").setup({
  --       transparent = false,
  --       italic_comments = true,
  --     })
  --
  --     vim.cmd.colorscheme("vscode")
  --   end,
  -- },
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
        }
      },
    },
    config = function()
      vim.cmd.colorscheme("catppuccin-nvim")
    end,
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     compile = true,
  --     transparent = false,
  --
  --     -- Optional tweaks
  --     colors = {
  --       theme = {
  --         all = {
  --           ui = {
  --             bg_gutter = "none",
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
