vim.cmd("set encoding=UTF-8")
local lfs = require "lfs"
local user_config_dir = os.getenv("LVIM_PATH") .. "/lua/user"

function not_empty(file)
  return file ~= "." and file ~= ".."
end

function load_user_config_files(root, dir_name, depth)
  depth = depth or 0
  dir_name = dir_name or ""
  for file in lfs.dir(root) do
    if not_empty(file) then
      local file_path = root .. "/" .. file
      local attr = lfs.attributes(file_path)
      local mode = {
        ["directory"] = function()
          local dn = file_path:match("[^/\\]+$") .. "."
          load_user_config_files(file_path, dn, depth + 1)
        end,
        ["file"] = function()
          local file_name = string.sub(file, 1, -5)
          reload("user." .. dir_name .. file_name)
        end
      }
      mode[attr.mode]()
    end
  end
end

load_user_config_files(user_config_dir)
