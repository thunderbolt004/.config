-- [[ Basic Keymaps ]]

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- NAVIGATION
-- navigation through tabs
vim.keymap.set('n', '<C-t>', ':tabe<CR>:e ')
vim.keymap.set('n', '<C-Left>', '<Cmd>tabp<CR>', { silent = true })
vim.keymap.set('n', '<C-Right>', '<Cmd>tabn<CR>', { silent = true })
-- navigation through windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- WINDOWS
-- resize
vim.keymap.set('n', '<S-x>', '<C-w>x') -- swap window with next
vim.keymap.set('n', '<S-k>', '<C-w>+')
vim.keymap.set('n', '<S-j>', '<C-w>-')
vim.keymap.set('n', '<S-h>', '<C-w><')
vim.keymap.set('n', '<S-l>', '<C-w>>')
-- new window
vim.keymap.set('n', '<C-n>', ':rightb vert new ')
vim.keymap.set('n', '<C-m>', ':bel new ')

-- save and exit
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>')
vim.keymap.set('n', '<C-q>', '<Cmd>q<CR>')

vim.keymap.set('n', '<S-t>', ':term<CR><S-a>') -- terminal

-- extras by myself
vim.keymap.set('n', '<leader>tx', '<Cmd>vert new<CR>:Ex<CR>', { desc = "File E[x]plore"})
vim.keymap.set('n', '<leader>ts', '<Cmd>so<CR>', { desc = "[S]ource config"})

-- theprimeagen
-- move in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste without copying new text
-- replace word under cursor
vim.keymap.set("n", "<leader>th", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Ctrl+[H]"} )

vim.keymap.set("n", "<C-x>", "mzJ`z") -- appends line below to current

-- center when finding and navigating text
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
