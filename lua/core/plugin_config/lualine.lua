require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = 'github_dark_dimmed',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
