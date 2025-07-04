return {
  { "nvim-tree/nvim-web-devicons" },
  { "junegunn/fzf", dir = "~/.fzf", build = "./install --all" },
  --{ "ibhagwan/fzf-lua",
  --  -- optional for icon support
  --  dependencies = { "nvim-tree/nvim-web-devicons" },
  --  config = function()
  --    -- calling `setup` is optional for customization
  --    require("fzf-lua").setup({
  --    })
  --  end
  --},
  { 'kevinhwang91/nvim-bqf' }
}
