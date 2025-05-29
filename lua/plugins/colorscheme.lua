return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        --Load the colorcheme here
        require ("tokyonight").setup({
            transparent = true,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,

}
