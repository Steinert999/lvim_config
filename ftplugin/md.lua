-- local lsp_status, lsp_manager = pcall(require, "lvim.lsp.manager")
-- if not lsp_status then
--   return
-- end

-- lsp_manager.setup("marksman")

local markview_status, markview = pcall(require, "markview")
if not markview_status then
  return
end

markview.setup({
  buf_ignore = { "nofile" },
  modes = { "n", "no" },

  options = {
    on_enable = {},
    on_disable = {}
  },

  block_quotes = {},
  checkboxes = {},
  code_blocks = {},
  headings = {},
  horizontal_rules = {},
  inline_codes = {},
  links = {},
  list_items = {},
  tables = {}
});

local which_key_status, which_key = pcall(require, "which-key")
if not which_key_status then
  return
end


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
    name = "Markdown",
    T = { "<Cmd>lua require'markview'.toggleAll()<CR>", "Toggle Markdown preview" },
  },
}

local vmappings = {
  m = {
    name = "Markdown",
    T = { "<Cmd>lua require'markview'.toggleAll()<CR>", "Toggle Markdown preview" },
  },
}

which_key.register(mappings, opts)
which_key.register(vmappings, vopts)
which_key.register(vmappings, vopts)
