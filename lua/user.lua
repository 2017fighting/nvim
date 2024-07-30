return {
  {
    "AstroNvim/astrolsp",
    opts = {
      features = {
        -- codelens = true, -- enable/disable codelens refresh on start
        inlay_hints = true, -- enable/disable inlay hints on start
        -- semantic_tokens = true, -- enable/disable semantic token highlighting
      },
      diagnostics = {
        -- Update diagnostics in Insert mode (if false, diagnostics are updated on InsertLeave
        update_in_insert = false,
      },
    },
  },
}
