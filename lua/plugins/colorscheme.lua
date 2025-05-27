return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
        --Load the colorcheme here
        require ("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
            integrations = {
                nil,
            },
        })
        vim.cmd([[colorscheme catppuccin]])
    end,

}
