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
-- change tabs to spaces in python
vim.cmd([[autocmd FileType python setlocal expandtab]])

-- stop forgetting folds
vim.api.nvim_exec([[
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * if expand('%:t') != '' | mkview | endif
  autocmd BufWinEnter * silent! loadview
augroup END
]], false)
