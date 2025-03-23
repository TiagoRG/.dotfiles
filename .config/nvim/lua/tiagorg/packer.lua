-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use "loctvl842/monokai-pro.nvim"
    use "TiagoRG/onedarkpro.nvim"
    use 'Mofiqul/vscode.nvim'
    use {
        'rose-pine/neovim',
        as = 'rose-pine'
    }

    -- Essentials
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'catgoose/telescope-helpgrep.nvim'
        }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("nvim-treesitter/nvim-treesitter-context")
    use "HiPhish/rainbow-delimiters.nvim"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
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
    use "folke/trouble.nvim"
    use "stevearc/aerial.nvim"
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })

    -- Extras
    use 'mbbill/undotree'
    use "andrewferrier/wrapping.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "FotiadisM/tabset.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use 'nvim-lualine/lualine.nvim'
    use 'lervag/vimtex'
    use 'laytan/cloak.nvim'
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup()
            vim.keymap.set("n", "]t", function()
                require("todo-comments").jump_next()
            end, { desc = "Next todo comment" })
            vim.keymap.set("n", "[t", function()
                require("todo-comments").jump_prev()
            end, { desc = "Previous todo comment" })
        end
    }

    -- Misc
    use('wakatime/vim-wakatime')
    use('andweeb/presence.nvim')

    -- Little friend
    use("github/copilot.vim")

    -- Temp
    use("dylon/vim-antlr")
end)
