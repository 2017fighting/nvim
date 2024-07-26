---@type LazySpec
return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.catppuccin" },
  },
  {
    "2017fighting/random-banner.nvim",
    name = "random-banner",
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "catppuccin-mocha",
      icons = {
        -- configure the loading of the lsp in the status line
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",

        -- LSPLoading1 = "⠉⠉",
        -- LSPLoading2 = "⠈⠙",
        -- LSPLoading3 = "⠀⠹",
        -- LSPLoading4 = "⠀⢸",
        -- LSPLoading5 = "⠀⣰",
        -- LSPLoading6 = "⢀⣠",
        -- LSPLoading7 = "⣀⣀",
        -- LSPLoading8 = "⣄⡀",
        -- LSPLoading9 = "⣆⠀",
        -- LSPLoading10 = "⡇⠀",
        -- LSPLoading11 = "⠏⠀",
        -- LSPLoading12 = "⠋⠁",
      },
    },
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      local banner = require("random-banner").dashboard()
      opts.section.header.val = banner
      return opts
    end,
  },
}
