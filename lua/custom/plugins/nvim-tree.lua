return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        }
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      },
      git = {
        ignore = false
      },
      filters = {
        custom = { ".DS_Store" },
      },
    })
  end,
}
