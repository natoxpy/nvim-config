-- Setup language servers.
local lspconfig = require('lspconfig')
local ih = require("inlay-hints")

local on_attach = function(client, bufnr)
    ih.on_attach(client, bufnr)

    local opts_buffer = { noremap = true, silent = true, buffer = bufnr }
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- Mappings: LSP
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts_buffer)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts_buffer)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts_buffer)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts_buffer)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts_buffer)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts_buffer)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts_buffer)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts_buffer)
    vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts_buffer)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts_buffer)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts_buffer)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts_buffer)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts_buffer)
    vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts_buffer)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configure Vue LSP 
lspconfig.volar.setup {
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

-- lspconfig.tsserver.setup {}
lspconfig.lua_ls.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['lua_ls'] = {},
  },
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags, 
}


-- lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags, 
}


