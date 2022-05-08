require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "c_sharp", "lua", "python", "html", "javascript", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`) 
  sync_install = false,

  ignore_install = {},

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regext_highlighting = false,
  },
  indent = { enable = true },
}
