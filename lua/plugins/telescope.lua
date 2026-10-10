return {
    'nvim-telescope/telescope.nvim', version = '*',
    build = 'SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX26.5.sdk make',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
}
