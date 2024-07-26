return {
  {
    "laishulu/vim-macos-ime",
    name = "vim-macos-ime",
    init = function()
      vim.g.macosime_normal_ime = "com.apple.keylayout.ABC"
      vim.g.macosime_cjk_ime = "com.apple.inputmethod.SCIM.ITABC"
    end,
  },
}
