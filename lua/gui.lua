vim.g.gui_font_default_size = 12
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Hack Nerd Font Mono"

RefreshGuiFont = function()
    vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
    vim.g.gui_font_size = vim.g.gui_font_size + delta
    RefreGuiFont()
end

ResetGuiFont = function()
    vim.g.gui_font_size = vim.g.gui_font_default_size
    RefreshGuiFont()
end

ResetGuiFont()


-- keymaps
local opts = { noremap = true, silent = true}
vim.keymap.set({ 'n', 'i' }, "<D-0>", function() ResetGuiFont() end, opts)
vim.keymap.set({ 'n', 'i' }, "<D-=>", function() ResetGuiFont(1) end, opts)
vim.keymap.set({ 'n', 'i' }, "<D-->", function() ResetGuiFont(-1) end, opts)
