lvim.colorscheme = "monokai-pro"
require("monokai-pro").setup({
  transparent_background = false,
  terminal_colors = true,
  devicons = true,
  styles = {
    comment = { italic = true },
    keyword = { italic = true },
    type = { italic = true },
    storageclass = { italic = true },
    structure = { italic = true },
    parameter = { italic = true },
    annotation = { italic = true },
    tag_attribute = { italic = true },
  },
  filter = "octagon",
  day_night = {
    enable = false,
    day_filter = "octagon",
    night_filter = "octagon"
  },
  inc_search = "underline",
  background_clear = {
    -- "float_win",
    -- "toggleterm",
    -- "telescope",
    -- "which-key",
    -- "renamer",
    -- "notify",
    -- "nvim-tree",
    -- "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
    -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  },
  plugins = {
    bufferline = {
      underline_selected = true,
      underline_visible = true,
    },
    indent_blankline = {
      context_highlight = "octagon",
      context_start_underline = false
    }
  },
  -- @param c Colorscheme
  -- override = function (c) end,
  -- @param cs Colorscheme
  -- @param p ColorschemeOptions
  -- @param Config MonokaiProOptions
  -- @param hp Helper
  override = function(cs, p, Config, hp) end,
})
