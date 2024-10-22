lvim.plugins = {
  {
    "mfussenegger/nvim-jdtls"
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile"
    }
  },
  { "loctvl842/monokai-pro.nvim" },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'zathura'
      -- vim.g.vimtex_quickfix_enabled = 0
      -- vim.g.vimtex_syntax_enabled = 0
      -- vim.g.vimtex_compiler_latexmk = {}
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap"
    }
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      -- refer to `:h file-pattern` for more examples
      "BufReadPre /home/steinert/Dropbox/Notes/*.md",
      "BufNewFile /home/steinert/Dropbox/Notes/*.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Dropbox/Notes"
        }
      },
      log_level = vim.log.levels.INFO,
      preferred_link_style = "markdown",
      picker = {
        name = "telescope.nvim",
        note_mappings = {
          new = "n",
          insert_link = "l"
        },
        tag_mappings = {
          tag_note = "n",
          insert_tag = "t"
        }
      },
      sort_by = "created",
      sort_reversed = true,
      search_max_lines = 1000,
      open_notes_in = "vsplit",
      ui = {
        enabled = false
      }
    },
  }
}
