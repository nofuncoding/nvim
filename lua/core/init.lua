local load_core = function ()
    require("core.config")
    require("core.pack")

    -- set theme on plugins/themes.lua
    -- vim.cmd('colorscheme onedark')
    vim.cmd('colorscheme tokyonight')
end

load_core()