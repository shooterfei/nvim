-- basicsinit
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.clipboard 	= 'unnamed,unnamedplus'
vim.opt.relativenumber 	= true
vim.opt.number 		= true
vim.opt.shiftround	= true
vim.opt.updatetime	= 100
vim.opt.cursorline	= true
vim.opt.autowrite	= true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end


-- tabs
vim.opt.autoindent	= true
vim.opt.tabstop		= 4
vim.opt.shiftwidth	= 4
vim.opt.softtabstop	= 4
vim.opt.mouse		= 'a'
vim.opt.expandtab	= true
vim.opt.autowrite	= false
vim.opt.wrap		= false
vim.opt.formatoptions	= ''
vim.opt.signcolumn	= "yes"  -- prevent sign column flickering



-- vscode 相关
if vim.g.vscode then
    local vscode = require('vscode-neovim')
    local currentNumbers = vscode.get_config("editor.lineNumbers")
    if currentNumbers == "relative" then 
        print("lineNumber already is relative mode, not change")
    else
        vscode.update_config("editor.lineNumbers", "relative", "global")
    end
else
    --- 这两项配置在vscode-neovim中不生效，需要通过命令启动才生效
end
