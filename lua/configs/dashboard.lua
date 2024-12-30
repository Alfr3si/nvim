
-- plugin_configs/dashboard.lua

require('dashboard').setup {
    theme = 'doom',
    config = {
        header = {
            '',
            '',
            '',
            '',
            '',
            '',
            ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
            ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
            ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
            ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
            ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
            ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
            '',
            '',
            '',
        },
        center = {
            { icon = ' ', desc = 'Search', action = ':lua require("telescope.builtin").find_files({hidden = true})' },
            { icon = ' ', desc = 'Create File', action = 'enew' },
            { icon = ' ', desc = 'Recent Files', action = ':lua require("telescope.builtin").oldfiles{}' },
            { icon = ' ', desc = 'Tree', action = 'NvimTreeToggle' },
            { icon = ' ', desc = 'Keymaps', action = ':lua show_keymaps()' }, -- Acciones de keymaps
	    { icon = ' ', desc = 'Quit', action = 'qa' },
        },
        footer = {},
        custom_center = {}
    },
}


function _G.show_keymaps()
    local keymaps = {
      { key = '󰁕 Alt-n', desc = 'Nvimtree' },
      { key = '󰁕 Alt-f', desc = 'Telescope-file-browser' },
      { key = '󰁕 Alt-g', desc = 'Telescope-live-grep' },
      { key = '󰁕 Alt-s', desc = 'Telescope-search-lines' },
      { key = '󰁕 Alt-Right', desc = 'Move next boofer' },
      { key = '󰁕 Alt-Left', desc = 'Move previous boofer' },
      { key = '󰁕 Alt-c', desc = 'Close boofer actually' },
      { key = '󰁕 Alt-w', desc = 'Change cursor' },
      { key = '󰁕 Ctrl-s', desc = 'open split vertical' },
      { key = '󰁕 Ctrl-t', desc = 'Open terminal bottom' },
      { key = '󰁕 Ctrl-z', desc = 'Undo' },
      { key = '󰁕 Ctrl-Up', desc = 'Resize up' },
      { key = '󰁕 Ctrl-Down', desc = 'Resize Down' },
      { key = '󰁕 Alt-q', desc = 'Close terminal' },
    }
    local keymap_text = "Keymaps:\n\n"
    for _, km in ipairs(keymaps) do
        keymap_text = keymap_text .. km.key .. "  󱊨 ---- " .. km.desc .. "\n\n"
    end
    -- Usamos echo para mostrar en la línea de comando de Neovim
    vim.api.nvim_command('echo "' .. keymap_text .. '"')
end
