return {
    'stevearc/conform.nvim',
    event = {"BufWritePre"},
    cmd = {"ConformInfo"},
    opts = {
        formatters_by_ft = {
            bash = {"beautysh"},
            cpp = {"clang-format"},
            html = {"prettier"},
            javascript = {"prettier"},
            css = {"prettier"},
            cs = {"csharpier"},
            tex = {"latexindent"},
            lua = {"lua-format"}
        },
        default_format_opts = {lsp_format = "fallback"},
        format_on_save = {timeout_ms = 500},
        formatters = {
            latexindent = {inherit = true, prepend_args = {"-g", "/dev/null"}}
        }
    },
    init = function()
        vim.o.formatexpr = "v:lua:require'conform'.formatexpr()"
    end
}
