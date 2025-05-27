return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        --Load the colorcheme here
        require ("tokyonight").setup({
            transparent_background = true,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,

}
