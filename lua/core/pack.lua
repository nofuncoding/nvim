local check_lazy = function()
	-- Bootstrap lazy.nvim
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not (vim.uv or vim.loop).fs_stat(lazypath) then
		local lazyrepo = "git@github.com:folke/lazy.nvim.git"
		vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	end
	vim.opt.rtp:prepend(lazypath)

	-- Make sure to setup `mapleader` and `maplocalleader` before
	-- loading lazy.nvim so that mappings are correct.
	vim.g.mapleader = " "
	vim.g.maplocalleader = "\\"
end

local setup_lazy = function()
    require("lazy").setup({
		spec = {
			{ import = "plugins" },
		},
		git = {
			url_format = "git@github.com:%s.git", -- Use ssh
		},
    })
end

check_lazy()
setup_lazy()
