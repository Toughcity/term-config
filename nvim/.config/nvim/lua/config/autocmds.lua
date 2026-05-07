-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#cba6f7", bold = true })

-- Project startup: open README.md if present, otherwise a clean empty buffer.
-- Mirrors what the snacks dashboard does for non-project contexts.
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    if vim.fn.argc() ~= 0 then return end
    if vim.fn.finddir(".git", vim.fn.getcwd() .. ";") == "" then return end

    vim.schedule(function()
      local readme = vim.fn.getcwd() .. "/README.md"
      if vim.fn.filereadable(readme) == 1 then
        vim.cmd("edit " .. vim.fn.fnameescape(readme))
      else
        vim.cmd("enew")
      end
    end)
  end,
})
