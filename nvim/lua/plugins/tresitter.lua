return {
    {
        "nvim-treesitter/nvim-treesitter", build = "TSUpdate",
    ensure_installed = {"c", "cpp", "markdown", "yaml", "toml", "vim", "vimdoc", "markdown_inline"},
    highlight = { enable = true },
    indent = { enable = true },
    },
}
