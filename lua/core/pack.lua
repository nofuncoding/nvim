local setup_lazy = function()
    -- Set up Lazy (Package Manager)
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
    end
    vim.opt.rtp:prepend(lazypath)
end

local setup = function()
    require("lazy").setup({
        'neovim/nvim-lspconfig',

        -- nvim-cmp
        
        {
          'hrsh7th/nvim-cmp',
          event = "InsertEnter",
          dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
          }
        },

        -- LuaSnip
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',

        -- nvim-treesitter
        { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },

        -- lualine
        { 'nvim-lualine/lualine.nvim', dependencies = {{'nvim-tree/nvim-web-devicons'}} },

        -- gitsigns
        'lewis6991/gitsigns.nvim',

        -- theme
        'olimorris/onedarkpro.nvim',
        'folke/tokyonight.nvim',

        -- dashboard
        {
          'nvimdev/dashboard-nvim',
          event = 'VimEnter',
          config = function()
            require('dashboard').setup {
              theme = 'hyper',
              config = {
                header = {
                  " ________   ________  ________ ___  ___  ________      ",
                  "|\\   ___  \\|\\   __  \\|\\  _____\\\\  \\|\\  \\|\\   ___  \\    ",
                  "\\ \\  \\\\ \\  \\ \\  \\|\\  \\ \\  \\__/\\ \\  \\\\\\  \\ \\  \\\\ \\  \\   ",
                  " \\ \\  \\\\ \\  \\ \\  \\\\\\  \\ \\   __\\\\ \\  \\\\\\  \\ \\  \\\\ \\  \\  ",
                  "  \\ \\  \\\\ \\  \\ \\  \\\\\\  \\ \\  \\_| \\ \\  \\\\\\  \\ \\  \\\\ \\  \\ ",
                  "   \\ \\__\\\\ \\__\\ \\_______\\ \\__\\   \\ \\_______\\ \\__\\\\ \\__\\",
                  "    \\|__| \\|__|\\|_______|\\|__|    \\|_______|\\|__| \\|__|",
                },

                --shortcut = {
                  -- action can be a function type
                  -- { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
                --},
  
                footer = {"? NoFun is Not Found."}
              },
            }
          end,
          dependencies = {{'nvim-tree/nvim-web-devicons'}}
        },

        -- Neotree
        {
          "nvim-neo-tree/neo-tree.nvim",
          branch = "v3.x",
          dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
          },
          config = function()
            require("neo-tree").setup()
          end,
      },

        -- utils
        "folke/which-key.nvim",
        "folke/neodev.nvim",
        'rcarriga/nvim-notify',
    },
    {
      git = {
        url_format = "git@github.com:%s.git", -- Use ssh
      }
    })
end

setup_lazy()
setup()