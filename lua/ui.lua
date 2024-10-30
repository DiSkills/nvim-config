require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('lualine').setup {
    options = { theme = 'gruvbox' }
}
