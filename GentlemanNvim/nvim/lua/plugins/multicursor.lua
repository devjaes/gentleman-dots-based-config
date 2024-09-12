return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.multi_cursor_use_default_mapping = 0
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
    }
  end,
}
