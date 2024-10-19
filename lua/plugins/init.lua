require("lvim.lsp.manager").setup("marksman")
require("lvim.lsp.manager").setup("tailwindcss")

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
    { 'fatih/vim-go', build = ':GoUpdateBinaries' },
}

-- eslint
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

-- prettier
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

