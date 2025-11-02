-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fd", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>')
-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

--buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")

--Gitsigns Preview
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


--LazyGit
vim.keymap.set("n", "<leader>az", ":LazyGit<CR>", {})

vim.keymap.set("n", "C-h",":TmuxNavigateLeft<cr>")
vim.keymap.set("n", "C-j",":TmuxNavigateDown<cr>")
vim.keymap.set("n", "C-k",":TmuxNavigateUp<cr>")
vim.keymap.set("n", "C-l",":TmuxNavigateRight<cr>")


-- LSP LUA
vim.keymap.set("n", "<leader>f",":lua vim.lsp.buf.format({ async = true })<cr>")

--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Yanking highlight
vim.api.nvim_create_autocmd('TextYankPost', {
desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
