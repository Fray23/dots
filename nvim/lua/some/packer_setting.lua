vim.cmd('colorscheme tokyonight-night')
vim.cmd('hi linenr guifg=white')
-- telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nerdtree
vim.cmd('autocmd FileType nerdtree setlocal relativenumber')
vim.g['NERDTreeShowHidden'] = 1
vim.keymap.set('n', '<C-n>', ':tabnew<CR>')
vim.keymap.set('n', '<S-l>', ':tabn<cr>')
vim.keymap.set('n', '<S-h>', ':tabp<cr>')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')

-- lualine
vim.o.showtabline = 2
require('lualine').setup()

-- ale
vim.g.ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'
vim.g.ale_python_pylint_change_directory=0
vim.g.ale_python_flake8_change_directory=0
vim.g.ale_python_flake8_options = '--max-line-length=120'
vim.g.ale_python_mypy_change_directory=0
vim.g.ale_fix_on_save = 0
vim.g.ale_fixers = {"pylint", "flake8"}

-- # nvim-treesitter
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = {"python", "lua"},
    ignore_install = { "" }, -- List of parsers to ignore installing
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {}, -- list of language that will be disabled
        additional_vim_regex_highlighting = false,
    },
    autopairs = {
        enable = true,
    },
    indent = { enable = true, disable = {} },
})

-- lsp-zero
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

-- startup
require("startup").setup({theme = "dashboard"}) -- put theme name here
