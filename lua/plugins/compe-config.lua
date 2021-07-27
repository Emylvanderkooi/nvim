local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Enable the following language servers
local servers = { 'pyright', 'tsserver', 'cssls', 'svelte', 'vimls' }
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    -- You will probably want to add a custom on_attach here to locally map keybinds to buffers with an active client
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end

require'lspconfig'.html.setup {
  capabilities = capabilities,
  filetypes = { 'html', 'htmldjango'}
}

require"lspconfig".efm.setup {
  init_options = {documentFormatting = true},
  filetypes = {"python"},
  settings = {
    rootMarkers = {".git/"},
    languages = {
      python = {
        {
          lintCommand = "flake8",
          lintStdin = true,
          formatCommand = "yapf",
          formatStdin = true
        }
      }
    }
  }
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Compe setup
require('compe').setup {
  source = {
    path = true,
    nvim_lsp = true,
    luasnip = false,
    buffer = true,
    calc = false,
    nvim_lua = false,
    vsnip = false,
    ultisnips = false,
  },
}

-- -- Map tab to the above tab complete functiones
-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
-- vim.api.nvim_set_keymap('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
-- vim.api.nvim_set_keymap('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })

-- -- Map compe confirm and complete functions
-- vim.api.nvim_set_keymap('i', '<cr>', 'compe#confirm("<cr>")', { expr = true })
-- vim.api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', { expr = true })
