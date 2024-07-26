return {
  { import = "astrocommunity/git/git-blame-nvim" },
  {
    "f-person/git-blame.nvim",
    init = function(_) vim.g.gitblame_date_format = "%r" end,
  },
}
