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

require("lazy").setup({
	{'phaazon/hop.nvim'},
	{'MunifTanjim/nui.nvim'},
	{'nvim-lua/plenary.nvim'},
	{'nvim-tree/nvim-web-devicons'},
	{
  	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
        requires = { 
        	"nvim-lua/plenary.nvim",
        	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
     		"MunifTanjim/nui.nvim",
    		}
  	},
	{'nvim-treesitter/nvim-treesitter'},
	{'neovim/nvim-lspconfig'},
	{'EdenEast/nightfox.nvim'},

    -- cmp
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'},
   })
