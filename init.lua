-- required after macOS 27 update
vim.env.SDKROOT = "/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4         
vim.opt.shiftwidth = 4
vim.opt.expandtab = true     
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.syntax = "on"

vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = ","

require("config.lazy")

-- COLORSCHEME

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- TELESCOPE

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- LUALINE

require('lualine').setup {}

-- GO

require('go').setup({
 lsp_cfg = true,
  })

-- TREESITTER

require('nvim-treesitter').setup {}

require('nvim-treesitter').install { 'go', 'gomod', 'gosum', 'gowork', 'gotmpl', 'python', 'javascript', 'lua'}

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "*" },
	callback = function()
		local filetype = vim.bo.filetype
		if filetype and filetype ~= "" then
			local success = pcall(function()
				vim.treesitter.start()
			end)
			if not success then
				return
			end
		end
	end,
})
