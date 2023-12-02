return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'hyper',
            config = {
              header = {
                " ________   ________  ________ ___  ___  ________      ",
                "|\\   ___  \\|\\   __  \\|\\  _____\\\\  \\|\\  \\|\\   ___  \\    ",
                "\\ \\  \\\\ \\  \\ \\  \\|\\  \\ \\  \\__/\\ \\  \\\\\\  \\ \\  \\\\ \\  \\   ",
                " \\ \\  \\\\ \\  \\ \\  \\\\\\  \\ \\   __\\\\ \\  \\\\\\  \\ \\  \\\\ \\  \\  ",
                "  \\ \\  \\\\ \\  \\ \\  \\\\\\  \\ \\  \\_| \\ \\  \\\\\\  \\ \\  \\\\ \\  \\ ",
                "   \\ \\__\\\\ \\__\\ \\_______\\ \\__\\   \\ \\_______\\ \\__\\\\ \\__\\",
                "    \\|__| \\|__|\\|_______|\\|__|    \\|_______|\\|__| \\|__|",
              },
        
              --shortcut = {
                -- action can be a function type
                -- { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
              --},
        
              footer = {"? NoFun is Not Found."}
            },
        }
    end,
    dependencies = {{'nvim-tree/nvim-web-devicons'}}
}