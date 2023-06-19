-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.shortmess = vim.opt.shortmess + { c = true }

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

vim.o.guifont = "FiraCode Nerd Font Mono:h12"
vim.g.neovide_scale_factor = 1.0

-- Helper function for transparency formatting
local alpha = function()
  local computed = 255 * vim.g.transparency or 0.8
  return string.format("%x", math.floor(computed))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()

-- nnoremap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
-- vim.keymap.set("n", "<C-Tab>", 'copilot#Accept("<CR>")')
vim.g.copilot_no_tab_map = true
