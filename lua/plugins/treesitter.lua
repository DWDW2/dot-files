return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "rust", "typescript", "javascript", "json", "html", "css", "scss", "markdown", "markdown_inline", "tsx" },
            highlight = {
                enable = true,
            },
        })
    end,
}
