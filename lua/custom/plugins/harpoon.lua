return {
  "ThePrimeagen/harpoon",
  lazy = false,
  branch = "harpoon2",
  config = function()
    local harpoon = require "harpoon"
    harpoon:setup()
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
