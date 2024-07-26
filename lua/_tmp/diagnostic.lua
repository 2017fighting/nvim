---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      diagnostics = {
        -- Update diagnostics in Insert mode (if false, diagnostics are updated on InsertLeave
        update_in_insert = false,
      },
    },
  },
}
