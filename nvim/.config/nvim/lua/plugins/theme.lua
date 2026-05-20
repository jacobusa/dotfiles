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
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
      })
      vim.cmd.colorscheme("catppuccin-nvim")
    end,
  },
  -- return {
  -- Install Kanagawa
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

  -- Tell LazyVim to use it
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "kanagawa",
  --   },
  -- },
}
