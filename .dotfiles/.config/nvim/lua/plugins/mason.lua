local servers = {
  'autopep8',
  'commitlint',
  'cssmodules_ls',
  'docker_compose_language_service',
  'dockerls',
  'eslint',
  'html',
  'jsonls',
  'lua_ls',
  'prettier',
  'prettierd',
  'pyright',
  'rust_analyzer',
  'tailwindcss',
  'tsserver',
  'vimls',
  'yamlls',
}


require("mason").setup({
  ensure_installed = servers,
})

