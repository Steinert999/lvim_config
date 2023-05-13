lvim.autocommands = {
  {
    "StdinReadPre",
    {
      command = "let s:std_in=1"
    }

  },
  -- Start NERDTree. If a file is specified, move the cursor to its window.
  {
    "VimEnter",
    {
      command = "if argc() > 0 ||exists('s:std_in') | NERDTree | wincmd p | endif"
    }

  },
  -- Exit Vim if NERDTree is the only window remaining in the only tab.
  {
    "BufEnter",
    {
      command = "if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit| endif"
    }
  },
  -- Open the existing NERDTree on each new tab.
  {
    "BufWinEnter",
    {
      command = "if getcmdwintype() == '' | silent NERDTreeMirror | endif"
    }
  }
}
