return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "markdown",
      "markdown_inline",
      "yaml",
      "json",
      "jsonc",
    },
    highlight = {
      enable = true,
    },
  },
}
