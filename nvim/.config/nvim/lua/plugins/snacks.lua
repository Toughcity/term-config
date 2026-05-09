return {
  "folke/snacks.nvim",
  opts = {
    -- Dashboard only when not inside a git project.
    -- Project startup (README / empty buffer) is handled in autocmds.lua.
    dashboard = {
      enabled = vim.fn.finddir(".git", vim.fn.getcwd() .. ";") == "",
    },
    picker = {
      sources = {
        projects = {
          dev = { "~/Code", "~/Code-Safad" },
        },
        explorer = {
          exclude = { "*.uid" },
        },
      },
    },
  },
}
