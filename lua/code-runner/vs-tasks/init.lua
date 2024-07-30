return {
  {
    "EthanJWright/vs-tasks.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {

    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      -- maps.n["<Leader>ta"] = {
      --   function() require("telescope").extensions.vstask.tasks() end,
      -- }
      maps.n["<Leader>tl"] = {
        function() require("telescope").extensions.vstask.launch() end,
        desc = "Show VS Code Tasks",
      }
    end,
  },
  -- {
  --   "Joakker/lua-json5",
  --   build = "./install.sh",
  --   opts = function(_, opts)
  --     require("vstask").setup {
  --       json_parser = require("json5").parse,
  --     }
  --   end,
  -- },
}
