-- Neovim Config
vim.opt.termguicolors = true

-- set line number
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set numberwidth=4')

-- set indent
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')

vim.cmd('set shiftwidth=4')
vim.cmd('set shiftround')

vim.cmd('set smartindent')

-- set cursor
vim.cmd('set cursorline')

-- utils
-- 命令模式使用 `<tab>` 补全时，显示选项卡
vim.cmd('set showcmd')