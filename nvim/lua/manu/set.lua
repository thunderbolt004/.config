-- [[ Setting options ]]
-- See `:help opt.

local opt = vim.opt
-- Set highlight on search
opt.hlsearch = false
opt.incsearch = true

-- Make line numbers default
opt.number = true

opt.mouse = 'a' -- Enable mouse mode

-- Confirm to save changes before exiting modified buffer
opt.confirm = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = 'unnamedplus'

opt.undofile = true -- Save undo history

opt.scrolloff = 8 -- Scroll never over limit

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- New window position
opt.splitbelow = true
opt.splitright = true

opt.signcolumn = 'yes' -- Keep signcolumn on by default

-- Decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- Set tab to 4
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Indentation
opt.smartindent = true
-- Indent next line same as above when line wrap
opt.breakindent = true

opt.relativenumber = true -- relative line numbering

-- vim.o.guicursor = false -- line cursor
opt.termguicolors = true
