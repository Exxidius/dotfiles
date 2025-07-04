return {
  { 'rcarriga/nvim-notify'},
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  {'stevearc/overseer.nvim',
    task_list = {
      bindings = {
        ["<C-k>"] = false,
        ["<C-j>"] = false,
      }
    },
    opts = {},
  }

}

