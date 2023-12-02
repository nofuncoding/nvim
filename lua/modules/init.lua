local setup_mods = function ()
    -- Set up LuaSnip
    require('luasnip.loaders.from_vscode').lazy_load()

    -- Set up lualine
    require('lualine').setup()

    -- Set up gitsigns
    require('gitsigns').setup()

    -- Set up Utils
    vim.notify = require("notify")
end

setup_mods()
require("modules.nvim-cmp")
require("modules.lspconfig")