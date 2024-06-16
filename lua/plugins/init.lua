-- plugins
lvim.plugins = {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
    },
    {
        "zbirenbaum/copilot-cmp",
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    { 'Lokaltog/vim-easymotion' },
    { 'tpope/vim-surround' },
    { 'terryma/vim-multiple-cursors' },
    { 'rebelot/kanagawa.nvim' },
}

