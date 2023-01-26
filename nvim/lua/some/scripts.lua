
function GetFileExtension(path)
  return path:match("^.+(%..+)$")
end


req = {"pylint", "flake8", "jedi", "pynvim"}

local handle = io.popen("pip freeze")  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
local pyreq = {}

for line in handle:lines() do
    pac, _ = line:gsub("==.*", "") 
    table.insert(pyreq, pac)
end

handle:close()

function check(tab, x)
    for _, v in ipairs(tab) do
        if v == x then
            return true
        end
    end
end

function setup_py_req()
    for _, need_pac in pairs(req) do
        if not check(pyreq, need_pac) then
            print('start "pip install ' .. need_pac .. '"') 
            handle = io.popen('pip install ' .. need_pac)
            local result = handle:read("*a")
            handle:close()
        end
    end
end

if GetFileExtension(vim.api.nvim_buf_get_name(0)) == '.py' then
    setup_py_req()
end

