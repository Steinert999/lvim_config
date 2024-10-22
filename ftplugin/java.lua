local home = os.getenv("HOME")
local workspace_path = home .. "/.local/share/lunarvim/jdtls-workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = workspace_path .. project_name

local os_config = "linux"
if vim.fn.has("mac") == 1 then
  os_config = "mac"
end
local capabilities = require('lvim.lsp').common_capabilities()
local extendedClientCapabilities = require('jdtls').extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

lvim.builtin.dap.active = true

local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
local bundles = {}
vim.list_extend(bundles, vim.split(vim.fn.glob(mason_path .. "packages/java-test/extension/server/*.jar"), "\n"))
vim.list_extend(
  bundles,
  vim.split(
    vim.fn.glob(mason_path .. "packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar"), "\n"))

local config = {
  cmd = {
    '/home/steinert/.asdf/installs/java/adoptopenjdk-17.0.11+9/bin/java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-javaagent:' .. mason_path .. "packages/jdtls/lombok.jar",
    '-jar', mason_path .. "packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
    '-configuration', mason_path .. "packages/jdtls/config_" .. os_config,
    '-data', workspace_dir
  },
  root_dir = vim.fs.dirname(vim.fs.find({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }, { upward = true })[1]),
  settings = {
    signatureHelp = { enabled = true, },
    extendedClientCapabilities = extendedClientCapabilities,
    java = {
      eclipse = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all"
        },
      },
      format = {
        enabled = false,
      },
      configuration = {
        updateBuildConfiguration = "interactive",
        runtimes = {
          {
            name = "JavaSE-11",
            path = "~/.asdf/installs/java/adoptopenjdk-11.0.24+8"
          },
          {
            name = "JavaSE-17",
            path = "~/.asdf/installs/java/adoptopenjdk-17.0.11+9"
          },
          {
            name = "JavaSE-21",
            path = "~/.asdf/installs/java/openjdk-21.0.2"
          },
        },
      },
    },
  },
  init_options = {
    bundles = bundles,
  },
}

config["on_attach"] = function(client, bufnr)
  local _, _ = pcall(vim.lsp.codelens.refresh)
  require('jdtls').setup_dap({ hotcodereplace = "auto" })
  require('lvim.lsp').common_on_attach(client, bufnr)
  local jdtls_dap_status, jdtls_dap = pcall(require, 'jdtls.dap')
  if jdtls_dap_status then
    jdtls_dap.setup_dap_main_class_configs()
  end
end
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.java" },
  callback = function()
    local _, _ = pcall(vim.lsp.codelens.refresh)
  end
})
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    command = "google-java-format",
    filetypes = { "java" },
  },
})
require('jdtls').start_or_attach(config)


local which_key_status, which_key = pcall(require, "which-key")
if not which_key_status then
  return
end

lvim.builtin.dap.active = true

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
    name = "Java",
    o = { "<Cmd>lua require'jdtls'.organize_imports()<CR>", "Organize Imports" },
    v = { "<Cmd>lua require('jdtls').extract_variable()<CR>", "Extract Variable" },
    c = { "<Cmd>lua require('jdtls').extract_constant()<CR>", "Extract Constant" },
    t = { "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", "Test Method" },
    T = { "<Cmd>lua require'jdtls'.test_class()<CR>", "Test Class" },
    u = { "<Cmd>JdtUpdateConfig<CR>", "Update Config" },
  },
}

local vmappings = {
  m = {
    name = "Java",
    v = { "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", "Extract Variable" },
    c = { "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>", "Extract Constant" },
    m = { "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", "Extract Method" },
  },
}

which_key.register(mappings, opts)
which_key.register(vmappings, vopts)
which_key.register(vmappings, vopts)
