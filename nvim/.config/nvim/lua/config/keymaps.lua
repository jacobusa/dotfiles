-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { noremap = false })
-- vim.keymap.set("n", "gh", vim.lsp.buf.hover, { noremap = false })
local function console_log_selection()
  -- Preserve the unnamed register
  local old_register = vim.fn.getreg('"')
  local old_register_type = vim.fn.getregtype('"')

  -- Yank the visual selection
  vim.cmd("normal! y")
  local selected = vim.fn.getreg('"'):gsub("\n$", "")

  -- Restore the unnamed register
  vim.fn.setreg('"', old_register, old_register_type)

  -- Use the indentation of the selected line
  local end_line = vim.fn.line("'>")
  local current_line = vim.api.nvim_buf_get_lines(0, end_line - 1, end_line, false)[1]
  local indentation = current_line:match("^%s*") or ""

  -- Escape quotes used in the log label
  local label = selected:gsub("\\", "\\\\"):gsub("'", "\\'")

  vim.api.nvim_buf_set_lines(0, end_line, end_line, false, {
    indentation .. "console.log('" .. label .. "', " .. selected .. ");",
  })
end

vim.keymap.set("x", "<leader>cl", console_log_selection, {
  desc = "Console log selection",
})
--
-- Copy absolute path to clipboard
vim.keymap.set("n", "<leader>pa", ':let @+ = expand("%:p")<CR>', { desc = "Copy absolute file path" })

-- Copy relative path to clipboard
vim.keymap.set("n", "<leader>pr", ':let @+ = expand("%")<CR>', { desc = "Copy relative file path" })

-- Copy file name only to clipboard
vim.keymap.set("n", "<leader>pf", ':let @+ = expand("%:t")<CR>', { desc = "Copy file name" })
