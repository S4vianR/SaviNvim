-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/which-key.nvim'

  use "nvim-lua/plenary.nvim" 

  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'https://git.0x7be.net/dirk/boxdash.git',
    config = function()
      require('neovim-boxdash').setup({
        title = 'Neovim',  -- box title (set to '' to hide)
        align = {
            horizontal = 0,  -- horizontal box alignment
            vertical = 0,    -- vertical box alignment
        },
        style = 1,   -- One of the available styles (see below)
        entries = {  -- Menu entries
            { 'i', 'Switch to insert mode', 'insert_mode'  },
            { 'e', 'Get an empty buffer',   'empty_buffer' },
            '----------------------------------------------',
            { 'q', 'Quit Neovim',           'quit_neovim'  },
        }
      })
    end
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
end)
