lvim.builtin.which_key.setup.icons = {
  separator = "",
  breadcrumb = "",
  group = " "
}
lvim.builtin.which_key.mappings["w"] = {
  name = "Window",
  r = { "<cmd>wincmd r<CR>", "Rotate windows downwards/rightwards" },
  R = { "<cmd>wincmd R<CR>", "Rotate windows upwards/leftwards" },
  x = { "<cmd>wincmd x<CR>", "Exchange current window with next" },
  k = { "<cmd>wincmd k<CR>", "Change to top window" },
  j = { "<cmd>wincmd j<CR>", "Change to bottom window" },
  h = { "<cmd>wincmd h<CR>", "Change to left window" },
  l = { "<cmd>wincmd l<CR>", "Change to right window" },
  K = { "<cmd>wincmd K<CR>", "Move window to very top" },
  J = { "<cmd>wincmd J<CR>", "Move window to very bottom" },
  H = { "<cmd>wincmd H<CR>", "Move window to far left" },
  L = { "<cmd>wincmd L<CR>", "Move window to far right" },
  T = { "<cmd>wincmd T<CR>", "Move window to new tab page" },
  s = { "<cmd>vsplit<CR>", "Split window vertically" },
  d = { "<cmd>close<CR>", "Close window" },
  ["="] = { "<cmd>wincmd =<CR>", "Resize windows equally" },
  ["-"] = { "<cmd>wincmd -<CR>", "Decrease current window height" },
  ["+"] = { "<cmd>wincmd +<CR>", "Increase current window height" },
  ["_"] = { "<cmd>wincmd _<CR>", "Maximize current window height" },
  ["<"] = { "<cmd>wincmd <<CR>", "Decrease current window width" },
  [">"] = { "<cmd>wincmd ><CR>", "Increase current window width" },

  ["/"] = { "<cmd>split<CR>", "Split window horizontally" }
}
lvim.builtin.which_key.mappings["bd"] = { "<cmd>BufferKill<CR>", "Close Buffer" }

lvim.builtin.which_key.mappings["gg"] = {
  "<cmd>LazyGit<CR>", "LazyGit"
}

lvim.builtin.which_key.mappings["o"] = {
  name = "Obsidian",

}

lvim.builtin.which_key.mappings["<leader>"] = {
  "<cmd>Telescope commands<CR>", "Run command"
}
lvim.builtin.which_key.mappings["P"] = {
  name = "Project",
  p = { "<cmd> Telescope projects<CR>", "Find Recent Projects" }
}
lvim.builtin.which_key.mappings["bb"] = {
  "<cmd>Telescope buffers<CR>", "Find Active Buffers"
}
lvim.builtin.which_key.mappings["e"] = {}
lvim.builtin.which_key.mappings["f"] = {
  name = "File",
  f = { "<cmd>Telescope find_files<CR>", "Find files" },
  t = { "<cmd>NvimTreeFocus<CR>", "Open file explorer" },
}
