local options = {
    ensure_installed = {
        "astro",
        "bash",
        -- "c",
        -- "cmake",
        -- "cpp",
        -- "go",
        -- "gomod",
        -- "gosum",
        -- "gotmpl",
        -- "gowork",
        "html",
        -- "haskell",
        "json",
        "java",
        "javascript",
        "lua",
        "luadoc",
        -- "make",
        "markdown",
        -- "odin",
        "php",
        "printf",
        -- "python",
        "tailwindcss",
        "toml",
        "typescript",
        "twig",
        "vim",
        "vimdoc",
        "vue",
        "yaml",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
