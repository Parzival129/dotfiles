return {
  -- 1. THEME: Kanagawa (Dragon Style)
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    config = function()
      require("kanagawa").setup({ theme = "dragon" }) -- Dragon is darker/lower contrast
    end,
  },
  {
    "AstroNvim/astrocore",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  -- 2. LANGUAGE SUPPORT (C, Verilog, Assembly)
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "clangd",       -- C/C++
        "verible",      -- Verilog/SystemVerilog
        "asm_lsp",      -- Assembly
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "c", "verilog", "asm", "bash", "lua"
      })
    end,
  },
}

