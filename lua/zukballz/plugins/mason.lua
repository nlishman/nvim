return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "omnisharp", -- ✅ C# LSP
                "cssls",
                "eslint",
                "html",
                "jsonls",
                "ts_ls",
                "pyright",
                "tailwindcss",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "prettier",
                "stylua",  -- Lua formatter
                "isort",   -- Python formatter
                "black",   -- Python formatter
                "pylint",
                "eslint_d",
                "csharpier", -- ✅ C# Formatter
                "netcoredbg", -- ✅ C# Debugger
            },
        })
    end,
}

