local ls = require("luasnip")

local M = {}

function M.setup()
    ls.config.set_config({
        -- Mantener el último snippet para poder saltar atrás aunque salgas de él
        history = true,

        -- Actualizar snippets dinámicos mientras escribes
        updateevents = "TextChanged,TextChangedI",

        -- Activar autosnippets
        enable_autosnippets = true,
    })

  -- Extender php para incluir snippets de html
    ls.filetype_extend("php", { "html" })

    -- <c-k>: expandir o saltar al siguiente nodo del snippet (modo insert y select)
    vim.keymap.set({ "i", "s" }, "<c-k>", function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end, { silent = true })

    -- <c-j>: saltar al nodo anterior del snippet (modo insert y select)
    vim.keymap.set({ "i", "s" }, "<c-j>", function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end, { silent = true })

    -- <c-l>: cambiar la opción activa en choice nodes (modo insert)
    vim.keymap.set("i", "<c-l>", function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end)

    -- Ruta dinámica a tu carpeta local de snippets
    local snippets_path = vim.fn.stdpath("config") .. "/snippets"

    -- Cargar snippets desde carpeta local (por ejemplo ~/.config/nvim/snippets)
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { snippets_path } })

    -- Cargar snippets desde friendly-snippets y otras rutas por defecto
    require("luasnip.loaders.from_vscode").lazy_load()
end

return M
