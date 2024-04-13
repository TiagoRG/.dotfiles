-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use "loctvl842/monokai-pro.nvim"
    use 'olimorris/onedarkpro.nvim'
    use 'Mofiqul/vscode.nvim'

    -- Essentials
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {
            'nvim-lua/plenary.nvim',
            'catgoose/telescope-helpgrep.nvim'
        }
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
    use "folke/trouble.nvim"
    use "stevearc/aerial.nvim"
    use 'numToStr/Comment.nvim'
    use 'm4xshen/autoclose.nvim'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })

    -- Extras
    use 'mbbill/undotree'
    use "andrewferrier/wrapping.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "HiPhish/nvim-ts-rainbow2"
    use "FotiadisM/tabset.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use 'nvim-lualine/lualine.nvim'
    use 'lervag/vimtex'

    -- Misc
    use('wakatime/vim-wakatime')
    use('andweeb/presence.nvim')

    -- Little friend
    use("github/copilot.vim")

    -- trying out
    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
			require 'nvim-treesitter.configs'.setup {
				autotag = {
					enable = true,
					enable_rename = true,
					enable_close = true,
					enable_close_on_slash = true,
					filetypes = { "html", "xml", "javascript", "typescript", "svelte", "vue", "javascriptreact", "typescriptreact"},
				}
			}
        end
    }
end)
