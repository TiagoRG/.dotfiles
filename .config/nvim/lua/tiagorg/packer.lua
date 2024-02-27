-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use "loctvl842/monokai-pro.nvim"
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
    }
    use 'olimorris/onedarkpro.nvim'
    use 'Mofiqul/vscode.nvim'

    -- Essentials
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { 'nvim-lua/plenary.nvim' }
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
    use "stevearc/aerial.nvim"
    use 'm4xshen/autoclose.nvim'

    -- Extras
    use 'mbbill/undotree'
    use "andrewferrier/wrapping.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "HiPhish/nvim-ts-rainbow2"
    use "folke/trouble.nvim"
    use "FotiadisM/tabset.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use 'numToStr/Comment.nvim'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    use 'nvim-lualine/lualine.nvim'

    -- Misc
    use('wakatime/vim-wakatime')
    use('andweeb/presence.nvim')


    -- Little friend
    use("github/copilot.vim")

    -- trying out
    use 'lervag/vimtex'
    use {
        'jackMort/ChatGPT.nvim',
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    }
    use "Pocco81/AutoSave.nvim"

    use 'TiagoRG/liveshare.nvim'
end)
