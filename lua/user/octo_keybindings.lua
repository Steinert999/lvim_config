local git_mappings = lvim.builtin.which_key.mappings["g"]

git_mappings["F"] = { "<cmd>Octo search<cr>", "Find any (issues, Pull Requests, etc.)" }

git_mappings["i"] = {
  name = "Issue",
  c = { "<cmd>Octo issue close<cr>", "Close issue" },
  n = { "<cmd>Octo issue create<cr>", "New issue" },
  r = { "<cmd>Octo issue reopen<cr>", "Reopen issue" },
  s = { "<cmd>Octo issue search<cr>", "Search issue" },
  e = { "<cmd>Octo issue edit<cr>", "Edit issue" },
  R = { "<cmd>Octo issue reload<cr>", "Reload issue" },
  b = { "<cmd>Octo issue browser<cr>", "Open issue in browser" },
  u = { "<cmd>Octo issue url<cr>", "Copy URL issue to clipboard" }
}

git_mappings["p"] = {
  name = "Pull Request",
  s = { "<cmd>Octo pr search<cr>", "Search Pull Request" },
  n = { "<cmd>Octo pr create<cr>", "Create Pull Request" },
  c = { "<cmd>Octo pr close<cr>", "Close Pull Request" },
  l = { "<cmd>Octo pr list<cr>", "List all Pull Requests" },
  e = { "<cmd>Octo pr edit<cr>", "Edit Pull Request in repo" },
  r = { "<cmd>Octo pr reopen<cr>", "Reopen the current Pull Request" },
  C = { "<cmd>Octo pr checkout<cr>", "Checkout Pull Request" },
  M = { "<cmd>Octo pr commits<cr>", "List all Pull Request commits" },
  d = { "<cmd>Octo pr diff<cr>", "Show Pull Request diff" },
  D = { "<cmd>Octo pr changes<cr>", "Show all Pull Request changes" },
  m = { "<cmd>Octo pr merge<cr>", "Merge current Pull Request" },
  R = { "<cmd>Octo pr ready<cr>", "Mark a draft Pull Request ready" },
  S = { "<cmd>Octo pr checks<cr>", "Show the status of all checks" },
  L = { "<cmd>Octo pr reload<cr>", "Reload Pull Request" },
  b = { "<cmd>Octo pr browser<cr>", "Open Pull Request in browser" },
  u = { "<cmd>Octo pr url<cr>", "Copy URL Pull Request to clipboard" },
  U = { "<cmd>Octo reviewer add<cr>", "Assign a Pull Request reviewer" }
}
git_mappings["x"] = {
  name = "Repository",
  l = { "<cmd>Octo repo list<cr>", "List repo user owns, contributes or belong to" },
  f = { "<cmd>Octo repo fork<cr>", "Fork repo" },
  b = { "<cmd>Octo repo browser<cr>", "Open repo in browser" },
  u = { "<cmd>Octo repo url<cr>", "Copy URL repo to clipboard" },
  v = { "<cmd>Octo repo view<cr>", "Open a repo by path ({organization}/{name})" }
}

git_mappings["G"] = {
  name = "Gist",
  l = { "<cmd>Octo gist list", "List user gists" }
}
git_mappings["S"] = {
  name = "Comment",
  a = { "<cmd>Octo comment add<cr>", "Add a new comment" },
  d = { "<cmd>Octo comment delete<cr>", "Delete a comment" },
  r = {
    name = "Reaction",
    t = { "<cmd>Octo reaction thumbs_up<cr>", "Add 👍 reaction" },
    T = { "<cmd>Octo reaction thumbs_down<cr>", "Add 👎 reaction" },
    e = { "<cmd>Octo reaction eyes<cr>", "Add 👀 reaction" },
    l = { "<cmd>Octo reaction laugh<cr>", "Add 😄 reaction" },
    c = { "<cmd>Octo reaction confused<cr>", "Add 😕 reaction" },
    r = { "<cmd>Octo reaction rocket<cr>", "Add 🚀 reaction" },
    h = { "<cmd>Octo reaction heart<cr>", "Add ❤️ reaction" },
    p = { "<cmd>Octo reaction party<cr>", "Add 🎉 reaction" }
  }
}

git_mappings["t"] = {
  name = "Thread",
  r = { "<cmd>Octo thread resolve<cr>", "Mark a review thread as resolved" },
  u = { "<cmd>Octo thread unresolve<cr>", "Mark a review thread as unresolved" }
}

git_mappings["L"] = {
  name = "Label",
  a = { "<cmd>Octo add label<cr>", "Add a label from available label menu" },
  r = { "<cmd>Octo remove label<cr>", "Remove a label" },
  c = { "<cmd>Octo create label<cr>", "Create a label" }
}
git_mappings["a"] = {
  name = "Assignee",
  a = { "<cmd>Octo assignee add<cr>", "Assign a user" },
  r = { "<cmd>Octo assignee remove<cr>", "Unassign a user" }
}
