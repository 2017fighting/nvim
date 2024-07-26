return {
  { import = "astrocommunity.pack.markdown" },
  {
    "TobinPalmer/pastify.nvim",
    cmd = { "Pastify" },
    opts = {
      absolute_path = false,
      apikey = "",
      local_path = "/assets/imgs/",
      save = "local",
      -- function() return vim.fn.expand "%:t:r" .. "_" .. os.date "%Y-%m-%d_%H-%M-%S" end,
      default_ft = "markdown",
    },
  },
  {
    "mattn/vim-maketable",
    cmd = "MakeTable",
    event = "BufEnter",
    ft = "markdown",
  },
}
