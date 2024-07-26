---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      rooter = {
        -- automatically update working directory (update manually with `:AstroRoot`)
        autochdir = true,
        -- scope of working directory to change ("global"|"tab"|"win")
        scope = "global",
        -- show notification on every working directory change
        notify = false,
      },
    },
  },
}
