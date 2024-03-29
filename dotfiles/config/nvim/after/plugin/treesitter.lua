require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "rust",
        "c",
        "tsx",
    },
    indent = {
      enable = true
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
