-- [[ Basic Keymaps ]]

local set = vim.keymap.set
-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- NAVIGATION
-- navigation through tabs
set('n', '<C-t>', '<Cmd>tabe<CR>:e ')
set('n', '<C-Left>', '<Cmd>tabp<CR>', { silent = true })
set('n', '<C-Right>', '<Cmd>tabn<CR>', { silent = true })
-- navigation through windows
set('n', '<C-h>', '<C-w>h')
set('n', '<C-j>', '<C-w>j')
set('n', '<C-k>', '<C-w>k')
set('n', '<C-l>', '<C-w>l')

-- WINDOWS
-- resize
set('n', '<S-x>', '<C-w>x') -- swap window with next
set('n', '<S-k>', '<C-w>+')
set('n', '<S-j>', '<C-w>-')
set('n', '<S-h>', '<C-w><')
set('n', '<S-l>', '<C-w>>')
-- new window
set('n', '<C-n>', '<Cmd>rightb vert new ')
set('n', '<C-m>', '<Cmd>bel new ')

-- save and exit
set('n', '<C-s>', '<Cmd>w<CR>')
set('n', '<C-q>', '<Cmd>q<CR>')

set('n', '<S-t>', '<Cmd>term<CR><S-a>') -- terminal
set('n', '<C-c>', '<Cmd>!compile %<CR>') -- compiler

-- extras
set('n', '<leader>tx', '<Cmd>vert new<CR>:Ex<CR>', { desc = "File E[x]plore" })
set('n', '<leader>ts', '<Cmd>so<CR>', { desc = "[S]ource config" })

-- theprimeagen
-- move in visual mode
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set({'n', 'v'}, '<leader>y', [["+y]])
set("x", "<leader>p", [["_dP]]) -- paste without copying new text
-- replace word under cursor
set("n", "<leader>th", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Ctrl+[H]"})

set("n", "<C-x>", "mzJ`z") -- appends line below to current
set("n", "<leader>x", "<Cmd>!chmod +x %<CR>", { desc = "chmod +[x]", silent = true })

-- center when finding and navigating text
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')
