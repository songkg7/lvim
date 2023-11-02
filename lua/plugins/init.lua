-- plugins
lvim.plugins = {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
    },
    {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    { 'Lokaltog/vim-easymotion' },
    { 'tpope/vim-surround' },
    { 'terryma/vim-multiple-cursors' },
}

