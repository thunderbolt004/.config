require("manu.remap")
require("manu.set")

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Setup neovim lua configuration
-- require('neodev').setup()
-- color hex codes
-- require('colorizer').setup()

-- change tabs to spaces in python
vim.cmd([[autocmd FileType python setlocal expandtab]])

vim.api.nvim_exec([[
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * if expand('%:t') != '' | mkview | endif
  autocmd BufWinEnter * silent! loadview
augroup END
]], false)
