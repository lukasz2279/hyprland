return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    window = {
      position = "left",
      width = 40,
      mappings = {
        ["<C-n>"] = "toggle_node",
        ["<C-t>"] = "close_window",
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
		vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
		vim.keymap.set('n', '<C-t>', ':Neotree close<CR>', {})
  end
}
