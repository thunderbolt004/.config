return {
  --  You can configure plugins using the `config` key.
  --  You can also configure plugins after the setup call,
  --    as they will be available in your neovim runtime.

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  'xiyaowong/transparent.nvim', -- for transparent neovim
  -- 'ianding1/leetcode.vim', -- leetcode for nvim
  'norcalli/nvim-colorizer.lua',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- 'ctrlpvim/ctrlp.vim',
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})` { 'j-hui/fidget.nvim', opts = {} },
      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Competitive Programming
    'xeluxee/competitest.nvim',
    dependencies = 'muniftanjim/nui.nvim',
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets'
    },
  },

  {
    -- show pending keybinds.
    'folke/which-key.nvim',
    opts = {}
  },

  {
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    --opts = {
      -- See `:help gitsigns.txt`
    --},
  },

  {
    -- theme
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
  {
    'ThePrimeagen/harpoon'
  },
  --  { import = 'custom.plugins' },
}
