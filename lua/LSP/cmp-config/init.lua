local lspkind = require "lspkind"
local luansip = require "luasnip"


lspkind.init()

local cmp = require "cmp"

cmp.setup {
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<Enter>"] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
    },
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer", keyword_length = 5 },
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer =    "[buf]",
        nvim_lsp =  "[LSP]",
        nvim_lua =  "[api]",
        path =      "[path]",
        luasnip =   "[snip]",
      },
    },
  },
  
  experimental = {
    ghost_text = true,
  }
}

--[[
" Disable cmp for a buffer, example below
autocmd FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }
--]]
