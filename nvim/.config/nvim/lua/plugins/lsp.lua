return {
  -- {
  --   "mason-org/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  --       "prettier",
  --       "eslint-lsp",
  --       "typescript-language-server",
  --     },
  --   },
  -- },
  {
    "neovim/nvim-lspconfig",
    -- dependencies = {
    --   "jose-elias-alvarez/typescript.nvim",
    --   init = function()
    --     require("lazyvim.util").lsp.on_attach(function(_, buffer)
    --       -- stylua: ignore
    --       vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
    --       vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
    --     end)
    --   end,
    -- },
    keys = {
      -- disable default hover
      -- { "K", false },

      -- add hover on gh
      {
        "gh",
        vim.lsp.buf.hover,
        desc = "Hover",
      },
    },
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- Add a keymap
            -- { "H", "<cmd>echo 'hello'<cr>", desc = "Say Hello" },
            -- Change an existing keymap
            -- { "K", "<cmd>echo 'custom hover'<cr>", desc = "Custom Hover" },
            -- Disable a keymap
            -- { "gd", true },
          },
        },
        -- eslint = {},
        -- ts_ls = {},
        -- pyright = {},
      },
    },
  },
}
