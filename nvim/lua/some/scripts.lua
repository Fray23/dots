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
vim.api.nvim_create_user_command('SetupPyReq', setup_py_req, {})

-- for httpie
function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function getPath(str)
    -- get dir path from file path
    -- /home/tmp/test/foo.json  -->  /home/tmp/test
    return str:match("(.*[/\\])")
end

function rest()
    local absolute_current_file = vim.api.nvim_buf_get_name(0)
    local absolute_current_dir = getPath(absolute_current_file)
    local neovim_open_path = vim.fn.getcwd()

    local file = io.open(absolute_current_file, 'rb')
    local count = 0
    local rest_command = ''
    local command = ''
    local json = ''

    for line in file:lines() do
        if count == 0 then
            command = line
        else
            line = string.gsub(line, " ", "")
            json = json .. line
        end
        count = count + 1
    end

    if string.starts(command, "http GET") then
        qparam = string.gsub(json, "{", "")
        qparam = qparam.gsub(qparam, "}", "")
        qparam = qparam.gsub(qparam, "'", "")
        qparam = qparam.gsub(qparam, "\"", '')
        qparam = qparam.gsub(qparam, ":", "==")
        qparam = qparam.gsub(qparam, ",", " ")
        rest_command = command .. " " .. qparam
    else
        rest_command = "echo -n '" .. json .. "' | " .. command
    end

    local session_file = neovim_open_path .. '/' .. 'session'
    local rest_command = rest_command .. ' --pretty format --print=hb --session=' .. session_file

    vim.cmd('vsplit')
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_create_buf(true, true)
    vim.api.nvim_win_set_buf(win, buf)
    -- vim.api.nvim_buf_set_option(buf, 'buftype', 'nowrite')
    vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')


    httpie_exec = io.popen(rest_command)

    http_result = {}
    for line in httpie_exec:lines() do
        table.insert(http_result, line)
    end

    vim.api.nvim_buf_set_option(buf, 'modifiable', true)
    vim.api.nvim_buf_set_lines(buf, 0, 0, true, http_result)
    vim.api.nvim_buf_set_option(buf, "ft", "json")

    file:close()
    httpie_exec:close()

end


vim.api.nvim_create_user_command('R', rest, {})

