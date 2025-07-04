return {
  {"nvim-lua/plenary.nvim"} ,
  { "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = { {name = "work", path = "~/ObsidianVault"} },
      follow_url_func = function(url) vim.fn.jobstart({"brave-browser", url}) end,
      picker = {
        name = "fzf-lua",
      },
      finder = "fzf-lua",
      templates = {
        subdir = "templates",
        date_format = "%d-%m-%Y",
        time_format = "%H:%M",
        substitutions = {
          yesterday = function()
            return os.date("%d.%m.%Y", os.time() - 86400)
          end,
          tomorrow = function()
            return os.date("%d.%m.%Y", os.time() + 86400)
          end
        }
      },
      daily_notes = {
        folder = "notes/dailies",
        date_format = "%d.%m.%Y",
        alias_format = "%d.%m.%Y",
        template = "daily_notes_neovim.md"
      },
    },
  }
}
