require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c", "nasm", "bash", "cpp", "javascript", "lua", "python", "regex",
        "sql", "yaml", "json", "dockerfile", "vim", "vimdoc", "html", "css"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

require('lualine').setup {
    options = { theme = 'gruvbox' }
}

require("ibl").setup()
