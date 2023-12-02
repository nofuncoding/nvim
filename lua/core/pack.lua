local setup_lazy = function()
    -- Set up Lazy (Package Manager)
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
end

local setup = function()
    require("lazy").setup("plugins",
    {
      git = {
        url_format = "git@github.com:%s.git", -- Use ssh
      }
    })
end

setup_lazy()
setup()