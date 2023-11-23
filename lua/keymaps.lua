-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

vim.g.mapleader = " "

local function set_bg_light()
    vim.cmd('set background=light')
    local colors_name = vim.g.colors_name
    vim.cmd('colorscheme shine')
    vim.cmd('colorscheme ' .. colors_name)
end


local function set_bg_dark()
    vim.cmd('set background=dark')
    local colors_name = vim.g.colors_name
    vim.cmd('colorscheme ron')
    vim.cmd('colorscheme ' .. colors_name)
end

-- keymaps
map('i','<C-b>','<Left>', opt)
map('i','<C-f>','<Right>', opt)
map('i', '<C-k>', '<up>', opt)
map('i', '<C-j>', '<down>', opt)
map('i', '<C-;>', '::', opt) -- for C++ and Rust
vim.keymap.set('n', '<leader>vl', set_bg_light)
vim.keymap.set('n', '<leader>vd', set_bg_dark)

-- f: file tree
map('n', '<leader>ft', ':NvimTreeToggle<cr>', opt)
map('n', '<leader>fc', ':NvimTreeFindFile<cr>', opt)

-- s: telescope
local telescope = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sf', function() telescope.find_files {} end)
vim.keymap.set('n', '<leader>sg', function() telescope.git_files {} end)
vim.keymap.set('n', '<leader>sb', function() telescope.buffers {} end)
vim.keymap.set({ 'n', 'i' }, '<C-p>', function() telescope.registers {} end)


-- w: windows
map('n', '<leader>w1', '<c-w>o', opt)
map('n', '<leader>wc', ':x<cr>', opt)
map('n', '<leader>ws', ':sp<cr>', opt)
map('n', '<leader>wv', ':vs<cr>', opt)


map('n', '<leader>wj', '<c-w>j', opt)
map('n', '<leader>wk', '<c-w>k', opt)
map('n', '<leader>wh', '<c-w>h', opt)
map('n', '<leader>wl', '<c-w>l', opt)

-- window resize
map('n', '<m-9>', '<c-w><', opt)
map('n', '<m-0>', '<c-w>>', opt)
map('n', '<m-->', '<c-w>-', opt)
map('n', '<m-=>', '<c-w>+', opt)

-- b: buffer
map('n', '<leader>bn', ':bn<cr>', opt)
map('n', '<leader>bp', ':bp<cr>', opt)
map('n', '<leader>bd', ':Bdelete<cr>', opt)

-- p: plugins
map('n', '<leader>pi', ':PackerInstall<cr>', opt)
map('n', '<leader>pc', ':PackerClean<cr>', opt)

-- s: search
map('n', '<leader>ss', '/', opt)
map('n', '<leader>sw', '/\\<lt>\\><left><left>', opt)


-- l/g/w language
-- l: general
-- g: goto
-- w: workspace
-- e: diagnostics
map('n', '<leader>ee', ':Lspsaga show_line_diagnostics<cr>', opt)
map('n', '<leader>ef', ':Lspsaga show_cursor_diagnostics<cr>', opt)
map('n', '<leader>el', ':TroubleToggle<cr>', opt) -- show list of diagnostics across the workspace
map('n', '<leader>et', ':Trouble<cr>', opt) -- Focus onto the trouble window
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist)
map('n', '<leader>lk', ':Lspsaga hover_doc<cr>', opt)
map('n', '<leader>ld', ':Lspsaga preview_definition<cr>', opt)
map('n', '<leader>lr', ':Lspsaga rename<cr>', opt)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end)
map('n', '<leader>la', ':Lspsaga code_action<cr>', opt)

map('n', '<leader>gd', ':Glance definitions<cr>', opt)
map('n', '<leader>gr', ':Glance references<cr>', opt)
map('n', '<leader>gt', ':Glance type_definitions<cr>', opt)
map('n', '<leader>gi', ':Glance implementations<cr>', opt)
map('n', '<leader>gN', ':Lspsaga diagnostic_jump_prev<cr>', opt)
map('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>', opt)

vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
-- vim.keymap.set('n', '<leader>wf', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end）

-- t: terminal
-- the default position is also set in lua/configs/terminal.lua
local terminal = require('toggleterm.terminal')
map('t', '<C-g>', '<C-\\><C-n>', opt)
map('n', '<leader>tt', ':Toggleterm direction=tab', opt)
-- vim.keymap.set('n', '<leader>tn', function() terminal.Terminal:new():toggle() end）
map('n', '<leader>tf', ':Toggleterm direction=float', opt)
map('n', '<leader>th', ':Toggleterm direction=horizontal', opt)
-- map('n', '<leader>tv', ':Toggleterm direction=vertical', opt)

-- h: git
map('n', '<leader>hu', ':Gitsigns undo_stage_hunk<cr>', opt)
map('n', '<leader>hn', ':Gitsigns next_hunk<cr>', opt)
map('n', '<leader>hN', ':Gitsigns next_hunk<cr>', opt)
map('n', '<leader>hc', ':Gitsigns preview_hunk<cr>', opt)
map('n', '<leader>hr', ':Gitsigns reset_hunk<cr>', opt)
map('n', '<leader>hR', ':Gitsigns reset_buffer', opt)
map('n', '<leader>hb', ':Gitsigns blame_line<cr>', opt)
map('n', '<leader>hd', ':Gitsigns diffthis<cr>', opt)
map('n', '<leader>hs', ':<C-U>GitSigns select_hunk<cr>', opt)
