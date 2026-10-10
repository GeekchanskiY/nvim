return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    -- { "nvim-treesitter/nvim-treesitter", branch = 'main' } -- optional for master version
  },
  opts = function()

    require("go").setup(opts)
    local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
      require('go.format').goimports()
      end,
      group = format_sync_grp,
    })
    return {
      -- lsp_keymaps = false,
      -- other options
    }
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = function()
    -- Set the SDK path for the Go compiler
    vim.env.SDKROOT = "/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk"
    -- Now run the plugin's synchronous install/update
    require("go.install").update_all_sync()
  end,
}
