local lfs = require "lfs"
local user_config_dir = os.getenv("LVIM_PATH") .. "/lua/user"

function not_empty(file)
  return file ~= "." and file ~= ".."
end

function load_user_config_files()
  for file in lfs.dir(user_config_dir) do
    if not_empty(file) then
      local file_name = string.sub(file, 1, -5)
      reload("user." .. file_name)
    end
  end
end

load_user_config_files()
