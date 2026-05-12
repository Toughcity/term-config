-- LazyVim's markdown extra wires markdownlint-cli2 as the markdown linter.
-- Disable it: README/notes don't need stylistic enforcement.
return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      markdown = {},
    },
  },
}
