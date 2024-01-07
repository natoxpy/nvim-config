require("toggleterm").setup({
  size = 20,
  open_mapping = [[<C-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winbled = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  }
})

vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>', {noremap = true, silent = true})
