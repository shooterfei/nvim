vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'MunifTanjim/nui.nvim'

    use 'nvim-tree/nvim-tree.lua'

    -- startup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'

    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes
    use 'sainnhe/sonokai'
    use 'tiagovla/tokyodark.nvim'
    use 'joshdick/onedark.vim'
    use { 'catppuccin/nvim', as='catppuccin' }
    use 'NLKNguyen/papercolor-theme'
    use 'nyoom-engineering/oxocarbon.nvim'

    -- language
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'simrat39/rust-tools.nvim'
    use 'dnlhc/glance.nvim'
    use 'tamago324/nlsp-settings.nvim'
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }

    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release',
    }


    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- floating terminal
    use 'akinsho/toggleterm.nvim'

    -- file telescope
    use 'BurntSushi/ripgrep'
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- indent guide
    use 'lukas-reineke/indent-blankline.nvim'

    -- startup screen
    use {
        'goolord/alpha-nvim',
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- scroll bar
    use 'petertriho/nvim-scrollbar'

    -- duck lol
    use 'tamton-aquib/duck.nvim'

    -- leetcode
    use { "Dhanus3133/LeetBuddy.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        }
    }
end)
