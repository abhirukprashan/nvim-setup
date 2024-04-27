local lsp_zero = require("lsp-zero")
lsp_zero.extend_lspconfig()

lsp_zero
.on_attach(function(client,bufnr)
  lsp_zero

  .default_keymaps({buffer = bufnr})
end )
 require('mason').setup({})
  require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {'tsserver', 'rust_analyzer'},
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end,
    },
  })
  local cmp = require('cmp')
  cmp.setup({
    sources = {
      {name = 'nvim_lsp'},
    }
  })
  local cmp_action = require('lsp-zero').cmp_action()

  cmp.setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-f>'] = cmp_action.luasnip_jump_forward(),
      ['<C-b>'] = cmp_action.luasnip_jump_backward(),
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
  })

