lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

local git_mappings = lvim.builtin.which_key.mappings["g"]

git_mappings["i"] = {
  name = "Issue",
  c = { "<cmd>Octo issue close<cr>", "Close issue" },
  r = { "<cmd>Octo issue reopen<cr>", "Reopen issue" },
  s = { "<cmd>Octo issue search<cr>", "Search issue" }
}

git_mappings["p"] = {
  name = "Pull Request",
  s = { "<cmd>Octo pr search<cr>", "Search Pull Request" },
  n = { "<cmd>Octo pr create", "Create Pull Request" },
  c = { "<cmd>Octo pr close", "Close Pull Request" }
}

git_mappings["S"] = { "<cmd>Octo search<cr>", "Search" }
