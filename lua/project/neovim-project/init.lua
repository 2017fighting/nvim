return {
  {
    "coffebar/neovim-project",
    opts = function(_, opts)
      return {
        dashboard_mode = true,
        projects = { -- define project roots
          -- "~/projects/*",
          "~/.config/nvim",
          "~/zhao/workspace/*",
          "/Users/apple/zhao/document",
        },
        -- session_manager_opts = {
        --   autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
        -- },
      }
    end,
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append "globals" -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      -- { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "nvim-telescope/telescope.nvim" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = true,
    priority = 100,
    keys = {
      {
        "<leader>P",
        function() require("telescope.command").load_command("neovim-project", "discover") end,
        desc = "Discovery Project",
      },
    },
  },
}
