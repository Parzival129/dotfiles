return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
    require("neoscroll").setup {
      -- Custom settings here
      hide_cursor = true,
      easing_function = "quadratic",
    }
  end,
}
