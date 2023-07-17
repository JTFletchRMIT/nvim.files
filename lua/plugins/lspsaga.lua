return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons", -- optional
  },
  event = "LspAttach",
  config = function()
    local opts = {
      finder = {
        keys = {
          expand_or_jump = "<cr>",
        },
      },
      beacon = {
        enable = false,
        frequency = 7,
      },
      ui = {
        -- This option only works in Neovim 0.9
        title = true,
        -- Border type can be single, double, rounded, solid, shadow.
        border = "single",
        winblend = 0,
        expand = "",
        collapse = "",
        code_action = "",
        incoming = " ",
        outgoing = " ",
        hover = "",
        kind = {},
      },
    }
    require("lspsaga").setup(opts)
    local keymap = vim.keymap.set
    keymap("n", "<leader>p", "<cmd>Lspsaga peek_definition<CR>")
    -- keymap("n", "ptd", "<cmd>Lspsaga peek_type_definition<CR>")
    -- keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")
  end,
}
