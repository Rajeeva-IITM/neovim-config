-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.fn.executable("nu.exe") == 1 then
    vim.opt.shell = "nu.exe"
elseif vim.fn.executable("pwsh.exe") == 1 then
    vim.opt.shell = "pwsh.exe"
elseif vim.fn.executable("zsh") then
    vim.opt.shell = "zsh"
else
    vim.opt.shell = "bash"
end

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

require("catppuccin").setup({
    flavour = "macchiato",
})
-- vim.cmd.colorscheme
