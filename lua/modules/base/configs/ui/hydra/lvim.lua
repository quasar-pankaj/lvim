local Hydra = require("hydra")
local keymap = require("hydra.keymap-util")

local lvim_hint = [[
                            LVIM

▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
Help                        _h_ │ _t_                      Theme
Auto format                 _f_ │ _i_  Install lang dependencies

Lazy                        _l_ │ _m_                      Mason

▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
                         exit _<Esc>_
]]
Hydra({
    name = "LVIM",
    hint = lvim_hint,
    config = {
        color = "pink",
        invoke_on_body = true,
        hint = {
            position = "bottom-center",
            border = "single",
        },
    },
    mode = { "n", "x", "v" },
    body = "<leader>l",
    heads = {
        {
            "h",
            keymap.cmd("LvimHelper"),
            { silent = true, desc = "Help" },
        },
        {
            "t",
            keymap.cmd("LvimTheme"),
            { silent = true, desc = "Theme" },
        },
        {
            "f",
            keymap.cmd("LvimAutoFormat"),
            { silent = true, desc = "Auto format" },
        },
        {
            "i",
            keymap.cmd("LvimInstallLangDependencies"),
            { silent = true, desc = "Install lang dependencies" },
        },
        {
            "l",
            keymap.cmd("Lazy"),
            { silent = true, desc = "Lazy" },
        },
        {
            "m",
            keymap.cmd("Mason"),
            { silent = true, desc = "Mason" },
        },
        { "<Esc>", nil, { exit = true, desc = false } },
    },
})
