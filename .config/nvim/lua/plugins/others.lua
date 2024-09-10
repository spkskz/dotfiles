return {
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            view_options = {
                show_hidden = true,
                is_always_hidden = function(name)
                    return name == ".git" or name == "node_modules"
                end,
            },
        },
    },
    {
        "folke/which-key.nvim",
        event = "VimEnter",
    },
}
