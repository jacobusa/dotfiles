return {
  "nvim-neotest/neotest",
  dependencies = {
    "thenbe/neotest-playwright",
    dependencies = "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-playwright").adapter({
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
            get_playwright_config = function()
              return vim.loop.cwd() .. "/playwright/config/playwright.config.ts"
            end,
          },
        }),
      },
    })
  end,
}
