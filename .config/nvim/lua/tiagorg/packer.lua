-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use {
        "loctvl842/monokai-pro.nvim", -- Fking goated theme
        config = function()
            require("monokai-pro").setup()
        end
    }
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
    }
    use 'olimorris/onedarkpro.nvim'
    use 'Mofiqul/vscode.nvim'

    -- Essentials
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("nvim-treesitter/nvim-treesitter-context")
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use({
        "stevearc/aerial.nvim",
        config = function()
            require("aerial").setup()
        end,
    })
    use('m4xshen/autoclose.nvim')

    -- Extras
    use('mbbill/undotree')
    use({
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end
    })
    use "lukas-reineke/indent-blankline.nvim"
    use "HiPhish/nvim-ts-rainbow2"
    use "folke/trouble.nvim"
    use {
        "FotiadisM/tabset.nvim",
        config = function()
            require("tabset").setup()
        end
    }
    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use 'numToStr/Comment.nvim'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }

    -- Misc
    use('wakatime/vim-wakatime')
    use('andweeb/presence.nvim')


    -- Little friend
    use("github/copilot.vim")
end)
