return {
  {
    "2017fighting/random-banner.nvim",
    name = "random-banner",
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
