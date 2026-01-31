return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    dependencies = {'nvim-treesitter/nvim-treesitter'},
    opts = {
        check_ts = true,
        ts_config = {
            lua = {'string'},
            javascript = {'template_string'},
            java = false
        }
    },
    config = function(_, opts) require('nvim-autopairs').setup(opts) end
}
