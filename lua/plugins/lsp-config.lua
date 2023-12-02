return {
    'neovim/nvim-lspconfig',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
    config = function ()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
        local langs = require("core.lspservers")
        
        for i=1, #langs do
            lspconfig[langs[i]].setup {
                capabilities = capabilities
            }
        end
    end,
}