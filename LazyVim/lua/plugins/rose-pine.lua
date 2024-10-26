return {
  {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        disable_background = true,
        disable_bold = true,
        disable_italic = true,
        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        highlight_groups = {
          -- Comment = { fg = 'foam' },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      })

      -- rose-pine-custom.lua

      -- -- Disable bold and italic
      -- vim.cmd [[highlight Normal gui=NONE]]
      -- vim.cmd [[highlight Comment gui=NONE]]
      -- vim.cmd [[highlight Identifier gui=NONE]]
      -- vim.cmd [[highlight Statement gui=NONE]]
      -- vim.cmd [[highlight PreProc gui=NONE]]
      -- vim.cmd [[highlight Type gui=NONE]]
      -- vim.cmd [[highlight Constant gui=NONE]]
      -- vim.cmd [[highlight Special gui=NONE]]
      -- vim.cmd [[highlight Underlined gui=NONE]]

      -- Apply custom Rose Pine colorscheme

      -- Load the Rose Pine colorscheme
      -- For Lua configuration
      -- vim.cmd 'colorscheme rose-pine'
      -- vim.cmd 'colorscheme rose-pine-main'
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
}