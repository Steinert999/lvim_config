lvim.plugins = {
  { "Mofiqul/dracula.nvim" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup(
        { "css", "scss", "html", "javascript", "typescript", "yaml", "yml", "lua", "astro" },
        {
          RGB = true,      -- #RGB hex codes
          RRGGBB = true,   -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true,   -- CSS rgb() and rgba() functions
          hsl_fn = true,   -- CSS hsl() and hsla() functions
          css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
        })
    end
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("octo").setup()
    end
  },
  { "preservim/nerdtree" },
  { "ryanoasis/vim-devicons" },
  { "Xuyuanp/nerdtree-git-plugin" },
  {
    "f-person/git-blame.nvim"
  },

}
