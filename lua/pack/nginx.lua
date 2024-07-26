return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      local lsp = require "lspconfig"
      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
      lsp.nginx_language_server.setup { capabilities = lsp_capabilities }
    end,
  },
}
