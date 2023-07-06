require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "tsserver", "pyright" },
}

-- Lua
require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

-- JS, TS
require("lspconfig").tsserver.setup{}

-- Python
require("lspconfig").pyright.setup{}
