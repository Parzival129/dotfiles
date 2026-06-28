return {
  {
    "xiyaowong/transparent.nvim",
    opts = {
      extra_groups = {

        -- NEW: Title Bars (Breadcrumbs)
        "WinBar", -- The title bar of the active window
        "WinBarNC", -- The title bar of inactive windows

        -- NEW: Status Lines (Bottom bar) - optional if you want that clear too
        "StatusLine",
        "StatusLineNC",

        -- 1. The primary culprit: Floating Window Borders
        -- This covers the ┌ ─ ┐ characters in LSP popups, LazyGit, etc.
        "FloatBorder",
        "NormalFloat",

        -- 2. Split Separators
        -- This covers the │ character between vertical splits
        "WinSeparator",
        "VertSplit",

        -- 3. Neo-tree (File Explorer)
        -- Neo-tree uses these characters for hierarchy and boundaries
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeWinSeparator",
        "NeoTreeExpander",

        -- 4. Telescope (Find Files / Live Grep)
        "TelescopeBorder",
        "TelescopeNormal",
        "TelescopePromptBorder",
        "TelescopeResultsBorder",
        "TelescopePreviewBorder",

        -- 5. AstroNvim UI specifics (Heirline/Statusline separators)
        "StatusLine",
        "StatusLineNC",

        -- 6. WhichKey (The popup when you press space)
        "WhichKeyFloat",
      },
    },
  },
}
