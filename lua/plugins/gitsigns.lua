
return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            signs = {
                add          = { text = '┃' },
                change       = { text = '┃' },
                delete       = { text = '┃' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signs_staged = {
                add          = { text = '┃' },
                change       = { text = '┃' },
                delete       = { text = '┃' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signs_staged_enable = true,
            signcolumn = true,
            numhl      = false,
            linehl     = false,
            word_diff  = false,
            watch_gitdir = {
                follow_files = true
            },
            auto_attach = true,
            attach_to_untracked = false,
            current_line_blame = false,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol',
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
                use_focus = true,
            },
            current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
                border = 'single',
                style = 'minimal',
                relative = 'cursor',
                row = 0,
                col = 1
            }
        })

        -- Colores personalizados para los signos
        vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#a8ff51' })
        vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#08b7f8' })
        vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#FF5555' })
        vim.api.nvim_set_hl(0, 'GitSignsChangeDelete', { fg = '#FF79C6' })
        vim.api.nvim_set_hl(0, 'GitSignsUntracked', { fg = '#8BE9FD' })

        vim.api.nvim_set_hl(0, 'GitSignsStagedAdd', { fg = '#e5fc22' })
        vim.api.nvim_set_hl(0, 'GitSignsStagedChange', { fg = '#82fcca' })
        vim.api.nvim_set_hl(0, 'GitSignsStagedDelete', { fg = '#fc8288' })
        vim.api.nvim_set_hl(0, 'GitSignsStagedChangeDelete', { fg = '#FF92D0' })
        vim.api.nvim_set_hl(0, 'GitSignsStagedUntracked', { fg = '#A4FFFF' })
    end
}
