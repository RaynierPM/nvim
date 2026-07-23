return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      direction = "float", -- "horizontal", "vertical", "tab", "float"
      float_opts = {
        border = "curved",
      },
    })
  end,
}
