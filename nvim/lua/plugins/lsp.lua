return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable('jedi_language_server')
    vim.lsp.enable('ruff')

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local buf = args.buf
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = buf })
    	vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = buf })
    	vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = buf })
    	vim.keymap.set('n', '<leader>n', vim.lsp.buf.references, { buffer = buf })
        vim.keymap.set('n', '<leader>fm', function()
          vim.lsp.buf.format({ name = 'ruff' })
        end, { buffer = buf })
      end,
    })
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { buffer = buf })
    end,
}
