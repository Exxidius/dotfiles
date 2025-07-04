local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<C-b>', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<C-t>', ":Telescope telescope-tabs list_tabs<CR>", { desc = 'Telescope tabs' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- telescope cmdline
vim.api.nvim_set_keymap('n', 'Q', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

--file
vim.keymap.set('n', 'gf', '<c-w>gf', { noremap = true, silent = true })
vim.keymap.set('n', 'gF', 'gf', { noremap = true, silent = true })

--tabs
vim.keymap.set('n', "th", ":tabfirst<CR>")
vim.keymap.set('n', "tk", ":tabnext<CR>")
vim.keymap.set('n', "tj", ":tabprev<CR>")
vim.keymap.set('n', "tl", ":tablast<CR>")
vim.keymap.set('n', "tn", ":tabnew<CR>")
vim.keymap.set('n', "tm", ":tabm<Space>")
vim.keymap.set('n', "tw", ":tabclose<CR>")

-- buffers
vim.keymap.set('n', "<C-i>", ":bprevious<CR>")
vim.keymap.set('n', "<C-o>", ":bnext<CR>")

--windows
vim.keymap.set('n', "<C-n>", ":vnew<CR>")
--vim.keymap.set('n', "<C-m>", ":new<CR>")
vim.keymap.set('n', "<C-k>", ":wincmd w<CR>")
vim.keymap.set('n', "<C-h>", ":vertical resize -2<CR>")
vim.keymap.set('n', "<C-l>", ":vertical resize +2<CR>")
vim.keymap.set('n', ";", ":wincmd =<CR>")
vim.keymap.set('n',	"<C-h>", "<C-w>h")
vim.keymap.set('n',	"<C-j>", "<C-w>j")
vim.keymap.set('n',	"<C-k>", "<C-w>k")
vim.keymap.set('n',	"<C-l>", "<C-w>l")

--replace all
vim.keymap.set('n', "S", ":%s//g<Left><Left>")

--fugitive
vim.keymap.set("n", "<leader>g", ":tab G<CR>")
vim.keymap.set("n", "cc", ":Git commit<CR>")

--search
vim.keymap.set('n', "<C-_>", ":noh<CR>")

--terminal
vim.keymap.set("t", "<C-g>", "<C-\\><C-n>")


vim.api.nvim_create_autocmd('LspAttach', {
  group = lsp_cmds,
  desc = 'LSP actions',
  callback = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = true })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = true})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = true})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = true})
    vim.keymap.set('n', 'gl', vim.diagnostic.open_float, {buffer = true})
  end
})
