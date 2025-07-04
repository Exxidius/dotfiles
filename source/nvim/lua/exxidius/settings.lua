vim.o.conceallevel=1

vim.o.exrc=true
vim.o.secure=true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"

vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.expandtab=true
vim.o.smartindent=true
vim.o.scrolloff=8

vim.o.mouse = ""

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.timeoutlen = 200
vim.o.ttimeoutlen = 100

vim.o.number = true
vim.o.relativenumber = false

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false


vim.opt.signcolumn = "yes"

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = {"*"},
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    pcall(function() vim.cmd [[%s/\s\+$//e]] end)
    vim.fn.setpos(".", save_cursor)
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = {"*sxhkdrc"},
  callback = function()
    os.execute("pkill -USR1 sxhkd")
  end,
})

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

vim.g.rst_style = 1
