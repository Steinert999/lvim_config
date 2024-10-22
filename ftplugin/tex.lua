local which_key_status, which_key = pcall(require, "which-key")
if not which_key_status then
  return
end

-- Mappings
local opts = {
  mode = "n",     -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}

local vopts = {
  mode = "v",     -- VISUAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}
local mappings = {
  m = {
    name = "LaTeX",
    m = { "<cmd>VimtexContextMenu<CR>", "Open Context Menu" },
    u = { "<cmd>VimtexCountLetters<CR>", "Count Letters" },
    w = { "<cmd>VimtexCountWords<CR>", "Count Words" },
    d = { "<cmd>VimtexDocPackage<CR>", "Open Doc for package" },
    e = { "<cmd>VimtexErrors<CR>", "Look at the errors" },
    s = { "<cmd>VimtexStatus<CR>", "Look at the status" },
    a = { "<cmd>VimtexToggleMain<CR>", "Toggle Main" },
    v = { "<cmd>VimtexView<CR>", "View pdf" },
    i = { "<cmd>VimtexInfo<CR>", "Vimtex Info" },
    l = {
      name = "Clean",
      l = { "<cmd>VimtexClean<CR>", "Clean Project" },
      c = { "<cmd>VimtexClean<CR>", "Clean Cache" },
    },
    c = {
      name = "Compile",
      c = { "<cmd>VimtexCompile<CR>", "Compile Project" },
      o = {
        "<cmd>VimtexCompileOutput<CR>",
        "Compile Project and Show Output",
      },
      s = { "<cmd>VimtexCompileSS<CR>", "Compile project super fast" },
      e = { "<cmd>VimtexCompileSelected<CR>", "Compile Selected" },
    },
    r = {
      name = "Reload",
      r = { "<cmd>VimtexReload<CR>", "Reload" },
      s = { "<cmd>VimtexReloadState<CR>", "Reload State" },
    },
    o = {
      name = "Stop",
      p = { "<cmd>VimtexStop<CR>", "Stop" },
      a = { "<cmd>VimtexStopAll<CR>", "Stop All" },
    },
    t = {
      name = "TOC",
      o = { "<cmd>VimtexTocOpen<CR>", "Open TOC" },
      t = { "<cmd>VimtexTocToggle<CR>", "Toggle TOC" },
    },
  },
}

local vmappings = {
  m = {
    name = "LaTeX",
    m = { "<cmd>VimtexContextMenu<CR>", "Open Context Menu" },
    u = { "<cmd>VimtexCountLetters<CR>", "Count Letters" },
    w = { "<cmd>VimtexCountWords<CR>", "Count Words" },
    d = { "<cmd>VimtexDocPackage<CR>", "Open Doc for package" },
    e = { "<cmd>VimtexErrors<CR>", "Look at the errors" },
    s = { "<cmd>VimtexStatus<CR>", "Look at the status" },
    a = { "<cmd>VimtexToggleMain<CR>", "Toggle Main" },
    v = { "<cmd>VimtexView<CR>", "View pdf" },
    i = { "<cmd>VimtexInfo<CR>", "Vimtex Info" },
    l = {
      name = "Clean",
      l = { "<cmd>VimtexClean<CR>", "Clean Project" },
      c = { "<cmd>VimtexClean<CR>", "Clean Cache" },
    },
    c = {
      name = "Compile",
      c = { "<cmd>VimtexCompile<CR>", "Compile Project" },
      o = {
        "<cmd>VimtexCompileOutput<CR>",
        "Compile Project and Show Output",
      },
      s = { "<cmd>VimtexCompileSS<CR>", "Compile project super fast" },
      e = { "<cmd>VimtexCompileSelected<CR>", "Compile Selected" },
    },
    r = {
      name = "Reload",
      r = { "<cmd>VimtexReload<CR>", "Reload" },
      s = { "<cmd>VimtexReloadState<CR>", "Reload State" },
    },
    o = {
      name = "Stop",
      p = { "<cmd>VimtexStop<CR>", "Stop" },
      a = { "<cmd>VimtexStopAll<CR>", "Stop All" },
    },
    t = {
      name = "TOC",
      o = { "<cmd>VimtexTocOpen<CR>", "Open TOC" },
      t = { "<cmd>VimtexTocToggle<CR>", "Toggle TOC" },
    },
  },
}

which_key.register(mappings, opts)
which_key.register(vmappings, vopts)
which_key.register(vmappings, vopts)
