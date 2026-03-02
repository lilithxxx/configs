-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamed"
vim.opt.number = true -- show line numbers
vim.opt.splitright = true
vim.o.wildmenu = true
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "d", '"_d')
vim.lsp.enable('ruff')
vim.opt.fixendofline = true
vim.keymap.set("n", "<Esc>", ":noh<CR>", { silent = true })
