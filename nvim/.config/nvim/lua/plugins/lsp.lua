return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "eslint-lsp",
        "typescript-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { eslint = {}, ts_ls = {} },
      setup = {
        -- eslint = function()
        --   require("lazyvim.util").lsp.on_attach(function(client)
        --     if client.name == "eslint" then
        --       client.server_capabilities.documentFormattingProvider = true
        --     elseif client.name == "tsserver" then
        --       client.server_capabilities.documentFormattingProvider = false
        --     end
        --   end)
        -- end,
      },
    },
  },
}
