require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "bashls", "clangd", "dockerls", "pyright" },
})

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function (server_name)
    lspconfig[server_name].setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
    }
  end,
})

-- Nvim CMP
local cmp = require'cmp'

cmp.setup({
    completion = {
        autocomplete = false
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-x><C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true })
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, {
        { name = 'vim-dadbod-completion' },
    })
})
