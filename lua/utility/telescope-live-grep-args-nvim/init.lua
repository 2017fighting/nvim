return {
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    lazy = true,
    specs = {
      {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-telescope/telescope-live-grep-args.nvim" },
        opts = function() require("telescope").load_extension "live_grep_args" end,
      },
    },
  },
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      if vim.fn.executable "rg" == 1 then
        maps.n["<Leader>fw"] =
          { function() require("telescope").extensions.live_grep_args.live_grep_args() end, desc = "Find words" }
        maps.n["<Leader>fW"] = {
          function()
            require("telescope").extensions.live_grep_args.live_grep_args {
              additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
            }
          end,
          desc = "Find words in all files",
        }
      end
    end,
  },
}
