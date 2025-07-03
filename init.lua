-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.shell = "nu.exe"

require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.config("ruff", {
    init_options = {
        settings = {
            -- Ruff language server settings go here
        },
    },
})

vim.lsp.enable("ruff")
vim.lsp.enable("pyrefly")
vim.lsp.enable("air")
