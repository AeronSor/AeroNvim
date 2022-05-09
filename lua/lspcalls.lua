local servers = {
  'html',               -- Html
  'cssls',              -- CSS
  'eslint',             -- JS
  'jsonls',             -- JSON
  'pyright',            -- Python
  'sumneko_lua',        -- Lua
  'clangd',             -- C/C++
  'cmake',              -- Cmake
  'vimls',              -- Vim
}

for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup{}
end
