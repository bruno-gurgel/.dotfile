local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local eslint_condtions = {
  condition = function(utils)
    return utils.root_has_file({ '.eslintrc.js', '.eslintrc.json', '.eslintrc' })
  end
}


null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.eslint_d.with(eslint_condtions),
    null_ls.builtins.code_actions.eslint_d.with(eslint_condtions),
  },
  on_attach = function(_, bufnr)
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format({
      bufnr = bufnr,
      filter = function(client)
    	  return client.name == "null-ls"
      end
    })
    print("File formatted")
  end, { desc = 'Format current buffer with LSP' })
end
})




