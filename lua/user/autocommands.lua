lvim.autocommands = {
  {
    "StdinReadPre",
    {
      command = "let s:std_in=1"
    }

  },
  -- Start NvimTree. If a file is specified, move the cursor to its window.
  {
    "VimEnter",
    {
      command = "if argc() > 0 ||exists('s:std_in') | NvimTreeOpen | wincmd p | endif"
    }

  },
  -- Open the existing NERDTree on each new tab.
  {
    "BufWinEnter",
    {
      command = "if getcmdwintype() == '' | silent NvimTreeOpen | endif"
    }
  }
}
